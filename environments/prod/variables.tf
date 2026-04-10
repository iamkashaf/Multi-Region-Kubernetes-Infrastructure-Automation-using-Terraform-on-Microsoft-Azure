variable "project_name" {
  type = string
}

variable "regions" {
  type = list(string)
}

variable "tags" {
  type = map(string)
}

variable "acr_sku" {
  type = string
}

variable "acr_names" {
  description = "ACR names per region"
  type        = map(string)
}

variable "kv_names" {
  type = map(string)
}

variable "endpoints" {
  description = "Traffic Manager endpoints"
  type = list(object({
    name     = string
    target   = string
    priority = number
  }))
}