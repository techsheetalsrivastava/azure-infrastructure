output "sql_server_ids" {
  value = {
    for k, v in azurerm_mssql_server.sqlserver : k => v.id
  }
  description = "SQL Server resource IDs"
}

output "sql_server_names" {
  value = {
    for k, v in azurerm_mssql_server.sqlserver : k => v.name
  }
  description = "SQL Server names"
}
