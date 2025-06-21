#task_1
github_org  = "Elenka76"
github_repo = "rsschool-devops-course-tasks"
#VPC-infra ## task_2
project_name          = "rolling-scopes-school"
vpc_cidr              = "10.0.0.0/16"
public_subnets        = ["10.0.1.0/24", "10.0.2.0/24"]
availability_zones    = ["us-east-1a", "us-east-1b"]
private_subnets       = ["10.0.3.0/24", "10.0.4.0/24"]
ami_bastion           = "ami-09e6f87a47903347c"
bastion_instance_type = "t3.micro"
key_name              = "rs-school-project"
ami_privare_instance  = "ami-09e6f87a47903347c"
private_instance_type = "t3.micro"