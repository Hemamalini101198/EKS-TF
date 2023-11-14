module "alb" {
  source = "terraform-aws-modules/alb/aws"
  version = "9.2.0"

  name               = var.alb_name
  subnets            = module.vpc.public_subnets
  enable_deletion_protection = false
  internal           = false
  security_groups    = [""] 
  enable_http2       = true
  
  tags = {
    name = "var.tag_name"
  }
}