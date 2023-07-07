source "amazon-ebs" "amazon-linux" {
  profile       = var.profile
  ami_name      = var.ami_name
  instance_type = var.instance_type
  region        = var.region
  source_ami    = var.source_ami
  ami_regions   = var.ami_regions
  ssh_username  = var.ssh_username
}

