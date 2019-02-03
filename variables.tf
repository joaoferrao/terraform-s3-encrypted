################################################################################
# S3 Bucket "DATENN_VAR_bucketName" variables
################################################################################
variable "bucket_DATENN_VAR_bucketName_region" {
  description = "AWS Region for S3 Bucket DATENN_VAR_bucketName"
  default     = "eu-west-1"
}

variable "bucket_DATENN_VAR_bucketName_deletion_window_in_days" {
  description = "Duration in days after which the key is deleted after destruction of the resource, must be between 7 and 30 days. Defaults to 10 days."
  default     = 10
}

variable "bucket_DATENN_VAR_bucketName_versioning_enabled" {
  default = false
}

variable "bucket_DATENN_VAR_bucketName_transition_lifecycle_rule_enabled" {
  default = false
}

variable "bucket_DATENN_VAR_bucketName_expiration_lifecycle_rule_enabled" {
  default = false
}

variable "bucket_DATENN_VAR_bucketName_expiration_lifecycle_rule_prefix" {
  description = "(Optional) expiration lifecycle rule, only valid if enabled"
  default     = ""
}

variable "bucket_DATENN_VAR_bucketName_transition_lifecycle_rule_prefix" {
  description = "(Optional) transition lifecycle rule, only valid if enabled"
  default     = ""
}

variable "bucket_DATENN_VAR_bucketName_noncurrent_version_transition_days" {
  description = "(Optional) Specifies when noncurrent object versions transitions"
  default     = "30"
}

variable "bucket_DATENN_VAR_bucketName_standard_transition_days" {
  description = "Number of days to persist in the standard storage tier before moving to the infrequent access tier"
  default     = "30"
}

variable "bucket_DATENN_VAR_bucketName_glacier_transition_days" {
  description = "Number of days after which to move the data to the glacier storage tier"
  default     = "60"
}

variable "bucket_DATENN_VAR_bucketName_expiration_days" {
  description = "Number of days after which to expunge the objects"
  default     = "90"
}

variable "bucket_DATENN_VAR_bucketName_noncurrent_version_expiration_days" {
  description = "(Optional) Specifies when noncurrent object versions expire."
  default     = "90"
}

variable "bucket_DATENN_VAR_bucketName_tags" {
  type        = "map"
  default     = {}
  description = "Additional tags (e.g. map('Environment','prd', 'Project', 'geo-analytics')"
}

variable "bucket_DATENN_VAR_bucketName_kms_key_tags" {
  type        = "map"
  default     = {}
  description = "Additional tags (e.g. map('Environment','prd', 'Project', 'geo-analytics')"
}

variable "bucket_DATENN_VAR_bucketName_kms_key_description" {
  description = "KMS key description"
  default     = "This key is used to encrypt bucket objects"
}
