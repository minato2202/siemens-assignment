provider "aws" {
  region     = "us-west-2"
  access_key = "AKIAZQ3DORFCOTFCFS4T"
  secret_key = "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"
}

module "web-application" {
  source = "./web-application"

  

  # Inputs for the web application module
  vpc_cidr_block              = "10.0.0.0/16"
  public_subnet_cidr_block    = "10.0.1.0/24"
  private_subnet_cidr_block   = "10.0.2.0/24"
  availability_zone           = "us-west-2a"
  scaling_adjustment          = 2
  cloudwatch_notification_arn = "arn:aws:sns:us-west-2:123456789012:my-notification-topic"
}
