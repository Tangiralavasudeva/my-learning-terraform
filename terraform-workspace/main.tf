provider "aws" {
  region = "us-east-1"  
}

locals {
    instance_type = {
  default = "t2.nano"
  dev     = "t2.micro"
  prod    = "m5.large"
    }
}

resource "aws_instance" "myec2" {
    ami           = "ami-08982f1c5bf93d976" # Amazon Linux 2 AMI
    instance_type = local.instance_type[terraform.workspace]
    }
  
