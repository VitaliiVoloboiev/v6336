provider "vcd" { }



terraform {
  required_providers {
    vcd = {
      source = "vmware/vcd"
      version = "3.7.0"
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
