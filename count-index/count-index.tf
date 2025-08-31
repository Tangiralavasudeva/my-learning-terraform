provider"aws" {
    region = "us-east-1" 
}
resource "aws_instance" "myec2" {
    ami = "ami-00ca32bbc84273381"
    instance_type = "t2.micro"
    count = 3

    tags = {
      Name = "payments-system-${count.index}"
    }
}

resource "aws_iam_user" "this" {
  name = "payments-user-${count.index}"
  count = 3
}

variable "dev_names" {
  type = list
  default = ["vasu","ravi","ajay"]
  
}

resource "aws_iam_user" "name" {
 name= var.dev_names[count.index]
 count = 3 
}