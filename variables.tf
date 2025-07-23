variable "azure_subscription_id" {
  type      = string
  sensitive = true
}

variable "azure_tenant_id" {
  type      = string
  sensitive = true
}

variable "azure_app_client_id" {
  type      = string
  sensitive = true
}

variable "azure_app_client_secret" {
  type      = string
  sensitive = true
}

variable "region" {
  type    = string
  default = "UK South"
}


variable "tags" {
  type = map(string)
  default = {
    CreatedWith = "Terraform"
    CreatedBy   = "PaperCloud Tech – OSS Team"
    Contact     = "support@papercloud.tech"
  }
}
