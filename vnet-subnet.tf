resource "azurerm_virtual_network" "myTerraformNetwork" {
  name                = var.vnetname
  location            = var.location
  resource_group_name = azurerm_resource_group.myTerraformGroup.name
  address_space       = ["10.0.0.0/16"]
  tags = var.tags
  subnet {
    name           = var.subnetname
    address_prefix = "10.0.1.0/24"
  }
}
resource "azurerm_subnet" "mySubnet1" {
  name                 = var.subnetname
  resource_group_name  = azurerm_resource_group.myTerraformGroup.name
  virtual_network_name = azurerm_virtual_network.myTerraformNetwork.name
  address_prefixes     = ["10.0.1.0/24"]
}