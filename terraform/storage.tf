resource "azurerm_storage_account" "example" {
  name                     = "storageaccountname"
  resource_group_name      = "rg-notreal"
  location                 = "East US 2"
  account_tier             = "Standard"
  account_replication_type = "GRS"

  tags = {
    environment = "staging"
  }
}