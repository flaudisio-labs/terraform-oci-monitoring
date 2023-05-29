variable "compartment_id" {
  description = "The OCID of the compartment to deploy the alarm to"
  type        = string
}

variable "load_balancer_name" {
  description = "The name of the load balancer being monitored"
  type        = string
}

variable "load_balancer_id" {
  description = "The OCID of the load balancer being monitored"
  type        = string
}

variable "backend_sets" {
  description = "The list of backend set names of the load balancer being monitored"
  type        = list(string)
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
