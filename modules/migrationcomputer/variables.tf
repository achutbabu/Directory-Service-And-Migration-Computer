variable "region" {
  type         = string
  description  = "the region  where the infrastructure is to be deployed"
} 

variable "win_ami" {
  type         = string
  description  = "the AMI ID of windows instance"
}

variable "instance_type" {
  type         = string
  description  = "the  size of instance type "
}

variable "vpc_id" {
  type         = string
  description  = "the id of vpc"
}

variable "key_name" {
  type         = string   
  description  = "Name of the SSH key to deploy to the Windows server"
}

variable "security_group_name" {
  type         = string
  description  = "the name of the security group"
}

variable "ingress_rules" {
  type = list(object({
  from_port    = number
  to_port      = number
  protocol     = string
  cidr_block   = string
  description  = string
    }))
}

variable "ssm_role_name" {
  type         = string
  description  = "the name of ssm role"
}

variable "instance_profile_name" { 
  type         = string
  description  = "the name of instance profile"
}

variable "ssmdocument_name" { 
  type         = string
  description  = "the name of ssmdocument"
}
