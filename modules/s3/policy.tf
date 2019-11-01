data "aws_iam_policy_document" "this" {
    statement {
        effect = "Allow"
        actions = [
            "s3:GetObject"
        ]
        resources = [
            "${aws_s3_bucket.this.arn}/*"
        ]
        principals {
            type        = "AWS"
            identifiers = ["${var.principals}"]
        }
    }  
}

resource "aws_s3_bucket_policy" "this" {
    bucket = "${aws_s3_bucket.this.id}"
    policy = "${data.aws_iam_policy_document.this.json}"
}
