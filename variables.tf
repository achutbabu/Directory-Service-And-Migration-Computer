
variable "region" {
  type         = string
  description  = "the region  where the infrastructure is to be deployed"
  default      = "us-west-2"
} 

variable "win_ami" {
  type         = string
  description  = "the AMI ID of windows instance"
  default      = "ami-0d94140e38e117dc8"
}

variable "instance_type" {
  type         = string
  description  = "the  size of instance type"
  default      = "t2.medium"
}

variable "vpc_id" {
  type         = string
  description  = "the id of vpc"
  default      = "vpc-5f326e27"
}

variable "key_name" {
  type         = string   
  description  = "Name of the SSH key to deploy to the Windows server"
  default      = "achutseptber"
}

variable "security_group_name" {
  type         = string
  description  = "the name of the security group"
  default      = "MAG Security Group For AD Migration"
}

variable "ingress_rules" {
  type = list(object({
  from_port    = number
  to_port      = number
  protocol     = string
  cidr_block   = string
  description  = string
    }))
   default     = [
        {
   from_port   = 3389
   to_port     = 3389
   protocol    = "tcp"
   cidr_block  = "0.0.0.0/0"
   description = "RDP"
        },
        {
   from_port   = 5985
   to_port     = 5986
   protocol    = "tcp"
   cidr_block  = "0.0.0.0/0"
   description = "winrm"
        },
    ]

}

variable "ssm_role_name" {
  type         = string
  description  = "the name of ssm role"
  default      = "ec2-ssm-role"
}

variable "instance_profile_name" { 
  type         = string
  description  = "the name of instance profile"
  default      = "ec2-ssm-profile"
}

variable "ssmdocument_name" { 
  type         = string
  description  = "the name of ssmdocument"
  default      = "ec2-ssmrole-profile"
}
