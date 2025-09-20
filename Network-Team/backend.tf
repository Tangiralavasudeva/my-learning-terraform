terraform {
  backend "s3" {
    bucket = "myterraform-bucket91"
    key    = "eip.tfstate"
    region = "us-east-1"
  }
}