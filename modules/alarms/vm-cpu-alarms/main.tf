# ------------------------------------------------------------------------------
# DATA COLLECTION
# ------------------------------------------------------------------------------

data "oci_core_instance" "this" {
  instance_id = var.instance_id
}

locals {
  instance_shape = data.oci_core_instance.this.shape
  instance_ocpus = data.oci_core_instance.this.shape_config[0]["ocpus"]

  # ARM-based shapes have '.A<number>.' in their names (e.g. 'BM.Standard.A1.160', 'VM.Standard.A1.Flex')
  is_arm_shape = length(regexall("\\.A[0-9]\\.", local.instance_shape)) > 0

  # On ARM (Ampere) instances, 1 OCPU = 1 vCPU. On x86 instances, 1 OCPU = 2 vCPUs
  # Ref: https://www.oracle.com/cloud/compute/pricing/
  instance_vcpus = local.is_arm_shape ? local.instance_ocpus : local.instance_ocpus * 2
}

# ------------------------------------------------------------------------------
# CPU UTILIZATION
# ------------------------------------------------------------------------------

module "high_cpu_utilization_alarm" {
  source = "../generic-alarm"

  compartment_id        = var.compartment_id
  notification_topic_id = var.notification_topic_id

  display_name = format("%s-vm-high-cpu-utilization", var.instance_name)
  severity     = var.severity
  namespace    = "oci_computeagent"

  query = <<-EOF
    CpuUtilization[5m]{resourceId = "${var.instance_id}"}.Mean() > 90
  EOF

  defined_tags = var.defined_tags
}

# ------------------------------------------------------------------------------
# LOAD AVERAGE
# ------------------------------------------------------------------------------

module "high_load_average_alarm" {
  source = "../generic-alarm"

  compartment_id        = var.compartment_id
  notification_topic_id = var.notification_topic_id

  display_name = format("%s-vm-high-load-average", var.instance_name)
  severity     = var.severity
  namespace    = "oci_computeagent"

  query = <<-EOF
    LoadAverage[5m]{resourceId = "${var.instance_id}"}.Mean() > ${local.instance_vcpus}
  EOF

  defined_tags = var.defined_tags
}
