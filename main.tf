provider "aws" {
  region = "eu-west-1"
}

resource "aws_s3_bucket" "example" {
  bucket = "terraform-semantic-release-demo"
  acl    = "private"
}

resource "aws_ec2_instance" "example" {
  ami           = "ami-123456789"
  instance_type = "t2.micro"

  tags = {
    Name = "Terraform Example"
  }
}
