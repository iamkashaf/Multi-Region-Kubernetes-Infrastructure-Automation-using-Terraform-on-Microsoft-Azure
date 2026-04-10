variable "region" {}
variable "rg_name" {}
variable "node_count" {}
variable "tags" {}
variable "subnet_id" {
  description = "The ID of the subnet for the AKS cluster"
  type        = string
}