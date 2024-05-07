resource "aws_instance" "my_compute" {
  ami = "ami-ff0fea8310f3"
  count = 3
  subnet_id = aws_subnet.public_subnets[count.index].id
  instance_type = "t3.nano"
  key_name = aws_key_pair.deployer.key_name
}