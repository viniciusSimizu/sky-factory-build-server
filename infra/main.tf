terraform {
  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = "~> 5.0"
    }
  }
}

terraform {
  cloud {
    organization = "vinicius-simizu-personal"
    hostname = "app.terraform.io"

    workspaces {
      name = "sky-factory"
    }
  }
}

provider "aws" {
  region = var.region
}
