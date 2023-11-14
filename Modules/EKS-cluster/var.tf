variable "cluster_name" {
  description = "Name for the EKS cluster"
  type        = string
}

variable "subnets" {
  description = "List of subnet IDs for the EKS cluster"
  type        = list(string)
}

variable "disk_size" {
  description = "disk size of worker node"
  default = 50
}

#variable "lable_name" {
#  description = "lable name of worker node"
#  default = general
#}

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
  description = "Worker node instance type"
  type        = string
}

variable "node_capacity_type" {
  description = "Worker node capacity type"
  type        = string
}
