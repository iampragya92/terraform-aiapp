module "resource_group_aiapp" {

  source              = "../modules/azurerm_resource_group"
  resource_group_name = "rg-aiapp"
  location            = "uksouth"

}