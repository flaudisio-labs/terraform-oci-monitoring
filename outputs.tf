output "name" {
  description = "The resource name"
  value       = var.name
}

output "id" {
  description = "The resource ID"
  value       = null_resource.this.id
}
