resource "azurerm_redis_cache" "azure_redis" {
  name                              = "${var.redis_name}"
  location                          = "${var.resource_group_location}"
  resource_group_name               = "${var.resource_group_name}"
  capacity                          = "${var.sku_capacity}"
  family                            = "${var.redis_family}"
  sku_name                          = "${var.redis_sku}"
  enable_non_ssl_port               = "${var.enable_non_ssl_port}"
  private_static_ip_address         = "${var.redis_static_ip}"
  subnet_id                         = "${var.redis_subnet_id}"
  minimum_tls_version               = "${var.minimum_tls_version}"

  redis_configuration {
    aof_backup_enabled              = "${var.aof_backup_enabled}"
    aof_storage_connection_string_0 = "${var.aof_storage_connection_string_0}"
    aof_storage_connection_string_1 = "${var.aof_storage_connection_string_1}"
  }
 
  patch_schedule {
      day_of_week                   = "${var.patch_day_of_week}"
      start_hour_utc                = "${var.patch_start_hour_utc}"
  }
  
  tags {
      Environment                   = "${var.tag_environment}"
      Region                        = "${var.tag_region}"
      Product                       = "${var.tag_product}"
  }
}

output "redis_name" {
  value                             = "${azurerm_redis_cache.azure_redis.name}"
}

output "resource_group_name" {
  value                             = "${azurerm_redis_cache.azure_redis.resource_group_name}"
}
