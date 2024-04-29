## keypairs variables

variable "keypair_name" {
  description = "The name of the keypair"
  type        = string
  default     = "my_keypair"
}

variable "public_key_path" {
  description = "The path to the public key file"
  type        = string
  default     = "~/.ssh/id_rsa.pub"
}

## network variables

variable "network_name" {
  description = "my_network"
  type        = string
  default     = "my_network"
}

variable "subnet_name" {
  description = "my_subnet"
  type        = string
  default     = "my_subnet"
}

variable "router_name" {
  description = "my_router"
  type        = string
  default     = "my_router"
}

variable "cidr" {
  description = "my_subnet_cidr"
  type        = string
  default     = "10.0.1.0/24"
}

variable "external_network_id" {
  description = "The ID of the external network"
  type        = string
  default     = "0f9c3806-bd21-490f-918d-4a6d1c648489"
}

variable "external_network_name" {
  type    = string
  default = "ext-floating1"
}

## variables des instances : id de l'image ; id du flavor ; le type de security group

variable "instance_image" {
  type        = string
  default     = "05fa3a81-a731-4952-bdf4-ca8ceea1f17b"
}

variable "instance_flavor" {
  type        = string
  default     = "a1-ram2-disk20-perf1"
}

variable "default_security_group_name" {
  description = "The name of the security group"
  type        = list(string)
  default     = ["my_security_group"]
}

variable "metadata" {
  description = "Metadata for the dev environment"
  type        = map(string)
  default = {
    environment = "dev"
    version     = "1.0.0"
    owner       = "Bakary Seydou Diaby"
  }
}

