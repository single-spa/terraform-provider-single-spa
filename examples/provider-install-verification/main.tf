terraform {
  required_providers {
    single-spa = {
      source = "hashicorp.com/edu/single-spa"
    }
  }
}

provider "single-spa" {}

data "single_spa_mfe" "root_config" {
  module_type = "root-config"
  framework   = "react"
  typescript  = true
  layout      = true
}

# output "initial_files" {
#   value = data.single_spa_mfe.root_config.initial_files
# }

# module "root-config" {
#   source = "single-spa/terraform-single-spa-modules/github_mfe"

#   initial_files = data.single_spa_mfe.root_config.initial_files
# }