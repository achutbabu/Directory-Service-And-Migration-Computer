resource "random_password" "this" {
  length  = 15
  special = true
}

#Creating SSM Parameters
resource "aws_ssm_parameter" "this" {
  name    = "/MAG/directory/password"
  type    = "SecureString"
  value   = random_password.this.result
}
# Creating AWS  Directory Service
resource "aws_directory_service_directory" "this" {
  name    = var.domain_name
  password= random_password.this.result
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
