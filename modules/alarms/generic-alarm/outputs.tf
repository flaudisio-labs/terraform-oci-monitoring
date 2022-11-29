output "id" {
  description = "The ID of the alarm"
  value       = oci_monitoring_alarm.this.id
}

output "name" {
  description = "The name of the alarm"
  value       = oci_monitoring_alarm.this.display_name
}
