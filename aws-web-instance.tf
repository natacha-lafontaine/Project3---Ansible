resource "aws_instance" "tomcat-web" {
  ami = "ami-052efd3df9dad4825"
  instance_type = "t2.micro"
  associate_public_ip_address = true
  key_name = "terraform-key"
  vpc_security_group_ids = [aws_security_group.webSG.id]

  tags = {    
    Name = "tomcat-web"
  } 

  connection {
    type     = "ssh"
    user     = "ubuntu"
    private_key = file("${path.module}/.ssh/id_rsa")
    host = self.public_ip
    timeout = "4m"
  }
}
  
  
  
  /*provisioner "remote-exec" {
    inline = [
      "echo Installing Java",
      "sudo apt-get update",
      "sudo apt-get install default-jdk -y",
    ]
  }

  provisioner "file" {
    source = "./setup-tomcat.sh"
    destination = "/home/ubuntu/setup-tomcat.sh"
  }

  provisioner "remote-exec" {
    inline = [
      "chmod +x /home/ubuntu/setup-tomcat.sh",
      "/home/ubuntu/setup-tomcat.sh",
    ]
  }*/