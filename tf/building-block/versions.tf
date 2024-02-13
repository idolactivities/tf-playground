terraform {
  required_version = "~> 1.6"

  required_providers {
    cheesecake = {
      source  = "joerx/cheesecake"
      version = "~> 0.2"
    }
    vultr = {
      source  = "vultr/vultr"
      version = "~> 2.19"
    }
  }
}
