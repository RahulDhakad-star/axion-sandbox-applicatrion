module "rg" {
  source   = "../../module/azurerm_rg"
  child-rg = var.dev-rg
}

module "vnet" {
  depends_on = [module.rg]
  source     = "../../module/azurerm_vnet"
  child-vnet = var.dev-vnet
}

module "subnet" {
  depends_on   = [module.vnet]
  source       = "../../module/azurerm_subnet"
  child-subnet = var.dev-subnet
}

module "pips" {
  depends_on = [module.rg]
  source     = "../../module/azuerm_pip"
  child-pip  = var.dev-pip
}

module "nsg" {
  depends_on = [module.rg, module.subnet]
  source     = "../../module/azurerm_nsg"
  child-nsg  = var.dev-nsg
}

module "nic" {
  depends_on = [module.rg, module.subnet]
  source     = "../../module/azurerm_nic"
  child-nic  = var.dev-nic
}

module "vms" {
  depends_on = [module.subnet, module.pips,module.nic,module.rg,module.nsg]
  source     = "../../module/azurerm_vm"
  child-vm   = var.dev-vm
}

module "postgressql" {
  depends_on = [module.rg, module.subnet]
  source     = "../../module/azurerm_postgray_SQL"
  child-SQL  = var.dev-SQL
}
