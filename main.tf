# Define the provider
provider "aws" {
  region     = "reigon"
  access_key = "access_key"
  secret_key = "security_key"
}

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
  private_key_pem       = file("C:/users/ujjwa/private_key.pem")
}

# Define the Route 53 private hosted zone
resource "aws_route53_zone" "private" {
  name = "test.example.com."
  
  vpc {
    vpc_id               = aws_vpc.my_vpc.id
    vpc_region           = "region"
  }
}


module "web-application" {
  source = "./web-application"

  

  # For example Inputs for the web application module
  vpc_cidr_block              = "10.0.0.0/16"
  public_subnet_cidr_block    = "10.0.1.0/24"
  private_subnet_cidr_block   = "10.0.2.0/24"
  availability_zone           = "us-west-2a"
  scaling_adjustment          = 2
  cloudwatch_notification_arn = "arn:aws:sns:us-west-2:123456789012:my-notification-topic"
}
