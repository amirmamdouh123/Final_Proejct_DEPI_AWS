provider "aws" {
    region = "us-east-1"
}

module "aws_vpc" {
    source = "./VPC"
}


