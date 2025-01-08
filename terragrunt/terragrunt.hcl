terraform {
  source = "../ec2-instance"
}

inputs = {
  region         = "us-east-1"
  ami            = "ami-053b12d3152c0cc71" # Example AMI for Amazon Linux
  instance_type  = "t2.medium"
  instance_name  = "teragrunt-ec2-instance"
}
