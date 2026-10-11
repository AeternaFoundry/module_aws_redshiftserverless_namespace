variable "redshiftserverless_namespaces" {
  description = <<EOT
Map of redshiftserverless_namespaces, attributes below
Required:
    - namespace_name
Optional:
    - admin_password_secret_kms_key_id
    - admin_user_password
    - admin_user_password_wo
    - admin_user_password_wo_version
    - admin_username
    - db_name
    - default_iam_role_arn
    - iam_roles
    - kms_key_id
    - log_exports
    - manage_admin_password
    - region
    - tags
    - tags_all
EOT

  type = map(object({
    namespace_name                   = string
    admin_password_secret_kms_key_id = optional(string)
    admin_user_password              = optional(string)
    admin_user_password_wo           = optional(string)
    admin_user_password_wo_version   = optional(number)
    admin_username                   = optional(string)
    db_name                          = optional(string)
    default_iam_role_arn             = optional(string)
    iam_roles                        = optional(set(string))
    kms_key_id                       = optional(string)
    log_exports                      = optional(set(string))
    manage_admin_password            = optional(bool)
    region                           = optional(string)
    tags                             = optional(map(string))
    tags_all                         = optional(map(string))
  }))
  validation {
    condition = alltrue([
      for k, v in var.redshiftserverless_namespaces : (
        v.admin_password_secret_kms_key_id == null || (length(v.admin_password_secret_kms_key_id) >= 1)
      )
    ])
    error_message = "[from verify.ValidKMSKeyID: invalid when len(value) < 1]"
  }
  validation {
    condition = alltrue([
      for k, v in var.redshiftserverless_namespaces : (
        v.admin_password_secret_kms_key_id == null || (length(v.admin_password_secret_kms_key_id) <= 2048)
      )
    ])
    error_message = "[from verify.ValidKMSKeyID: invalid when len(value) > 2048]"
  }
  # Note: 4 additional provider-side validators are enforced at apply time but not mirrored as validation{} blocks here (bespoke or non-mechanically-translatable).
}

