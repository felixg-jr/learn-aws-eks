variable "cluster_name" {
  description = "(Required) Name of the cluster. Must be between 1-100 characters in length. Must begin with an alphanumeric character, and must only contain alphanumeric characters, dashes and underscores"
  type = string
  default = ""
}

variable "version" {
  description = "(Optional) Desired Kubernetes master version. If you do not specify a value, the latest available version at resource creation is used and no upgrades will occur except those automatically triggered by EKS."
  type = string
  default = "1.3.4"
}

variable "authentication_mode" {
  description = "(Optional) The authentication mode for the cluster. Valid values are CONFIG_MAP, API or API_AND_CONFIG_MAP."
  type = string
  default = "API"
}

variable "subnet_ids" {
  description = "(Required) List of subnet IDs. Must be in at least two different availability zones."
  type = list(string)
  default = []
}

variable "iam_role_name" {
  description = "(Required) The name of the IAM role that provides permissions for the Kubernetes control plane to make calls to AWS API operations on your behalf."
  type = string
  default = ""
}

variable "node_group_name" {
  description = "(Optional) Name of the EKS Node Group. If omitted, Terraform will assign a random, unique name."
  type = string
  default = ""
}

variable "node_group_role_name" {
  description = "(Required) Name of the IAM role for the EKS Node Group."
  type = string
  default = ""
}
