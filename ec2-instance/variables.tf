variable "region" {
  description = "AWS region to deploy resources"
  default     = "ap-south-1"
}

variable "ami" {
  description = "ami-053b12d3152c0cc71"
}

variable "instance_type" {
  description = "Instance type for the EC2"
  default     = "t2.medium"
}

variable "instance_name" {
  description = "teragrunt-ec2-instance"
}
