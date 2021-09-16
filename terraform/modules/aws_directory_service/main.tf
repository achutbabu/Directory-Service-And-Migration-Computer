resource "random_password" "directory_password" {
  length  = 15
  special = true
}

#Creating SSM Parameters
resource "aws_ssm_parameter" "parameter_directory_password" {
  name    = "/MAG/directory/password"
  type    = "SecureString"
  value   = random_password.directory_password.result
}
# Creating AWS  Directory Service
resource "aws_directory_service_directory" "main" {
  name    = var.domain_name
  password= random_password.directory_password.result
  edition = var.edition
  type    = var.type

  vpc_settings {
    vpc_id     = var.vpc_id
    subnet_ids = var.subnet_ids
  }

  tags = {
   map-migrated = var.tags
  }
}
