resource "azurerm_traffic_manager_profile" "tm" {
  name                   = "tm-global-profile"
  resource_group_name    = var.rg_name
  traffic_routing_method = "Priority"

  dns_config {
    relative_name = "multi-region-app"
    ttl           = 60
  }

  monitor_config {
    protocol = "HTTP"
    port     = 80
    path     = "/"
  }
}

resource "azurerm_traffic_manager_external_endpoint" "tm_endpoints" {
  for_each = { for ep in var.endpoints : ep.name => ep }

  name       = each.value.name
  profile_id = azurerm_traffic_manager_profile.tm.id

  target   = each.value.target
  priority = each.value.priority
}