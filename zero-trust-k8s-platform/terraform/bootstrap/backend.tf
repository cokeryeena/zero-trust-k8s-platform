terraform {
  backend "s3" {
    bucket         = "coker-terraform-bucket"
    key            = "terraform.tfstate"
    region         = "us-east-1"
  }
}
