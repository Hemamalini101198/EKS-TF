module "eks_cluster" {
  source  = "terraform-aws-modules/eks/aws"
  version = "19.19.1"

  cluster_name    = "var.cluster_name"
  cluster_version = "1.27"

  cluster_endpoint_private_access = true
  cluster_endpoint_public_access  = true

  vpc_id     = module.vpc.vpc_id
  subnet_ids = module.vpc.private_subnets

  enable_irsa = true

  eks_managed_node_group_defaults = {
    disk_size = var.disk_size
  }

  eks_managed_node_groups = {
    general = {
      desired_size = "var.managed_node_desired_size"
      min_size     = "var.managed_node_min_size"
      max_size     = "var.managed_node_max_size"

      labels = {
        role = "var.lable_name"
      }

      instance_types = "var.node_instance_type"
      capacity_type  = "var.node_capacity_type"
    }
  }
}
