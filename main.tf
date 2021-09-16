module "aws_directory_service" {
  source      = "./terraform/modules/aws_directory_service"
  region      = var.region
  domain_name = var.domain_name
  type        = var.type
  vpc_id      = var.vpc_id
  subnet_ids  = var.subnet_ids
  tags        = var.tags
}
