terraform {
  required_version = ">= 0.14.0" #version de terraform
  required_providers {
    openstack = {
      source  = "terraform-provider-openstack/openstack"
      version = "~> 1.52.1" #version du provider
    }
  }
  backend "http" {
    address        = "https://api.tfstate.dev/github/v1"
    lock_address   = "https://api.tfstate.dev/github/v1/lock"
    unlock_address = "https://api.tfstate.dev/github/v1/lock"
    lock_method    = "PUT"
    unlock_method  = "DELETE"
    #username       = "https://github.com/bakarySeydouDiaby/terraform_openstack_infomaniak" 
  }
}
