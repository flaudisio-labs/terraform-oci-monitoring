variable "compartment_id" {
  description = "The OCID of the compartment to deploy the alarm to"
  type        = string
}

variable "display_name" {
  description = "A user-friendly name for the alarm"
  type        = string
}

variable "is_enabled" {
  description = "Whether the alarm is enabled"
  type        = bool
  default     = true
}

variable "severity" {
  description = "The perceived type of response required when the alarm is in the `FIRING` state"
  type        = string
}

variable "metric_compartment_id" {
  description = "The OCID of the compartment containing the metric being evaluated by the alarm"
  type        = string
  default     = ""
}

variable "namespace" {
  description = "The source service or application emitting the metric that is evaluated by the alarm"
  type        = string
}

variable "query" {
  description = "The Monitoring Query Language (MQL) expression to evaluate for the alarm"
  type        = string
}

variable "notification_topic_id" {
  description = "The OCID of the Notifications topic to deliver the alarm to"
  type        = string
}

variable "message_format" {
  description = "The format to use for notification messages sent from this alarm. Allowed values: `RAW`, `PRETTY_JSON`, `ONS_OPTIMIZED`"
  type        = string
  default     = "ONS_OPTIMIZED"
}

variable "pending_duration" {
  description = "The period of time that the condition defined in the alarm must persist before the alarm state changes from `OK` to `FIRING`"
  type        = string
  default     = "PT5M"
}

variable "resolution" {
  description = "The time between calculated aggregation windows for the alarm"
  type        = string
  default     = "1m"
}

variable "is_notifications_per_metric_dimension_enabled" {
  description = "When set to `true`, splits notifications per metric stream. When set to `false`, groups notifications across metric streams"
  type        = bool
  default     = false
}

variable "defined_tags" {
  description = "Map of key-value tags to be applied to resources"
  type        = map(string)
  default     = {}
}
