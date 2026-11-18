# Load Balancer Alarms example

This folder shows an example of how to use the `lb-alarms` module maintained in this repo.

## Usage

To apply this example, run:

```console
$ terraform init
$ terraform plan
$ terraform apply
```

To destroy the provisioned resources:

```console
$ terraform destroy
```

<!-- BEGIN_TF_DOCS -->
## Requirements

No requirements.

## Providers

| Name | Version |
| ---- | ------- |
| <a name="provider_oci"></a> [oci](#provider\_oci) | n/a |

## Modules

| Name | Source | Version |
| ---- | ------ | ------- |
| <a name="module_lb_alarms"></a> [lb\_alarms](#module\_lb\_alarms) | ../../modules/alarms/lb-alarms | n/a |

## Resources

| Name | Type |
| ---- | ---- |
| [oci_ons_notification_topic.this](https://registry.terraform.io/providers/oracle/oci/latest/docs/resources/ons_notification_topic) | resource |

## Inputs

| Name | Description | Type | Default | Required |
| ---- | ----------- | ---- | ------- | :------: |
| <a name="input__oci_fingerprint"></a> [\_oci\_fingerprint](#input\_\_oci\_fingerprint) | n/a | `any` | n/a | yes |
| <a name="input__oci_private_key_path"></a> [\_oci\_private\_key\_path](#input\_\_oci\_private\_key\_path) | n/a | `any` | n/a | yes |
| <a name="input__oci_tenancy_ocid"></a> [\_oci\_tenancy\_ocid](#input\_\_oci\_tenancy\_ocid) | n/a | `any` | n/a | yes |
| <a name="input__oci_user_ocid"></a> [\_oci\_user\_ocid](#input\_\_oci\_user\_ocid) | n/a | `any` | n/a | yes |
| <a name="input_compartment_id"></a> [compartment\_id](#input\_compartment\_id) | The OCID of the compartment to which the resources will be deployed | `string` | n/a | yes |
| <a name="input_name"></a> [name](#input\_name) | A name to identify all resources deployed by this example | `string` | `"lb-alarms-example"` | no |

## Outputs

| Name | Description |
| ---- | ----------- |
| <a name="output_failed_ssl_client_cert_verify_alarm_ids"></a> [failed\_ssl\_client\_cert\_verify\_alarm\_ids](#output\_failed\_ssl\_client\_cert\_verify\_alarm\_ids) | The ID of the failed client SSL cert verifications alarm |
| <a name="output_failed_ssl_client_cert_verify_alarm_names"></a> [failed\_ssl\_client\_cert\_verify\_alarm\_names](#output\_failed\_ssl\_client\_cert\_verify\_alarm\_names) | The name of the failed client SSL cert verifications alarm |
| <a name="output_http_5xx_responses_alarm_ids"></a> [http\_5xx\_responses\_alarm\_ids](#output\_http\_5xx\_responses\_alarm\_ids) | The IDs of the HTTP 5xx responses alarms |
| <a name="output_http_5xx_responses_alarm_names"></a> [http\_5xx\_responses\_alarm\_names](#output\_http\_5xx\_responses\_alarm\_names) | The names of the HTTP 5xx responses alarms |
| <a name="output_unhealthy_backend_servers_alarm_ids"></a> [unhealthy\_backend\_servers\_alarm\_ids](#output\_unhealthy\_backend\_servers\_alarm\_ids) | The IDs of the unhealthy backend servers alarms |
| <a name="output_unhealthy_backend_servers_alarm_names"></a> [unhealthy\_backend\_servers\_alarm\_names](#output\_unhealthy\_backend\_servers\_alarm\_names) | The names of the unhealthy backend servers alarms |
<!-- END_TF_DOCS -->
