output "high_cpu_utilization_alarm_id" {
  description = "The ID of the high CPU utilization alarm"
  value       = module.vm_cpu_alarms.high_cpu_utilization_alarm_id
}

output "high_cpu_utilization_alarm_name" {
  description = "The name of the high CPU utilization alarm"
  value       = module.vm_cpu_alarms.high_cpu_utilization_alarm_name
}

output "high_load_average_alarm_id" {
  description = "The ID of the high load average alarm"
  value       = module.vm_cpu_alarms.high_load_average_alarm_id
}

output "high_load_average_alarm_name" {
  description = "The name of the high load average alarm"
  value       = module.vm_cpu_alarms.high_load_average_alarm_name
}

output "high_memory_utilization_alarm_id" {
  description = "The ID of the high memory utilization alarm"
  value       = module.vm_memory_alarms.high_memory_utilization_alarm_id
}

output "high_memory_utilization_alarm_name" {
  description = "The name of the high memory utilization alarm"
  value       = module.vm_memory_alarms.high_memory_utilization_alarm_name
}
