terraform {
  backend "s3" {
    bucket         = "terraform-remote-state69"
    key            = "dev/terraform.tfstate" 
    region         = "eu-north-1"
    use_lockfile  = "true"
    encrypt        = true
  }
  required_providers {
    aws = {
      source = "hashicorp/aws"
      version = "~> 6.0"
    }
  }
}


resource "aws_s3_bucket" "example2" {
  bucket = "dhru-test-bucket"

  tags = {
    Name        = "My bucket"
    Environment = "Dev"
  }
}