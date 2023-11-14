terraform {
  required_providers {
    aws = {
      source = "hashicorp/aws"
      version = "5.25.0"
    }
  }
}

provider "aws" {
  region = "ap-south-1"
}

module "eks_cluster" {
  source          = "./Modules/EKS-cluster"
  cluster_name    = "var.cluster_name"
  #subnets         = "var.private_subnets"
  #lable_name = general
  managed_node_desired_size = var.managed_node_desired_size
  managed_node_min_size     = var.managed_node_min_size
  managed_node_max_size     = var.managed_node_max_size
  node_capacity_type  = var.node_capacity_type
  node_instance_type = var.node_instance_type
}

module "vpc" {
  source       = "./Modules/vpc"
  vpc_name     = "var.vpc_name"
  public_subnets  = var.public_subnets
  private_subnets = var.private_subnets
  vpc_cidr = var.vpc_cidr
}

module "alb" {
  source = "terraform-aws-modules/alb/aws"
  version = "7.0.0"

  name               = var.alb_name
  subnets            = module.vpc.public_subnets
  enable_deletion_protection = false
  internal           = false
  security_groups    = [""] 
  enable_http2       = true
}
  /*
  # Security Group
  security_group_ingress_rules = {
    all_http = {
      from_port   = 80
      to_port     = 80
      ip_protocol = "tcp"
      description = "HTTP web traffic"
      cidr_ipv4   = "0.0.0.0/0"
    }
    all_https = {
      from_port   = 443
      to_port     = 443
      ip_protocol = "tcp"
      description = "HTTPS web traffic"
      cidr_ipv4   = "0.0.0.0/0"
    }
  }
}
*/

module "asg" {
  source      = "./Modules/asg"
  asg_names = var.asg_name
  asg_name = var.asg_name
  ami_id = var.ami_id
  node_capacity_type = var.node_capacity_type
  min_size = var.managed_node_min_size
  max_size = var.managed_node_max_size
  desired_capacity = var.managed_node_desired_size
  vpc_zone_identifiers = var.private_subnets
}

/*
module "acm" {
  source   = "./Modules/acm"
  cert_domains = ["var.domain_names"]  
}
*/
