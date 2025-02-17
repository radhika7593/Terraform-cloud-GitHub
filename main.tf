terraform {
    required_version = "~> 1.1.5" // added latest version
    required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = "~> 3.0"
     }
    }
   }

provider "aws" {
       region = "us-east-2" 
        profile = "default"
	}

resource "aws_instance" "Raminfra" {
	ami = "ami-0231217be14a6f3ba" 
	instance_type = "t2.micro"
}
