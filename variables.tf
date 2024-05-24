variable "aws_region" {
  type        = string
  description = "AWS Region"
  default     = "us-east-1"
}

variable "name" {
  default = "dynamic-aws-creds-operator"
}

variable "path" {
  default = "../vault-admin-workspace/terraform.tfstate"
}

variable "ttl" {
  default = "1"
}