resource "azurerm_resource_group" "myTerraformGroup" {
location = var.location
name = var.resoureGroupName
tags = var.tags

}