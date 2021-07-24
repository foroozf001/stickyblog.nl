resource "aws_instance" "web" {
  ami                    = var.ami # "ami-03caf24deed650e2c" # data.aws_ami.ubuntu.id
  key_name               = "private"
  instance_type          = var.ec2_instance_type
  subnet_id              = aws_subnet.web.id
  ipv6_address_count     = 1
  vpc_security_group_ids = [aws_security_group.web.id, aws_security_group.ssh.id]
  tags                   = var.tags
  depends_on             = [aws_internet_gateway.web]
}