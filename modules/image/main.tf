data "huaweicloudstack_images_image_v2" "image" {
  name        = var.name
  visibility  = var.visibility
  most_recent = var.most_recent
  region = var.region
  owner = var.owner
  size_min = var.size_min
  size_max = var.size_max
  sort_direction = var.sort_direction
  sort_key = var.sort_key
  tag = var.tag
}