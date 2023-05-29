output "failed_ssl_client_cert_verify_alarm_ids" {
  description = "The ID of the failed client SSL cert verifications alarm"
  value       = module.lb_alarms.failed_ssl_client_cert_verify_alarm_ids
}

output "failed_ssl_client_cert_verify_alarm_names" {
  description = "The name of the failed client SSL cert verifications alarm"
  value       = module.lb_alarms.failed_ssl_client_cert_verify_alarm_names
}

output "http_5xx_responses_alarm_ids" {
  description = "The IDs of the HTTP 5xx responses alarms"
  value       = module.lb_alarms.http_5xx_responses_alarm_ids
}

output "http_5xx_responses_alarm_names" {
  description = "The names of the HTTP 5xx responses alarms"
  value       = module.lb_alarms.http_5xx_responses_alarm_names
}

output "unhealthy_backend_servers_alarm_ids" {
  description = "The IDs of the unhealthy backend servers alarms"
  value       = module.lb_alarms.unhealthy_backend_servers_alarm_ids
}

output "unhealthy_backend_servers_alarm_names" {
  description = "The names of the unhealthy backend servers alarms"
  value       = module.lb_alarms.unhealthy_backend_servers_alarm_names
}
