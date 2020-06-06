  
terraform {
  required_version = ">= 0.11.0"
}

variable "vault_addr" {
  description = "vault address"
  default = ""
  }

provider "aws" {
  region = "${var.aws_region}"
  access_key = "AKIAJIGLX7MGJ7MMILEA"
  secret_key = "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"
}

resource "aws_instance" "ubuntu" {
  ami           = "${var.ami_id}"
  instance_type = "${var.instance_type}"
  availability_zone = "${var.aws_region}a"
  key_name = "mattpeters"
}
