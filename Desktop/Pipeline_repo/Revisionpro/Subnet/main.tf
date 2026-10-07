resource "azurerm_subnet" "kaleenekanetwork" {
  for_each             = var.subnets
  name                 = each.value.subnets_name
  resource_group_name  = each.value.rg_name
  virtual_network_name = each.value.vnet_name
  address_prefixes     = each.value.address_prefixes
}
