# ------------------------------------------------------------------------------
# FAILED CLIENT SSL CERT VERIFICATIONS
# ------------------------------------------------------------------------------

output "failed_ssl_client_cert_verify_alarm_ids" {
  description = "The ID of the failed client SSL cert verifications alarm"
  value       = module.failed_ssl_client_cert_verify_alarm.id
}

output "failed_ssl_client_cert_verify_alarm_names" {
  description = "The name of the failed client SSL cert verifications alarm"
  value       = module.failed_ssl_client_cert_verify_alarm.name
}

# ------------------------------------------------------------------------------
# HTTP ERROR RESPONSES
# ------------------------------------------------------------------------------

output "http_5xx_responses_alarm_ids" {
  description = "The IDs of the HTTP 5xx responses alarms"
  value       = values(module.http_5xx_responses_alarm)[*].id
}

output "http_5xx_responses_alarm_names" {
  description = "The names of the HTTP 5xx responses alarms"
  value       = values(module.http_5xx_responses_alarm)[*].name
}

# ------------------------------------------------------------------------------
# UNHEALTHY BACKEND SERVERS
# ------------------------------------------------------------------------------

output "unhealthy_backend_servers_alarm_ids" {
  description = "The IDs of the unhealthy backend servers alarms"
  value       = values(module.unhealthy_backend_servers_alarm)[*].id
}

output "unhealthy_backend_servers_alarm_names" {
  description = "The names of the unhealthy backend servers alarms"
  value       = values(module.unhealthy_backend_servers_alarm)[*].name
}
