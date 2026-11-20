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
