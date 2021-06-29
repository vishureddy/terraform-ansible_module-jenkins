terraform {
  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = "~> 3.0"
    }
  }

  backend "s3" {
    # bucket = var.bucket
    # key    = terraform.tfstate
    # region = var.region
  }
}
provider "aws" {
  region = var.aws_region
}

resource "aws_instance" "main" {
  ami           = var.ami_id
  instance_type = var.instance_type
  count         = var.ec2_count
  tags = {
    Name = "EC2_Instance_Terraform"
  }

}