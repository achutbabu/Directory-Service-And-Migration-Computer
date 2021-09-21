## Requirements

| Name | Version |
|------|---------|
| <a name="requirement_terraform"></a> [terraform](#requirement\_terraform) | >= 0.15.0 |
| <a name="requirement_aws"></a> [aws](#requirement\_aws) | ~> 3.58 |

## Providers

No providers.

## Modules

| Name | Source | Version |
|------|--------|---------|
| <a name="module_migrationcomputer"></a> [migrationcomputer](#module\_migrationcomputer) | ./modules/migrationcomputer | n/a |

## Resources

No resources.

## Inputs

| Name | Description | Type | Default | Required |
|------|-------------|------|---------|:--------:|
| <a name="input_ingress_rules"></a> [ingress\_rules](#input\_ingress\_rules) | n/a | <pre>list(object({<br>  from_port    = number<br>  to_port      = number<br>  protocol     = string<br>  cidr_block   = string<br>  description  = string<br>    }))</pre> | <pre>[<br>  {<br>    "cidr_block": "0.0.0.0/0",<br>    "description": "RDP",<br>    "from_port": 3389,<br>    "protocol": "tcp",<br>    "to_port": 3389<br>  },<br>  {<br>    "cidr_block": "0.0.0.0/0",<br>    "description": "DNS",<br>    "from_port": 53,<br>    "protocol": "tcp",<br>    "to_port": 53<br> },<br> {<br>    "cidr_block": "0.0.0.0/0",<br>    "description": "Kerberos Authentication",<br>    "from_port": 88,<br>    "protocol": "tcp",<br>    "to_port": 88<br>  },<br> {<br>    "cidr_block": "0.0.0.0/0",<br>    "description": "LDAP",<br>    "from_port": 389,<br>    "protocol": "tcp",<br>    "to_port": 389<br>  },<br> {<br>    "cidr_block": "0.0.0.0/0",<br>    "description": "SMB",<br>    "from_port": 445,<br>    "protocol": "tcp",<br>    "to_port": 445<br>  },<br> {<br>    "cidr_block": "0.0.0.0/0",<br>    "description": "LDAPS",<br>    "from_port": 636,<br>    "protocol": "tcp",<br>    "to_port": 636<br>  },<br> {<br>    "cidr_block": "0.0.0.0/0",<br>    "description": "ADWS",<br>    "from_port": 9389,<br>    "protocol": "tcp",<br>    "to_port": 9389<br>  }<br>,{<br>    "cidr_block": "0.0.0.0/0",<br>    "description": "Powershell HTTP/HTTPS",<br>    "from_port": 5985,<br>    "protocol": "tcp",<br>    "to_port": 5986<br> }<br>]</pre> | no |
| <a name="input_instance_profile_name"></a> [instance\_profile\_name](#input\_instance\_profile\_name) | the name of instance profile | `string` | `"ec2-ssm-profile"` | no |
| <a name="input_instance_type"></a> [instance\_type](#input\_instance\_type) | the  size of instance type | `string` | `"t2.medium"` | no |
| <a name="input_key_name"></a> [key\_name](#input\_key\_name) | Name of the SSH key to deploy to the Windows server | `string` | `"MAG_AD_Migration"` | no |
| <a name="input_region"></a> [region](#input\_region) | the region  where the infrastructure is to be deployed | `string` | `"us-west-2"` | no |
| <a name="input_security_group_name"></a> [security\_group\_name](#input\_security\_group\_name) | the name of the security group | `string` | `"MAG Security Group For AD Migration"` | no |
| <a name="input_ssm_role_name"></a> [ssm\_role\_name](#input\_ssm\_role\_name) | the name of ssm role | `string` | `"ec2-ssm-role"` | no |
| <a name="input_ssmdocument_name"></a> [ssmdocument\_name](#input\_ssmdocument\_name) | the name of ssmdocument | `string` | `"ec2-ssmrole-profile"` | no |
| <a name="input_vpc_id"></a> [vpc\_id](#input\_vpc\_id) | the id of vpc | `string` | `"vpc-062398958da5b533d"` | no |
| <a name="input_win_ami"></a> [win\_ami](#input\_win\_ami) | the AMI ID of windows instance | `string` | `"ami-0d94140e38e117dc8"` | no |

## Outputs

| Name | Description |
|------|-------------|
| <a name="output_instance_ip"></a> [instance\_ip](#output\_instance\_ip) | n/a |
| <a name="output_security_group_id"></a> [security\_group\_id](#output\_security\_group\_id) | n/a |
