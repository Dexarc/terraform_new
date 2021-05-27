terraform {
  required_providers {
    aws = {
      source  = "hashicorp/aws"
    }
  }
}

# Configure the AWS Provider
provider "aws" {
  region = "us-east-2"
    access_key = "AKIAZNAKCG7MQCLAIINT"
    secret_key = "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"
}

resource "aws_instance" "web" {
  ami           = "ami-077e31c4939f6a2f3"
  instance_type = "t2.micro"
}