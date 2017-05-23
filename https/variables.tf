variable "application" {
  description = "Name of the application the HTTPS security group is part of."
}

variable "environment" {
  description = "Name of the environment the HTTPS security group is part of."
}

variable "role" {
  description = "Describes the job of the resource this HTTPS security group is part of."
}

variable "vpc_id" {
  description = "The ID for the VPC."
}

variable "cidr_blocks" {
  type = "list"
  description = "CIDR blocks that should be allowed to communicate with the resource over HTTPS. Use cidr_blocks OR source_security_group_id; not both"
  default = []
}

variable "source_security_group_id" {
  description = "The security group that will be accessing the resource over HTTPS. Use cidr_blocks OR source_security_group_id; not both"
  default = ""
}