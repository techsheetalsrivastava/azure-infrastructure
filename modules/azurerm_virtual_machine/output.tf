output "vm_ids" {
  value = {
    for k, v in azurerm_linux_virtual_machine.vm : k => v.id
  }
  description = "Virtual machine resource IDs"
}

output "vm_names" {
  value = {
    for k, v in azurerm_linux_virtual_machine.vm : k => v.name
  }
  description = "Virtual machine names"
}

output "nic_ids" {
  value = {
    for k, v in azurerm_network_interface.nic : k => v.id
  }
  description = "Network interface resource IDs"
}
