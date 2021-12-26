provider "aws" {
  profile = "default"
  region  = "eu-central-1"
}

data "aws_caller_identity" "current" {}

data "aws_region" "current" {}

data "aws_ami" "ubuntu" {
  most_recent = true
  owners = ["aws-marketplace", "amazon"]
    
  filter {
    name   = "name"
    values = ["ubuntu/images/hvm-ssd/ubuntu*21.10*"] 
  }
}

resource "aws_instance" "net_test" {
  ami = "${data.aws_ami.ubuntu.id}"
  instance_type = "t2.micro"
  tags = {
    name        = "neto-test"
    TimeCreated = timestamp()
  }
}  