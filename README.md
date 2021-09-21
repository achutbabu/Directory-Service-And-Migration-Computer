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
| <a name="module_aws_directory_service"></a> [aws\_directory\_service](#module\_aws\_directory\_service) | ./terraform/modules/aws_directory_service | n/a |

## Resources

No resources.

## Inputs

| Name | Description | Type | Default | Required |
|------|-------------|------|---------|:--------:|
| <a name="input_domain_name"></a> [domain\_name](#input\_domain\_name) | the domain name of the directory service. | `string` | `"partners.temp"` | no |
| <a name="input_edition"></a> [edition](#input\_edition) | the edition of the MicrosoftAD  directory service. Standard or Enterprise | `string` | `"Standard"` | no |
| <a name="input_region"></a> [region](#input\_region) | the region where the infrastructure has to be deployed | `string` | `"us-west-2"` | no |
| <a name="input_subnet_ids"></a> [subnet\_ids](#input\_subnet\_ids) | the subnet ids of the active directory service. | `list(string)` | <pre>[<br>  "subnet-0f176349a1ccf0a82", "subnet-08acc1c8fbe1c555b"<br>]</pre> | no |
| <a name="input_tags"></a> [tags](#input\_tags) | tags to propogate to all supported resources | `string` | `"d-server-00u4h5mwt17wxw"` | no |
| <a name="input_type"></a> [type](#input\_type) | the type of the  directory service. | `string` | `"MicrosoftAD"` | no |
| <a name="input_vpc_id"></a> [vpc\_id](#input\_vpc\_id) | the vpc id of the  directory service. | `string` | `"vpc-062398958da5b533d"` | no |

## Outputs

| Name | Description |
|------|-------------|
| <a name="output_access_url"></a> [access\_url](#output\_access\_url) | n/a |
| <a name="output_directory_id"></a> [directory\_id](#output\_directory\_id) | n/a |
| <a name="output_dns_ip_addresses"></a> [dns\_ip\_addresses](#output\_dns\_ip\_addresses) | n/a |
