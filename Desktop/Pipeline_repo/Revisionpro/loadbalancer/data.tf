data "azurerm_public_ip" "loadlb" {
    for_each = var.testloadbalance
  name                = each.value.pip_name
  resource_group_name = each.value.rg_name
}