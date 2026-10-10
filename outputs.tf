output "resource_server_scopes_id" {
  description = "Map of id values across all resource_server_scopes, keyed the same as var.resource_server_scopes except keys with no id are omitted"
  value       = { for k, v in auth0_resource_server_scopes.resource_server_scopes : k => v.id if v.id != null && length(v.id) > 0 }
}
output "resource_server_scopes_resource_server_identifier" {
  description = "Map of resource_server_identifier values across all resource_server_scopes, keyed the same as var.resource_server_scopes except keys with no resource_server_identifier are omitted"
  value       = { for k, v in auth0_resource_server_scopes.resource_server_scopes : k => v.resource_server_identifier if v.resource_server_identifier != null && length(v.resource_server_identifier) > 0 }
}
output "resource_server_scopes_scopes" {
  description = "Map of scopes values across all resource_server_scopes, keyed the same as var.resource_server_scopes except keys with no scopes are omitted"
  value       = { for k, v in auth0_resource_server_scopes.resource_server_scopes : k => v.scopes if v.scopes != null && length(v.scopes) > 0 }
}

