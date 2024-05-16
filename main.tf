provider "aws" {
  region = "us-east-1"  # Specify your desired AWS region
}

resource "aws_instance" "example" {
  ami           = "ami-04e914639d0cca79a"  # Specify the AMI ID of the EC2 instance you want to deploy
  instance_type = "t2.micro"      # Specify the instance type (e.g., t2.micro, t2.small, etc.)
  key_name      = "your_key_pair" # Specify the key pair name for SSH access

  tags = {
    Name = "example-instance"  # Specify a name tag for the instance
  }
}
