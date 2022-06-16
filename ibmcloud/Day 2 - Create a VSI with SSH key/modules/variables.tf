variable "ibmcloud_api_key" {
  type = string
}

variable "region" {
  type = string
  default = "eu-de"
}

variable "vsi_name" {
  type = string
}

variable "image_id" {
  type = string
}

variable "ssh_keys" {
  type = list(string)
}

variable "vpc_id" {
  type = string
}

variable "zone_name" {
  type = string
}

variable "vsi_profile" {
  type = string
  default = "cx2-2x4"
}

variable "tags" {
  type = list(string)
}

variable "subnet_id" {
  type = string
}