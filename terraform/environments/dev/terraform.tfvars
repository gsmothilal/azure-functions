resource_group_name               = "Functions-rg"
resource_group_location           = "West Europe"

storage_account_name              = "functionsstorage19"           # No dashes; must be globally unique, lowercase
storage_account_tier              = "Standard"
storage_account_replication_type = "LRS"

app_service_plan_name            = "functions-service-plan"
app_service_plan_sku_tier        = "Standard"
app_service_plan_sku_size        = "S1"

function_app_name                = "functionsazapp"                # Must be globally unique if deployed publicly

tags = {
  environment = "dev"
  team        = "devops"
}
