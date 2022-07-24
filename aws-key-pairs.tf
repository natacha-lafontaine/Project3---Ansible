resource "aws_key_pair" "terraform" {
  key_name   = "terraform-key"
  public_key = file("${path.module}/.ssh/id_rsa.pub")
}