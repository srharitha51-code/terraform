name = "prod"
vpc_cidr = "192.168.0.0/16"
azs = ["us-east-1a", "us-east-1b", "us-east-1c" ]

tags = {
    Environment = "prod"
    Owner = "devops"
}