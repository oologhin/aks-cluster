#!/bin/bash
az group create --name MyResourceGroup --location eastus
az aks create --resource-group MyResourceGroup --name MyAKSCluster --node-count 1 --enable-addons monitoring --generate-ssh-keys
