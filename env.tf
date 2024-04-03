terraform {
  required_providers {
    azurerm = {
      source  = "hashicorp/azurerm"
      version = "=3.90.0"
    }
  }
}

module "module_dev" {
    source = "./modules"
    resource_group_name              = "gopi-dev-rg1"
    location                         = "East US"
    vm_name                          = "gopi-dev-vm1"
    vm_size                          = "Standard_DS1_v2"
    key_vault_name                   = "gopi-dev-kv1"
    nicname                          = "gopi-dev1NIC1"
    vnet                             = "gopi-dev-vnet1"
    subnet                           = "gopi-dev-subnet1"
    storage_account_name             = "gopidevstorageaccount1"
    storage_account_tier             = "Standard"
    storage_account_replication_type = "LRS"
}

module "module_qa" {
    source = "./modules"
    resource_group_name              = "gpi-qa-rg1"
    location                         = "West US"
    vm_name                          = "gopi-qa-vm1"
    vm_size                          = "Standard_DS2_v2"
    key_vault_name                   = "gopi-qa-kv1"
    nicname                          = "gopi-qa-NIC1"
    vnet                             = "gopi-qa-vnet1"
    subnet                           = "gopi-qa-subnet1"
    storage_account_name             = "gopiqastorageaccount2"
    storage_account_tier             = "Standard"
    storage_account_replication_type = "GRS"
}

module "module_preprod" {
    source = "./modules"
    resource_group_name              = "gopi-preprod-rg1"
    location                         = "North Europe"
    vm_name                          = "gopi-preprod-vm1"
    vm_size                          = "Standard_DS2_v2"
    key_vault_name                   = "gopi-preprod-kv1"
    nicname                          = "gopi-preprod-NIC1"
    vnet                             = "gopi-prepod-vnet1"
    subnet                           = "gopi-preprod-subnet1"
    storage_account_name             = "gopipreprodstorageaccount3"
    storage_account_tier             = "Standard"
    storage_account_replication_type = "GRS"

}

module "module_prod" {
    source = "./modules"
    resource_group_name          = "gopi-prod-rg1"
    location                         = "Central US"
    vm_name                          = "gopi-prod-vm1"
    vm_size                          = "Standard_DS3_v2"
    key_vault_name                   = "gopi-prod-kv1"
    nicname                          = "gopi-prod-NIC1"
    vnet                             = "gopi-prod-vnet1"
    subnet                           = "gopi-Prod-subnet1"
    storage_account_name             = "gopiprodstorageaccount4"
    storage_account_tier             = "Premium"
    storage_account_replication_type = "ZRS"

}
