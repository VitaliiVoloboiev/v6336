provider "vsphere" { }

terraform {  
  required_providers {
    vsphere = {
      source = "hashicorp/vsphere"
      version = "2.2.0"
    }
  }
}

resource "random_id" "id" {
  keepers = {
    # Generate a new id each time we switch to a new AMI id
    id = "test"
  }
  byte_length = 8
}
