#!/bin/bash

# Start Docker daemon (wait a moment)
sudo service docker start
sleep 5

echo "✅ Docker daemon started."

# Run Terraform container with volume mount
docker run --rm -it -v $(pwd):/workspace -w /workspace hashicorp/terraform:light terraform init
docker run --rm -it -v $(pwd):/workspace -w /workspace hashicorp/terraform:light terraform plan

echo ""
echo "📦 Selesai! Ketik perintah berikut untuk provisioning:"
echo "👉 docker run --rm -it -v \$(pwd):/workspace -w /workspace hashicorp/terraform:light terraform apply"
