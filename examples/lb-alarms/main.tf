locals {
  defined_tags = {
    "iac.created-by" = "terraform"
  }
}

resource "oci_ons_notification_topic" "this" {
  compartment_id = var.compartment_id

  name = var.name

  defined_tags = local.defined_tags
}

module "lb_alarms" {
  source = "../../modules/alarms/lb-alarms"

  compartment_id        = var.compartment_id
  notification_topic_id = oci_ons_notification_topic.this.id

  load_balancer_name = "example-lb"
  load_balancer_id   = "ocid1.loadbalancer.oc1.sa-saopaulo-1.aaa111"

  backend_sets = [
    "example-backend-set",
  ]

  defined_tags = local.defined_tags
}
