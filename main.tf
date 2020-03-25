resource "kubernetes_service" "service" {
  metadata {
    name = var.app_name
    namespace = var.app_namespace
  }
  spec {
    selector = {
      app = var.app_name
    }
    dynamic "port" {
      iterator = port
      for_each = var.port_mapping
      content {
        name = port.value.name
        port = port.value.external_port
        target_port = port.value.internal_port
      }
    }
  }
}