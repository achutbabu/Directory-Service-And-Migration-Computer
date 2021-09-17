terraform {

  required_providers {
     aws = {
      source  = "HASHICORP/AWS"
      version = "~> 3.58"
    }
  }
  required_version = ">= 0.15.0"
  
#backend "remote" {

#    hostname     = "app.terraform.io"
#    organization = "MarkAnthonyGroup"
#    workspaces {
#      name = "tf-shared-services-prod-us-west-2-directory-service"
#    }
#  }
}


provider "aws" {
  region = var.region
}
