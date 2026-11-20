resource "azurerm_resource_group" "lab" {
  name     = "rg-terraform-mcp-lab"
  location = "southafricanorth"
}

resource "azurerm_virtual_network" "lab" {
  name                = "vnet-terraform-mcp-lab"
  location            = azurerm_resource_group.lab.location
  resource_group_name = azurerm_resource_group.lab.name
  address_space       = ["10.50.0.0/16"]
}

resource "azurerm_subnet" "application" {
  name                 = "snet-application"
  resource_group_name  = azurerm_resource_group.lab.name
  virtual_network_name = azurerm_virtual_network.lab.name
  address_prefixes     = ["10.50.1.0/24"]
}

resource "azurerm_subnet" "management" {
  name                 = "snet-management"
  resource_group_name  = azurerm_resource_group.lab.name
  virtual_network_name = azurerm_virtual_network.lab.name
  address_prefixes     = ["10.50.2.0/24"]
}
