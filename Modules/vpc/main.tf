module "vpc" {
  source = "terraform-aws-modules/vpc/aws"
  version = "5.1.2"
  
  name             = var.vpc_name
  cidr             = var.vpc_cidr
  azs              = ["ap-south-1a", "ap-south-1b"]  
  private_subnets  = var.private_subnets
  public_subnets   = var.public_subnets

  # NAT Gateways - Outbound Communication
  enable_nat_gateway = true
  single_nat_gateway = true
  tags = {
    name   = "var.vpc_name"   
  }
}
