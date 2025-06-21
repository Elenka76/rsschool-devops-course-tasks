#VPC 
output "vpc_id" {
  description = "The ID of the VPC"
  value       = aws_vpc.vpc.id
}

output "public_subnet_ids" {
  description = "List of IDs of public subnets"
  value       = aws_subnet.public.*.id
}

output "private_subnet_ids" {
  description = "List of IDs of private subnets"
  value       = aws_subnet.private.*.id
}

#Bastion host
output "security_groups" {
  value = aws_security_group.bastion_sg.id
}

output "bastion_public_ip" {
  value = aws_instance.bastion.public_ip
}