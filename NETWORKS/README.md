## Requirements

| Name | Version |
|------|---------|
| <a name="requirement_terraform"></a> [terraform](#requirement\_terraform) | >= 0.14.0 |
| <a name="requirement_openstack"></a> [openstack](#requirement\_openstack) | ~> 1.52.1 |

## Providers

| Name | Version |
|------|---------|
| <a name="provider_openstack"></a> [openstack](#provider\_openstack) | 1.52.1 |

## Modules

No modules.

## Resources

| Name | Type |
|------|------|
| [openstack_compute_keypair_v2.keypair](https://registry.terraform.io/providers/terraform-provider-openstack/openstack/latest/docs/resources/compute_keypair_v2) | resource |
| [openstack_networking_network_v2.network](https://registry.terraform.io/providers/terraform-provider-openstack/openstack/latest/docs/resources/networking_network_v2) | resource |
| [openstack_networking_router_interface_v2.router_interface](https://registry.terraform.io/providers/terraform-provider-openstack/openstack/latest/docs/resources/networking_router_interface_v2) | resource |
| [openstack_networking_router_v2.router](https://registry.terraform.io/providers/terraform-provider-openstack/openstack/latest/docs/resources/networking_router_v2) | resource |
| [openstack_networking_subnet_v2.subnet](https://registry.terraform.io/providers/terraform-provider-openstack/openstack/latest/docs/resources/networking_subnet_v2) | resource |

## Inputs

| Name | Description | Type | Default | Required |
|------|-------------|------|---------|:--------:|
| <a name="input_cidr"></a> [cidr](#input\_cidr) | my\_subnet\_cidr | `string` | `"10.0.1.0/24"` | no |
| <a name="input_external_network_id"></a> [external\_network\_id](#input\_external\_network\_id) | The ID of the external network | `string` | `"0f9c3806-bd21-490f-918d-4a6d1c648489"` | no |
| <a name="input_keypair_name"></a> [keypair\_name](#input\_keypair\_name) | The name of the keypair | `string` | `"my_keypair"` | no |
| <a name="input_network_name"></a> [network\_name](#input\_network\_name) | my\_network | `string` | `"my_network"` | no |
| <a name="input_public_key_path"></a> [public\_key\_path](#input\_public\_key\_path) | The path to the public key file | `string` | `"~/.ssh/id_rsa.pub"` | no |
| <a name="input_router_name"></a> [router\_name](#input\_router\_name) | my\_router | `string` | `"my_router"` | no |
| <a name="input_subnet_name"></a> [subnet\_name](#input\_subnet\_name) | my\_subnet | `string` | `"my_subnet"` | no |

## Outputs

No outputs.


