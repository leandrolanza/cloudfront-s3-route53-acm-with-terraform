resource "aws_cloudfront_distribution" "this" {
    price_class         = "${var.price_class}"
    http_version        = "${var.http_version}"
    aliases             = ["${var.domain}", "*.${var.domain}"]
    default_root_object = "${var.default_root_object}"
    enabled             = true
    comment             = "implementar"
     origin {
        domain_name = "${module.s3.bucket_regional_domain_name}"
        origin_id   = "${module.s3.id}"
        s3_origin_config {
            origin_access_identity = "${aws_cloudfront_origin_access_identity.this.cloudfront_access_identity_path}"
        }
    }
    default_cache_behavior {
        allowed_methods        = "${var.allowed_methods}"
        cached_methods         = "${var.cached_methods}"
        viewer_protocol_policy = "${local.viewer_protocol_policy}"
        target_origin_id       = "${module.s3.id}"
        forwarded_values {
            cookies {
                forward = "${local.forward}"
            }
            query_string = "${var.query_string}"
        }
        min_ttl     = "${local.min_ttl}"
        default_ttl = "${local.default_ttl}"
        max_ttl     = "${local.max_ttl}"
    }
    restrictions {
        geo_restriction {
            restriction_type = "${local.restriction_type}"
        }
    }
    viewer_certificate = {
        acm_certificate_arn      = "${module.acm.arn}"
        ssl_support_method       = "sni-only"
        minimum_protocol_version = "TLSv1"
    }
}
