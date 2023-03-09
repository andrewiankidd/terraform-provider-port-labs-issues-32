terraform {
  required_providers {
    port = {
      source  = "port-labs/port-labs"
      version = "=0.8.4"
    }
  }
}

provider "port" {
  client_id = var.port_client_id
  secret    = var.port_api_key
}