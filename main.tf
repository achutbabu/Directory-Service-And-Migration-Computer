module "migrationcomputer" {
 #version               = "1.0"
  source                =  "./modules/migrationcomputer"
  region                = var.region
  win_ami               = var.win_ami
  instance_type         = var.instance_type
  key_name              = var.key_name
  vpc_id                = var.vpc_id
  security_group_name   = var.security_group_name
  ingress_rules         = var.ingress_rules 
  ssm_role_name         = var.ssm_role_name
  instance_profile_name = var.instance_profile_name
  ssmdocument_name      = var.ssmdocument_name
}
