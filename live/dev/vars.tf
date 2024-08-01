variable "project_name" {
  type        = string
  description = "Project name without any spaces"
}


variable "env_name" {
  type        = string
  description = "Environment name"
}


variable "region" {
  type = string
}

variable "app_domain" {
  type = string
}

variable "va_domain_cert_arn" {
  type = string
}

variable "va_sg_ids" {
  type = list(string)
}

variable "va_aws_verifiedaccess_group_id" {
  type = string
}

variable "ec2_network_interface_id" {
  type = string
}