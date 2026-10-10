variable "resource_server_scopes" {
  description = <<EOT
Map of resource_server_scopes, attributes below
Required:
    - resource_server_identifier
    - scopes (block):
        - description (optional)
        - name (required)
EOT

  type = map(object({
    resource_server_identifier = string
    scopes = list(object({
      description = optional(string)
      name        = string
    }))
  }))
  validation {
    condition = alltrue([
      for k, v in var.resource_server_scopes : (
        length(v.scopes) >= 1
      )
    ])
    error_message = "Each scopes list must contain at least 1 items"
  }
}

