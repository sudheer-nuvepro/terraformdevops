provider "azurerm" {
  version = "3.71.0"
  features {}
}

resource "azurerm_resource_group" "example" {
  name     = "Test"
  location = "eastus"
}

output "id" {
  value = data.azurerm_resource_group.example.id
}