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
