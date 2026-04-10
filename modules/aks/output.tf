output "aks_name" {
  value = azurerm_kubernetes_cluster.aks.name
}

output "fqdn" {
  value = azurerm_kubernetes_cluster.aks.fqdn
}