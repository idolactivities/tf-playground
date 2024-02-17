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

module "ansible_label" {
  source  = "cloudposse/label/null"
  version = "~> 0.25.0"

  name       = "ansible"
  namespace  = var.namespace
  stage      = var.stage_id
  attributes = var.attributes
  tags       = var.tags
}

# vim:ft=terraform:
