variable "region" {
  type = string
  default = "ap-south-1"
}

variable "ami" {
  type = string
  default = "ami-0a3277ffce9146b74"
}

variable "instance_type" {
  type = string
  default = "t2.micro"
}

variable "env" {
  type = string
  default = ""
}