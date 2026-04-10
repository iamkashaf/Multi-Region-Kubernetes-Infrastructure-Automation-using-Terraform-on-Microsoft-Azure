project_name = "devopsproj-prod"

regions = [
  "Central India",
  "South India"
]

acr_sku = "Standard"

tags = {
  environment = "prod"
  project     = "devopsproj"
  owner       = "devops-team"
}

# REGION-WISE ACR NAMES
acr_names = {
  "Central India" = "acrdevopsprojci"
  "South India"   = "acrdevopsprojsi"
}

kv_names = {
  "Central India" = "kvdevopsprojciprod"
  "South India"   = "kvdevopsprojsiprod"
}

endpoints = [
  {
    name     = "primary"
    target   = "example.com"
    priority = 1
  },
  {
    name     = "secondary"
    target   = "example.org"
    priority = 2
  }
]