# ------------------------------------------------------------------------------
# MEMORY UTILIZATION
# ------------------------------------------------------------------------------

module "high_memory_utilization_alarm" {
  source = "../generic-alarm"

  compartment_id = var.compartment_id

  display_name = "vm-${var.instance_name}-high-memory-utilization"
  severity     = var.severity
  namespace    = "oci_computeagent"

  query = <<-EOF
    MemoryUtilization[5m]{resourceId = "${var.instance_id}"}.Mean() > 90
  EOF

  notification_topic_id = var.notification_topic_id

  defined_tags = var.defined_tags
}
