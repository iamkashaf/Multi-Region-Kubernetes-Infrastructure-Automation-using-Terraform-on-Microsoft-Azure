resource "azurerm_kubernetes_cluster" "aks" {
  name                = "aks-${replace(var.region, " ", "-")}"
  location            = var.region
  resource_group_name = var.rg_name
  dns_prefix          = "aks-${replace(var.region, " ", "")}"

  private_cluster_enabled = true

  network_profile {
    network_plugin = "azure"
    service_cidr   = "172.16.0.0/16"
    dns_service_ip = "172.16.0.10"
  }

  default_node_pool {
    name       = "system"
    node_count = var.node_count
    vm_size    = "Standard_DS2_v2"
    vnet_subnet_id = var.subnet_id

    auto_scaling_enabled =  true
    min_count           = 2
    max_count           = 5
  }

  identity {
    type = "SystemAssigned"
  }

  tags = var.tags
}