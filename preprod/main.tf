module "resource_group_aiapp" {

  source              = "../modules/azurerm_resource_group"
  resource_group_name = "rg-aiapp"
  location            = "uksouth"

}


module "virtual_network" {

  source = "../modules/azurerm_virtual_network"
  vnet_name = "secure_vnet_for_ai"
  ip_address_range = "[10.0.0.0/16]"
  resource_group_name = "rg-aiapp"
  location = "uksouth"
  
}