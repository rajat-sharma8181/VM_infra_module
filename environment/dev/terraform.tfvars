rg_dev = {
  rg1 = {
    name       = "rajat-rg"
    location   = "Central India"
    managed_by = "terraform"

  }
}

net_dev = {
  vnet1 = {
    name                = "rajat-vnet"
    location            = "Central India"
    resource_group_name = "rajat-rg"
    address_space       = ["10.0.0.0/16"]
    subnets = {
      subnet1 = {
        name             = "rajat-subnet1"
        address_prefixes = ["10.0.0.0/24"]
      }
    }
  }
  vnet2 = {
    name                = "rajat-vnet2"
    location            = "Central India"
    resource_group_name = "rajat-rg"
    address_space       = ["20.0.0.0/16"]
  }
}

pip_dev = {
  pip1 = {
    name                = "rajat-pip"
    resource_group_name = "rajat-rg"
    location            = "Central India"
    allocation_method   = "Static"
  }
}

nsg_dev = {
  nsg1 = {
    name                = "rajat-nsg"
    location            = "central india"
    resource_group_name = "rajat-rg"
  }
}


vm_dev = {
  vm1 = {
    nic_name             = "rajat-vm"
    resource_group_name  = "rajat-rg"
    location             = "central india"
    vm_name              = "rajat-vm"
    size                 = "Standard_F2"
    caching              = "ReadWrite"
    storage_account_type = "Standard_LRS"
    subnet_name          = "rajat-subnet1"
    virtual_network_name = "rajat-vnet"
    pip_name             = "rajat-pip"
    publisher            = "Canonical"
    offer                = "0001-com-ubuntu-server-jammy"
    sku                  = "22_04-lts"
    version              = "latest"
  }
}
