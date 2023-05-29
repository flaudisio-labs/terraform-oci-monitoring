# ------------------------------------------------------------------------------
# MEMORY UTILIZATION
# ------------------------------------------------------------------------------

module "high_memory_utilization_alarm" {
  source = "../generic-alarm"

  compartment_id        = var.compartment_id
  notification_topic_id = var.notification_topic_id

  display_name = format("%s-vm-high-memory-utilization", var.instance_name)
  severity     = var.severity
  namespace    = "oci_computeagent"

  query = <<-EOF
    MemoryUtilization[5m]{resourceId = "${var.instance_id}"}.Mean() > 90
  EOF

  defined_tags = var.defined_tags
}
