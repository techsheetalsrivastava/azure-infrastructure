
variable "vms" {
  type = map(object({
    vm_name             = string
    location            = string
    resource_group_name = string
    size                = string
    admin_username      = string
    nic_name            = string
    ip_configuration = map(object({
      name                          = string
      private_ip_address_allocation = string
    }))
  }))
}

variable "subnet_ids" {
  type = map(string)
}

variable "pip_ids" {
  type = map(string)
}
variable "admin_password" {
  type        = string
  sensitive   = true
  description = "Admin password for the virtual machines"
}