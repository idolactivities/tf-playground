terraform {
  backend "http" {}
}

# Loads shared resource information from core/common's state.
data "terraform_remote_state" "common" {
  backend = "http"
  config = {
    address = "${var.state_host}/state/tf-playground/common-main"
  }
}

##########################
# provider configuration #
##########################


###################
# local constants #
###################

locals {
  _common         = data.terraform_remote_state.common.outputs
  private_ssh_key = local._common.ssh_private_key
}

#########################
# modules and resources #
#########################

module "bb_label" {
  source  = "cloudposse/label/null"
  version = "~> 0.25.0"

  name       = "block"
  namespace  = var.namespace
  stage      = var.stage_id
  attributes = var.attributes
  tags       = var.tags
}

data "cheesecake_cheesecakes" "all" {}

data "tls_public_key" "example" {
  private_key_openssh = local.private_ssh_key
}

# vim:ft=terraform:
