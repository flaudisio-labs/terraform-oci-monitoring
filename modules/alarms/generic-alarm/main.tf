# ------------------------------------------------------------------------------
# GENERIC ALARM
# ------------------------------------------------------------------------------

resource "oci_monitoring_alarm" "this" {
  compartment_id = var.compartment_id

  display_name = var.display_name
  is_enabled   = var.is_enabled
  severity     = var.severity

  metric_compartment_id = var.metric_compartment_id != "" ? var.metric_compartment_id : var.compartment_id

  namespace    = var.namespace
  query        = var.query
  destinations = [var.notification_topic_id]

  message_format   = var.message_format
  pending_duration = var.pending_duration
  resolution       = var.resolution

  is_notifications_per_metric_dimension_enabled = var.is_notifications_per_metric_dimension_enabled

  defined_tags = var.defined_tags
}
