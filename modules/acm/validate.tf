data "aws_route53_zone" "this" {
    name         = "${var.domain}"
    private_zone = false
}

resource "aws_route53_record" "this" {
  name    = "${aws_acm_certificate.this.domain_validation_options.0.resource_record_name}"
  type    = "${aws_acm_certificate.this.domain_validation_options.0.resource_record_type}"
  zone_id = "${data.aws_route53_zone.this.id}"
  records = ["${aws_acm_certificate.this.domain_validation_options.0.resource_record_value}"]
  ttl     = "60"
}

resource "aws_acm_certificate_validation" "this" {
  certificate_arn = "${aws_acm_certificate.this.arn}"
  validation_record_fqdns = [
    "${aws_route53_record.this.fqdn}"
  ]
}

