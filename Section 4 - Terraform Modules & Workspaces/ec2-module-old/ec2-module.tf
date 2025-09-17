/*
provider "aws" {
  region = "us-east-1"
  }
module "ec2-instance" {
  source     = "terraform-aws-modules/ec2-instance/aws"
  version    = "6.1.1"
  subnet_ids = [
    "subnet-0270be4be710f6e65",
    "subnet-00cca79774cf5205a",
    "subnet-090ad4c1a5efcf04c",
    "subnet-07087a025bdb98726",
    "subnet-0a3f5b8e4f1c3e2b7",
    "subnet-0b5b31957d4a8b908"
  ]
  // vpc_id removed
}
*/