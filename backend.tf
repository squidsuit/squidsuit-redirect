terraform {
  backend "s3" {
    bucket = "cloudlab-terraform"
    key    = "backend/dns-forwarder/terraform.tfstate"
    region = "us-east-1"
    encrypt = true
    dynamodb_table = "terraform"
  }
}