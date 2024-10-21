#!/bin/bash

RESOURCE_GROUP=rg-aks-dev
LOCATION=uksouth

az group create --resource-group $RESOURCE_GROUP --location $LOCATION

az deployment group create --resource-group $RESOURCE_GROUP  --parameters dev.bicepparam