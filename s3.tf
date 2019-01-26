################################################################################
# S3 Encryted Bucket "DATENN_VAR"
################################################################################

module "DATENN_VAR_encrypted_bucket" {
  source                             = "git::ssh://git@github.com/joaoferrao/terraform-s3-encrypted.git"
  version                            = "v0.0.2"
  region                             = "${var.bucket_DATENN_VAR_region}"
  s3_bucket_name                     = "DATENN_VAR"
  s3_bucket_acl                      = "private"
  allow_terraform_destroy            = false
  deletion_window_in_days            = "${var.bucket_DATENN_VAR_deletion_window_in_days}"
  kms_key_alias                      = "DATENN_VAR-kms-key"
  versioning_enabled                 = "${var.bucket_DATENN_VAR_versioning_enabled}"
  transition_lifecycle_rule_enabled  = "${var.bucket_DATENN_VAR_transition_lifecycle_rule_enabled}"
  transition_lifecycle_rule_prefix   = "${var.bucket_DATENN_VAR_transition_lifecycle_rule_prefix}"
  expiration_lifecycle_rule_enabled  = "${var.bucket_DATENN_VAR_expiration_lifecycle_rule_enabled}"
  expiration_lifecycle_rule_prefix   = "${var.bucket_DATENN_VAR_expiration_lifecycle_rule_prefix}"
  noncurrent_version_transition_days = "${var.bucket_DATENN_VAR_noncurrent_version_transition_days}"
  standard_transition_days           = "${var.bucket_DATENN_VAR_standard_transition_days}"
  glacier_transition_days            = "${var.bucket_DATENN_VAR_glacier_transition_days}"
  expiration_days                    = "${var.bucket_DATENN_VAR_expiration_days}"
  noncurrent_version_expiration_days = "${var.bucket_DATENN_VAR_noncurrent_version_expiration_days}"
  bucket_tags                        = "${var.bucket_DATENN_VAR_tags}"
  kms_key_tags                       = "${var.bucket_DATENN_VAR_kms_key_tags}"
  kms_key_description                = "${var.bucket_DATENN_VAR_kms_key_description}"
}
