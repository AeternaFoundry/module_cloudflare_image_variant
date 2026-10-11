variable "image_variants" {
  description = <<EOT
Map of image_variants, attributes below
Required:
    - account_id
    - id
    - options
Optional:
    - never_require_signed_urls
EOT

  type = map(object({
    account_id = string
    id         = string
    options = object({
      fit      = string
      height   = number
      metadata = string
      width    = number
    })
    never_require_signed_urls = optional(bool)
  }))
}

