#############
# variables #
#############

variable "state_host" {
  type = string
}

# The following variables are used when labeling and tagging resources within
# this configuration. A typical label format is:
#     {namespace}-{stage_id}-servicename-{attributes}
# See github.com/cloudposse/terraform-null-label for more information.
variable "namespace" {
  type        = string
  description = "Namespace, typically organization name or client's name."
}

variable "stage" {
  type        = string
  description = "Stage, e.g. 'production', 'staging', 'develop'."
}

variable "stage_id" {
  type        = string
  description = "Same as stage, but for use in labels, e.g. 'prd', 'stg', 'dev'."
}

variable "attributes" {
  type        = list(string)
  default     = []
  description = "Additional attributes to append to labels, e.g. a counter ('1')."
}

variable "tags" {
  type        = map(string)
  default     = { "Terraform" = "true" }
  description = "Additional tags (e.g. `map('BusinessUnit','XYZ')`"
}

# vim:ft=terraform:
