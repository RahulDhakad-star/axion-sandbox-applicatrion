resource "azurerm_resource_group" "rg" {
  for_each = var.child-rg
  name     = each.value.rg_name
  location = each.value.rg_location
}
