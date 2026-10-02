resource "azurerm_network_interface_security_group_association" "nsg-nic-associations" {
  for_each = var.child-vm
  network_interface_id      = data.azurerm_network_interface.nics[each.key].id
  network_security_group_id = data.azurerm_network_security_group.nsgs[each.key].id
}

  resource "azurerm_linux_virtual_machine" "vms" {
  for_each = var.child-vm
  name                = each.value.vm_name
  resource_group_name = each.value.resource_group_name
  location            = each.value.location
  size                = each.value.vm_size
  admin_username      = each.value.admin_username
  network_interface_ids = [data.azurerm_network_interface.nics[each.key].id]

  disable_password_authentication = false
  admin_password                  = each.value.admin_password

  os_disk {
    caching              = "ReadWrite"
    storage_account_type = "Standard_LRS"
  }

  source_image_reference {
    publisher = "Canonical"
    offer     = "0001-com-ubuntu-server-jammy"
    sku       = "22_04-lts"
    version   = "latest"
  }
}