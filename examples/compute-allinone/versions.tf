terraform {
  required_version = ">= 1.2.4"
  required_providers {
    huaweicloudstack = {
      source  = "huaweicloud/huaweicloudstack"
      version = "1.3.0"
    }
    ansible = {
      source = "nbering/ansible"
    }
  }
}