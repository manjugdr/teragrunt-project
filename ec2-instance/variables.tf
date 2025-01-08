variable "region" {
  description = "AWS region to deploy resources"
  default     = "us-east-1"
}

variable "ami" {
  description = "AMI ID for the EC2 instance"
}

variable "instance_type" {
  description = "Instance type for the EC2"
  default     = "t2.micro"
}

variable "instance_name" {
  description = "Name tag for the EC2 instance"
}
