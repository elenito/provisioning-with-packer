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

source "googlecompute" "debian" {
  project_id         = var.project_id
  source_image_family = var.source_image_family
  zone               = "us-central1-a"
}

build {
  sources = [
    "source.googlecompute.debian"
  ]

  provisioner "shell" {
    inline = ["echo Hello, Packer!"]
  }
}
