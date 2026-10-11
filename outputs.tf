output "redshiftserverless_namespaces_id" {
  description = "Map of id values across all redshiftserverless_namespaces, keyed the same as var.redshiftserverless_namespaces"
  value       = { for k, v in aws_redshiftserverless_namespace.redshiftserverless_namespaces : k => v.id if v.id != null && length(v.id) > 0 }
}
output "redshiftserverless_namespaces_admin_password_secret_arn" {
  description = "Map of admin_password_secret_arn values across all redshiftserverless_namespaces, keyed the same as var.redshiftserverless_namespaces"
  value       = { for k, v in aws_redshiftserverless_namespace.redshiftserverless_namespaces : k => v.admin_password_secret_arn if v.admin_password_secret_arn != null && length(v.admin_password_secret_arn) > 0 }
}
output "redshiftserverless_namespaces_admin_password_secret_kms_key_id" {
  description = "Map of admin_password_secret_kms_key_id values across all redshiftserverless_namespaces, keyed the same as var.redshiftserverless_namespaces"
  value       = { for k, v in aws_redshiftserverless_namespace.redshiftserverless_namespaces : k => v.admin_password_secret_kms_key_id if v.admin_password_secret_kms_key_id != null && length(v.admin_password_secret_kms_key_id) > 0 }
}
output "redshiftserverless_namespaces_admin_user_password" {
  description = "Map of admin_user_password values across all redshiftserverless_namespaces, keyed the same as var.redshiftserverless_namespaces"
  value       = { for k, v in aws_redshiftserverless_namespace.redshiftserverless_namespaces : k => v.admin_user_password if v.admin_user_password != null && length(v.admin_user_password) > 0 }
  sensitive   = true
}
output "redshiftserverless_namespaces_admin_user_password_wo" {
  description = "Map of admin_user_password_wo values across all redshiftserverless_namespaces, keyed the same as var.redshiftserverless_namespaces"
  value       = { for k, v in aws_redshiftserverless_namespace.redshiftserverless_namespaces : k => v.admin_user_password_wo if v.admin_user_password_wo != null && length(v.admin_user_password_wo) > 0 }
}
output "redshiftserverless_namespaces_admin_user_password_wo_version" {
  description = "Map of admin_user_password_wo_version values across all redshiftserverless_namespaces, keyed the same as var.redshiftserverless_namespaces"
  value       = { for k, v in aws_redshiftserverless_namespace.redshiftserverless_namespaces : k => v.admin_user_password_wo_version if v.admin_user_password_wo_version != null }
}
output "redshiftserverless_namespaces_admin_username" {
  description = "Map of admin_username values across all redshiftserverless_namespaces, keyed the same as var.redshiftserverless_namespaces"
  value       = { for k, v in aws_redshiftserverless_namespace.redshiftserverless_namespaces : k => v.admin_username if v.admin_username != null && length(v.admin_username) > 0 }
  sensitive   = true
}
output "redshiftserverless_namespaces_arn" {
  description = "Map of arn values across all redshiftserverless_namespaces, keyed the same as var.redshiftserverless_namespaces"
  value       = { for k, v in aws_redshiftserverless_namespace.redshiftserverless_namespaces : k => v.arn if v.arn != null && length(v.arn) > 0 }
}
output "redshiftserverless_namespaces_db_name" {
  description = "Map of db_name values across all redshiftserverless_namespaces, keyed the same as var.redshiftserverless_namespaces"
  value       = { for k, v in aws_redshiftserverless_namespace.redshiftserverless_namespaces : k => v.db_name if v.db_name != null && length(v.db_name) > 0 }
}
output "redshiftserverless_namespaces_default_iam_role_arn" {
  description = "Map of default_iam_role_arn values across all redshiftserverless_namespaces, keyed the same as var.redshiftserverless_namespaces"
  value       = { for k, v in aws_redshiftserverless_namespace.redshiftserverless_namespaces : k => v.default_iam_role_arn if v.default_iam_role_arn != null && length(v.default_iam_role_arn) > 0 }
}
output "redshiftserverless_namespaces_iam_roles" {
  description = "Map of iam_roles values across all redshiftserverless_namespaces, keyed the same as var.redshiftserverless_namespaces"
  value       = { for k, v in aws_redshiftserverless_namespace.redshiftserverless_namespaces : k => v.iam_roles if v.iam_roles != null && length(v.iam_roles) > 0 }
}
output "redshiftserverless_namespaces_kms_key_id" {
  description = "Map of kms_key_id values across all redshiftserverless_namespaces, keyed the same as var.redshiftserverless_namespaces"
  value       = { for k, v in aws_redshiftserverless_namespace.redshiftserverless_namespaces : k => v.kms_key_id if v.kms_key_id != null && length(v.kms_key_id) > 0 }
}
output "redshiftserverless_namespaces_log_exports" {
  description = "Map of log_exports values across all redshiftserverless_namespaces, keyed the same as var.redshiftserverless_namespaces"
  value       = { for k, v in aws_redshiftserverless_namespace.redshiftserverless_namespaces : k => v.log_exports if v.log_exports != null && length(v.log_exports) > 0 }
}
output "redshiftserverless_namespaces_manage_admin_password" {
  description = "Map of manage_admin_password values across all redshiftserverless_namespaces, keyed the same as var.redshiftserverless_namespaces"
  value       = { for k, v in aws_redshiftserverless_namespace.redshiftserverless_namespaces : k => v.manage_admin_password if v.manage_admin_password != null }
}
output "redshiftserverless_namespaces_namespace_id" {
  description = "Map of namespace_id values across all redshiftserverless_namespaces, keyed the same as var.redshiftserverless_namespaces"
  value       = { for k, v in aws_redshiftserverless_namespace.redshiftserverless_namespaces : k => v.namespace_id if v.namespace_id != null && length(v.namespace_id) > 0 }
}
output "redshiftserverless_namespaces_namespace_name" {
  description = "Map of namespace_name values across all redshiftserverless_namespaces, keyed the same as var.redshiftserverless_namespaces"
  value       = { for k, v in aws_redshiftserverless_namespace.redshiftserverless_namespaces : k => v.namespace_name if v.namespace_name != null && length(v.namespace_name) > 0 }
}
output "redshiftserverless_namespaces_region" {
  description = "Map of region values across all redshiftserverless_namespaces, keyed the same as var.redshiftserverless_namespaces"
  value       = { for k, v in aws_redshiftserverless_namespace.redshiftserverless_namespaces : k => v.region if v.region != null && length(v.region) > 0 }
}
output "redshiftserverless_namespaces_tags" {
  description = "Map of tags values across all redshiftserverless_namespaces, keyed the same as var.redshiftserverless_namespaces"
  value       = { for k, v in aws_redshiftserverless_namespace.redshiftserverless_namespaces : k => v.tags if v.tags != null && length(v.tags) > 0 }
}
output "redshiftserverless_namespaces_tags_all" {
  description = "Map of tags_all values across all redshiftserverless_namespaces, keyed the same as var.redshiftserverless_namespaces"
  value       = { for k, v in aws_redshiftserverless_namespace.redshiftserverless_namespaces : k => v.tags_all if v.tags_all != null && length(v.tags_all) > 0 }
}

