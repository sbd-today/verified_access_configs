module "va_module" {
  source                         = "../../modules/verified_access"
  sg_ids                         = var.va_sg_ids
  app_domain                     = var.app_domain
  va_domain_cert_arn             = var.va_domain_cert_arn
  network_interface_id           = var.ec2_network_interface_id
  va_aws_verifiedaccess_group_id = var.va_aws_verifiedaccess_group_id
}
