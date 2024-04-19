## autoriser ssh pour se connecter aux instances à partir de l'ip publique qui sera créé

resource "openstack_networking_secgroup_v2" "ssh_secgroup" {
  name        = "ssh_secgroup"
  description = "Security group for SSH access"
}

resource "openstack_networking_secgroup_rule_v2" "ssh_rule" {
  direction         = "ingress"
  ethertype         = "IPv4"
  protocol          = "tcp"
  port_range_min    = 22
  port_range_max    = 22
  remote_ip_prefix  = "0.0.0.0/0"
  security_group_id = openstack_networking_secgroup_v2.ssh_secgroup.id
}

## autoriser le flux vers notre instance openvpn qui sera creé

resource "openstack_networking_secgroup_v2" "openvpn_secgroup" {
  name        = "openvpn_secgroup"
  description = "Security group for OpenVPN access"
}

resource "openstack_networking_secgroup_rule_v2" "openvpn_rule" {
  direction         = "ingress"
  ethertype         = "IPv4"
  protocol          = "udp"
  port_range_min    = 1194
  port_range_max    = 1194
  remote_ip_prefix  = "0.0.0.0/0"
  security_group_id = openstack_networking_secgroup_v2.openvpn_secgroup.id
}

## autoriser tous les connexions ssh entre serveurs à l'interieur du réseau## se

resource "openstack_networking_secgroup_v2" "subnet_secgroup" {
  name        = "subnet_secgroup"
  description = "Security group for the subnet"
}
resource "openstack_networking_secgroup_rule_v2" "ssh_subnet_rule" {
  direction         = "ingress"
  ethertype         = "IPv4"
  protocol          = "tcp"
  port_range_min    = 22
  port_range_max    = 22
  remote_ip_prefix  = var.cidr
  security_group_id = openstack_networking_secgroup_v2.subnet_secgroup.id
}


## autoriser tous les ports quand on est à l'interieur du réseau en tcp et udp

resource "openstack_networking_secgroup_rule_v2" "all_ports_tcp_rule" {
  direction         = "ingress"
  ethertype         = "IPv4"
  protocol          = "tcp"
  port_range_min    = 1
  port_range_max    = 65535
  remote_ip_prefix  = var.cidr
  security_group_id = openstack_networking_secgroup_v2.subnet_secgroup.id
}

resource "openstack_networking_secgroup_rule_v2" "all_ports_udp_rule" {
  direction         = "ingress"
  ethertype         = "IPv4"
  protocol          = "udp"
  port_range_min    = 1
  port_range_max    = 65535
  remote_ip_prefix  = var.cidr
  security_group_id = openstack_networking_secgroup_v2.subnet_secgroup.id
}


## autoriser les ports 80 et 443 en tcp nommé proxy
resource "openstack_networking_secgroup_rule_v2" "http_rule" {
  direction         = "ingress"
  ethertype         = "IPv4"
  protocol          = "tcp"
  port_range_min    = 80
  port_range_max    = 80
  remote_ip_prefix  = var.cidr
  security_group_id = openstack_networking_secgroup_v2.subnet_secgroup.id
}

resource "openstack_networking_secgroup_rule_v2" "https_rule" {
  direction         = "ingress"
  ethertype         = "IPv4"
  protocol          = "tcp"
  port_range_min    = 443
  port_range_max    = 443
  remote_ip_prefix  = var.cidr
  security_group_id = openstack_networking_secgroup_v2.subnet_secgroup.id
}
