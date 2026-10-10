resource "auth0_resource_server_scopes" "resource_server_scopes" {
  for_each = var.resource_server_scopes

  resource_server_identifier = each.value.resource_server_identifier

  dynamic "scopes" {
    for_each = each.value.scopes
    content {
      description = scopes.value.description
      name        = scopes.value.name
    }
  }
}

