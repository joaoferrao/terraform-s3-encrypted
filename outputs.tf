################################################################################
# S3 bucket DATENN_VAR outputs
################################################################################

output "bucket_DATENN_VAR_encrypted_bucket_name" {
  value = "${module.DATENN_VAR_encrypted_bucket.s3_bucket}"
}

output "bucket_DATENN_VAR_encrypted_bucket_s3_arn" {
  value = "${module.DATENN_VAR_encrypted_bucket.s3_arn}"
}

output "bucket_DATENN_VAR_encrypted_bucket_s3_id" {
  value = "${module.DATENN_VAR_encrypted_bucket.s3_id}"
}

output "bucket_DATENN_VAR_encrypted_bucket_kms_key_arn" {
  value = "${module.DATENN_VAR_encrypted_bucket.aws_kms_key_arn}"
}
