provider "aws" {
 region = "us-east-1" 
}

resource "local_file" "foo" {
  content  = "Hello World"
  filename = "terraform.txt"
}