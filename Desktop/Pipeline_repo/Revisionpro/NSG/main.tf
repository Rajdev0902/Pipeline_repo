resource "azurerm_network_security_group" "securitygroup" {
  for_each            = var.bafadar
  name                = each.value.security_group_name
  location            = each.value.location
  resource_group_name = each.value.rg_name

  security_rule {
    name                       = each.value.security_rule_name
    priority                   = each.value.priority
    direction                  = each.value.direction
    access                     = each.value.access
    protocol                   = each.value.protocol
    source_port_range          = each.value.source_port_range
    destination_port_range     = each.value.destination_port_range
    source_address_prefix      = each.value.source_address_prefix
    destination_address_prefix = each.value.destination_address_prefix
  }
}
