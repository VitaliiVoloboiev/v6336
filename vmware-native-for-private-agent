terraform {
  required_providers {
    vcd = {
      source = "vmware/vcd"
      version = "3.4.0"
    }
  }
}

variable "user" {
  default = "user"
  sensitive = true
}

variable "password" {
  default = "password"
  sensitive = true
}

provider "vcd" {
  sysorg               = "System"
  user                 = var.user
  password             = var.password 
  auth_type            = "integrated"
  org                  = "org_maestro_dev"
  vdc                  = "maestro_dev_vdc_2"
  url                  = "https://m3vcd.slcloud.ru/api"  
allow_unverified_ssl = false
}

data "vcd_vapp" "test-tf" {
  name = "testvm"
  org = ""
}

resource "random_id" "id" {
  keepers = {
    # Generate a new id each time we switch to a new AMI id
    id = data.vcd_vapp.test-tf.id
  }
  byte_length = 8
}

output "id" {
  value = data.vcd_vapp.test-tf.id
}

output "name" {
  value = data.vcd_vapp.test-tf.name
}

output "description" {
  value = data.vcd_vapp.test-tf.description
}

output "href" {
  value = data.vcd_vapp.test-tf.href
}

output "status_text" {
  value = data.vcd_vapp.test-tf.status_text
}

output "random_id" {
  value = random_id.id.id
}
