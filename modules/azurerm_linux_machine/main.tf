resource "azurerm_linux_virtual_machine" "VM" {
  for_each              = var.vms
  name                  = each.value.vm_name
  resource_group_name   = each.value.resource_group_name
  location              = each.value.location
  size                  = each.value.size
  admin_username        = "adminuser"
  admin_password        = "password@123"
  disable_password_authentication = false
  network_interface_ids = data.azurerm_network_interface.nic[each.key].id

  os_disk {
    caching              = each.value.caching
    storage_account_type = each.value.storage_account_type
  }

  source_image_reference {
    publisher = "canonical"
    offer     = "UbuntuServer"
    sku       = "18.04-LTS"
    version   = "latest"
  }
}
