module "sg" {
  source = "../"

  application = "${var.application}"
  environment = "${var.environment}"
  role = "${var.role}"
  description = "HTTPS"
  vpc_id = "${var.vpc_id}"
}

resource "aws_security_group_rule" "rule_cidr" {
  count = "${length(var.cidr_blocks)}"

  security_group_id = "${module.sg.id}"
  type = "ingress"
  from_port = 443
  to_port = 443
  protocol = "tcp"
  cidr_blocks = ["${var.cidr_blocks}"]
}

resource "aws_security_group_rule" "rule_sg" {
  count = "${var.source_security_group_id == "" ? 0: 1}"

  security_group_id = "${module.sg.id}"
  type = "ingress"
  from_port = 443
  to_port = 443
  protocol = "tcp"
  source_security_group_id = "${var.source_security_group_id}"
}