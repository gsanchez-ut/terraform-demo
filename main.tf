provider "aws" {
  region = "us-east-1"
}

resource "aws_s3_bucket" "example" {
  bucket = "terraform-semantic-release-demo"
  acl    = "private"
}

resource "aws_ec2_instance" "example" {
  ami           = "ami-12345678"
  instance_type = "t2.micro"

  tags = {
    Name = "Terraform Example"
  }
}
