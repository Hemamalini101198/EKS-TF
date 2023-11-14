variable "cluster_name" {
  description = "Name for the EKS cluster"
  type        = string
}

variable "vpc_cidr" {
  description = "CIDR for the VPC"
  type        = number
}

variable "vpc_name" {
  description = "name for the VPC"
  type        = string
}

variable "public_subnets" {
  description = "List of public subnet IDs"
  type = list(number)
}

variable "private_subnets" {
  description = "List of private subnet IDs"
  type = list(number)
} 
/*
variable "cert_domains" {
  description = "List of domain names for the ACM certificate"
  type        = list(string)
}
*/
variable "managed_node_desired_size" {
  description = "Number of managed node desired size"
  type        = number
}

variable "managed_node_min_size" {
  description = "Number of managed node minimum size"
  type        = number
}

variable "managed_node_max_size" {
  description = "Number of managed node maximum size"
  type        = number
}

variable "node_instance_type" {
  description = "Number of managed node maximum size"
  type        = string
}

variable "node_capacity_type" {
  description = "Number of managed node maximum size"
  type        = string
}

variable "ami_id" {
  description = "ami id for asg instance"
  type        = string
}

variable "asg_name" {
  description = "asg instance name"
  type        = string
}
/*
variable "domain_names" {
  description = "domain names for acm"
  type        = string
}
*/
variable "alb_name" {
  description = "name for the alb"
  type        = string
}