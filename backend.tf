terraform {
  backend "remote" {
    hostname = "app.terraform.io"
    organization = "Ua"

    workspaces {
      name = "tf-url-redirect"
    }
  }
}