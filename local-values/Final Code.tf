provider "aws" {
  region     = "us-east-1"
}
# Variable for base tags
variable "tags" {
  type = map(string)
  default = {
    Team = "security-team"
  }
}

# Local tags (merge with variables)
locals {
  default_tags = merge(
    var.tags,
    {
      CreationDate = "date-${formatdate("DDMMYYYY", timestamp())}"
    }
  )
}

# Security Group 1
resource "aws_security_group" "sg_01" {
  name = "app_firewall"
  tags = local.default_tags
}

# Security Group 2
resource "aws_security_group" "sg_02" {
  name = "db_firewall"
  tags = local.default_tags
}