output "service_accounts_lookup_id" {
  description = "Map of id values across all service_accounts_lookup, keyed the same as var.service_accounts_lookup except keys with no id are omitted"
  value       = { for k, v in data.google_service_accounts.service_accounts_lookup : k => v.id if v.id != null && length(v.id) > 0 }
}
output "service_accounts_lookup_accounts" {
  description = "Map of accounts values across all service_accounts_lookup, keyed the same as var.service_accounts_lookup except keys with no accounts are omitted"
  value       = { for k, v in data.google_service_accounts.service_accounts_lookup : k => v.accounts if v.accounts != null && length(v.accounts) > 0 }
}
output "service_accounts_lookup_prefix" {
  description = "Map of prefix values across all service_accounts_lookup, keyed the same as var.service_accounts_lookup except keys with no prefix are omitted"
  value       = { for k, v in data.google_service_accounts.service_accounts_lookup : k => v.prefix if v.prefix != null && length(v.prefix) > 0 }
}
output "service_accounts_lookup_project" {
  description = "Map of project values across all service_accounts_lookup, keyed the same as var.service_accounts_lookup except keys with no project are omitted"
  value       = { for k, v in data.google_service_accounts.service_accounts_lookup : k => v.project if v.project != null && length(v.project) > 0 }
}
output "service_accounts_lookup_regex" {
  description = "Map of regex values across all service_accounts_lookup, keyed the same as var.service_accounts_lookup except keys with no regex are omitted"
  value       = { for k, v in data.google_service_accounts.service_accounts_lookup : k => v.regex if v.regex != null && length(v.regex) > 0 }
}

