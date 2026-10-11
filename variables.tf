variable "service_accounts_lookup" {
  description = <<EOT
Map of service_accounts_lookup, attributes below
Optional:
    - prefix
    - project
    - regex
EOT

  type = map(object({
    prefix  = optional(string)
    project = optional(string)
    regex   = optional(string)
  }))
  # Note: 1 additional provider-side validator is enforced at apply time but not mirrored as validation{} blocks here (bespoke or non-mechanically-translatable).
}

