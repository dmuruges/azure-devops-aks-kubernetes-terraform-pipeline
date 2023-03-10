# Create Outputs
# 1. Resource Group Location
# 2. Resource Group Id
# 3. Resource Group Name

output "resource_group_name" {
    value = azurerm_resource_group.aks_rg.name
}

output "location" {
    value = azurerm_resource_group.aks_rg.location
}

output "resource_group_id" {
    value = azurerm_resource_group.aks_rg.id
}




# Azure AKS Versions Datasource
output "versions" {
  value = data.azurerm_kubernetes_service_versions.current.versions
}

output "latest_version" {
  value = data.azurerm_kubernetes_service_versions.current.latest_version
}

# Azure AKS Outputs

output "aks_cluster_id" {
  value = azurerm_kubernetes_cluster.aks_cluster.id
}

output "aks_cluster_name" {
  value = azurerm_kubernetes_cluster.aks_cluster.name
}

output "aks_cluster_kubernetes_version" {
  value = azurerm_kubernetes_cluster.aks_cluster.kubernetes_version
}

# AD Group 
output "azure_ad_group" {
  value = azuread_group.aks_administrators.object_id
}

output "azure_ad_group_id" {
  value = azuread_group.aks_administrators.id
}


