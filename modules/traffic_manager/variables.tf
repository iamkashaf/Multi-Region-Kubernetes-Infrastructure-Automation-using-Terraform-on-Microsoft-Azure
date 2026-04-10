variable "rg_name" {}

variable "endpoints" {
  description = "Traffic Manager endpoints"
  type = list(object({
    name     = string
    target   = string
    priority = number
  }))
  default = []
}