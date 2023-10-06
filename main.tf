provider "azurerm" {
  features {}
}

resource "azurerm_resource_group" "example" {
  name     = "my-resource-group"
  location = "East US"  # Change to your desired region
}

resource "azurerm_databricks_workspace" "example" {
  name                = "my-databricks-workspace"
  resource_group_name = azurerm_resource_group.example.name
  location            = azurerm_resource_group.example.location
  sku                 = "standard"  # You can choose the SKU according to your requirements
}

