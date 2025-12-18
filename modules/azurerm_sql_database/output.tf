output "database_ids" {
  value = {
    for k, v in azurerm_mssql_database.database : k => v.id
  }
  description = "SQL Database resource IDs"
}

output "database_names" {
  value = {
    for k, v in azurerm_mssql_database.database : k => v.name
  }
  description = "SQL Database names"
}
