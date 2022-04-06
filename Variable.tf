
variable aws_region {
    description = "aws region"
    type = string
    default = "us-east-1"
    
}

variable pub_subnet_cidr {
    description = "list of public cidrs"
    type = list
    default = ["10.0.0.0/24", "10.0.2.0/24"]
    
}

variable priv_subnet_cidr {
    description = "list of private cidrs"
    type = list
    default = ["10.0.1.0/24", "10.0.3.0/24"]
    
}

variable db_subnet_cidr {
    description = "list of database cidrs"
    type = list
    default = ["10.0.5.0/24", "10.0.7.0/24"]
    
}

variable pub_az_cidr {
    description = "list of az for pub subnets"
    type = list
    default = ["us-east-1a", "us-east-1b"]
    
}

variable priv_az_cidr {
    description = "list of az for priv subnets"
    type = list
    default = ["us-east-1a", "us-east-1c"]
    
}

variable db_az_cidr {
    description = "list of az for db subnets"
    type = list
    default = ["us-east-1b", "us-east-1c"]
    
}
        
    