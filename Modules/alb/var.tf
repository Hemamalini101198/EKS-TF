variable "alb_name" {
  description = "Name for the Application Load Balancer"
  type        = string
}

variable "acm_certificate_arn" {
  description = "ARN of the ACM certificate for HTTPS"
  type        = string
}

variable "tag_name" {
  description = "tag for the alb"
  type        = string
}