resource "ibm_is_instance" "my_vsi" {
  name = var.vsi_name
  image = var.image_id
  keys = var.ssh_keys
  vpc = var.vpc_id
  zone = var.zone_name
  profile = var.vsi_profile
  tags = var.tags

  primary_network_interface {
    subnet = var.subnet_id
  }
}