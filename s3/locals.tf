locals {
  ip_filepath = "ips.json"
  common_tags = {
    Environment = "${var.enviroment}"
    ManagedBy   = "Terraform"
    Owner       = "David"
    UpdatedAt   = "2025-04-09"
  }
}