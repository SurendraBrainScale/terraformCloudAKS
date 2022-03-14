
variable "cluster_name" {
  description = "AKS cluster name"
  default     = "runItOnCloud"
}

variable "resource_group_name" {
  description = "name of the resource group to deploy AKS cluster in"
  default     = "runitoncloud"
}

variable "environment" {
  description = "name of the enviorment"
  default     = "runitoncloud"
}

variable "location" {
  default = "East US"
}

variable "node_count" {
  default = 3
}

variable "node_size" {
  default = "Standard_D2_v2"
}

variable "service_principal" {
  type = object({
    client_id     = string
    client_secret = string
  })
  description = "The service principal to use"
}

variable dns_prefix {
  description = "DNS prefix for the AKS Cluster"
  default     = "runitoncloud"
}