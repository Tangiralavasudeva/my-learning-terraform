data "terraform_remote_state" "vpc" {
  backend = "s3"

  config = {
    bucket = "myterraform-bucket91"
    key    = "eip.tfstate"
    region = "us-east-1"
    }
  }