output "keyvault_ids" {
  value = {
    for k, v in azurerm_key_vault.kvs : k => v.id
  }
  description = "Key Vault resource IDs"
}

output "keyvault_names" {
  value = {
    for k, v in azurerm_key_vault.kvs : k => v.name
  }
  description = "Key Vault names"
}
