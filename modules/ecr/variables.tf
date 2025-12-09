variable "region" {
  description = "(Optional) Region where this resource will be managed."
  default = "us-east-1"
}

variable "name" {
  description = "(Required) Name of the repository."
  default = ""
}

variable "image_tag_mutability" {
  description = "(Optional) The tag mutability setting for the repository."
  default = "IMMUTABLE"
}

variable "image_scanning_configuration" {
  description = "(Optional) Configuration block that defines image scanning configuration for the repository."
  default = "true"
}