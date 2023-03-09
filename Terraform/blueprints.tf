resource "port-labs_blueprint" "sql-server" {
  provider        = port
  title           = "SQL Server"
  icon            = "Server"
  identifier      = "${var.base_name}-sql"

  relations {
    identifier = "environment-rel"
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
  identifier      = "${var.base_name}-env"

  properties {
    identifier = "hosting"
    type       = "string"
    title      = "Hosting"
    enum       = ["Other", "Azure", "AWS", "GCP"]
    default    = "Other"
  }
}