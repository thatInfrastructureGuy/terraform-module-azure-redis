variable "resource_group_name" {
  description = "resource group name"
  default     = ""
}

variable "resource_group_location" {
  description = "resource group location"
  default     = ""
}

variable "redis_static_ip" {
  default     = ""
  type        = "string"
}

variable "redis_subnet_id" {
  default     = ""
  type        = "string"
}

variable "redis_name" {
  type        = "string"
  default     = ""
}

variable "redis_sku" {
  default     = "Basic"
}

variable "redis_family" {
  default     = "C"
}

variable "sku_capacity" {
  default     = 1
}

variable "aof_backup_enabled" {
  default     = false
}

variable "enable_non_ssl_port" {
  default     = true
}

variable "minimum_tls_version" {
  default     = "1.2"
}

variable "aof_storage_connection_string_0" {
  default     = ""
  type        = "string"
}

variable "aof_storage_connection_string_1" {
  default     = ""
  type        = "string"
}

variable "patch_day_of_week" {
  default     = "monday"
}

variable "patch_start_hour_utc" {
  default     = "1"
}

variable "tag_environment" {
  description = "Tag: Cluster Environment"
  default     = ""
}

variable "tag_region" {
  description = "Tag: Cluster Environment"
  default     = ""
}

variable "tag_product" {
  description = "Tag: Cluster Product Lensferry/Nexus"
  default     = ""
}
