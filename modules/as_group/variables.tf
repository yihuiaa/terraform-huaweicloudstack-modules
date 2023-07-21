# 服务器相关变量
variable "scaling_group_name" {
    type        = string
    optional    = false
}
//“public”、“private”、“community”或“shared”
variable "networks" {
     type        = any
    optional    = false
}
variable "security_groups" {
    optional    = false
}
variable "vpc_id" {
    optional    = false
}
variable "configuration_name" {
    optional    = false
}

variable "instance_id" {
    optional    = false
}
