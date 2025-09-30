terraform {
  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = "5.100.0"
    }
  }
}

# Configure the AWS Provider
provider "aws" {
  region = "us-east-1"
}



resource "aws_instance" "web" {
  ami           = ami-123
  instance_type = "t2.micro"
}

