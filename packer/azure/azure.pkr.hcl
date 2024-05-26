variable "client_id" {
  type = string
}

variable "client_secret" {
  type = string
}

variable "tenant_id" {
  type = string
}

variable "subscription_id" {
  type = string
}

variable "image_name" {
  type    = string
  default = "packer-image"
}

source "azure-arm" "ubuntu" {
  client_id       = var.client_id
  client_secret   = var.client_secret
  tenant_id       = var.tenant_id
  subscription_id = var.subscription_id

  managed_image_name = var.image_name
  managed_image_resource_group_name = "packer-rg"

  location      = "East US"
  vm_size       = "Standard_DS1_v2"
  os_type       = "Linux"
  image_publisher = "Canonical"
  image_offer   = "UbuntuServer"
  image_sku     = "18.04-LTS"
}

build {
  sources = [
    "source.azure-arm.ubuntu"
  ]
}
