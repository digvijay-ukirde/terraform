terraform {
  required_providers {
    aws = {
      source = "hashicorp/aws"
      version = "4.11.0"
    }
  }
}

provider "aws" {
  region = "ap-south-1"
  access_key = "ACCESS-KEY"
  secret_key = "SECRETE-KEY"
}

resource "aws_instance" "ec2_instance" {
  ami = "ami-0a3277ffce9146b74"
  instance_type = "t2.micro"
}