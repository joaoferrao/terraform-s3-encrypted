################################################################################
# S3 Encryted Bucket "DATENN_VAR"
################################################################################

module "DATENN_VAR_bucketName_encrypted_bucket" {
  source                             = "DATENN_VAR_module_dir"

  region                             = "${var.bucket_DATENN_VAR_bucketName_region}"
  s3_bucket_name                     = "DATENN_VAR_bucketName"
  s3_bucket_acl                      = "private"
  allow_terraform_destroy            = false
  deletion_window_in_days            = "${var.bucket_DATENN_VAR_bucketName_deletion_window_in_days}"
  kms_key_alias                      = "DATENN_VAR_bucketName-kms-key"
  versioning_enabled                 = "${var.bucket_DATENN_VAR_bucketName_versioning_enabled}"
  transition_lifecycle_rule_enabled  = "${var.bucket_DATENN_VAR_bucketName_transition_lifecycle_rule_enabled}"
  transition_lifecycle_rule_prefix   = "${var.bucket_DATENN_VAR_bucketName_transition_lifecycle_rule_prefix}"
  expiration_lifecycle_rule_enabled  = "${var.bucket_DATENN_VAR_bucketName_expiration_lifecycle_rule_enabled}"
  expiration_lifecycle_rule_prefix   = "${var.bucket_DATENN_VAR_bucketName_expiration_lifecycle_rule_prefix}"
  noncurrent_version_transition_days = "${var.bucket_DATENN_VAR_bucketName_noncurrent_version_transition_days}"
  standard_transition_days           = "${var.bucket_DATENN_VAR_bucketName_standard_transition_days}"
  glacier_transition_days            = "${var.bucket_DATENN_VAR_bucketName_glacier_transition_days}"
  expiration_days                    = "${var.bucket_DATENN_VAR_bucketName_expiration_days}"
  noncurrent_version_expiration_days = "${var.bucket_DATENN_VAR_bucketName_noncurrent_version_expiration_days}"
  bucket_tags                        = "${var.bucket_DATENN_VAR_bucketName_tags}"
  kms_key_tags                       = "${var.bucket_DATENN_VAR_bucketName_kms_key_tags}"
  kms_key_description                = "${var.bucket_DATENN_VAR_bucketName_kms_key_description}"
}
