resource "azurerm_storage_account" "example" {
  name                     = "storageaccountname"
  resource_group_name      = "rg-notreal"
  location                 = "East US 2"
  account_tier             = "Standard"
  account_replication_type = "ARS"
  allow_blob_public_access = true

  tags = {
    environment = "staging"
  }
}

resource "azurerm_storage_container" "example" {
  name                  = "vhds"
  storage_account_name  = azurerm_storage_account.example.name
  container_access_type = "container"
}