# VM Memory Alarms module

This module can be used to create alarms that are fired when the memory usage on a VM instance gets too high.

## How to use this module?

- See the [repository README](../../../README.md) for instructions on how to use modules.
- See the [examples](../../../examples) folder for sample usage.
- See [variables.tf](variables.tf) for all the variables supported by this module.

<!-- BEGIN_TF_DOCS -->
## Requirements

| Name | Version |
| ---- | ------- |
| <a name="requirement_terraform"></a> [terraform](#requirement\_terraform) | >= 1.3.0 |
| <a name="requirement_oci"></a> [oci](#requirement\_oci) | ~> 4.0 |

## Providers

No providers.

## Modules

| Name | Source | Version |
| ---- | ------ | ------- |
| <a name="module_high_memory_utilization_alarm"></a> [high\_memory\_utilization\_alarm](#module\_high\_memory\_utilization\_alarm) | ../generic-alarm | n/a |

## Resources

No resources.

## Inputs

| Name | Description | Type | Default | Required |
| ---- | ----------- | ---- | ------- | :------: |
| <a name="input_compartment_id"></a> [compartment\_id](#input\_compartment\_id) | The OCID of the compartment to deploy the alarm to | `string` | n/a | yes |
| <a name="input_instance_id"></a> [instance\_id](#input\_instance\_id) | The OCID of the VM instance being monitored | `string` | n/a | yes |
| <a name="input_instance_name"></a> [instance\_name](#input\_instance\_name) | The name of the VM instance being monitored | `string` | n/a | yes |
| <a name="input_notification_topic_id"></a> [notification\_topic\_id](#input\_notification\_topic\_id) | The OCID of the Notifications topic to deliver the alarm to | `string` | n/a | yes |
| <a name="input_defined_tags"></a> [defined\_tags](#input\_defined\_tags) | Map of key-value tags to be applied to resources | `map(string)` | `{}` | no |
| <a name="input_severity"></a> [severity](#input\_severity) | The perceived type of response required when the alarm is in the `FIRING` state | `string` | `"WARNING"` | no |

## Outputs

| Name | Description |
| ---- | ----------- |
| <a name="output_high_memory_utilization_alarm_id"></a> [high\_memory\_utilization\_alarm\_id](#output\_high\_memory\_utilization\_alarm\_id) | The ID of the high memory utilization alarm |
| <a name="output_high_memory_utilization_alarm_name"></a> [high\_memory\_utilization\_alarm\_name](#output\_high\_memory\_utilization\_alarm\_name) | The name of the high memory utilization alarm |
<!-- END_TF_DOCS -->
