provider "aws" {
  region = var.region
}

resource "aws_instance" "ubuntu" {
  ami                    = "ami-0f082e587882aed8c"
  instance_type          = var.instance_type

  tags = {
    Name = var.instance_name
  }
}

resource "aws_s3_bucket" "example" {
  bucket = "example"
}

resource "aws_s3_bucket_public_access_block" "example" {
  bucket = aws_s3_bucket.example.id

  block_public_acls       = true
  block_public_policy     = true
  ignore_public_acls      = true
  restrict_public_buckets = true
}