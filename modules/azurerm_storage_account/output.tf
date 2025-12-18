output "storage_account_ids" {
  value = {
    for k, v in azurerm_storage_account.stg : k => v.id
  }
  description = "Storage account resource IDs"
}

output "storage_account_names" {
  value = {
    for k, v in azurerm_storage_account.stg : k => v.name
  }
  description = "Storage account names"
}
