terraform {
  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = "~> 3.0"
    }
  }
}

# Configure the AWS Provider
provider "aws" {
  region = "ap-south-1"
  access_key = "AKIA4MTWKTVHI5AUPLPP"
  secret_key = "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"
}

resource "aws_instance" "web" {
  ami           = "ami-0e1d06225679bc1c5"
  instance_type = "t2.micro"

  tags = {
    Name = "HelloWorld"
    
  }

}
