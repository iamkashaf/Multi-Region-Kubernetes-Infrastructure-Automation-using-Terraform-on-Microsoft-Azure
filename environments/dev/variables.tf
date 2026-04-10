variable "project_name" {}
variable "regions" {}
variable "tags" {}

variable "kv_names" {
  type = map(string)
}
variable "acr_names" {
  type = map(string)
}