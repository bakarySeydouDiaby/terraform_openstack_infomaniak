# recuperation du external network id de notre subnet : ext-floating1

data "openstack_networking_subnet_ids_v2" "ext_subnets" {
  network_id = var.external_network_id
}

## creation du floating_ip sur le pool external_network_name associé avec  le ext-floating1
resource "openstack_networking_floatingip_v2" "floating_ip" {
  pool       = var.external_network_name
  subnet_ids = data.openstack_networking_subnet_ids_v2.ext_subnets.ids
}

## Creation instance : openvpn
resource "openstack_compute_instance_v2" "openvpn" {
  name            = "openvpn"
  image_id        = var.instance_image
  flavor_name     = var.instance_flavor
  metadata        = var.metadata
  security_groups = [openstack_networking_secgroup_v2.openvpn_secgroup.name, 
                     openstack_networking_secgroup_v2.ssh_secgroup.name,
                     openstack_networking_secgroup_v2.proxy_secgroup.name,  
                     "default"]
  key_pair        = openstack_compute_keypair_v2.keypair.name
  network {
    name = var.network_name
  }
  depends_on = [openstack_networking_subnet_v2.subnet, openstack_networking_secgroup_rule_v2.openvpn_rule]
}

resource "openstack_compute_floatingip_associate_v2" "fip_assoc" {
  floating_ip = openstack_networking_floatingip_v2.floating_ip.address
  instance_id = openstack_compute_instance_v2.openvpn.id
}
