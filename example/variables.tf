variable "app_name" {
  default = "jenkins"
}

variable "app_namespace" {
  default = "ci-tools"
}

variable "port_mapping" {
  default = [
    {
      name = "web-access" // Port name
      internal_port = "8080" //Pod port
      external_port = "80" //Port for others container's
    },
    {
      name = "service-port" // Port name
      internal_port = "3000" //Pod port
      external_port = "90" //Port for others container's
    }
  ]
}