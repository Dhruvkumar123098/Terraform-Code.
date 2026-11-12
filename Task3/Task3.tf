terraform {
  required_providers {
    aws = {
      source = "hashicorp/aws"
      version = "~> 6.0"
    }
  }
}


resource "aws_vpc" "main" {  
  cidr_block = "10.0.0.0/16"


tags = {
    Environment = var.environment
    Name = "${var.environment}-vpc"
  }
}

resource "aws_instance" "myec2" {
    ami = "ami-08e7e754b2c895da7"
    instance_type = "t3.micro"

tags = {
    Name = var.environment
  }
}