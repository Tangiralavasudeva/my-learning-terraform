resource "aws_instance" "Myec2" {
  ami           = "ami-00ca32bbc84273381"
  instance_type = "t2.micro"
}

resource "aws_iam_user" "demouser" {
  name = "vasu-demo-user"
  
}