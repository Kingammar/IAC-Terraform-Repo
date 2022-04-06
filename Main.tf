
resource "aws_vpc" D-Ammar {
  cidr_block = "10.0.0.0/16"
  enable_dns_support = false
  enable_dns_hostnames = false
}

resource "aws_subnet" public_subnet1 {
  vpc_id     = local.vpc_id
  cidr_block = var.pub_subnet_cidr[0] 
  map_public_ip_on_launch = true 
  availability_zone = var.pub_az_cidr[0]
}

resource "aws_subnet" public_subnet2 {
  vpc_id     = local.vpc_id
  cidr_block = var.pub_subnet_cidr[1]
  map_public_ip_on_launch = true 
  availability_zone = var.pub_az_cidr[1]
}

resource "aws_subnet" private_subnet1 {
  vpc_id     = local.vpc_id
  cidr_block = var.priv_subnet_cidr[0]
  availability_zone = var.priv_az_cidr[0]
}

resource "aws_subnet" private_subnet2 {
  vpc_id     = local.vpc_id
  cidr_block = var.priv_subnet_cidr[1]
  availability_zone = var.priv_az_cidr[1]
}

resource "aws_subnet" database_subnet1 {
  vpc_id     = local.vpc_id
  cidr_block = var.db_subnet_cidr[0] 
  availability_zone = var.db_az_cidr[0]
}

resource "aws_subnet" database_subnet2 {
  vpc_id     = local.vpc_id
  cidr_block = var.db_subnet_cidr[1]
  availability_zone = var.db_az_cidr[1]
}
