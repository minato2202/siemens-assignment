# Define the VPC
resource "aws_vpc" "my_vpc" {
  cidr_block = var.vpc_cidr_block
}

# Define the public subnet
resource "aws_subnet" "public_subnet" {
  vpc_id            = aws_vpc.my_vpc.id
  cidr_block        = var.public_subnet_cidr_block
  availability_zone = var.availability_zone
}

# Define the private subnet
resource "aws_subnet" "private_subnet" {
  vpc_id            = aws_vpc.my_vpc.id
  cidr_block        = var.private_subnet_cidr_block
  availability_zone = var.availability_zone
}

# Create a self-signed certificate
resource "tls_self_signed_cert" "example" {
  dns_names             = ["test.example.com"]
  validity_period_hours = 24
  allowed_uses          = ["server_auth"]
  private_key_pem       = file("$path/private_key.pem")
}

# Define the Route 53 private hosted zone
resource "aws_route53_zone" "private" {
  name = "test.example.com."
  
  vpc {
    vpc_id               = aws_vpc.my_vpc.id
    vpc_region           = "reigon"
  }
}
