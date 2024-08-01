locals {
  tags = merge(var.tags, {
    Name : var.svc_name
  })
}

resource "aws_verifiedaccess_endpoint" "va_endpoint" {
  count = var.enable_va ? 1 : 0

  application_domain     = var.app_domain
  attachment_type        = "vpc"
  domain_certificate_arn = var.va_domain_cert_arn
  endpoint_domain_prefix = substr(format("%s-%s", var.env_abbr, var.svc_name), 0, 19)
  endpoint_type          = var.va_endpoint_type
  dynamic "network_interface_options" {
    for_each = var.va_endpoint_type == "network-interface" ? [1] : []
    content {
      network_interface_id = var.network_interface_id
      port                 = var.network_interface_port
      protocol             = var.network_interface_protocol
    }
  }
  # endpoint_type          = "load-balancer"
  dynamic "load_balancer_options" {
    for_each = var.va_endpoint_type == "load-balancer" ? [1] : []
    content {
      load_balancer_arn = var.lb_arn
      port              = var.lb_port
      protocol          = var.lb_protocol
      subnet_ids        = var.subnet_ids
    }
  }
  security_group_ids       = var.sg_ids
  verified_access_group_id = var.va_aws_verifiedaccess_group_id
}

