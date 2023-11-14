module "acm" {
  source = "terraform-aws-modules/acm/aws"
  version = "5.0.0"

  domain_name        = var.domain_name
  subject_alternative_names = var.subject_alternative_domain_names
  validation_method  = "DNS"
  wait_for_validation = true
  tags = {
    name = "var.acm_tag"
  }
}