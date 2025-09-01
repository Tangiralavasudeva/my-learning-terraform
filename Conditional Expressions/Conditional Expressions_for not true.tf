variable "environment" {
  default = "development"
}

resource "aws_instance" "myec2" {
   ami = "ami-00ca32bbc84273381"
   instance_type = var.environment != "development" ? "t2.micro" : "m5.large" 
}