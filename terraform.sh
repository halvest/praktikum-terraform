#!/bin/bash

# Start Docker daemon
sudo service docker start
echo "🚀 Docker daemon started."

# Init Terraform
terraform init
