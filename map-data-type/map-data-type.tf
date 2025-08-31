provider "aws" {
    region = "us-east-1"
  
}
variable "my-map" {
  type = map
  default = {
    Name = "Alice"
    Team = "Payments"
  }
}
