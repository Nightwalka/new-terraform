

terraform {
  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = "~> 5.1"
    }


  }

  required_version = ">= 1.4.6"

}
provider "aws" {
  region = "us-east-2"
}

resource "aws_instance" "counter_lab" {

  count         = 2
  ami           = "ami-0c7c4e3c6b4941f0f"
  instance_type = "t2.micro"

  tags = {
    time_2 = formatdate("MM DD YYYY hh:mm: ZZZ", timestamp())
    name   = " thsi is instance: ${count.index + 1}"
  }
}