resource "azurerm_linux_virtual_machine" "machine" {
  for_each              = var.Vmachine
  name                  = each.value.vm_name
  resource_group_name   = each.value.rg_name
  location              = each.value.location
  size                  = each.value.size
  admin_username        = each.value.admin_username
  admin_password        = each.value.admin_password
  disable_password_authentication = each.value.disable_password_authentication
  network_interface_ids = [data.azurerm_network_interface.nicdata[each.key].id]

  os_disk {
    caching              = each.value.os_disk_cach
    storage_account_type = each.value.storage_account_type
  }
  source_image_reference {
    publisher = each.value.publisher
    offer     = each.value.offer
    sku       = each.value.sku
    version   = each.value.version
  }
    custom_data = filebase64("${path.module}/nginx.sh")
}
