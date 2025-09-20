terraform {
  backend "s3" {
    bucket = "my-terraform-tfstate-bucket01"
    key    = "production.tfstate"
    region = "us-east-1"
    use_lockfile = "true"
  }
}