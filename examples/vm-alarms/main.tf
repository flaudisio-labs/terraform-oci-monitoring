data "oci_identity_availability_domain" "this" {
  compartment_id = var.compartment_id
  ad_number      = 1
}

data "oci_core_subnets" "this" {
  compartment_id = var.compartment_id
}

data "oci_core_images" "this" {
  compartment_id = var.compartment_id
  sort_by        = "TIMECREATED"
  sort_order     = "DESC"
}

locals {
  private_subnets = sort([
    for subnet in data.oci_core_subnets.this.subnets :
    subnet.id
    if startswith(subnet.display_name, "private")
  ])

  ubuntu_images = [
    for image in data.oci_core_images.this.images :
    image.id
    if image.operating_system == "Canonical Ubuntu" && image.operating_system_version == "22.04 Minimal aarch64"
  ]

  defined_tags = {
    "iac.created-by" = "terraform"
  }
}

resource "oci_core_instance" "this" {
  compartment_id      = var.compartment_id
  availability_domain = data.oci_identity_availability_domain.this.name

  display_name = var.name
  shape        = "VM.Standard.A1.Flex"

  shape_config {
    ocpus         = 1
    memory_in_gbs = 1
  }

  create_vnic_details {
    subnet_id        = local.private_subnets[0]
    assign_public_ip = false
  }

  source_details {
    source_type = "image"
    source_id   = local.ubuntu_images[0]
  }

  defined_tags = local.defined_tags
}

resource "oci_ons_notification_topic" "this" {
  compartment_id = var.compartment_id

  name = var.name

  defined_tags = local.defined_tags
}

module "vm_cpu_alarms" {
  source = "../../modules/alarms/vm-cpu-alarms"

  compartment_id        = var.compartment_id
  notification_topic_id = oci_ons_notification_topic.this.id

  instance_name = oci_core_instance.this.display_name
  instance_id   = oci_core_instance.this.id

  defined_tags = local.defined_tags
}

module "vm_memory_alarms" {
  source = "../../modules/alarms/vm-memory-alarms"

  compartment_id        = var.compartment_id
  notification_topic_id = oci_ons_notification_topic.this.id

  instance_name = oci_core_instance.this.display_name
  instance_id   = oci_core_instance.this.id

  defined_tags = local.defined_tags
}
