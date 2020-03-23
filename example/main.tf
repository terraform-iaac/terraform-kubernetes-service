module "service_discovery_jenkins" {
  source = "../"
  app_name = var.app_name
  app_namespace = var.app_namespace
  port_mapping = var.port_mapping
}