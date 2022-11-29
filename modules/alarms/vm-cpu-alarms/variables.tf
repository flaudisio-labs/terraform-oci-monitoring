variable "compartment_id" {
  description = "The OCID of the compartment to deploy the alarm to"
  type        = string
}

variable "instance_name" {
  description = "The name of the VM instance being monitored"
  type        = string
}

variable "instance_id" {
  description = "The OCID of the VM instance being monitored"
  type        = string
}

variable "severity" {
  description = "The perceived type of response required when the alarm is in the `FIRING` state"
  type        = string
  default     = "WARNING"
}

variable "notification_topic_id" {
  description = "The OCID of the Notifications topic to deliver the alarm to"
  type        = string
}

variable "defined_tags" {
  description = "Map of key-value tags to be applied to resources"
  type        = map(string)
  default     = {}
}
