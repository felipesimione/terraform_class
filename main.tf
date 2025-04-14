terraform { 
  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = "5.61.0"
    }
  }
  backend "s3" {
    # Lembre de trocar o bucket para o seu, não pode ser o mesmo nome
    bucket         = "bucket-para-salvar-o-estado-teste"
    # dynamodb_table = "terraform-locks"
    key            = "terraform.tfstate, .terraform.lock.hcl"
    region         = "us-east-1"
    encrypt        = true  # Ativa a criptografia
  }
}

provider "aws" {
  region = "us-east-1"
}
