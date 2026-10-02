resource "azurerm_network_interface" "nics" {
  for_each = var.child-nic

  name                = each.value.nic_name            # String
  location            = each.value.location            # String
  resource_group_name = each.value.resource_group_name # String

  ip_configuration { # Block
    name                          = "internal"
    subnet_id                     = data.azurerm_subnet.subnets[each.key].id
    public_ip_address_id          = data.azurerm_public_ip.pips[each.key].id
    private_ip_address_allocation = "Dynamic"
  }


}

