module "rg" {
  source = "../../modules/resource_group"

  for_each     = toset(var.regions)
  region       = each.key
  project_name = var.project_name
  tags         = var.tags
}

module "network" {
  source = "../../modules/network"

  for_each = toset(var.regions)
  region   = each.key
  rg_name  = module.rg[each.key].rg_name
  tags     = var.tags
}

module "acr" {
  source = "../../modules/acr"

  for_each = toset(var.regions)

  region  = each.key
  rg_name = module.rg[each.key].rg_name
  acr_sku = var.acr_sku
  tags    = var.tags

  acr_name = var.acr_names[each.key]
}

module "aks" {
  source = "../../modules/aks"

  for_each   = toset(var.regions)
  region     = each.key
  rg_name    = module.rg[each.key].rg_name
  node_count = 3
  subnet_id  = module.network[each.key].subnet_id
  tags       = var.tags
}

module "keyvault" {
  source = "../../modules/keyvault"

  for_each = toset(var.regions)

  region  = each.key
  rg_name = module.rg[each.key].rg_name
  tags    = var.tags

  kv_name = var.kv_names[each.key]
}

module "traffic_manager" {
  source  = "../../modules/traffic_manager"
  rg_name = module.rg["Central India"].rg_name

  endpoints = var.endpoints
}