variable "application" {
  description = "Name of the application the security group is part of."
}

variable "environment" {
  description = "Name of the environment the security group is part of."
}

variable "role" {
  description = "Describes the job of the resource this security group is part of."
}

variable "description" {
  description = "Describes the security group."
  default = ""
}

variable "vpc_id" {
  description = "The ID for the VPC."
}