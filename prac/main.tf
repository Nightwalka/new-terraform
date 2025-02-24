terraform {
  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = "~>5.1"
    }
  }

  required_version = ">= 1.4.6"
}

provider "aws" {
  region = "us-east-2"
}

resource "aws_instance" "counter_lab" {
  #we then add a counter that counts the number of ec2 instances we need 
  count         = 2
  ami           = "ami-0c7c4e3c6b4941f0f"
  instance_type = "t2.micro"

  tags = {
    name = " Count lab ${count.index + 1}"
  }
}