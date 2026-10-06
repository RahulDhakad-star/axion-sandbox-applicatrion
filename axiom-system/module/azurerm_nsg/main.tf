resource "azurerm_network_security_group" "nsgs" {
  for_each = var.child-nsg

  name                = each.value.nsg_name
  location            = each.value.location
  resource_group_name = each.value.resource_group_name
  
  security_rule {
    name                       = "test123"
    priority                   = 100
    direction                  = "Inbound"
    access                     = "Allow"
    protocol                   = "Tcp"
    source_port_range          = "*"
    destination_port_range     = "22"
    source_address_prefix      = "*"
    destination_address_prefix = "*"
  }
}