


build {
  name = "e2esa-packer-build"
  sources = [
    "source.amazon-ebs.amazon-linux"
  ]
  provisioner "file" {
  source = "provisioner.sh"
  destination = "/tmp/provisioner.sh"
  } 
   

provisioner "shell" {
    inline = [  "chmod a+x /tmp/provisioner.sh" ]
 } 
  
  
  provisioner "shell" {
    inline = ["/tmp/provisioner.sh"]
  }


}
