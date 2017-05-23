data "aws_caller_identity" "current" { }

resource "aws_security_group" "sg" {
  name = "${var.application}-${var.environment}-${var.role}"
  description = "${coalesce(var.description, "Security group for ${var.role}")}"
  vpc_id = "${var.vpc_id}"

  tags = {
    Name = "${var.application}-${var.environment}-${var.role}"
    Application = "${var.application}"
    Environment = "${var.environment}"
    Role = "${var.role}"
    CreatorARN = "${data.aws_caller_identity.current.arn}"
  }
}