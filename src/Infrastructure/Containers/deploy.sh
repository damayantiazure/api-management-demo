#!/bin/bash

export resourceGroupName="APIM-DEVOPS"
export location="westeurope"
export APP_NAME="solar"
export APP_ENV="dev"
export TAG_NAME="beta2"

echo "Starting deploying the app provisioning..."


echo "Deploying app Bicep file..."
az deployment group create --resource-group $resourceGroupName --template-file 'app.bicep'  --parameters app.bicepparam