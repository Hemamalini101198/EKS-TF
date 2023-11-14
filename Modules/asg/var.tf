variable "asg_name" {
  description = "Name for the Auto Scaling Group"
  type        = string
}

variable "min_size" {
  description = "Minimum number of instances in the Auto Scaling Group"
  type        = number
}

variable "max_size" {
  description = "Maximum number of instances in the Auto Scaling Group"
  type        = number
}

variable "desired_capacity" {
  description = "Desired capacity of the Auto Scaling Group"
  type        = number
}

variable "vpc_zone_identifiers" {
  description = "List of subnet IDs in which the instances will be launched"
  type        = list(string)
}

variable "asg_names" {
  description = "autoscaling for ec2"
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