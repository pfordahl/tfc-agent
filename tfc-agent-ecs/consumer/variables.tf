variable "dev_role_arn" {
  description = "Amazon Resource Name of the dev role to be assumed (this was created in the producer workspace)"
  default = "arn:aws:iam::899505874653:role/terraform-terraform_dev_role"
}

variable "region" {
  description = "The region where the resources are created."
  default     = "us-east-1"
}

// Tags
variable "ttl" {
  description = "optional value of ttl tag on cloud resources"
  default     = "1"
}

locals {
  common_tags = {
    owner              = "your-name-here"
    se-region          = "your-region-here"
    purpose            = "A demo instance."
    ttl                = var.ttl # hours
    terraform          = "true"  # true/false
    hc-internet-facing = "false" # true/false
  }
}
