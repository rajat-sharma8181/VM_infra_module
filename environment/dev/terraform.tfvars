rg_dev = {
  rg1 = {
    rgname     = "rajat-rg"
    rglocation = "Central India"
  }
}

vnet_dev = {
  vnet1 = {
    vnet_name           = "rajat_vnet"
    location            = "Central India"
    resource_group_name = "rajat-rg"
    address_space       = ["10.0.0.0/16"]
  }
}

subnet_dev = {
  subnet1 = {
    subnet_name          = "rajat_subnet"
    resource_group_name  = "rajat-rg"
    virtual_network_name = "rajat_vnet"
    address_prefixes     = ["10.0.0.1/24"]
  }
}

pip_dev = {
  pip1 = {
    pip_name            = "rajat-pip"
    resource_group_name = "rajat-rg"
    location            = "Central India"
    allocation_method   = "Static"
  }
}

nic_dev = {
  nic1 = {
    nic_name = "rajat-nic"
    nic_location = "Central India"
    resource_group_name = "rajat-rg"
    ip_name = "internal"
    private_ip_address_allocation = "Dynamic"
    subnet_name = "string"
    virtual_network_name = "string"
    pip_name = "string"
  }
}

nsg_dev = {
  nsg1 = {
    name = "rajat-nsg"
    location = "central india"
    resource_group_name = "rajat-rg"
  }
}


vm_dev = {
    vm1 = {
        name = "rajat-vm"
        resource_group_name = "rajat-rg"
        location            = "central india"
        size                = "Standard_F2"
        caching             = "ReadWrite"
        storage_account_type = "Standard_LRS"
        publisher = "Canonical"
        offer = "0001-com-ubuntu-server-jammy"
        sku = "22_04-lts"
        version = "latest"
    }
}