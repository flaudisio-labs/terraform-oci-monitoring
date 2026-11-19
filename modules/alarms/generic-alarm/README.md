# Generic Alarm module

This module can be used to create a customized [Monitoring alarm](https://docs.oracle.com/en-us/iaas/Content/Monitoring/Tasks/managingalarms.htm)
and to be reused by other [alarm modules](../).

## How to use this module?

- See the [repository README](../../../README.md) for instructions on how to use modules.
- See the [examples](../../../examples) folder for sample usage.
- See [variables.tf](variables.tf) for all the variables supported by this module.

<!-- BEGIN_TF_DOCS -->
## Requirements

| Name | Version |
| ---- | ------- |
| <a name="requirement_terraform"></a> [terraform](#requirement\_terraform) | >= 1.3.0 |
| <a name="requirement_oci"></a> [oci](#requirement\_oci) | ~> 9.0 |

## Providers

| Name | Version |
| ---- | ------- |
| <a name="provider_oci"></a> [oci](#provider\_oci) | ~> 9.0 |

## Modules

No modules.

## Resources

| Name | Type |
| ---- | ---- |
| [oci_monitoring_alarm.this](https://registry.terraform.io/providers/oracle/oci/latest/docs/resources/monitoring_alarm) | resource |

## Inputs

| Name | Description | Type | Default | Required |
| ---- | ----------- | ---- | ------- | :------: |
| <a name="input_compartment_id"></a> [compartment\_id](#input\_compartment\_id) | The OCID of the compartment to deploy the alarm to | `string` | n/a | yes |
| <a name="input_display_name"></a> [display\_name](#input\_display\_name) | A user-friendly name for the alarm | `string` | n/a | yes |
| <a name="input_namespace"></a> [namespace](#input\_namespace) | The source service or application emitting the metric that is evaluated by the alarm | `string` | n/a | yes |
| <a name="input_notification_topic_id"></a> [notification\_topic\_id](#input\_notification\_topic\_id) | The OCID of the Notifications topic to deliver the alarm to | `string` | n/a | yes |
| <a name="input_query"></a> [query](#input\_query) | The Monitoring Query Language (MQL) expression to evaluate for the alarm | `string` | n/a | yes |
| <a name="input_severity"></a> [severity](#input\_severity) | The perceived type of response required when the alarm is in the `FIRING` state | `string` | n/a | yes |
| <a name="input_defined_tags"></a> [defined\_tags](#input\_defined\_tags) | Map of key-value tags to be applied to resources | `map(string)` | `{}` | no |
| <a name="input_is_enabled"></a> [is\_enabled](#input\_is\_enabled) | Whether the alarm is enabled | `bool` | `true` | no |
| <a name="input_is_notifications_per_metric_dimension_enabled"></a> [is\_notifications\_per\_metric\_dimension\_enabled](#input\_is\_notifications\_per\_metric\_dimension\_enabled) | When set to `true`, splits notifications per metric stream. When set to `false`, groups notifications across metric streams | `bool` | `false` | no |
| <a name="input_message_format"></a> [message\_format](#input\_message\_format) | The format to use for notification messages sent from this alarm. Allowed values: `RAW`, `PRETTY_JSON`, `ONS_OPTIMIZED` | `string` | `"ONS_OPTIMIZED"` | no |
| <a name="input_metric_compartment_id"></a> [metric\_compartment\_id](#input\_metric\_compartment\_id) | The OCID of the compartment containing the metric being evaluated by the alarm | `string` | `""` | no |
| <a name="input_pending_duration"></a> [pending\_duration](#input\_pending\_duration) | The period of time that the condition defined in the alarm must persist before the alarm state changes from `OK` to `FIRING` | `string` | `"PT5M"` | no |
| <a name="input_resolution"></a> [resolution](#input\_resolution) | The time between calculated aggregation windows for the alarm | `string` | `"1m"` | no |

## Outputs

| Name | Description |
| ---- | ----------- |
| <a name="output_id"></a> [id](#output\_id) | The ID of the alarm |
| <a name="output_name"></a> [name](#output\_name) | The name of the alarm |
<!-- END_TF_DOCS -->
