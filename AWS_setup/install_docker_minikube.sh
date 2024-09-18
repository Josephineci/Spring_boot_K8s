#!/bin/bash

# Switch to root user
sudo su

# Update the system
yum update -y

# Install Docker
yum install docker -y

# Enable Docker to start on boot
systemctl enable docker

# Start Docker service
systemctl start docker

# Check Docker service status
systemctl status docker

# Check Docker version
docker --version

# Download Minikube
curl -LO https://storage.googleapis.com/minikube/releases/latest/minikube-linux-amd64

# Install Minikube and remove the downloaded file
sudo install minikube-linux-amd64 /usr/local/bin/minikube && rm minikube-linux-amd64

# Start Minikube with Docker as the driver
/usr/local/bin/minikube start --force --driver=docker
