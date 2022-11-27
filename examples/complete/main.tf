# TODO: configure the provider as necessary
# provider "aws" {
#   region = "us-east-1"
# }

module "monitoring" {
  source = "../../"

  name = var.name
}
