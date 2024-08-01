#
# Common variables
#
variable "svc_name" {
  type    = string
  default = "bloginstance"
}
variable "env_abbr" {
  type    = string
  default = "dev"
}
variable "tags" {
  default = {
    automation : "terraform"
    data_classification : "internal"
  }
}

#
# Network
#
variable "subnet_ids" {
  description = "A list of subnet ids where verified access endpoint will be placed. Only useful for load balancer"
  type        = list(string)
  default     = []
}
variable "sg_ids" {
  description = "List of the the security groups IDs to associate with the Verified Access endpoint"
  type        = list(string)
}
variable "lb_arn" {
  description = "The ARN of the load balancer that will be used for the Verified Access endpoint. Only useful for load balancer"
  type        = string
  default     = ""
}
variable "lb_port" {
  description = "The load balancer port that will be used for the Verified Access endpoint"
  type        = string
  default     = 8080
}
variable "lb_protocol" {
  description = "The load balancer protocol that will be used for the Verified Access endpoint"
  type        = string
  default     = "http"
}

#
# Verified Access Common
#
variable "enable_va" {
  default = true
}

variable "va_domain_cert_arn" {
  nullable = false
}

variable "app_domain" {
  description = "The application domain of the application"
  type        = string
  nullable    = false
}

variable "va_endpoint_type" {
  description = "The endpoint type as supported by verified access endpoint type resource"
  type        = string
  default     = "network-interface"
}
variable "network_interface_id" {
  description = "The ENI interface Id of the network resource"
  type        = string
}
variable "network_interface_port" {
  description = "The port on whichh the application is listening on the network interface"
  type        = number
  default     = 80
}
variable "network_interface_protocol" {
  description = "The protocol on whichh the application is listening on the network interface"
  type        = string
  default     = "http"
}

variable "va_aws_verifiedaccess_group_id" {
  type = string
}
