FROM gitpod/workspace-full

# Install Docker
USER root
RUN apt-get update && apt-get install -y docker.io

# Enable Docker daemon
RUN dockerd-entrypoint.sh &

# Pull Terraform Docker image (light version)
RUN docker pull hashicorp/terraform:light
