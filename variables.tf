variable "app_name" {
  description = "(Required) Application name for attach to service"
}
variable "app_namespace" {
  description = "(Required) Namespace where located application"
}
variable "port_mapping" {
  description = "(Required) Mapping ports from container to expose port"
}