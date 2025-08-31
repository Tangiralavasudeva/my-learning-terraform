provider "aws" {
   region = "us-east-1"
  
}

resource "aws_instance" "web" {
  ami           = "ami-00ca32bbc84273381"
  instance_type = "t2.large"
  vpc_security_group_ids = ["sg-0c8b4f0b98dc3a289","sg-08e1a79e9229bd4de"]
}

variable "my-list" {
  type = list
}

output "variable_value" {
  value = var.my-list
}