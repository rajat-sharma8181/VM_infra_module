module "rgmod" {
    source = "../../modules/azurerm_rescource_group"
    rgs = var.rg_dev
}

module "netmod" {
    depends_on = [ module.rgmod ]
    source = "../../modules/azurerm_networking"
    vnet = var.net_dev
}

module "pipmod" {
    depends_on = [ module.rgmod ]
    source = "../../modules/azurerm_public_ip"
    pip = var.pip_dev
}

module "nsgmod" {
    depends_on = [ module.rgmod ]
    source = "../../modules/azurerm_nsg"
    nsg = var.nsg_dev
}

module "vmmod" {
    depends_on = [ module.netmod ]
    source = "../../modules/azurerm_compute"
    vms = var.vm_dev
}