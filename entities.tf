resource "port-labs_entity" "environment" {
  provider    = port
  title       = var.base_name
  identifier  = var.base_name
  blueprint   = port-labs_blueprint.environment.identifier

  properties {
    name  = "hosting"
    value = "Azure"
  }
}

resource "port-labs_entity" "sql-server" {
  provider    = port
  title       = "${var.base_name}-sql"
  identifier  = "${var.base_name}-sql"
  blueprint   = "sql-server"

  relations {
    name       = "environment"
    identifier = port-labs_entity.environment.identifier
  }

  properties {
    name  = "sku"
    value = "S1"
  }
}