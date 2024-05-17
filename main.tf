provider "aws" {
  region = "us-west-2"  # Specify your desired AWS region
}

resource "time_sleep" "wait_60_seconds" {
  depends_on = [null_resource.previous]

  create_duration = "60s"
}



resource "aws_instance" "example" {
  ami           = "ami-0fe7e11d0d4fdbdbf"  # Specify the AMI ID of the EC2 instance you want to deploy
  instance_type = "t2.micro"      # Specify the instance type (e.g., t2.micro, t2.small, etc.)
  key_name      = "your_key_pair" # Specify the key pair name for SSH access
  
  depends_on = [time_sleep.wait_60_seconds]

  tags = {
    Name = "example-instance"  # Specify a name tag for the instance
  }
}
