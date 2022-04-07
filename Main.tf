
locals {
  mandatory_tag = {
    line_of_business        = "hospital"
    ado                     = "max"
    tier                    = "WEB"
    operational_environment = upper(terraform.workspace)
    tech_poc_primary        = "kingsleyammar660@gmail.com"
    tech_poc_secondary      = "kingsleyammar660@gmail.com"
    application             = "http"
    builder                 = "kingsleyammar660@gmail.com"
    application_owner       = "kojitechs.com"
    vpc                     = "WEB"
    cell_name               = "WEB"
    component_name          = "IAC-TERRAFORM-REPO"

  }
  vpc_id = aws_vpc.D-Ammar-Inc.id
}

resource "aws_vpc" D-Ammar-Inc {
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




variable "subnet_id" {}

data "aws_route_table" "selected" {
  subnet_id = var.subnet_id
}

