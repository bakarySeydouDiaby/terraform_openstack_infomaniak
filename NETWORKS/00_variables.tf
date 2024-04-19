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

