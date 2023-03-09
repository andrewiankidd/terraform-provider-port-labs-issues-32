resource "port-labs_blueprint" "sql-server" {
  provider        = port
  title           = "SQL Server"
  icon            = "Server"
  identifier      = "sql-server"

  relations {
    identifier = port-labs_blueprint.environment.identifier
    target     = port-labs_blueprint.environment.identifier
    title      = "Environment"
    many       = true
  }

  properties {
    identifier = "sku"
    type       = "string"
    title      = "SKU"
  }
}

resource "port-labs_blueprint" "environment" {
  provider        = port
  title           = "Environment"
  icon            = "Environment"
  identifier      = "environment"

  properties {
    identifier = "hosting"
    type       = "string"
    title      = "Hosting"
    enum       = ["Other", "Azure", "AWS", "GCP"]
    default    = "Other"
  }
}