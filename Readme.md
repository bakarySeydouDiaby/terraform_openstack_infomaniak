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
| [openstack_compute_floatingip_associate_v2.fip_assoc](https://registry.terraform.io/providers/terraform-provider-openstack/openstack/latest/docs/resources/compute_floatingip_associate_v2) | resource |
| [openstack_compute_instance_v2.openvpn](https://registry.terraform.io/providers/terraform-provider-openstack/openstack/latest/docs/resources/compute_instance_v2) | resource |
| [openstack_compute_keypair_v2.keypair](https://registry.terraform.io/providers/terraform-provider-openstack/openstack/latest/docs/resources/compute_keypair_v2) | resource |
| [openstack_networking_floatingip_v2.floating_ip](https://registry.terraform.io/providers/terraform-provider-openstack/openstack/latest/docs/resources/networking_floatingip_v2) | resource |
| [openstack_networking_network_v2.network](https://registry.terraform.io/providers/terraform-provider-openstack/openstack/latest/docs/resources/networking_network_v2) | resource |
| [openstack_networking_router_interface_v2.router_interface](https://registry.terraform.io/providers/terraform-provider-openstack/openstack/latest/docs/resources/networking_router_interface_v2) | resource |
| [openstack_networking_router_v2.router](https://registry.terraform.io/providers/terraform-provider-openstack/openstack/latest/docs/resources/networking_router_v2) | resource |
| [openstack_networking_secgroup_rule_v2.all_ports_tcp_rule](https://registry.terraform.io/providers/terraform-provider-openstack/openstack/latest/docs/resources/networking_secgroup_rule_v2) | resource |
| [openstack_networking_secgroup_rule_v2.all_ports_udp_rule](https://registry.terraform.io/providers/terraform-provider-openstack/openstack/latest/docs/resources/networking_secgroup_rule_v2) | resource |
| [openstack_networking_secgroup_rule_v2.http_rule](https://registry.terraform.io/providers/terraform-provider-openstack/openstack/latest/docs/resources/networking_secgroup_rule_v2) | resource |
| [openstack_networking_secgroup_rule_v2.https_rule](https://registry.terraform.io/providers/terraform-provider-openstack/openstack/latest/docs/resources/networking_secgroup_rule_v2) | resource |
| [openstack_networking_secgroup_rule_v2.openvpn_rule](https://registry.terraform.io/providers/terraform-provider-openstack/openstack/latest/docs/resources/networking_secgroup_rule_v2) | resource |
| [openstack_networking_secgroup_rule_v2.ssh_rule](https://registry.terraform.io/providers/terraform-provider-openstack/openstack/latest/docs/resources/networking_secgroup_rule_v2) | resource |
| [openstack_networking_secgroup_rule_v2.ssh_subnet_rule](https://registry.terraform.io/providers/terraform-provider-openstack/openstack/latest/docs/resources/networking_secgroup_rule_v2) | resource |
| [openstack_networking_secgroup_v2.openvpn_secgroup](https://registry.terraform.io/providers/terraform-provider-openstack/openstack/latest/docs/resources/networking_secgroup_v2) | resource |
| [openstack_networking_secgroup_v2.proxy_secgroup](https://registry.terraform.io/providers/terraform-provider-openstack/openstack/latest/docs/resources/networking_secgroup_v2) | resource |
| [openstack_networking_secgroup_v2.ssh_secgroup](https://registry.terraform.io/providers/terraform-provider-openstack/openstack/latest/docs/resources/networking_secgroup_v2) | resource |
| [openstack_networking_secgroup_v2.subnet_secgroup](https://registry.terraform.io/providers/terraform-provider-openstack/openstack/latest/docs/resources/networking_secgroup_v2) | resource |
| [openstack_networking_subnet_v2.subnet](https://registry.terraform.io/providers/terraform-provider-openstack/openstack/latest/docs/resources/networking_subnet_v2) | resource |
| [openstack_networking_subnet_ids_v2.ext_subnets](https://registry.terraform.io/providers/terraform-provider-openstack/openstack/latest/docs/data-sources/networking_subnet_ids_v2) | data source |

## Inputs

| Name | Description | Type | Default | Required |
|------|-------------|------|---------|:--------:|
| <a name="input_cidr"></a> [cidr](#input\_cidr) | my\_subnet\_cidr | `string` | `"10.0.1.0/24"` | no |
| <a name="input_default_security_group_name"></a> [default\_security\_group\_name](#input\_default\_security\_group\_name) | The name of the security group | `list(string)` | <pre>[<br>  "my_security_group"<br>]</pre> | no |
| <a name="input_external_network_id"></a> [external\_network\_id](#input\_external\_network\_id) | The ID of the external network | `string` | `"0f9c3806-bd21-490f-918d-4a6d1c648489"` | no |
| <a name="input_external_network_name"></a> [external\_network\_name](#input\_external\_network\_name) | n/a | `string` | `"ext-floating1"` | no |
| <a name="input_instance_flavor"></a> [instance\_flavor](#input\_instance\_flavor) | n/a | `string` | `"a1-ram2-disk20-perf1"` | no |
| <a name="input_instance_image"></a> [instance\_image](#input\_instance\_image) | n/a | `string` | `"05fa3a81-a731-4952-bdf4-ca8ceea1f17b"` | no |
| <a name="input_keypair_name"></a> [keypair\_name](#input\_keypair\_name) | The name of the keypair | `string` | `"my_keypair"` | no |
| <a name="input_metadata"></a> [metadata](#input\_metadata) | Metadata for the dev environment | `map(string)` | <pre>{<br>  "environment": "dev",<br>  "owner": "Bakary Seydou Diaby",<br>  "version": "1.0.0"<br>}</pre> | no |
| <a name="input_network_name"></a> [network\_name](#input\_network\_name) | my\_network | `string` | `"my_network"` | no |
| <a name="input_public_key_path"></a> [public\_key\_path](#input\_public\_key\_path) | The path to the public key file | `string` | `"~/.ssh/id_rsa.pub"` | no |
| <a name="input_router_name"></a> [router\_name](#input\_router\_name) | my\_router | `string` | `"my_router"` | no |
| <a name="input_subnet_name"></a> [subnet\_name](#input\_subnet\_name) | my\_subnet | `string` | `"my_subnet"` | no |

## Outputs

No outputs.

# Ansible : create openvpn server with ca certificate and openvpn client

2 roles :
- openvpn-server : 
- openvpn-client : 

## Requirements

List any requirements here.

## Role Variables

### openvpn-server :
in group_vars : 
```bash
    vpn_server_name: "my_vpn_server"
    vpn_key_name: "serverVPN"
    vpn_key_country: "EU"
    vpn_key_province: "FR"
    vpn_key_city: "Paris"
    vpn_key_org: "Baki"
    vpn_key_email: "baki@moi.fr"
    vpn_key_ou: "bak"
```


### openvpn-client:
in default folder : 
```bash
    vpn_user_list:
     - bakary
    vpn_destination_key: "/tmp/"
```

## Dependencies
  - openvpn : generate ta keys and start openvpn@server service
  - easy-rsa : pki magagement
  - iptables-persistent : firewall ruels
  - ansible-galaxy collection install community.general : specific firewall task
  - net-tools : natstat -ntaup command

## Example Playbook

playbook for roles openvpn server and client

```bash
- name: Install and configure OpenVPN server
  hosts: openvpn
  # become: yes
  # become_user: root

  roles:
    - {role: 'openvpn-server', tags: 'openvpn-server'}
    - {role: 'openvpn-client', tags: 'openvpn-client'}
```

Execute playbook by role name : example openvpn-client

```bash
ansible-playbook -i environment/dev/ playbook.yml -l openvpn -u debian --tags "openvpn-client"
```

# Test VPN on my local ubuntu wsl 
- fetch client ovpn file : /tmp/bakary.ovpn
- add in this file for dns settings: 

```bash
        script-security 2
        up /etc/openvpn/update-resolv-conf
        down /etc/openvpn/update-resolv-conf
```

- launch vpn :
```bash
    sudo openvpn --config /tmp/bakary.ovpn &
```