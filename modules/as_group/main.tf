//AS配置使用现有实例规格作为模板
resource "huaweicloudstack_as_configuration_v1" "my_as_config" {
  scaling_configuration_name = "my_as_config"
  instance_config {
    instance_id = var.instance_id
    key_name    = var.configuration_name
  }
}

resource "huaweicloudstack_as_group_v1" "my_as_group" {
  scaling_group_name       = var.scaling_group_name
  scaling_configuration_id = huaweicloudstack_as_configuration_v1.my_as_config.id
  vpc_id                   = var.vpc_id

  networks {
    id = var.networks
  }
  security_groups {
    id = var.security_groups
  }
}