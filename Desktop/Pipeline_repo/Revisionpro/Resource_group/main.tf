resource "azurerm_resource_group" "rgghatak" {
  for_each = var.ghatakrg
  name     = each.value.rg_name
  location = each.value.location
}
