# 🛠️ Task 2 – AWS VPC Infrastructure with Terraform

This Terraform project provisions a fully functional and organized AWS VPC infrastructure. It includes:


- A VPC with public and private subnets across multiple Availability Zones.
- Internet Gateway for public connectivity.
- NAT Gateway for private subnet egress.
- Routing setup for internal and external communication.
- A bastion host deployed in the public subnet for secure access to private resources.
- Two EC2 instances deployed in private subnets, accessible only via the bastion host.
- Security groups for controlled access.
- Modular and maintainable Terraform codebase.