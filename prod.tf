terraform {
 backend "remote" {
   organization = "anishmoktan"
   workspaces {
     name = "Example-Workspace"
   }
 }
  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = "3.27.0"
    }
  }
}

provider "aws" {
  profile = "default"
  region = var.region
#   region  = "us-east-1"
}

resource "aws_instance" "LEMON_TEA" {

#   ami           = "ami-096fda3c22c1c990a"
  ami           = var.amis[var.region]
  instance_type = "t2.micro"

  tags          = {
    Name        = "Lemon_Ginger_Tea"
  }
}

resource "aws_eip" "ip" {
  vpc      = true
  instance = aws_instance.LEMON_TEA.id

  tags          = {
    Name        = "Lemon_Ginger_Tea_EIP"
  }
}

output "ip" {
  value = aws_eip.ip.public_ip
}
output "LEMON_TEA" {
  value = aws_instance.LEMON_TEA.ami
}