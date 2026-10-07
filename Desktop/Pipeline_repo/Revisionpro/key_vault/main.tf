resource "azurerm_key_vault" "kunjitala" {
  for_each                    = var.vaults
  name                        = each.value.vault_name
  location                    = each.value.location
  resource_group_name         = each.value.rg_name
  rbac_authorization_enabled  = each.value.rbac_option
  enabled_for_disk_encryption = each.value.enabled_for_disk_encryption
  tenant_id                   = data.azurerm_client_config.current.tenant_id
  soft_delete_retention_days  = each.value.soft_delete_retention_days
  purge_protection_enabled    = each.value.purge_protection_enabled
  sku_name                    = each.value.sku_name

  access_policy {
    tenant_id = data.azurerm_client_config.current.tenant_id
    object_id = data.azurerm_client_config.current.object_id

    key_permissions = ["Get", ]
    secret_permissions = ["Get", ]
    storage_permissions = ["Get", ]
  }
}