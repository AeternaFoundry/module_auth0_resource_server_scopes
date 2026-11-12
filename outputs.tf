output "resource_server_scopes_id" {
  description = "Map of id values across all resource_server_scopes, keyed the same as var.resource_server_scopes"
  value       = { for k, v in auth0_resource_server_scopes.resource_server_scopes : k => v.id }
}
output "resource_server_scopes_resource_server_identifier" {
  description = "Map of resource_server_identifier values across all resource_server_scopes, keyed the same as var.resource_server_scopes"
  value       = { for k, v in auth0_resource_server_scopes.resource_server_scopes : k => v.resource_server_identifier }
}
output "resource_server_scopes_scopes" {
  description = "Map of scopes values across all resource_server_scopes, keyed the same as var.resource_server_scopes"
  value       = { for k, v in auth0_resource_server_scopes.resource_server_scopes : k => v.scopes }
}

