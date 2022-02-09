output "service_key_out" {
  value = yandex_storage_bucket.wasa-bucket.access_key
}
output "service_key_secret" {
  value     = yandex_storage_bucket.wasa-bucket.secret_key
  sensitive = true
}
