rgghatak = {
  rg1 = {
    rg_name  = "rajat1rg"
    location = "eastus"
  }
  rg2 = {
    rg_name  = "rajat2rg"
    location = "eastus"
  }
}
rajatstorage = {
  stg1 = {
    stgaccounts_name         = "pahlastg"
    rg_name                  = "rajat1rg"
    location                 = "eastus"
    account_tier             = "Standard"
    account_replication_type = "GRS"
  }
  stg2 = {
    stgaccounts_name         = "doosrastg"
    rg_name                  = "rajat2rg"
    location                 = "eastus"
    account_tier             = "Standard"
    account_replication_type = "GRS"
  }
}
kingofnetwork = {
  vnet1 = {
    vnet_name     = "munnakaraula"
    location      = "eastus"
    rg_name       = "rajat1rg"
    address_space = ["10.0.0.0/16"]
  }
  vnet2 = {
    vnet_name     = "akhandakaraula"
    location      = "eastus"
    rg_name       = "rajat2rg"
    address_space = ["10.1.0.0/16"]
  }
}
meenabhabhiki = {
  subnet1 = {
    subnets_name     = "rajkumar"
    rg_name          = "rajat1rg"
    vnet_name        = "munnakaraula"
    address_prefixes = ["10.0.0.0/24"]
  }
  subnet2 = {
    subnets_name     = "AzureBastionSubnet"
    rg_name          = "rajat2rg"
    vnet_name        = "akhandakaraula"
    address_prefixes = ["10.1.0.0/24"]
  }
  subnet3 = {
    subnets_name     = "AzureBastionSubnet"
    rg_name          = "rajat1rg"
    vnet_name        = "munnakaraula"
    address_prefixes = ["10.0.1.0/24"]
  }
  subnet4 = {
    subnets_name     = "rajat2subnet"
    rg_name          = "rajat2rg"
    vnet_name        = "akhandakaraula"
    address_prefixes = ["10.1.1.0/24"]
  }
}
mirzapurnic = {
  nic1 = {
    nic_name                      = "mirzapurnic1"
    location                      = "eastus"
    rg_name                       = "rajat1rg"
    configuration_name            = "internal"
    private_ip_address_allocation = "Dynamic"
    vnet_name                     = "munnakaraula"
    sub_name                      = "rajkumar"
  }
  nic2 = {
    nic_name                      = "mirzapurnic2"
    location                      = "eastus"
    rg_name                       = "rajat2rg"
    configuration_name            = "internal"
    private_ip_address_allocation = "Dynamic"
    vnet_name                     = "akhandakaraula"
    sub_name                      = "rajat2subnet"
  }
}
makbool = {
  nsg1 = {
    security_group_name        = "makboolmia"
    location                   = "eastus"
    rg_name                    = "rajat1rg"
    security_rule_name         = "munnakarule"
    priority                   = "100"
    direction                  = "Inbound"
    access                     = "Allow"
    protocol                   = "Tcp"
    source_port_range          = "*"
    destination_port_range     = "22"
    source_address_prefix      = "*"
    destination_address_prefix = "*"
  }
  nsg2 = {
    security_group_name        = "damadji"
    location                   = "eastus"
    rg_name                    = "rajat1rg"
    security_rule_name         = "munnakarule"
    priority                   = "100"
    direction                  = "Inbound"
    access                     = "Allow"
    protocol                   = "Tcp"
    source_port_range          = "*"
    destination_port_range     = "22"
    source_address_prefix      = "*"
    destination_address_prefix = "*"
  }
}
publicips = {
  pip1 = {
    pip_name          = "rajatkiip"
    rg_name           = "rajat1rg"
    location          = "eastus"
    allocation_method = "Static"
    sku               = "Standard"
    ip_version        = "IPv4"
    zones             = ["1"]
  }
  pip3 = {
    pip_name          = "bastion1ip"
    rg_name           = "rajat1rg"
    location          = "eastus"
    allocation_method = "Static"
    sku               = "Standard"
    ip_version        = "IPv4"
    zones             = ["1"]
  }
  pip2 = {
    pip_name          = "doosriip"
    rg_name           = "rajat2rg"
    location          = "eastus"
    allocation_method = "Static"
    sku               = "Standard"
    ip_version        = "IPv4"
    zones             = ["1"]
  }
}
onetokafour = {
  peering1 = {
    peering_name = "guddutosweety"
    rg_name      = "rajat1rg"
    vnet_name    = "munnakaraula"
    vnet2_name   = "akhandakaraula"
    rg2_name     = "rajat2rg"
  }
  peering2 = {
    peering_name = "munnatosweety"
    rg_name      = "rajat2rg"
    vnet_name    = "akhandakaraula"
    vnet2_name   = "munnakaraula"
    rg2_name     = "rajat1rg"
  }
}
mirzapurkigaddi = {
  vm1 = {
    vm_name                         = "rajatvm"
    location                        = "eastus"
    rg_name                         = "rajat1rg"
    nic_name                        = "mirzapurnic1"
    size                            = "Standard_D2s_v6"
    admin_username                  = "rajatvmcustom"
    admin_password                  = "Rajat@$34525"
    os_disk_cach                    = "ReadWrite"
    disable_password_authentication = "false"
    storage_account_type            = "Standard_LRS"
    publisher                       = "Canonical"
    offer                           = "0001-com-ubuntu-server-jammy"
    sku                             = "22_04-lts"
    version                         = "latest"
  }
  vm2 = {
    vm_name                         = "rajatvm2"
    location                        = "eastus"
    rg_name                         = "rajat2rg"
    nic_name                        = "mirzapurnic2"
    size                            = "Standard_D2s_v6"
    admin_username                  = "rajatvmcustom"
    disable_password_authentication = "false"
    admin_password                  = "Rajat%$525"
    os_disk_cach                    = "ReadWrite"
    storage_account_type            = "Standard_LRS"
    publisher                       = "Canonical"
    offer                           = "0001-com-ubuntu-server-jammy"
    sku                             = "22_04-lts"
    version                         = "latest"
  }
}
azurebastion = {
  bastion1 = {
    rg_name          = "rajat1rg"
    location         = "eastus"
    sub_name         = "AzureBastionSubnet"
    vnet_name        = "munnakaraula"
    pip_name         = "bastion1ip"
    bastion_name     = "rajatbastion1"
    ip_configuration = "configuration"
  }
  bastion2 = {
    rg_name          = "rajat2rg"
    location         = "eastus"
    sub_name         = "AzureBastionSubnet"
    vnet_name        = "akhandakaraula"
    pip_name         = "doosriip"
    bastion_name     = "rajatbastion2"
    ip_configuration = "configuration"
  }
}

