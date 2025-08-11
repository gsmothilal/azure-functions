resource "azurerm_resource_group" "fnresource" {
  name     = var.resource_group_name
  location = var.resource_group_location
}

resource "azurerm_storage_account" "fnstorage" {
  name                     = var.storage_account_name
  resource_group_name      = azurerm_resource_group.fnresource.name
  location                 = azurerm_resource_group.fnresource.location
  account_tier             = var.storage_account_tier
  account_replication_type = var.storage_account_replication_type
}

resource "azurerm_app_service_plan" "fnserviceplan" {
  name                = var.app_service_plan_name
  location            = azurerm_resource_group.fnresource.location
  resource_group_name = azurerm_resource_group.fnresource.name

  sku {
    tier = var.app_service_plan_sku_tier
    size = var.app_service_plan_sku_size
  }
}

resource "azurerm_function_app" "fnapp" {
  name                       = var.function_app_name
  location                   = azurerm_resource_group.fnresource.location
  resource_group_name        = azurerm_resource_group.fnresource.name
  app_service_plan_id        = azurerm_app_service_plan.fnserviceplan.id
  storage_account_name       = azurerm_storage_account.fnstorage.name
  storage_account_access_key = azurerm_storage_account.fnstorage.primary_access_key
}