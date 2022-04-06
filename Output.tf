
# Fetching just one pub ip from the list
/*
output "public_ip" {
  description = "public ip"
  value       = aws_instance.web[0].public_ip
  sensitive   = false
}


# Fetching all the pub ips from the list
output "public_ip2" {
  description = "public ip"
  value       = [aws_instance.web[*].public_ip]
  sensitive   = false
}

# Fetching just two pub ip from the list
output "public_ip3" {
  description = "public ip"
  value       = slice(aws_instance.web[*].public_ip, 0, 1)
  sensitive   = false
}

# For loop with output. outputing arn

output "ec2_arn" {
  description = "public ip"
  value       = [for arn in aws_instance.web: arn.arn]
  sensitive   = false
}
*/