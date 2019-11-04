output "arn" {
  value = "${aws_acm_certificate.this.arn}"
}

output "aws_acm_certificate_validation" {
  value = "${aws_acm_certificate_validation.this.id}"
}
