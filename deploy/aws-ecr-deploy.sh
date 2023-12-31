# Install AWS Command Line Interface
# https://aws.amazon.com/cli/
apk add --update python python-dev py-pip
pip install awscli --upgrade

docker pull $CI_REGISTRY_IMAGE:$CI_COMMIT_REF_NAME

# Set AWS config variables used during the AWS get-login command below
export AWS_ACCESS_KEY_ID=$AWS_ACCESS_KEY_ID
export AWS_SECRET_ACCESS_KEY=$AWS_SECRET_ACCESS_KEY

# Log into AWS docker registry
# The `aws ecr get-login` command returns a `docker login` command with
# the credentials necessary for logging into the AWS Elastic Container Registry
# made available with the AWS access key and AWS secret access keys above.
# The command returns an extra newline character at the end that needs to be stripped out.
$(aws ecr get-login --no-include-email --region $AWS_REGION | tr -d '\r')

# Push the updated Docker container to the AWS registry.
# Using the $CI_ENVIRONMENT_SLUG variable provided by GitLab, we can use this same script
# for all of our environments (production and staging). This variable equals the environment
# name defined for this job in gitlab-ci.yml.
docker tag $CI_REGISTRY_IMAGE:$CI_COMMIT_REF_NAME $AWS_REGISTRY_IMAGE:$CI_ENVIRONMENT_SLUG
docker push $AWS_REGISTRY_IMAGE:$CI_ENVIRONMENT_SLUG