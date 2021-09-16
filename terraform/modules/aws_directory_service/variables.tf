variable "region" {
  type           = "string"
  description    = "the region  where the infrastructure is to be deployed"
}

variable "domain_name" {
  type           = "string"
  description    = "the domain name of the directory service."
}

variable "type" {
  type           = "string"
  description    = "the type of the directory service."
}

variable "edition" {
  type           = "string"
  default        = "Standard"
  description    = "the edition of the MicrosoftAD active directory service. Standard or Enterprise"
}

variable "vpc_id" {
  type           = "string"
  description    = "the vpc id of the  directory service."
}

variable "subnet_ids" {
  type           = list(string)
  description    = "the subnet ids of the active directory service."
}

variable "tags" {
  type           = "string"
  description    = "tags to propogate to all supported resources"

}

