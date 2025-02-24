terraform {
  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = "~> 5.01"
    }
  }

  required_version = ">= 1.4.6"
}

provider "aws" {
  region = "us-east-2"
}
resource "aws_instance" "instance1" {
  ami           = "ami-0cb91c7de36eed2cb"
  instance_type = "t2.micro"

  tags = {
    "Name" = "one"
  }
}