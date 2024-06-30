terraform {
  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = "~> 5.0"
    }
  }
}

# Configure the AWS Provider
provider "aws" {
  region = "us-east-1"
}

# Create a EC2 Instance
resource "aws_instance" "my_ec2_instance"{
        count = 2
	ami = "ami-0e001c9271cf7f3b9"
        instance_type = "t2.micro"
        tags = {
                    Name="terraform-instance"
}
}
# Creating a S3 Bucket
resource "aws_s3_bucket" "my_s3_bucket"{
 bucket = "ash-terraform678914156"
 tags = {
    Name = "ash-terraform678914156"
    Environment = "Dev"
}
}

#Output Public IP
output "ec2_public_ips" {
value = aws_instance.my_ec2_instance[*].public_ip
}
