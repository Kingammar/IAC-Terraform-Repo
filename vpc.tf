# Public_cidr_range = [for i in range(0,225,2): cidrsubnet("100.0.0.0/16", 8, i)]
# Private_cidr_range = [for i in range(1,225,2): cidrsubnet("100.0.0.0/16", 8, i)]

# Declare the data source
/*data "aws_availability_zones" "available" {
  state = "available"
}

module "vpc" {
  source = "terraform-aws-modules/vpc/aws" #where this repo is cloned from. You can replace it with the github url

  name = "my-vpc"
  cidr = "100.0.0.0/16"

  azs             = slice(data.aws_availability_zones.available.names, 0, 3)
  private_subnets = ["100.0.1.0/24", "100.0.3.0/24", "100.0.5.0/24", "100.0.7.0/24"]
  public_subnets  = ["100.0.0.0/24", "100.0.2.0/24", "100.0.4.0/24", "100.0.6.0/24"]
  enable_nat_gateway = false
  enable_vpn_gateway = false
}
*/