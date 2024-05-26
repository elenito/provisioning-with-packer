variable "aws_region" {
  type    = string
  default = "us-east-1"
}

variable "ami_name" {
  type    = string
  default = "packer-ami"
}

source "amazon-ebs" "ubuntu" {
  region      = var.aws_region
  source_ami  = "ami-0c55b159cbfafe1f0"
  instance_type = "t2.micro"
  ssh_username  = "ubuntu"
  ami_name      = "${var.ami_name}-${timestamp()}"
}

build {
  sources = [
    "source.amazon-ebs.ubuntu"
  ]
}
