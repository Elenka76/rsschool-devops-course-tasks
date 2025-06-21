module "task_1" {
  source      = "../task_1"
  github_org  = var.github_org
  github_repo = var.github_repo
}

module "vpc" {
  source                = "../vpc_infra"
  project_name          = var.project_name
  vpc_cidr              = var.vpc_cidr
  public_subnets        = var.public_subnets
  availability_zones    = var.availability_zones
  private_subnets       = var.private_subnets
  ami_bastion           = var.ami_bastion
  bastion_instance_type = var.bastion_instance_type
  key_name              = var.key_name
  ami_privare_instance  = var.ami_privare_instance
  private_instance_type = var.private_instance_type
}