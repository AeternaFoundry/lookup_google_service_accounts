data "google_service_accounts" "service_accounts_lookup" {
  for_each = var.service_accounts_lookup

  prefix  = each.value.prefix
  project = each.value.project
  regex   = each.value.regex
}

