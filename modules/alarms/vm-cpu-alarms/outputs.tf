# ------------------------------------------------------------------------------
# CPU UTILIZATION
# ------------------------------------------------------------------------------

output "high_cpu_utilization_alarm_id" {
  description = "The ID of the high CPU utilization alarm"
  value       = module.high_cpu_utilization_alarm.id
}

output "high_cpu_utilization_alarm_name" {
  description = "The name of the high CPU utilization alarm"
  value       = module.high_cpu_utilization_alarm.name
}

# ------------------------------------------------------------------------------
# LOAD AVERAGE
# ------------------------------------------------------------------------------

output "high_load_average_alarm_id" {
  description = "The ID of the high load average alarm"
  value       = module.high_load_average_alarm.id
}

output "high_load_average_alarm_name" {
  description = "The name of the high load average alarm"
  value       = module.high_load_average_alarm.name
}
