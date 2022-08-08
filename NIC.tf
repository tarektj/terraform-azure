resource "azurerm_network_interface" "myNIC" {
  name                = var.nicname
  location            = var.location
  resource_group_name = azurerm_resource_group.myTerraformGroup.name

  ip_configuration {
    name                          = "internal"
    subnet_id                     = azurerm_subnet.mySubnet1.id
    private_ip_address_allocation = "Dynamic"
    public_ip_address_id = azurerm_public_ip.myPublicIP.id
  }
  tags = var.tags
}
resource "azurerm_network_interface_security_group_association" "NISGA" {
  network_interface_id      = azurerm_network_interface.myNIC.id
  network_security_group_id = azurerm_network_security_group.myTerraformNSG.id
}