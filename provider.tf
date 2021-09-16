terraform {
  required_version = ">=0.12.6"
  required_providers {
    aws = ">= 3.0, <4.0.0"
  }
}

provider "aws" {
  region = var.region
}
