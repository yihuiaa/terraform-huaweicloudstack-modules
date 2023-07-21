module "instance" {
  source            = "git::http://gitlab.idcos.com/iac-module/terraform-huaweicloudstack-modules.git?ref=v1.0.0"
  for_each          = var.instance_list
  instance_name     = each.value.instance_name
  disk_size         = each.value.disk_size
  volume_type       = each.value.volume_type
  image_id          = each.value.image_id
  availability_zone = each.value.availability_zone
  flavor_id         = each.value.flavor_id
  network_name      = each.value.network_name
  network_id        = each.value.network_id
  network_ip        = each.value.network_ip
  data_disk         = each.value.data_disk
}

## ansible示例
#resource "ansible_host" "instance" {
#  for_each = var.instance_list
#  inventory_hostname = module.instance[each.key].instance.private_ip
#  groups = [var.group_name]
#  vars = {
#    wait_connection_timeout = 300
#    ansible_ssh_user = var.ansible_ssh_user
#    ansible_ssh_pass = var.ansible_ssh_pass
#  }
#}