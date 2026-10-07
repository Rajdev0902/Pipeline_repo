data "azurerm_subnet" "subnetkitizori" {
    for_each = var.nics
  name                 = each.value.sub_name   # Name of the subnet
  virtual_network_name = each.value.vnet_name# Name of the virtual network
  resource_group_name  = each.value.rg_name # Resource group containing the virtual network
}

