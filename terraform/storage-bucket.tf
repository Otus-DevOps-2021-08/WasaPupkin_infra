terraform {
  required_providers {
    yandex = {
      source  = "yandex-cloud/yandex"
      version = "0.35"
    }
  }
}
provider "yandex" {
  service_account_key_file = var.service_account_key_file
  cloud_id                 = var.cloud_id
  folder_id                = var.folder_id
  zone                     = var.zone

}
// Create Static Access Keys
resource "yandex_iam_service_account_static_access_key" "sa-static-key" {
  service_account_id = var.sa_user_id
  description        = "static access key for object storage"
}
// Use keys to create bucket
resource "yandex_storage_bucket" "wasa-bucket" {
  access_key = yandex_iam_service_account_static_access_key.sa-static-key.access_key
  secret_key = yandex_iam_service_account_static_access_key.sa-static-key.secret_key
  bucket     = "wasa-bucket"
}
