terraform {
  required_version = "~>1.9"

  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = "~>5.73"
    }
    tls = {
      source  = "hashicorp/tls"
      version = "~>4.0"
    }
    tfe = {
      source  = "hashicorp/tfe"
      version = "~>0.59"
    }
  }
}

