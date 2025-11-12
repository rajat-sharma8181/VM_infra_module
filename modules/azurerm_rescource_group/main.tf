resource "azurerm_resource_group" "rg" {
  for_each   = var.rgs
<<<<<<< HEAD

  name       = each.value.name
  location   = each.value.location
  managed_by = each.value.managed_by
  tags       = each.value.tags
}

output "rgid" {
  value = azurerm_resource_group.rg.id
}
=======
  name       = each.value.name
  location   = each.value.location
  managed_by = each.value.managed_by
  tags = {
    environment = each.value.environment
  }
}


>>>>>>> origin/main
