terraform {
  backend "http" {}
}

##########################
# provider configuration #
##########################


###################
# local constants #
###################

locals {
}

#########################
# modules and resources #
#########################

module "playground_label" {
  source  = "cloudposse/label/null"
  version = "~> 0.25.0"

  namespace  = var.namespace
  stage      = var.stage_id
  attributes = var.attributes
  tags       = var.tags
}

resource "random_id" "example" {
  byte_length = 4
}

resource "tls_private_key" "example" {
  algorithm = "RSA"
}

# vim:ft=terraform:
