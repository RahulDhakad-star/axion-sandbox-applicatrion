data "azurerm_network_interface" "nics" {
  for_each = var.child-vm
  name                = each.value.nic_name
  resource_group_name = each.value.resource_group_name
}
data "azurerm_network_security_group" "nsgs" {
  for_each = var.child-vm
  name                = each.value.nsg_name
  resource_group_name = each.value.resource_group_name
}