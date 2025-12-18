rgs = {
  rg1 = {
    name     = "test_dev_rg"
    location = "centralindia"
  }
}

stgs = {
  "std1" = {
    name                     = "stddev20251218"
    resource_group_name      = "test_dev_rg"
    location                 = "centralindia"
    account_tier             = "Standard"
    account_replication_type = "GRS"
  }
}

sql_server = {
  "server1" = {
    name                         = "sqlserveranmol123"
    resource_group_name          = "test_dev_rg"
    location                     = "centralindia"
    version                      = "12.0"
    administrator_login          = "testlogin"
    administrator_login_password = "YOUR_SECURE_PASSWORD_HERE"
    minimum_tls_version          = "1.2"
  }
}

serverdata = {
  "server1" = {
    name                = "sqlserveranmol123"
    resource_group_name = "test_dev_rg"
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
    name                        = "testdevleyvault"
    location                    = "centralindia"
    resource_group_name         = "test_dev_rg"
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
    resource_group_name = "test_dev_rg"
    allocation_method   = "Static"
  }
  "pip2" = {
    name                = "publicip2"
    location            = "centralindia"
    resource_group_name = "test_dev_rg"
    allocation_method   = "Static"
  }
}

admin_password = "YOUR_SECURE_PASSWORD_HERE"
