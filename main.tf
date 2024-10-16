terraform {
    required_providers {
        aws = {
            source = "hashicorp/aws"
            version = "5.70.0"
        }
    }
}

provider "aws" {
    region = "us-east-1"
}

resource "aws_s3_bucket" "example" {
    bucket = "my-tf-test-bucket-francy-hernandez"

    tags = {
        owner = "francy.vega"
        bootcamp = "devops"
    }
}