resource "azurerm_public_ip" "myPublicIP" {
  name                    = var.ipaddressname
  location                = var.location
  resource_group_name     = azurerm_resource_group.myTerraformGroup.name
  allocation_method       = "Dynamic"
  idle_timeout_in_minutes = 30
  tags = var.tags
}
