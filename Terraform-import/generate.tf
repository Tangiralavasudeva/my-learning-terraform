# __generated__ by Terraform
# Please review these resources and move them into your main configuration files.

# __generated__ by Terraform from "sg-098492c46c5b521ec"
resource "aws_security_group" "Cust-Sg" {
  description = "custom-AG "
  egress = [{
    cidr_blocks      = ["0.0.0.0/0"]
    description      = ""
    from_port        = 0
    ipv6_cidr_blocks = []
    prefix_list_ids  = []
    protocol         = "-1"
    security_groups  = []
    self             = false
    to_port          = 0
  }]
  ingress = [{
    cidr_blocks      = ["0.0.0.0/0"]
    description      = ""
    from_port        = 0
    ipv6_cidr_blocks = []
    prefix_list_ids  = []
    protocol         = "-1"
    security_groups  = []
    self             = false
    to_port          = 0
  }]
  name                   = "Cust-Sg"
  name_prefix            = null
  region                 = "us-east-1"
  revoke_rules_on_delete = null
  tags = {
    Dev-Team = ""
  }
  tags_all = {
    Dev-Team = ""
  }
  vpc_id = "vpc-0ae791b3c41e1e910"
}
