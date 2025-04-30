terraform {
  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = "~> 3.0"
    }
  }

  required_version = ">= 0.12"
}

provider "aws" {
  region = "eu-central-1"
}

resource "aws_instance" "example" {
  ami           = "ami-0c55b159cbfafe1f0" # Amazon Linux 2 - eu-central-1 (valido al momento della stesura)
  instance_type = "t2.micro"

  tags = {
    Name = "RenovateTestInstance"
  }
}

