provider "aws" {
  region = "us-east-1"
}

# EC2 Instance
resource "aws_instance" "web" {
  ami           = "ami-00ca32bbc84273381" # Amazon Linux 2 AMI in us-east-1
  instance_type = "t2.micro"

  # Use default security group + default subnet
  associate_public_ip_address = true

  tags = {
    Name = "Terraform-EC2"
  }
}

# Elastic IP and attach to instance
resource "aws_eip" "lb" {
  instance = aws_instance.web.id
  domain   = "vpc"
}