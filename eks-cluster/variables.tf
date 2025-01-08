variable "region" {
  description = "AWS region where the EKS cluster will be created"
  default     = "us-east-1"
}

variable "cluster_name" {
  description = "Name of the EKS cluster"
  default     = "my-eks-cluster"
}

variable "cluster_version" {
  description = "Kubernetes version for the EKS cluster"
  default     = "1.25"
}

variable "vpc_id" {
  description = "VPC ID where the EKS cluster will be deployed"
}

variable "subnets" {
  description = "List of subnet IDs for the EKS cluster"
  type        = list(string)
}

variable "desired_capacity" {
  description = "Desired number of nodes in the node group"
  default     = 2
}

variable "max_capacity" {
  description = "Maximum number of nodes in the node group"
  default     = 5
}

variable "min_capacity" {
  description = "Minimum number of nodes in the node group"
  default     = 1
}

variable "instance_type" {
  description = "EC2 instance type for the EKS worker nodes"
  default     = "t3.medium"
}
