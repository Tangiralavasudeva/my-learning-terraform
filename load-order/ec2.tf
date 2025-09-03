resource "aws_instance" "myec2" {
  ami           = "ami-00ca32bbc84273381"
  instance_type = "t2.micro"
}

resource "aws_instance" "newec2" {
  ami           = "ami-00ca32bbc84273381"
  instance_type = "t2.micro"
}