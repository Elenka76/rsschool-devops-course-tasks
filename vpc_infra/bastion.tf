resource "aws_instance" "bastion" {
  ami                    = var.ami_bastion 
  instance_type          =  var.bastion_instance_type
  subnet_id              = aws_subnet.public[0].id
  vpc_security_group_ids = [aws_security_group.bastion_sg.id]
  key_name               = var.key_name

  tags = {
    Name = "${var.project_name}-bastion"
  }
}

resource "aws_instance" "private" {
  count                       = 2
  ami                         = var.ami_privare_instance
  instance_type               = var.private_instance_type
  subnet_id                   = aws_subnet.private[count.index].id
  vpc_security_group_ids      = [aws_security_group.private_instance_sg.id]
  associate_public_ip_address = false
  key_name                    = var.key_name

  tags = {
    Name = "${var.project_name}-private-${count.index + 1}"
  }
}
