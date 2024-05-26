variable "project_id" {
  type = string
}

variable "source_image_family" {
  type    = string
  default = "debian-10"
}

variable "image_name" {
  type    = string
  default = "packer-image"
}
