
module "sg" {
  source = "../"
  application = "${var.application}"
  environment = "${var.environment}"
  role = "${var.role}"
  description = "ALB security group for "
  vpc_id = "${var.vpc_id}"
}