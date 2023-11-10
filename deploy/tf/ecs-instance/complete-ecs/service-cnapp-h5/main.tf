resource "aws_cloudwatch_log_group" "cnapp-h5" {
  name              = "cnapp-h5"
  retention_in_days = 1
}

resource "aws_ecs_task_definition" "cnapp-h5" {
  family = "cnapp-h5"

  container_definitions = <<EOF
[
  {
    "name": "cnapp-h5",
    "image": "cnapp-h5",
    "cpu": 0,
    "memory": 128,
    "logConfiguration": {
      "logDriver": "awslogs",
      "options": {
        "awslogs-region": "eu-central-1",
        "awslogs-group": "cnapp-h5",
        "awslogs-stream-prefix": "complete-ecs"
      }
    }
  }
]
EOF
}

resource "aws_ecr_repository" "cnapp-ecr" {
    name                 = "cnapp20"
    image_tag_mutability = "MUTABLE"

    image_scanning_configuration {
        scan_on_push = true
    }
}

resource "aws_ecs_service" "cnapp-h5" {
  name = "cnapp-h5"
  cluster = var.cluster_id
  task_definition = aws_ecs_task_definition.cnapp-h5.arn

  desired_count = 1

  deployment_maximum_percent = 100
  deployment_minimum_healthy_percent = 0
}
