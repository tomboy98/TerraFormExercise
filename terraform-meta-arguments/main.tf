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
locals{

instance_names = {"Dev":"ami-0e001c9271cf7f3b9","brg":"ami-01b799c439fd5516a","abr":"ami-01b799c439fd5516a","nem":"ami-0e001c9271cf7f3b9"}

}

resource "aws_instance" "aws_ec2_test" {
  for_each = local.instance_names
  ami                     = each.value
  instance_type           = "t2.micro"
  tags = {
    Name = each.key
}
}
