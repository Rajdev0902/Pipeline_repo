data "azurerm_subnet" "subnetkitizori" {
  for_each             = var.bastion
  name                 = each.value.sub_name  # Name of the subnet
  virtual_network_name = each.value.vnet_name # Name of the virtual network
  resource_group_name  = each.value.rg_name   # Resource group containing the virtual network
}

data "azurerm_public_ip" "pipdata" {
  for_each            = var.bastion
  name                = each.value.pip_name
  resource_group_name = each.value.rg_name
}
