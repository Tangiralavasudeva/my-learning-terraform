provider "aws" {
   region = "us-east-1"
  
}
variable "username" {
  type    = string
  default = "loadbalancer"
}

resource "aws_iam_user" "lb" {
  name = var.username
}
