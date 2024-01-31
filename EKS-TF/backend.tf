terraform {
  backend "s3" {
    bucket         = "terraform-backend-bucket-12"
    region         = "ap-northeast-1"
    key            = "End-to-End-Kubernetes-DevSecOps-Tetris-Project/EKS-TF/terraform.tfstate"
    dynamodb_table = "terraform-state-lock"
    encrypt        = true
  }
  required_version = ">=0.13.0"
  required_providers {
    aws = {
      version = ">= 3.0"
      source  = "hashicorp/aws"
    }
  }
}