import {
  to = module.s3Import.aws_s3_bucket.test
  id = "dev-test"
}

module "s3Import" {
  source = "./s3_import"
  name = "dev-test"
  enviroment = var.enviroment
}

# terraform plan -generate-config-out="generated.tf"
