resource "aws_s3_bucket" "this" {
    bucket        = "${var.domain}"
    acl           = "${var.acl}"
    force_destroy = true
    website {
        index_document = "index.html"
    }
}
