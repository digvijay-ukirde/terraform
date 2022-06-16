variable "vsi_name" {}
variable "image_id" {}
variable "vpc_id" {}
variable "zone_name" {}
variable "vsi_profile" {}
variable "tags" {}
variable "subnet_id" {}
variable "vsi_private_key" {}
variable "vsi_public_key" {}


data "template_file" "metadata_startup_script" {
  template = <<EOF
#!/usr/bin/env bash
echo "${var.vsi_private_key}" > ~/.ssh/id_rsa
chmod 600 ~/.ssh/id_rsa
echo "${var.vsi_public_key}" >> ~/.ssh/authorized_keys
echo "StrictHostKeyChecking no" >> ~/.ssh/config
EOF
}


resource "ibm_is_instance" "my_vsi" {
  name = var.vsi_name
  image = var.image_id
  # keys = var.ssh_keys
  vpc = var.vpc_id
  zone = var.zone_name
  profile = var.vsi_profile
  tags = var.tags

  primary_network_interface {
    subnet = var.subnet_id
  }

  user_data      = data.template_file.metadata_startup_script.rendered
}