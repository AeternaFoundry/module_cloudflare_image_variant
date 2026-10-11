resource "cloudflare_image_variant" "image_variants" {
  for_each = var.image_variants

  account_id                = each.value.account_id
  id                        = each.value.id
  options                   = each.value.options
  never_require_signed_urls = each.value.never_require_signed_urls
}

