# siemens-assignment

# Inputs

vpc_cidr_block: The CIDR block for the VPC.
public_subnet_cidr_block: The CIDR block for the public subnet.
private_subnet_cidr_block: The CIDR block for the private subnet.
availability_zone: The AWS availability zone.
scaling_adjustment: Scaling adjustment for the autoscaling group.
cloudwatch_notification_arn: CloudWatch notification ARN.

# Outputs

vpc_id: ID of the created VPC.
public_subnet_id: ID of the created public subnet.
private_subnet_id: ID of the created private subnet.
certificate_arn: ARN of the self-signed certificate.
private_hosted_zone_id: ID of
the created Route 53 private hosted zone.

# Variables

vpc_cidr_block: CIDR block for the VPC.
public_subnet_cidr_block: CIDR block for the public subnet.
private_subnet_cidr_block: CIDR block for the private subnet.
availability_zone: AWS availability zone.
scaling_adjustment: Scaling adjustment for the autoscaling group.
cloudwatch_notification_arn: CloudWatch notification ARN.
Requirements
Terraform version: 0.12 or newer
AWS CLI configured with appropriate credentials
Note
Make sure to replace placeholders <YOUR_AWS_ACCESS_KEY> and <YOUR_AWS_SECRET_KEY> with your AWS access and secret keys respectively.
Ensure that the private key file referenced in private_key_pem exists and is accessible.
This module assumes that you have the necessary permissions and resources set up in your AWS account.
