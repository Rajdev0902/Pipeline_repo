resource "azurerm_network_interface" "mirzapurnic" {
  for_each            = var.nics
  name                = each.value.nic_name
  location            = each.value.location
  resource_group_name = each.value.rg_name

  ip_configuration {
    name                          = each.value.configuration_name
    subnet_id                     = data.azurerm_subnet.subnetkitizori[each.key].id
    private_ip_address_allocation = each.value.private_ip_address_allocation
  }
}

