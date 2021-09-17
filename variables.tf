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
  default     = "vpc-5f326e27"
}

variable "subnet_ids" {
  type        = list(string)
  description = "the subnet ids of the active directory service."
  default     = ["subnet-5915de13", "subnet-3fec4547"]
}
variable "tags" {
  type        = string
  description = "tags to propogate to all supported resources"
  default     = "d-server-00u4h5mwt17wxw"
}

