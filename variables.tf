variable "region" {
  type        = string
  description = "the region where the infrastructure has to be deployed"
  default     =  "us-west-2"
}

variable "domain_name" {
  type        = string
  description = "the domain name of the directory service."
  default     = "partners.temp"
}

variable "type" {
  type        = string
  description = "the type of the  directory service."
  default     = "MicrosoftAD"
}

variable "edition" {
  type        = string
  description = "the edition of the MicrosoftAD  directory service. Standard or Enterprise"
  default     = "Standard"
}

variable "vpc_id" {
  type        = string
  description = "the vpc id of the  directory service."
  default     = "vpc-062398958da5b533d"
}

variable "subnet_ids" {
  type        = list(string)
  description = "the subnet ids of the active directory service."
  default     = ["subnet-0f176349a1ccf0a82", "subnet-08acc1c8fbe1c555b"]
}
variable "tags" {
  type        = string
  description = "tags to propogate to all supported resources"
  default     = "d-server-00u4h5mwt17wxw"
}

