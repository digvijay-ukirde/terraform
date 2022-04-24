resource "aws_instance" "dev_instance" {
  ami = var.ami
  instance_type = var.instance_type
  count = var.env == "dev" ? 1 : 0
}

resource "aws_instance" "test_instance" {
  ami = var.ami
  instance_type = var.instance_type
  count = var.env == "test" ? 1 : 0
}