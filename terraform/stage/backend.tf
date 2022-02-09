terraform {
  backend "s3" {
    endpoint = "storage.yandexcloud.net"
    bucket   = "wasa-bucket"
    region   = "ru-central1"
    key      = "yandex-cloud-terraform/stage-terraform.tfstate"

#    access_key = yandex_iam_service_account_static_access_key.sa-static-key.access_key
#    secret_key = yandex_iam_service_account_static_access_key.sa-static-key.secret_key
#    access_key = "<идентификатор статического ключа>"
#    secret_key = "<секретный ключ>"

    skip_region_validation      = true
    skip_credentials_validation = true
  }
}
