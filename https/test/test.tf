provider "aws" {
  region = "us-east-1"
}
data "aws_vpc" "selected" {
  default = true
}

module "test_sg" {
  source = "../"

  application = "terraform"
  environment = "test"
  role = "https"
  vpc_id = "${data.aws_vpc.selected.id}"
  cidr_blocks = ["0.0.0.0/0"]
}