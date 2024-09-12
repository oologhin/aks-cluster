# aks-cluster

## Set Up GitHub Secrets
    1. Azure Service Principal: Create a service principal in Azure which GitHub will use to interact with Azure services.
    ```sh 
        az ad sp create-for-rbac --name {your-service-principal-name} --role contributor --scopes /subscriptions/{your-subscription-id} --sdk-auth
    ```
    ```
      az ad sp create-for-rbac --name "myGitHubActionsSP" --role contributor --scopes /subscriptions/46cf369b-3d74-478f-8d34-e785543b68e2 --sdk-auth
    ```
This command will output a JSON object. Store it securely; you'll need it for the GitHub secrets.

Make sure you introduce the secrets in gitlab

##Steps to Store the Output Securely
    Run the Command: Use the command line to run the corrected command.
    Copy the JSON Output: Make sure to copy the entire JSON output securely.
    Store in GitHub Secrets:
        Navigate to your GitHub repository.
        Go to Settings > Secrets.
        Click on New repository secret.
        Name the secret AZURE_CREDENTIALS.
        Paste the JSON output into the value field.