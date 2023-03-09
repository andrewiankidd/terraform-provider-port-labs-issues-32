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
  blueprint   = port-labs_blueprint.sql-server.identifier

  relations {
    name       = "environment-rel"
    identifier = port-labs_entity.environment.identifier
  }

  properties {
    name  = "sku"
    value = "S1"
  }
}