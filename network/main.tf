terraform {
  required_version = ">= 0.11.0"
}

variable "vault_addr" {
  description = "vault address"
  default = ""
  }

# Set VAULT_TOKEN environment variable
provider "vault" {
  address = "${var.vault_addr}"
  max_lease_ttl_seconds = 1500
}

provider "aws" {
  region = "us-east-1"
  access_key = "AKIAIWRKGG45JW33UDHQ"
  secret_key = "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"
}
