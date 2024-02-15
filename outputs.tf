output "vpc_id" {
  description = "ID of the created VPC"
  value       = aws_vpc.my_vpc.id
}

output "public_subnet_id" {
  description = "ID of the created public subnet"
  value       = aws_subnet.public_subnet.id
}

output "private_subnet_id" {
  description = "ID of the created private subnet"
  value       = aws_subnet.private_subnet.id
}

output "certificate_arn" {
  description = "ARN of the self-signed certificate"
  value       = tls_self_signed_cert.example.cert_pem
}

output "private_hosted_zone_id" {
  description = "ID of the created Route 53 private hosted zone"
  value       = aws_route53_zone.private.zone_id
}