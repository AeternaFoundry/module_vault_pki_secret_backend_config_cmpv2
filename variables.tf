variable "pki_secret_backend_config_cmpv2s" {
  description = <<EOT
Map of pki_secret_backend_config_cmpv2s, attributes below
Required:
    - backend
Optional:
    - audit_fields
    - default_path_policy
    - disabled_validations
    - enable_sentinel_parsing
    - enabled
    - namespace
    - authenticators (block):
        - cert (optional)
EOT

  type = map(object({
    backend                 = string
    audit_fields            = optional(list(string))
    default_path_policy     = optional(string)
    disabled_validations    = optional(list(string))
    enable_sentinel_parsing = optional(bool)
    enabled                 = optional(bool)
    namespace               = optional(string)
    authenticators = optional(object({
      cert = optional(map(string))
    }))
  }))
}

