module "resource_group" {
  source = "../child_module/azurerm_resource_group"
  rg1    = var.rg12
}

module "storage_account" {
  depends_on = [module.resource_group]
  source     = "../child_module/azurerm_storage_account"
  devstr     = var.devstr123
}
