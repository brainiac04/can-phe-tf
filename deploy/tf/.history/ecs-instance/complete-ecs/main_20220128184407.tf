provider "aws" {
  region = local.aws_region
}

terraform {
    backend "oss" {}
}

locals {
  name        = "complete-ecs"
  environment = "dev"
  aws_region  = "${terraform.workspace == "prod" ? "us-west-2" : "eu-central-1" }"
  aws_acm_arn = "${terraform.workspace == "prod" ? "arn:aws:acm:us-west-2:906533202800:certificate/8d9d761c-4d26-40ee-bdd7-6865821e37c3" : "arn:aws:acm:eu-central-1:906533202800:certificate/fcca23d2-04cb-4bea-b8a8-692ea68cea40" }"
  aws_amiid   = "${terraform.workspace == "prod" ? "ami-0a9120c31b32eb458" : "ami-074dc9dd588b6ea52" }"

  # This is the convention we use to know what belongs to each other
  ec2_resources_name = "${local.name}-${local.environment}"
}

module "vpc" {
  source  = "terraform-aws-modules/vpc/aws"
  version = "~> 2.0"

  name = local.name

  cidr = "10.1.0.0/16"

  azs             = ["${local.aws_region}a", "${local.aws_region}b"]
  private_subnets = ["10.1.1.0/24", "10.1.2.0/24"]
  public_subnets  = ["10.1.11.0/24", "10.1.12.0/24"]

  enable_nat_gateway = false # this is faster, but should be "true" for real

  tags = {
    Environment = local.environment
    Name        = local.name
  }
}
#----- ECS --------
module "ecs" {
  source = "../../"
  name   = local.name
}

module "ec2-profile" {
  source = "../../modules/ecs-iam-profile"
  name   = local.name
}

#-----random name generator-----------
resource "random_pet" "this" {
  length = 2
}
#--------ALB SECURITY GROUP--------
module "alb_security_group" {
  source  = "terraform-aws-modules/security-group/aws"
  version = "~> 3.0"
  name        = "alb-sg-${random_pet.this.id}"
  description = "Security group for example usage with ALB"
  vpc_id      = module.vpc.vpc_id
  ingress_cidr_blocks = ["0.0.0.0/0"]
  ingress_rules       = ["https-443-tcp", "all-icmp"]
  egress_rules        = ["all-all"]
}


#------ALB SERVICE--------

module "alb" {
 source  = "terraform-aws-modules/alb/aws"
  version = "~> 5.0"
  
  name = local.name

  load_balancer_type = "application"

  vpc_id          = module.vpc.vpc_id
  security_groups = [module.alb_security_group.this_security_group_id]
  subnets         = module.vpc.public_subnets

  https_listeners = [
    {
      port               = 443
      protocol           = "HTTPS"
      certificate_arn    = local.aws_acm_arn
      target_group_index = 0
    },
  ]
  target_groups = [
    {
      name_prefix          = "h1"
      backend_protocol     = "HTTP"
      backend_port         = 80
      target_type          = "ip"
      deregistration_delay = 10
      health_check = {
        enabled             = true
        interval            = 30
        path                = "/h5/"
        port                = "traffic-port"
        healthy_threshold   = 3
        unhealthy_threshold = 3
        timeout             = 6
        protocol            = "HTTP"
        matcher             = "200-399"
      }
     }   
  ]
}
#----- ECS  Services--------

module "cnapp-h5" {
  source     = "./service-cnapp-h5"
  cluster_id = module.ecs.this_ecs_cluster_id
  container_tag = var.container_tag
  vpc_id = module.vpc.vpc_id
  vpc_subnets = module.vpc.public_subnets
  aws_region = local.aws_region
  target_group = module.alb.target_group_arns.0
  pet_name = random_pet.this.id
}

#----- ECS  Resources--------

module "ECS_ASG" {
  source  = "terraform-aws-modules/autoscaling/aws"
  version = "~> 3.0"

  name = local.ec2_resources_name

  # Launch configuration
  lc_name = local.ec2_resources_name

  image_id             = local.aws_amiid
  instance_type        = "t2.small"
  security_groups      = [module.vpc.default_security_group_id]
  iam_instance_profile = module.ec2-profile.this_iam_instance_profile_id
  user_data            = data.template_file.user_data.rendered
  associate_public_ip_address = false

  # Auto scaling group
  asg_name                  = local.ec2_resources_name
  vpc_zone_identifier       = module.vpc.public_subnets
  health_check_type         = "EC2"
  min_size                  = "${terraform.workspace == "prod" ? 2 : 1 }"
  max_size                  = 3
  desired_capacity          = "${terraform.workspace == "prod" ? 2 : 1}"
  wait_for_capacity_timeout = 0

  tags = [
    {
      key                 = "Environment"
      value               = local.environment
      propagate_at_launch = true
    },
    {
      key                 = "Cluster"
      value               = local.name
      propagate_at_launch = true
    },
  ]
}
data "template_file" "user_data" {
  template = file("${path.module}/templates/user-data.sh")

  vars = {
    cluster_name = local.name
  }
}
