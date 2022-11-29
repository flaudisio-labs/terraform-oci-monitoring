# ------------------------------------------------------------------------------
# MEMORY UTILIZATION
# ------------------------------------------------------------------------------

output "high_memory_utilization_alarm_id" {
  description = "The ID of the high memory utilization alarm"
  value       = module.high_memory_utilization_alarm.id
}

output "high_memory_utilization_alarm_name" {
  description = "The name of the high memory utilization alarm"
  value       = module.high_memory_utilization_alarm.name
}
