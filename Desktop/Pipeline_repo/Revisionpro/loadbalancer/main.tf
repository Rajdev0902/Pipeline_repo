resource "azurerm_lb" "lb" {
  for_each = var.testloadbalance
  name                = each.value.loadbalance_name
  location            = each.value.location
  resource_group_name = each.value.rg_name

  frontend_ip_configuration {
    name                 = each.value.frontent_ip_name
    public_ip_address_id = data.azurerm_public_ip.loadlb[each.key].id
  }
}