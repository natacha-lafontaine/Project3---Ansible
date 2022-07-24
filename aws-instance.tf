resource "aws_instance" "project3" {
  ami = "ami-052efd3df9dad4825"
  instance_type = "t2.micro"
  associate_public_ip_address = true
  key_name = "terraform-key"
  vpc_security_group_ids = [aws_security_group.webSG.id]
  #user_data = "${file("setup.sh")}"

  tags = {    
    Name = "project3"
  } 

  connection {
    type     = "ssh"
    user     = "ubuntu"
    private_key = file("${path.module}/.ssh/id_rsa")
    host = self.public_ip
    timeout = "4m"
  }

  provisioner "remote-exec" {
    inline = ["echo Starting Setup"]
  }

  provisioner "file" {
    source = "./setup.sh"
    destination = "/home/ubuntu/setup.sh"
  }

  provisioner "remote-exec" {
    inline = [
      "chmod +x /home/ubuntu/setup.sh",
      "/home/ubuntu/setup.sh",
    ]
  }
}