testingload = {
  loadbalance1 = {
    pip_name         = "rajatkiip"
    rg_name          = "rajat1rg"
    location         = "eastus"
    loadbalance_name = "rajatload"
    frontent_ip_name = "PublicIPAddress"
  }
}
keyvaults = {
  keyvault = {
    rg_name                     = "rajat1rg"
    location                    = "eastus"
    vault_name                  = "rajatvault"
    rbac_option                 = "false"
    enabled_for_disk_encryption = "true"
    tenant_id                   = "efeb0884-62aa-4c81-bf1e-161bb1cb2f07"
    soft_delete_retention_days  = "7"
    purge_protection_enabled    = "false"
    sku_name                    = "standard"
    object_id                   = "03799fb9-324c-438d-bc1c-fc769f82c2c5"
    key_permissions             = ["Get", ]
    secret_permissions          = ["Get", ]
    storage_permissions         = ["Get", ]
  }
}
servers = {
  server1 = {
    server_name             = "rajatserver"
    rg_name                 = "rajat1rg"
    location                = "eastus"
    version                 = "12.0"
    administrator_login     = "rajatadmistration"
    administration_password = "rajatadminpassword"
    tags                    = "dev"
  }
}
databases = {
  data1 = {
    database_name = "rajatdatabaseone"
    rg_name       = "rajat1rg"
    location      = "eastus"
    server_name   = "rajatserver"
    tags          = "dev"
  }
}
