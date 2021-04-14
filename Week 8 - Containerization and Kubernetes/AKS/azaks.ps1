[CmdletBinding()]
param (

    $name = 'cloudskillsndr2021',
    $rgName = 'cloudskills',
    $nodeCount = 1,
    $kubernetesVersion = '1.19.7'
)

az aks create --generate-ssh-keys `
              --name $name `
              --resource-group $rgName `
              --node-count $nodeCount `
              --kubernetes-version $kubernetesVersion