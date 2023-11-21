provider "aws" {
  region = "us-east-1"
  assume_role {
    role_arn = "arn:aws:iam::994218300221:role/admin_IAM_role"
    session_name = "test"
  }
}

resource "aws_instance" "ec2_terraform1" {
    ami = "ami-0dbc3d7bc646e8516"
    instance_type = "t2.micro"
    tags = {
      "Name" = "ec2_terraform1"
    }
}
