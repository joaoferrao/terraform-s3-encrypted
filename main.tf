resource "aws_s3_bucket" "this" {
  bucket        = "${var.s3_bucket_name}"
  acl           = "${var.s3_bucket_acl}"
  region        = "${var.region}"
  force_destroy = "${var.allow_terraform_destroy}"

  server_side_encryption_configuration {
    rule {
      apply_server_side_encryption_by_default {
        sse_algorithm     = "aws:kms"
        kms_master_key_id = "${aws_kms_key.this.arn}"
      }
    }
  }

  versioning {
    enabled = "${var.versioning_enabled}"
  }

  lifecycle_rule {
    id      = "${var.s3_bucket_name}-transition-rule"
    enabled = "${var.transition_lifecycle_rule_enabled}"
    prefix  = "${var.transition_lifecycle_rule_prefix}"

    noncurrent_version_transition {
      days          = "${var.noncurrent_version_transition_days}"
      storage_class = "GLACIER"
    }

    transition {
      days          = "${var.standard_transition_days}"
      storage_class = "STANDARD_IA"
    }

    transition {
      days          = "${var.glacier_transition_days}"
      storage_class = "GLACIER"
    }
  }

  lifecycle_rule {
    id      = "${var.s3_bucket_name}-expiration-rule"
    enabled = "${var.expiration_lifecycle_rule_enabled}"
    prefix  = "${var.expiration_lifecycle_rule_prefix}"

    noncurrent_version_expiration {
      days = "${var.noncurrent_version_expiration_days}"
    }

    expiration {
      days = "${var.expiration_days}"
    }
  }

  tags = "${var.bucket_tags}"
}

resource "aws_kms_key" "this" {
  description             = "${var.kms_key_description}"
  deletion_window_in_days = "${var.deletion_window_in_days}"
  is_enabled              = true

  tags = "${var.kms_key_tags}"
}

resource "aws_kms_alias" "this" {
  name          = "alias/${var.kms_key_alias}"
  target_key_id = "${aws_kms_key.this.arn}"
}
