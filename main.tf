terraform {
  required_providers{
    aws = {
      source = "hashicorp/aws"
      version = "~> 5.0"
    }
  }
}
provider "aws" {
  region = "us-east-1"
}
resource "aws_s3_bucket" "meu_bucket" {
  bucket = "bucket-para-salvar-o-estado"

  tags = {
    Name        = "MyBucket"
    Environment = "Dev"
  }
}
