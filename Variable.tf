


variable "instance_type" {
  type        = string
  description = "ec2 instance type"
  default     = "t3.micro"
}

variable "aws_region" {
  type        = string
  default     = "us-east-1"
  description = "Region for terraform"

}

# variable for ssh & http ingress & egress
variable "ip_address" {
  type = list
  description = "ingress ip address" 
  default = ["104.60.131.99/32"]
   
  }
#aws assign public ip
variable "assign_public_ip" {
  type = bool
  description = "assign public ip" 
  default = true
   }

variable "create_instance" {
  type = bool
  description = "Create instance" 
  default = true
  
  
  }