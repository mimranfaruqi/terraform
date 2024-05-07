resource "tls_private_key" "ec2-tls-key" {
  algorithm = "RSA"
  rsa_bits = 4096
}

resource "aws_key_pair" "deployer" {
  key_name   = "ec2-key-pair-for-my-deployment"
  public_key = tls_private_key.ec2-tls-key.public_key_openssh
}
