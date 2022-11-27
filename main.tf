# ------------------------------------------------------------------------------
# MONITORING
# ------------------------------------------------------------------------------

# TODO: implement actual resources
#
# Example:
#
# resource "oci_instance" "this" {
#   # Code here...
# }
resource "null_resource" "this" {
  provisioner "local-exec" {
    command = "echo 'Hello ${var.name}!'"
  }
}
