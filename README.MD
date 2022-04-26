# Simple Windows 2016 Server VM and Key Vault Demo Environment

This template allows you to deploy a simple Windows 2016 Server [Generation 2 VM](https://docs.microsoft.com/azure/virtual-machines/generation-2), using the latest patched version. This will deploy a D2s_v3 size VM in the resource group location and return the fully qualified domain name of the VM. Also, it deploys a Ke Valut, a Managed System Identity assigned to the VM with permission to access the Key Vault.

[![Deploy To Azure](https://raw.githubusercontent.com/Azure/azure-quickstart-templates/master/1-CONTRIBUTION-GUIDE/images/deploytoazure.svg?sanitize=true)](https://portal.azure.com/#create/Microsoft.Template/uri/https%3A%2F%2Fraw.githubusercontent.com%2FGastori%2Fcloudmapdemoenv%2Fmain%2Fdeploy.json)



## Note: for PoC only