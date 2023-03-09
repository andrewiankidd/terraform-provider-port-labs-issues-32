# Dummy Repro Project
#### https://github.com/port-labs/terraform-provider-port-labs/issues/32

## Steps
Run the following commands:
 - cd ./terraform
 - terraform init
 - terraform apply --auto-approve
Resources are created:
```
Plan: 4 to add, 0 to change, 0 to destroy.
port-labs_blueprint.environment: Creating...
port-labs_blueprint.environment: Creation complete after 1s [id=testing-env]
port-labs_entity.environment: Creating...
port-labs_blueprint.sql-server: Creating...
port-labs_entity.environment: Creation complete after 0s [id=testing]
port-labs_blueprint.sql-server: Creation complete after 0s [id=testing-sql]
port-labs_entity.sql-server: Creating...
port-labs_entity.sql-server: Creation complete after 0s [id=testing-sql]

Apply complete! Resources: 4 added, 0 changed, 0 destroyed.
```
Re-run the following command:
 - terraform apply --auto-approve
Exception is thrown:
```
port-labs_blueprint.environment: Refreshing state... [id=testing-env]
port-labs_entity.environment: Refreshing state... [id=testing]
port-labs_blueprint.sql-server: Refreshing state... [id=testing-sql]
port-labs_entity.sql-server: Refreshing state... [id=testing-sql]
╷
│ Error: json: cannot unmarshal array into Go struct field Entity.entity.relations of type string
│
│   with port-labs_entity.sql-server,
│   on entities.tf line 13, in resource "port-labs_entity" "sql-server":
│   13: resource "port-labs_entity" "sql-server" {
│
╵
```