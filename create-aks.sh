#!/bin/bash
az group create --name aks-github-grp --location francecentral
az aks create --resource-group aks-github-grp --name aks-scripted-cluster --node-count 1 --node-vm-size Standard_B2s --enable-addons monitoring --generate-ssh-keys --location fracecentral
