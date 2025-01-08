terraform {
  source = "../${deployment_target}" # Dynamically use EC2 or EKS module based on input
}

inputs = {
  region = "ap-south-1"
  
  # Common Inputs for EC2
  ami            = "ami-053b12d3152c0cc71" # Example AMI for Amazon Linux
  instance_type  = "t2.medium"
  instance_name  = "teragrunt-ec2-instance"

  # Common Inputs for EKS
  cluster_name     = "teragrunt-eks-cluster"
  cluster_version  = "1.25"
  vpc_id           = "vpc-088cd471a7fee8809"
  subnets          = ["rtb-03e3caa1a7b208f33", "rtb-05db133b8113e5c21", "rtb-0e336bcff616ed64d"]
  desired_capacity = 2
  max_capacity     = 5
  min_capacity     = 1
  eks_instance_type = "t3.medium" # Avoid conflict with EC2 instance_type
}

