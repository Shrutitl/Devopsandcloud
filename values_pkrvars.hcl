  profile       = "default"
  ami_name      = "ami-image-packer"
  instance_type = "t2.micro"
  region        = "us-east-2"
  source_ami    = "ami-0d1c47ab964ae2b87" 
  ami_users     = "731447568282"
  ami_regions   = ["us-east-2"]   
  ssh_username  = "ec2-user"
