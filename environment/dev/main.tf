module "rg" {
  source = "../../modules/azurerm_resource_group"
  rgs    = var.rgs
}

module "stgs" {
  depends_on = [module.rg]
  source     = "../../modules/azurerm_storage_account"
  stgs       = var.stgs
}

module "sqlserver" {
  depends_on = [module.rg]
  source     = "../../modules/azurerm_sql_server"
  sql_server = var.sql_server
}

module "database" {
  depends_on = [module.sqlserver]
  source     = "../../modules/azurerm_sql_database"
  databases  = var.databases
  serverdata = var.serverdata
}

module "keyvault" {
  depends_on = [module.rg]
  source     = "../../modules/azurerm_keyvault"
  kvs        = var.kvs
}

module "publicip" {
  depends_on = [module.rg]
  source     = "../../modules/azurerm_public_ip"
  pips       = var.pips
}