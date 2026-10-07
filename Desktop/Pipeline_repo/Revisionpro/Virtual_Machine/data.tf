data "azurerm_network_interface" "nicdata" {
  for_each              = var.Vmachine
  name                = each.value.nic_name
  resource_group_name = each.value.rg_name
}