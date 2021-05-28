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
}

resource "aws_instance" "web" {
  ami           = "ami-077e31c4939f6a2f3"
  instance_type = "t2.micro"
  provisioner "local-exec" {
    command = "echo ${self.public_ip}  ansible_user=vagrant ansible_pass=vagrant > hosts.txt"
  }
}
