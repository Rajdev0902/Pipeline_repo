resource "azurerm_public_ip" "myStandardPublicIP" {
  for_each            = var.publicip
  name                = each.value.pip_name
  resource_group_name = each.value.rg_name
  location            = each.value.location
  allocation_method   = each.value.allocation_method
  sku                 = each.value.sku
  ip_version          = each.value.ip_version
  zones               = each.value.zones
}
