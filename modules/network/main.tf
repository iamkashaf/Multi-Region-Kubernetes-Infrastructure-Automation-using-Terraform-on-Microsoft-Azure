resource "azurerm_virtual_network" "vnet" {
  name                = "vnet-${replace(var.region, " ", "-")}"
  location            = var.region
  resource_group_name = var.rg_name
  address_space       = ["10.0.0.0/16"]
  tags                = var.tags
}

resource "azurerm_subnet" "subnet" {
  name                 = "subnet-${replace(var.region, " ", "-")}"
  resource_group_name  = var.rg_name
  virtual_network_name = azurerm_virtual_network.vnet.name
  address_prefixes     = ["10.0.1.0/24"]
}