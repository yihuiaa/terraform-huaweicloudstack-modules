# 云平台认证需要的变量
variable "user_name" {
  default = ""
}
variable "password" {
  sensitive = true
}
variable "ecs_url" {
  default = ""
}
variable "vpc_url" {
  default =""
}
variable "evs_url" {
  default = ""
}
variable "domain_name" {
  default = "总行"
}
variable "tenant_name" {
  default =""
}
variable "tenant_id" {
  default = ""
}
variable "region" {
  default = ""
}
variable "auth_url" {
  default = ""
}

variable "instance_list" {
  type = map(any)
  default = {
    vm0 = {
      instance_name = "lpz20230116"
      disk_size = "200"
      volume_type = "HG_SAN_NVME"
      image_id = "c7dd99cd-7022-42df-9422-9486577d2be0"
      availability_zone  = "hg.dct01"
      flavor_id = "f7807a7a-f633-4a29-bb29-16ed17463d87"
      network_name = "多云平台"
      network_id = "30a31372-f73a-41af-8c0e-fd02eb82d545"
      network_ip = "10.0.0.10"
      data_disk = [100]
    }
  }
}

## ansible 相关变量
#variable "group_name" {
#  default = "instance"
#}
#variable "ansible_ssh_user" {
#  default = "root"
#}
#variable "ansible_ssh_pass" {
#  sensitive = true
#}
