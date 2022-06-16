module "generate_keys" {
  source  = "../resources/key"
}

module "vsi_with_ssh" {
  source = "../resources/compute"
  vsi_name = var.vsi_name
  image_id = var.image_id
  vpc_id = var.vpc_id
  zone_name = var.zone_name
  vsi_profile = var.vsi_profile
  tags = var.tags
  subnet_id = var.subnet_id
  vsi_private_key = module.generate_keys.private_key_content
  vsi_public_key = module.generate_keys.public_key_content
}