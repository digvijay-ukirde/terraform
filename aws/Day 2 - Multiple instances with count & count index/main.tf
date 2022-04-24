resource "aws_instance" "ec2_instance" {
  ami = var.ami
  instance_type = var.instance_type
  count = length(var.instance_name)
  tags = {
    name = var.instance_name[count.index]
  }
}