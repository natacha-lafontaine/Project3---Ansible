locals {
  ami_id = "ami-052efd3df9dad4825"
  ssh_user = "ubuntu"
  key_name = "terraform-key"
  private_key_path = file("${path.module}/.ssh/id_rsa")
}

resource "aws_instance" "project3" {
  ami = local.ami_id
  instance_type = "t2.micro"
  associate_public_ip_address = true
  key_name = local.key_name
  vpc_security_group_ids = [aws_security_group.webSG.id]

  tags = {    
    Name = "project3"
  } 

  connection {
    type     = "ssh"
    user     = local.ssh_user
    private_key = local.private_key_path
    host = self.public_ip
    timeout = "4m"
  }

  provisioner "remote-exec" {
    inline = ["echo Connected"]
  }
}