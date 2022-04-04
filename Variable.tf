


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