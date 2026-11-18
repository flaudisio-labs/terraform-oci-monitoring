# Load Balancer Alarms module

This module can be used to create alarms that are fired according to [Load Balancer metrics](https://docs.oracle.com/en-us/iaas/Content/Balance/Reference/loadbalancermetrics.htm).

## How to use this module?

- See the [repository README](../../../README.md) for instructions on how to use modules.
- See the [examples](../../../examples) folder for sample usage.
- See [variables.tf](variables.tf) for all the variables supported by this module.

<!-- BEGIN_TF_DOCS -->
## Requirements

| Name | Version |
|------|---------|
| <a name="requirement_terraform"></a> [terraform](#requirement\_terraform) | >= 1.3.0 |
| <a name="requirement_oci"></a> [oci](#requirement\_oci) | ~> 4.0 |

## Providers

No providers.

## Modules

| Name | Source | Version |
|------|--------|---------|
| <a name="module_failed_ssl_client_cert_verify_alarm"></a> [failed\_ssl\_client\_cert\_verify\_alarm](#module\_failed\_ssl\_client\_cert\_verify\_alarm) | ../generic-alarm | n/a |
| <a name="module_http_5xx_responses_alarm"></a> [http\_5xx\_responses\_alarm](#module\_http\_5xx\_responses\_alarm) | ../generic-alarm | n/a |
| <a name="module_unhealthy_backend_servers_alarm"></a> [unhealthy\_backend\_servers\_alarm](#module\_unhealthy\_backend\_servers\_alarm) | ../generic-alarm | n/a |

## Resources

No resources.

## Inputs

| Name | Description | Type | Default | Required |
|------|-------------|------|---------|:--------:|
| <a name="input_backend_sets"></a> [backend\_sets](#input\_backend\_sets) | The list of backend set names of the load balancer being monitored | `list(string)` | n/a | yes |
| <a name="input_compartment_id"></a> [compartment\_id](#input\_compartment\_id) | The OCID of the compartment to deploy the alarm to | `string` | n/a | yes |
| <a name="input_load_balancer_id"></a> [load\_balancer\_id](#input\_load\_balancer\_id) | The OCID of the load balancer being monitored | `string` | n/a | yes |
| <a name="input_load_balancer_name"></a> [load\_balancer\_name](#input\_load\_balancer\_name) | The name of the load balancer being monitored | `string` | n/a | yes |
| <a name="input_notification_topic_id"></a> [notification\_topic\_id](#input\_notification\_topic\_id) | The OCID of the Notifications topic to deliver the alarm to | `string` | n/a | yes |
| <a name="input_defined_tags"></a> [defined\_tags](#input\_defined\_tags) | Map of key-value tags to be applied to resources | `map(string)` | `{}` | no |
| <a name="input_severity"></a> [severity](#input\_severity) | The perceived type of response required when the alarm is in the `FIRING` state | `string` | `"WARNING"` | no |

## Outputs

| Name | Description |
|------|-------------|
| <a name="output_failed_ssl_client_cert_verify_alarm_ids"></a> [failed\_ssl\_client\_cert\_verify\_alarm\_ids](#output\_failed\_ssl\_client\_cert\_verify\_alarm\_ids) | The ID of the failed client SSL cert verifications alarm |
| <a name="output_failed_ssl_client_cert_verify_alarm_names"></a> [failed\_ssl\_client\_cert\_verify\_alarm\_names](#output\_failed\_ssl\_client\_cert\_verify\_alarm\_names) | The name of the failed client SSL cert verifications alarm |
| <a name="output_http_5xx_responses_alarm_ids"></a> [http\_5xx\_responses\_alarm\_ids](#output\_http\_5xx\_responses\_alarm\_ids) | The IDs of the HTTP 5xx responses alarms |
| <a name="output_http_5xx_responses_alarm_names"></a> [http\_5xx\_responses\_alarm\_names](#output\_http\_5xx\_responses\_alarm\_names) | The names of the HTTP 5xx responses alarms |
| <a name="output_unhealthy_backend_servers_alarm_ids"></a> [unhealthy\_backend\_servers\_alarm\_ids](#output\_unhealthy\_backend\_servers\_alarm\_ids) | The IDs of the unhealthy backend servers alarms |
| <a name="output_unhealthy_backend_servers_alarm_names"></a> [unhealthy\_backend\_servers\_alarm\_names](#output\_unhealthy\_backend\_servers\_alarm\_names) | The names of the unhealthy backend servers alarms |
<!-- END_TF_DOCS -->
