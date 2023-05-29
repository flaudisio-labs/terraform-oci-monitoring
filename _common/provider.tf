terraform {
  required_providers {
    oci = {
      source = "oracle/oci"
    }
  }
}

variable "_oci_tenancy_ocid" {}
variable "_oci_user_ocid" {}
variable "_oci_fingerprint" {}
variable "_oci_private_key_path" {}

provider "oci" {
  tenancy_ocid     = var._oci_tenancy_ocid
  user_ocid        = var._oci_user_ocid
  fingerprint      = var._oci_fingerprint
  private_key_path = var._oci_private_key_path

  region = "sa-saopaulo-1"
}
