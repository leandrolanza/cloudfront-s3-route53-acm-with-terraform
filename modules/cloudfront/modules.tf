module "s3" {
  source = "../s3"
  domain = "${var.domain}"
  principals = ["${aws_cloudfront_origin_access_identity.this.iam_arn}"]
}

module "acm" {
  source = "../acm"
  domain = "${var.domain}"
}