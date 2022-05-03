########################
## Terraform Hashicorp
########################
terraform {
  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = "~> 3.0"
    }
  }
}

######################
## providers [aws]
######################
provider "aws" {
  region = "us-west-1"
}

#######################
##  MODULE AWS DYNAMO
#######################
module "dynamo" {
  source = "./dynamo"
  tags = var.tags
}

#######################
##  MODULE AWS ECR
#######################
module "ecr" {
  source = "./ecr"
  tags = var.tags
}

#######################
##  MODULE AWS S3
#######################
module "s3" {
  source = "./s3"
  tags = var.tags
}

#####################
##  INPUTS
#####################
variable "tags" {
    type = map(string)
    default = {
        admin = "beverlyspa2022@gmail.com"
        support = "rubendario1835@gmail.com"
    }
}