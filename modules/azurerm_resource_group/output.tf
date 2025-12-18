output "rg_ids" {
  value = {
    for k, v in azurerm_resource_group.rg : k => v.id
  }
  description = "Resource group IDs"
}

output "rg_names" {
  value = {
    for k, v in azurerm_resource_group.rg : k => v.name
  }
  description = "Resource group names"
}
