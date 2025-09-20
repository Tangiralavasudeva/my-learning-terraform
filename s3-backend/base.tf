provider "aws" {
  region = "us-east-1"
  
}
resource "aws_security_group" "prod" {
  name        = "production-sg"
}