resource "azurerm_storage_account" "big_example" {
  name                     = "storageaccountname"
  resource_group_name      = "rg-notreal"
  location                 = "East US 2"
  account_tier             = "Standard"
  account_replication_type = "GRS"
  allow_blob_public_access = true
  account_kind = "StorageV2"

  tags = var.tags
}

resource "azurerm_storage_container" "example" {
  name                  = "vhds"
  storage_account_name  = azurerm_storage_account.example.name
  container_access_type = "private"
}