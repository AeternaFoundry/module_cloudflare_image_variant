output "image_variants_account_id" {
  description = "Map of account_id values across all image_variants, keyed the same as var.image_variants except keys with no account_id are omitted"
  value       = { for k, v in cloudflare_image_variant.image_variants : k => v.account_id if v.account_id != null && length(v.account_id) > 0 }
}
output "image_variants_id" {
  description = "Map of id values across all image_variants, keyed the same as var.image_variants except keys with no id are omitted"
  value       = { for k, v in cloudflare_image_variant.image_variants : k => v.id if v.id != null && length(v.id) > 0 }
}
output "image_variants_never_require_signed_urls" {
  description = "Map of never_require_signed_urls values across all image_variants, keyed the same as var.image_variants except keys with no never_require_signed_urls are omitted"
  value       = { for k, v in cloudflare_image_variant.image_variants : k => v.never_require_signed_urls if v.never_require_signed_urls != null }
}
output "image_variants_options" {
  description = "Map of options values across all image_variants, keyed the same as var.image_variants except keys with no options are omitted"
  value       = { for k, v in cloudflare_image_variant.image_variants : k => v.options if v.options != null && length(v.options) > 0 }
}

