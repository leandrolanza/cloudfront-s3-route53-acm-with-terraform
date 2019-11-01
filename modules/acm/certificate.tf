resource "aws_acm_certificate" "this" {
    domain_name               = "*.${var.domain}"
    validation_method         = "${var.validation_method}"
    subject_alternative_names = ["${var.domain}"]
    lifecycle {
        create_before_destroy = true
    }
}
