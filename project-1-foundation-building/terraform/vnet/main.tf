resource "azurerm_virtual_network" "hub" {
  name                = "vnet-hub-eus"
  location            = "eastus"
  resource_group_name = "rg-net"
  address_space       = ["10.10.0.0/16"]
  tags                = { env = "dev" }
}
resource "azurerm_subnet" "app" {
  name                 = "snet-app"
  resource_group_name  = "rg-net"
  virtual_network_name = azurerm_virtual_network.hub.name
  address_prefixes     = ["10.10.1.0/24"]
}

