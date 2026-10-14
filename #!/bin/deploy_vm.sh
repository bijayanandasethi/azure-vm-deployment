#!/bin/bash
# Azure Infrastructure Deployment Script

RESOURCE_GROUP="rg-cv-monitoring"
LOCATION="eastus"
VM_NAME="devops-ubuntu-vm"

echo "Creating Azure Resource Group..."
az group create --name $RESOURCE_GROUP --location $LOCATION

echo "Deploying Ubuntu Virtual Machine..."
az vm create \
  --resource-group $RESOURCE_GROUP \
  --name $VM_NAME \
  --image Ubuntu2204 \
  --admin-username azureuser \
  --generate-ssh-keys

echo "Deployment completed successfully!"
