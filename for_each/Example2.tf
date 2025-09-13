variable "my-map" {
    default = {
        key = "ami-0b09ffb6d8b58ca91"
        key1 = "value1"
    }
}

resource "aws_instance" "web" {
  for_each      = var.my-map
  ami           = each.value
  instance_type = "t3.micro"

  tags = {
    Name = each.key
  }
}