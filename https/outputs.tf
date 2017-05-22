output "id" {
  value = "${aws_security_group.sg.id}"
}

output "vpc_id" {
  value = "${aws_security_group.sg.vpc_id}"
}

output "owner_id" {
  value = "${aws_security_group.sg.owner_id}"
}

output "name" {
  value = "${aws_security_group.sg.name}"
}

output "description" {
  value = "${aws_security_group.sg.description}"
}