#!/bin/bash

# Define variables for resource group and cluster name
RESOURCE_GROUP="aks-github-grp"
CLUSTER_NAME="aks-scripted-cluster"
LOCATION="francecentral"

# Check if the cluster already exists
echo "Checking if the AKS cluster '$CLUSTER_NAME' in resource group '$RESOURCE_GROUP' already exists..."

if az aks show --name "$CLUSTER_NAME" --resource-group "$RESOURCE_GROUP" > /dev/null 2>&1; then
  echo "The AKS cluster '$CLUSTER_NAME' already exists in the resource group '$RESOURCE_GROUP'. Skipping creation."
else
  echo "The AKS cluster '$CLUSTER_NAME' does not exist. Creating it..."

  # Create the AKS cluster
  az aks create --resource-group "$RESOURCE_GROUP" --name "$CLUSTER_NAME" --node-count 1 --node-vm-size Standard_B2s --enable-addons monitoring --generate-ssh-keys --location "$LOCATION"

  echo "AKS cluster '$CLUSTER_NAME' created successfully."
fi
