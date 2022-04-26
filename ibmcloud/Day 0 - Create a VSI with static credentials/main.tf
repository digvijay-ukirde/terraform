terraform {
  required_providers {
    ibm = {
      source = "IBM-Cloud/ibm"
      version = "1.40.1"
    }
  }
}

provider "ibm" {
  ibmcloud_api_key = "YOUR_IBMCLOUD_API_KEY"
  region = "eu-de"
}

resource "ibm_is_instance" "my_vsi" {
  name = "vsi-with-static-cred"
  image = "r010-fbf5348c-2afb-4319-beb5-43dc84e214f0"
  keys = ["r010-5a0babfd-fe0e-45b3-b4af-b419e86a4ba5"]
  vpc = "r010-f8e883e2-9eb9-4b15-8272-b4ef2118a23e"
  zone = "eu-de-1"
  profile = "cx2-2x4"
  tags = ["laptop", "ibm_key"]

  primary_network_interface {
    subnet = "02b7-33bf821d-2781-40cc-86ba-734a9c73a379"
  }
}

