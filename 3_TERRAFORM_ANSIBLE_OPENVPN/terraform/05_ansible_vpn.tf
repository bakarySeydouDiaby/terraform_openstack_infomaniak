
resource "null_resource" "openvpn_server" {
  triggers = {
    always_run = timestamp()
  }
  provisioner "local-exec" {
    command = <<-EOT
      echo > /tmp/openvpn.ini;
      echo "[openvpn]" | tee -a /tmp/openvpn.ini;
      echo "openvpn ansible_host=${openstack_networking_floatingip_v2.floating_ip.address}" | tee -a /tmp/openvpn.ini;
      ANSIBLE_CONFIG=../ansible/ansible.cfg ansible-playbook -u debian -i /tmp/openvpn.ini --private-key ~/.ssh/id_rsa ../ansible/playbook_openvpn-server.yml;
      rm -f /tmp/openvpn.ini;
    EOT
  }
    depends_on = [openstack_compute_instance_v2.openvpn,
    openstack_networking_floatingip_v2.floating_ip,
    openstack_compute_floatingip_associate_v2.fip_assoc]
}

resource "null_resource" "create_new_vpn_client" {
  for_each = toset(var.vpn_user_list)
    triggers = {
      name = each.value
      always_run = timestamp()
    }
  
  provisioner "local-exec" {
    command = <<-EOT
      echo > /tmp/openvpn.ini;
      echo "[openvpn]" | tee -a /tmp/openvpn.ini;
      echo "openvpn ansible_host=${openstack_networking_floatingip_v2.floating_ip.address}" | tee -a /tmp/openvpn.ini;
      ANSIBLE_CONFIG=../ansible/ansible.cfg ansible-playbook -u debian -i /tmp/openvpn.ini --private-key ~/.ssh/id_rsa -e vpn_user_list=${each.value} ../ansible/playbook_openvpn-client.yml;
      rm -f /tmp/openvpn.ini;
    EOT
  }
  depends_on = [openstack_compute_instance_v2.openvpn,
  null_resource.openvpn_server,
  openstack_networking_floatingip_v2.floating_ip,
  openstack_compute_floatingip_associate_v2.fip_assoc]
}
