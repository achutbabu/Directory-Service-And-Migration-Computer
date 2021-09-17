## Requirements

No requirements.

## Providers

| Name | Version |
|------|---------|
| <a name="provider_aws"></a> [aws](#provider\_aws) | n/a |
| <a name="provider_random"></a> [random](#provider\_random) | n/a |

## Modules

No modules.

## Resources

| Name | Type |
|------|------|
| [aws_directory_service_directory.this](https://registry.terraform.io/providers/hashicorp/aws/latest/docs/resources/directory_service_directory) | resource |
| [aws_ssm_parameter.this](https://registry.terraform.io/providers/hashicorp/aws/latest/docs/resources/ssm_parameter) | resource |
| [random_password.this](https://registry.terraform.io/providers/hashicorp/random/latest/docs/resources/password) | resource |

## Inputs

| Name | Description | Type | Default | Required |
|------|-------------|------|---------|:--------:|
| <a name="input_domain_name"></a> [domain\_name](#input\_domain\_name) | the domain name of the directory service. | `string` | n/a | yes |
| <a name="input_edition"></a> [edition](#input\_edition) | the edition of the MicrosoftAD active directory service. Standard or Enterprise | `string` | `"Standard"` | no |
| <a name="input_region"></a> [region](#input\_region) | the region  where the infrastructure is to be deployed | `string` | n/a | yes |
| <a name="input_subnet_ids"></a> [subnet\_ids](#input\_subnet\_ids) | the subnet ids of the active directory service. | `list(string)` | n/a | yes |
| <a name="input_tags"></a> [tags](#input\_tags) | tags to propogate to all supported resources | `string` | n/a | yes |
| <a name="input_type"></a> [type](#input\_type) | the type of the directory service. | `string` | n/a | yes |
| <a name="input_vpc_id"></a> [vpc\_id](#input\_vpc\_id) | the vpc id of the  directory service. | `string` | n/a | yes |

## Outputs

| Name | Description |
|------|-------------|
| <a name="output_access_url"></a> [access\_url](#output\_access\_url) | n/a |
| <a name="output_directory_id"></a> [directory\_id](#output\_directory\_id) | n/a |
| <a name="output_dns_ip_addresses"></a> [dns\_ip\_addresses](#output\_dns\_ip\_addresses) | n/a |
