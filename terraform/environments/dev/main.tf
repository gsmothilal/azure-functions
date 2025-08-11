provider "azurerm" {
  features {}
}

module "function" {
  source                  = "../../modules/functions"
  resource_group_name     = var.resource_group_name
  resource_group_location = var.resource_group_location
  storage_account_name    = var.storage_account_name
  storage_account_replication_type = var.storage_account_replication_type
  storage_account_tier = var.storage_account_tier
  app_service_plan_name = var.app_service_plan_name
  app_service_plan_sku_size = var.app_service_plan_sku_size
  app_service_plan_sku_tier = var.app_service_plan_sku_tier
  function_app_name = var.function_app_name

}
