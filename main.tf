provider "azurerm" {
  features {}
}
resource "azurerm_resource_group" "rg" {
  name     = "Test"
  location = "eastus"
}
resource "azurerm_virtual_network" "example" {
  name                = "Test_vnet"
  location            = azurerm_resource_group.rg.location
  resource_group_name = azurerm_resource_group.rg.name
  address_space       = ["10.0.0.0/16"]
  
  subnet {
    name           = "subnet1"
    address_prefix = "10.0.1.0/24"
  }

