variable "app_name" {
  description = "(Required) Application name for attach to service"
}
variable "app_namespace" {
  description = "(Required) Namespace where located application"
}
variable "port_mapping" {
  description = "(Required) Mapping ports from container to expose port"
}
variable "type" {
  default = null
  description = "(Optional) Default is ClusterIP. Can accept: NodePort , LoadBalancer ."
}
variable "load_balancer_ip" {
  description = "(Optional) !!!Only applies with type = LoadBalancer!!! Define External Static IP address."
  default = null
}
variable "load_balancer_ips_whitelist" {
  default = null
  description = "(Optional) !!!Only applies with type = LoadBalancer!!! Define IPs cidr range for whitelist in Load Balancer. By default accept all IPs."
}
variable "annotations" {
  description = "(Optional) Add annotations"
  default = {}
}