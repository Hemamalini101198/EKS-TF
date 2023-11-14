module "asg" {
  source = "terraform-aws-modules/autoscaling/aws"
  version = "7.2.0"

  name                 = var.asg_name
  desired_capacity    = var.desired_capacity
  max_size             = var.min_size
  min_size             = var.max_size
  health_check_type   = "EC2"
  health_check_grace_period = 300
  vpc_zone_identifier       = module.vpc.vpc_id
  force_delete         = true
  launch_template_id = file()
  /*
  launch_template = {
  image_id      = var.ami_id
  instance_type = "var.node_capacity_type"
  key_name      = ""
  }
  
  resource "aws_security_group" "eks_ec2_sg" {
  name        = "${var.eks_ec2_name}-sg"
  description = "allow inbound http traffic"
  vpc_id      = module.vpc.vpc.id

  ingress {
    description = "from my ip range"
    from_port   = "0"
    to_port     = "0"
    protocol    = "-1"
    cidr_blocks = ["${var.vpc_cidr}"]
  }

  egress {
    cidr_blocks = ["0.0.0.0/0"]
    from_port   = "0"
    protocol    = "-1"
    to_port     = "0"
  }
  tags = {
    "Name" = "${var.eks_ec2_name}-sg"
  }
 }
*/
  tags = {
    name = "var.asg_name"
  }
}