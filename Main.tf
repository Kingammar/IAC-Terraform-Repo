
/*data "aws_ami" "golden_ami" {
  
  most_recent      = true
  owners           = ["amazon"]

  filter {
    name   = "name"
    values = ["amzn2-ami-kernel-5.10-hvm-*"]
  }

  filter {
    name   = "root-device-type"
    values = ["ebs"]
  }

  filter {
    name   = "virtualization-type"
    values = ["hvm"]
  }
}
*/

resource "random_integer" "random" {
min = 1
max = 100
}

data "aws_ssm_parameter" "ami" {
  name = "latest_golden-ami"
}

resource "aws_security_group" "allow_http" {
  name        = "allow_http"
  description = "Allow HTTP inbound traffic"
  #vpc_id      = aws_vpc.main.id

  ingress {
    description = "HTTP from VPC"
    from_port   = 80
    to_port     = 80
    protocol    = "tcp"
    cidr_blocks = var.ip_address

  }
  ingress {
    description = "SSH from VPC"
    from_port   = 22
    to_port     = 22
    protocol    = "tcp"
    cidr_blocks = var.ip_address

  }
  egress {
    from_port   = 0
    to_port     = 0
    protocol    = "-1"
    cidr_blocks = ["0.0.0.0/0"]

  }
}


resource "aws_instance" "web" {
  count = var.create_instance ? 1 : 0
  ami                         = data.aws_ssm_parameter.ami.value
  instance_type               = var.instance_type
  associate_public_ip_address = var.assign_public_ip

  vpc_security_group_ids = [aws_security_group.allow_http.id]

  tags = {
    Name = "web-${random_integer.random.id}"
    
  }
}


