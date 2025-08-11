variable "resource_group_name" {
  description = "The name of the resource group"
  type        = string
}

variable "resource_group_location" {
  description = "The Azure location where the resource group will be created"
  type        = string
}

variable "storage_account_name" {
  description = "The name of the storage account"
  type        = string
}

variable "storage_account_tier" {
  description = "The storage account tier"
  type        = string
}

variable "storage_account_replication_type" {
  description = "The replication type for the storage account"
  type        = string
}

variable "app_service_plan_name" {
  description = "The name of the App Service Plan"
  type        = string
}

variable "app_service_plan_sku_tier" {
  description = "The SKU tier for the App Service Plan"
  type        = string
}

variable "app_service_plan_sku_size" {
  description = "The SKU size for the App Service Plan"
  type        = string
}

variable "function_app_name" {
  description = "The name of the Azure Function App"
  type        = string
}