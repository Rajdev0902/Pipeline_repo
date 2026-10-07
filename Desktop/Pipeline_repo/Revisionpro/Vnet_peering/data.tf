data "azurerm_virtual_network" "vnnet" {
  for_each            = var.gtos
  name                = each.value.vnet2_name
  resource_group_name = each.value.rg2_name
}
