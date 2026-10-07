module "resource_group" {
  source   = "../../Child_Modules/Resource_group"
  ghatakrg = var.rgghatak
}
module "stg_account" {
  source     = "../../Child_Modules/stg_account"
  stgaccount = var.rajatstorage
  depends_on = [module.resource_group]

}
module "Virtual_Network" {
  source     = "../../Child_Modules/Virtual_Network"
  makadjaal  = var.kingofnetwork
  depends_on = [module.resource_group]
}
module "Subnet" {
  source     = "../../Child_Modules/Subnet"
  subnets    = var.meenabhabhiki
  depends_on = [module.Virtual_Network]
}
module "NIC" {
  source     = "../../Child_Modules/NIC"
  nics       = var.mirzapurnic
  depends_on = [module.Subnet]
}
module "NSG" {
  source     = "../../Child_Modules/NSG"
  bafadar    = var.makbool
  depends_on = [module.resource_group]
}
module "PIP" {
  source     = "../../Child_Modules/PIP"
  publicip   = var.publicips
  depends_on = [module.resource_group]
}
module "Vnet_peering" {
  source     = "../../Child_Modules/Vnet_peering"
  gtos       = var.onetokafour
  depends_on = [module.Virtual_Network]
}
module "Virtual_Machine" {
  source     = "../../Child_Modules/Virtual_Machine"
  Vmachine   = var.mirzapurkigaddi
  depends_on = [module.NIC]
}
module "Bastion" {
  source     = "../../Child_Modules/Bastion"
  bastion    = var.azurebastion
  depends_on = [module.Subnet, module.PIP]
}
module "testloadbalance" {
  source          = "../../Child_Modules/loadbalancer"
  testloadbalance = var.testingload
  depends_on      = [module.PIP]
}
module "key_vault" {
  source     = "../../Child_Modules/key_vault"
  vaults     = var.keyvaults
  depends_on = [module.resource_group]
}
module "sql_server" {
  source            = "../../Child_Modules/sql_server"
  serverfordatabase = var.servers
  depends_on        = [module.resource_group]
}
module "sql_database" {
  source = "../../Child_Modules/sql_database"
  rajatdatabase = var.databases
  
}