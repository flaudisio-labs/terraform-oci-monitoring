# ------------------------------------------------------------------------------
# FAILED CLIENT SSL CERT VERIFICATIONS
# ------------------------------------------------------------------------------

module "failed_ssl_client_cert_verify_alarm" {
  source = "../generic-alarm"

  compartment_id        = var.compartment_id
  notification_topic_id = var.notification_topic_id

  display_name = format("%s-lb-failed-ssl-client-cert-verify", var.load_balancer_name)
  severity     = var.severity
  namespace    = "oci_lbaas"

  query = <<-EOF
    FailedSSLClientCertVerify[5m]{resourceId = "${var.load_balancer_id}"}.Sum() > 10
  EOF

  defined_tags = var.defined_tags
}

# ------------------------------------------------------------------------------
# HTTP 5XX RESPONSES
# ------------------------------------------------------------------------------

module "http_5xx_responses_alarm" {
  source = "../generic-alarm"

  for_each = toset(var.backend_sets)

  compartment_id        = var.compartment_id
  notification_topic_id = var.notification_topic_id

  display_name = format("%s-lb-http-5xx-responses-%s", var.load_balancer_name, each.value)
  severity     = var.severity
  namespace    = "oci_lbaas"

  query = <<-EOF
    HttpResponses5xx[5m]{backendSetName = "${each.value}", resourceId = "${var.load_balancer_id}"}.Mean() > 10
  EOF

  defined_tags = var.defined_tags
}

# ------------------------------------------------------------------------------
# UNHEALTHY BACKEND SERVERS
# ------------------------------------------------------------------------------

module "unhealthy_backend_servers_alarm" {
  source = "../generic-alarm"

  for_each = toset(var.backend_sets)

  compartment_id        = var.compartment_id
  notification_topic_id = var.notification_topic_id

  display_name = format("%s-lb-unhealthy-backend-servers-%s", var.load_balancer_name, each.value)
  severity     = var.severity
  namespace    = "oci_lbaas"

  query = <<-EOF
    UnHealthyBackendServers[5m]{backendSetName = "${each.value}", resourceId = "${var.load_balancer_id}"}.Max() > 0
  EOF

  defined_tags = var.defined_tags
}
