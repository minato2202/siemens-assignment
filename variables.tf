variable "vpc_cidr_block" {
  description = "CIDR block for the VPC"
  type        = string
}

variable "public_subnet_cidr_block" {
  description = "CIDR block for the public subnet"
  type        = string
}

variable "private_subnet_cidr_block" {
  description = "CIDR block for the private subnet"
  type        = string
}

variable "availability_zone" {
  description = "AWS availability zone"
  type        = string
}

variable "scaling_adjustment" {
  description = "Scaling adjustment for autoscaling group"
  type        = number
}

variable "cloudwatch_notification_arn" {
  description = "CloudWatch notification ARN"
  type        = string
}