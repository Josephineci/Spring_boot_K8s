#!/bin/bash

# Install curl command
sudo apt install curl -y

# Download the latest stable release of kubectl
curl -LO "https://dl.k8s.io/release/$(curl -L -s https://dl.k8s.io/release/stable.txt)/bin/linux/amd64/kubectl"


# Install kubectl and set the appropriate permissions
sudo install -o root -g root -m 0755 kubectl /usr/local/bin/kubectl

# Verify the kubectl installation
kubectl version --client
