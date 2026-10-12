resource "vault_pki_secret_backend_config_cmpv2" "pki_secret_backend_config_cmpv2s" {
  for_each = var.pki_secret_backend_config_cmpv2s

  backend                 = each.value.backend
  audit_fields            = each.value.audit_fields
  default_path_policy     = each.value.default_path_policy
  disabled_validations    = each.value.disabled_validations
  enable_sentinel_parsing = each.value.enable_sentinel_parsing
  enabled                 = each.value.enabled
  namespace               = each.value.namespace

  dynamic "authenticators" {
    for_each = each.value.authenticators != null ? [each.value.authenticators] : []
    content {
      cert = authenticators.value.cert
    }
  }
}

