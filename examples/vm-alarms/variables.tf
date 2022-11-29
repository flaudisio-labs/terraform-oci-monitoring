variable "compartment_id" {
  description = "The OCID of the compartment to which the resources will be deployed"
  type        = string
}

variable "name" {
  description = "A name to identify all resources deployed by this example"
  type        = string
  default     = "vm-alarms-example"
}
