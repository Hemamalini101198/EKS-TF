managed_node_desired_size = "1"
managed_node_min_size = "1"
managed_node_max_size = "5"
node_instance_type = "general"
node_capacity_type = "m6.xlarge"
ami_id = ""
#cert_domains =""
cluster_name = "witmer-dev"
vpc_cidr = "10.0.0.0/16"
vpc_name = "witmer-dev-vpc"
public_subnets = ["10.1.0.0/24", "10.2.0.0/24"]
private_subnets = ["10.11.0.0/24", "10.12.0.0/24"]
asg_name = "witmer-dev-asg"
#domain_names = ""
alb_name = "witmer-dev-alb"
