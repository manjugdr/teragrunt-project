provider "aws" {
  region = var.region
}

resource "aws_instance" "example" {
  ami           = var.ami
  instance_type = var.instance_type

  tags = {
    Name = var.instance_name
  }
}

variable "region" {}
variable "ami" {}
variable "instance_type" {}
variable "instance_name" {}
