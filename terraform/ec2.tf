# key pair (login)
resource "aws_key_pair" "my_key" {
  key_name   = "terra-key-ec2"
  public_key = file("terra-key-ec2.pub") 
}

# VPC
resource "aws_default_vpc" "default" {
}

# SECURITY GROUP
resource "aws_security_group" "my_security_group" {
  name        = "automate-sg"
  description = "this will add a TF generated Security group"
  vpc_id      = aws_default_vpc.default.id

  # inbound rules
  ingress {
    from_port   = 22   # ssh
    to_port     = 22
    protocol    = "tcp"
    cidr_blocks = ["0.0.0.0/0"]
    description = "allow SSH from anywhere"
  }

  ingress {
    from_port   = 80   # http
    to_port     = 80
    protocol    = "tcp"
    cidr_blocks = ["0.0.0.0/0"]
    description = "allow HTTP from anywhere"
  }

  ingress {
    from_port   = 443  # https
    to_port     = 443
    protocol    = "tcp"
    cidr_blocks = ["0.0.0.0/0"]
  }

  # outbound rules
  egress  {
    from_port   = 0
    to_port     = 0
    protocol    = "-1"
    cidr_blocks = ["0.0.0.0/0"]
    description = "allow all outbound traffic"
  }

  tags = {
    Name = "automate-sg"
  }
}

# EC2 INSTANCE
resource "aws_instance" "my_instance" {
  key_name        = aws_key_pair.my_key.key_name
  security_groups = [aws_security_group.my_security_group.name]
  instance_type   = "t2.micro"
  ami             = "ami-019715e0d74f695be" # ubuntu

  root_block_device {
    volume_size = 20
    volume_type = "gp3"
  }

  tags = {
    Name = "Devops-Assessment"
  }
}