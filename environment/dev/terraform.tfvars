rgs = {
  rg1 = {
    name     = "sheetalrg"
    location = "centralindia"
  }
}

vnets = {
  "vnet1" = {
    name                = "devops_vnet"
    location            = "centralindia"
    resource_group_name = "sheetalrg"
    address_space       = ["10.0.0.0/16"]
  }
}

subnets = {
  "sub1" = {
    name                = "devops_subnet"
    resource_group_name = "sheetalrg"
    address_prefixes    = ["10.0.1.0/24"]
    vnet                = "devops_vnet"
  }
}

stgs = {
  "std1" = {
    name                     = "stddev20251218"
    resource_group_name      = "sheetalrg"
    location                 = "centralindia"
    account_tier             = "Standard"
    account_replication_type = "GRS"
  }
}

sql_server = {
  "server1" = {
    name                         = "sqlserverdevops123"
    resource_group_name          = "sheetalrg"
    location                     = "centralindia"
    version                      = "12.0"
    administrator_login          = "adminlogin"
    administrator_login_password = "Admin@login123"
    minimum_tls_version          = "1.2"
  }
}

serverdata = {
  "server1" = {
    name                = "sqlserverdevops123"
    resource_group_name = "sheetalrg"
  }
}

databases = {
  "db1" = {
    name         = "sqldatabase"
    collation    = "SQL_Latin1_General_CP1_CI_AS"
    license_type = "LicenseIncluded"
    max_size_gb  = 2
    sku_name     = "S0"
    enclave_type = "VBS"
    server_key   = "server1"
  }
}

kvs = {
  kv1 = {
    name                        = "devopskeyvault"
    location                    = "centralindia"
    resource_group_name         = "sheetalrg"
    enabled_for_disk_encryption = true
    soft_delete_retention_days  = 7
    purge_protection_enabled    = false
    sku_name                    = "standard"
  }
}

pips = {
  "pip1" = {
    name                = "publicip1"
    location            = "centralindia"
    resource_group_name = "sheetalrg"
    allocation_method   = "Static"
  }
  "pip2" = {
    name                = "publicip2"
    location            = "centralindia"
    resource_group_name = "sheetalrg"
    allocation_method   = "Static"
  }
}
vms = {
  "nic1" = {
    nic_name            = "nic1"
    location            = "centralindia"
    resource_group_name = "sheetalrg"
    vm_name             = "testdevopsvm"
    size                = "Standard_F2"
    admin_username      = "adminuser"

    ip_configuration = {
      ip1 = {
        name                          = "internal"
        private_ip_address_allocation = "Dynamic"
      }
    }
  }
}