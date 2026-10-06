dev-rg = {
  rg1 = {
    rg_name     = "rahul_axion_app"
    rg_location = "Central India"
  }
}

dev-vnet = {
  vnet1 = {
    vnet_name           = "axion-vnet"
    location            = "Central India"
    resource_group_name = "rahul_axion_app"
    address_space       = ["10.0.0.0/16"]
  }
}

dev-subnet = {
  subnet1 = {
    subnet_name          = "frontend-subnet-axion"
    resource_group_name  = "rahul_axion_app"
    virtual_network_name = "axion-vnet"
    address_prefixes     = ["10.0.1.0/24"]
  }
  subnet2 = {
    subnet_name          = "backend-subnet-axion"
    resource_group_name  = "rahul_axion_app"
    virtual_network_name = "axion-vnet"
    address_prefixes     = ["10.0.2.0/24"]
  }
  # subnet3 = {
  #   subnet_name          = "database-subnet-axion"
  #   resource_group_name  = "rahul_axion_app"
  #   virtual_network_name = "axion-vnet"
  #   address_prefixes     = ["10.0.3.0/24"]
  # }
}

dev-pip = {
  pip1 = {
    name                = "pip-frontend-axion"
    resource_group_name = "rahul_axion_app"
    location            = "Central India"
    allocation_method   = "Static"
  }
  pip2 = {
    name                = "pip-backend-axion"
    resource_group_name = "rahul_axion_app"
    location            = "Central India"
    allocation_method   = "Static"
  }
  # pip3 = {
  #   name                = "pip-database-axion"
  #   resource_group_name = "rahul_axion_app"
  #   location            = "Central India"
  #   allocation_method   = "Static"
  # }
}

dev-nsg = {
  nsg1 = {
    nsg_name            = "nsg-frontend-vm-axion"
    location            = "Central India"
    resource_group_name = "rahul_axion_app"
  }
  nsg2 = {
    nsg_name            = "nsg-backend-vm-axion"
    location            = "Central India"
    resource_group_name = "rahul_axion_app"
  }

  # nsg3 = {
  #   nsg_name            = "nsg-database-vm-axion"
  #   location            = "Central India"
  #   resource_group_name = "rahul_axion_app"
  # }
}

dev-nic = {
  nic1 = {
    nic_name             = "nic-frontend-vm-axion"
    location             = "Central India"
    resource_group_name  = "rahul_axion_app"
    subnet_name          = "frontend-subnet-axion"
    public_ip_name       = "pip-frontend-axion"
    virtual_network_name = "axion-vnet"
  }
  nic2 = {
    nic_name             = "nic-backend-vm-axion"
    location             = "Central India"
    resource_group_name  = "rahul_axion_app"
    subnet_name          = "backend-subnet-axion"
    public_ip_name       = "pip-backend-axion"
    virtual_network_name = "axion-vnet"
  }
  # nic3 = {
  #   nic_name             = "nic-database-vm-axion"
  #   location             = "Central India"
  #   resource_group_name  = "rahul_axion_app"
  #   subnet_name          = "database-subnet-axion"
  #   public_ip_name       = "pip-database-axion"
  #   virtual_network_name = "axion-vnet"
  # }
}

dev-vm = {
  vm1 = {
    vm_name              = "frontend-vm-axion"
    resource_group_name  = "rahul_axion_app"
    location             = "Central India"
    vm_size              = "Standard_B2ats_v2"
    admin_username       = "axionrahul"
    admin_password       = "Axion@332"
    virtual_network_name = "axion-vnet"
    nic_name             = "nic-frontend-vm-axion"
    nsg_name             = "nsg-frontend-vm-axion"



  }
  vm2 = {
    vm_name              = "backend-vm-axion"
    resource_group_name  = "rahul_axion_app"
    location             = "Central India"
    vm_size              = "Standard_B2ats_v2"
    admin_username       = "axionrahul"
    admin_password       = "Axion@332"
    nic_name             = "nic-backend-vm-axion"
    virtual_network_name = "axion-vnet"
    nsg_name             = "nsg-backend-vm-axion"
  }
  # vm3 = {
  #   vm_name              = "database-vm-axion"
  #   resource_group_name  = "rahul_axion_app"
  #   location             = "Central India"
  #   vm_size              = "Standard_B2ats_v2"
  #   admin_username       = "axionrahul"
  #   admin_password       = "Axion@332"
  #   nic_name             = "nic-database-vm-axion"
  #   virtual_network_name = "axion-vnet"
  #   nsg_name             = "nsg-database-vm-axion"
  # }
}

dev-SQL = {
  pgsql1 = {
    server_name            = "pgsql-axion"
    resource_group_name    = "rahul_axion_app"
    location               = "Central India"
    administrator_login    = "axionrahul"
    administrator_password = "Axion@332"
    database_name          = "axiondb"
  }
}
