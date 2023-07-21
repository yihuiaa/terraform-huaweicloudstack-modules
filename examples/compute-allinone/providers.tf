provider "huaweicloudstack" {
  user_name = var.user_name
  password = var.password
  domain_name = var.domain_name
  tenant_id = var.tenant_id
  region = var.region
  auth_url = var.auth_url
  insecure = "true"
  endpoints = {
    ecs= var.ecs_url,
    vpc= var.vpc_url,
    evs= var.evs_url
  }
}