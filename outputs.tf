// A list containing ingress points for the load-balancer (only valid if type = "LoadBalancer")

output "load_balancer_ingress_ip" {
  value = var.type == "LoadBalancer" ? kubernetes_service.service.load_balancer_ingress[0].ip : null
}
output "load_balancer_ingress_hostname" {
  value = var.type == "LoadBalancer" ? kubernetes_service.service.load_balancer_ingress[0].hostname : null
}

// K8S Resource id
output "id" {
  value = kubernetes_service.service.id
}