variable "domain_name" {
  description = "Primary domain name for the ACM certificate"
  type        = string
}

variable "subject_alternative_domain_names" {
  description = "List of additional domain names for the ACM certificate"
  type        = list(string)
}

variable "acm_tag" {
  description = "tag name for acm"
  type        = list(string)
}


