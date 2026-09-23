output "vpc_id" {
  description = "ID of the VPC created for the lab."
  value       = aws_vpc.main.id
}

output "public_subnet_ids" {
  description = "IDs of the public subnets."
  value       = values(aws_subnet.public)[*].id
}

output "private_subnet_ids" {
  description = "IDs of the private subnets."
  value       = values(aws_subnet.private)[*].id
}

