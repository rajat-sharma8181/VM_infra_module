module "rgmod" {
    source = "../../modules/azurerm_rescource_group"
    rgs = var.rg_dev
}

module "vnetmod" {
    depends_on = [ module.rgmod ]
    source = "../../modules/azurerm_vnet"
    vnet = var.vnet_dev
}

module "subnetmod" {
    depends_on = [ module.vnetmod ]
    source = "../../modules/azurerm_subnet"
    subnet = var.subnet_dev
}

module "pipmod" {
    depends_on = [ module.rgmod ]
    source = "../../modules/azurerm_public_ip"
    pip = var.pip_dev
}

module "nicmod" {
    depends_on = [ module.subnetmod, module.pipmod]
    source = "../../modules/azurerm_nic"
    nic = var.nic_dev
}

module "nsgmod" {
    source = "../../modules/azurerm_nsg"
    nsg = var.nsg_dev
}