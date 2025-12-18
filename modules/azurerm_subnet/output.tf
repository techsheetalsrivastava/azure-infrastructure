output "subnet_ids" {
  value = {
    for k, v in azurerm_subnet.subnet : k => v.id
  }
  description = "Subnet resource IDs"
}

output "subnet_names" {
  value = {
    for k, v in azurerm_subnet.subnet : k => v.name
  }
  description = "Subnet names"
}
