
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
  default      = "vpc-062398958da5b533d"
}

variable "key_name" {
  type         = string   
  description  = "Name of the SSH key to deploy to the Windows server"
  default      = "MAG_AD_Migration"
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
   description = "Powershell HTTPS"
        },
      {
   from_port   = 53
   to_port     = 53
   protocol    = "tcp"
   cidr_block  = "0.0.0.0/0"
   description = "DNS"
        },
     {
   from_port   = 88
   to_port     = 88
   protocol    = "tcp"
   cidr_block  = "0.0.0.0/0"
   description = "Kerberos authentication"
        },
      {
   from_port   = 389
   to_port     = 389
   protocol    = "tcp"
   cidr_block  = "0.0.0.0/0"
   description = "LDAP"
        },
       {
   from_port   = 445
   to_port     = 445
   protocol    = "tcp"
   cidr_block  = "0.0.0.0/0"
   description = "SMB"
        },
       {
   from_port   = 636
   to_port     = 636
   protocol    = "tcp"
   cidr_block  = "0.0.0.0/0"
   description = "LDAPS"
        },
       {
   from_port   = 9389
   to_port     = 9389
   protocol    = "tcp"
   cidr_block  = "0.0.0.0/0"
   description = "ADWS"
        },
    ]

}

variable "ssm_role_name" {
  type         = string
  description  = "the name of ssm role"
  default      = "ec2_ssm_role"
}

variable "instance_profile_name" { 
  type         = string
  description  = "the name of instance profile"
  default      = "ec2_ssm_profile"
}

variable "ssmdocument_name" { 
  type         = string
  description  = "the name of ssmdocument"
  default      = "ec2_ssmrole_profile"
}
