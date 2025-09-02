provider "aws" {
  region = "us-east-1"
}

data "aws_ami" "myimage" {
  most_recent      = true
  owners           = ["amazon"]

  filter {
    name   = "name"
    values = ["ubuntu/images/hvm-ssd-gp3/ubuntu-noble-24.04-amd64-server-20250821*"]
  }
}

resource "aws_instance" "web" {
  ami           = data.aws_ami.myimage.image_id
  instance_type = "t2.micro"
}