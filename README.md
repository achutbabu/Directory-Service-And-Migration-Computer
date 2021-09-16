## Requirements

| Name | Version |
|------|---------|
| <a name="requirement_terraform"></a> [terraform](#requirement\_terraform) | >=0.12.6 |
| <a name="requirement_aws"></a> [aws](#requirement\_aws) | >= 3.0, <4.0.0 |

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
| <a name="input_domain_name"></a> [domain\_name](#input\_domain\_name) | the domain name of the directory service. | `string` | n/a | yes |
| <a name="input_edition"></a> [edition](#input\_edition) | the edition of the MicrosoftAD  directory service. Standard or Enterprise | `string` | `"Standard"` | no |
| <a name="input_region"></a> [region](#input\_region) | the region where the infrastructure has to be deployed | `string` | n/a | yes |
| <a name="input_subnet_ids"></a> [subnet\_ids](#input\_subnet\_ids) | the subnet ids of the active directory service. | `list(string)` | n/a | yes |
| <a name="input_tags"></a> [tags](#input\_tags) | tags to propogate to all supported resources | `string` | n/a | yes |
| <a name="input_type"></a> [type](#input\_type) | the type of the  directory service. | `string` | n/a | yes |
| <a name="input_vpc_id"></a> [vpc\_id](#input\_vpc\_id) | the vpc id of the  directory service. | `string` | n/a | yes |

## Outputs

| Name | Description |
|------|-------------|
| <a name="output_access_url"></a> [access\_url](#output\_access\_url) | n/a |
| <a name="output_directory_id"></a> [directory\_id](#output\_directory\_id) | n/a |
| <a name="output_dns_ip_addresses"></a> [dns\_ip\_addresses](#output\_dns\_ip\_addresses) | n/a |
