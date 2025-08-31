resource "aws_instance" "web" {
  ami           = "ami-00ca32bbc84273381"
  instance_type = "t3.micro"
  vpc_security_group_ids = ["sg-0c8b4f0b98dc3a289"]
}