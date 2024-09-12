# aks-cluster

## Set Up GitHub Secrets
    1. Azure Service Principal: Create a service principal in Azure which GitHub will use to interact with Azure services.
    ```sh 
        az ad sp create-for-rbac --name {your-service-principal-name} --role contributor --scopes /subscriptions/{your-subscription-id} --sdk-auth
    ```
This command will output a JSON object. Store it securely; you'll need it for the GitHub secrets.