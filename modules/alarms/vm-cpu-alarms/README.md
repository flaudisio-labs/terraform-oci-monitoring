# VM CPU Alarms module

This module can be used to create alarms that are fired when the CPU usage on a VM instance gets too high.

## How to use this module?

- See the [repository README](../../../README.md) for instructions on how to use modules.
- See the [examples](../../../examples) folder for sample usage.
- See [variables.tf](variables.tf) for all the variables supported by this module.

<!-- BEGINNING OF PRE-COMMIT-TERRAFORM DOCS HOOK -->
## Requirements

| Name | Version |
|------|---------|
| <a name="requirement_terraform"></a> [terraform](#requirement\_terraform) | >= 1.3.0 |
| <a name="requirement_oci"></a> [oci](#requirement\_oci) | ~> 4.0 |

## Providers

| Name | Version |
|------|---------|
| <a name="provider_oci"></a> [oci](#provider\_oci) | ~> 4.0 |

## Modules

| Name | Source | Version |
|------|--------|---------|
| <a name="module_high_cpu_utilization_alarm"></a> [high\_cpu\_utilization\_alarm](#module\_high\_cpu\_utilization\_alarm) | ../generic-alarm | n/a |
| <a name="module_high_load_average_alarm"></a> [high\_load\_average\_alarm](#module\_high\_load\_average\_alarm) | ../generic-alarm | n/a |

## Resources

| Name | Type |
|------|------|
| [oci_core_instance.this](https://registry.terraform.io/providers/oracle/oci/latest/docs/data-sources/core_instance) | data source |

## Inputs

| Name | Description | Type | Default | Required |
|------|-------------|------|---------|:--------:|
| <a name="input_compartment_id"></a> [compartment\_id](#input\_compartment\_id) | The OCID of the compartment to deploy the alarm to | `string` | n/a | yes |
| <a name="input_instance_id"></a> [instance\_id](#input\_instance\_id) | The OCID of the VM instance being monitored | `string` | n/a | yes |
| <a name="input_instance_name"></a> [instance\_name](#input\_instance\_name) | The name of the VM instance being monitored | `string` | n/a | yes |
| <a name="input_notification_topic_id"></a> [notification\_topic\_id](#input\_notification\_topic\_id) | The OCID of the Notifications topic to deliver the alarm to | `string` | n/a | yes |
| <a name="input_defined_tags"></a> [defined\_tags](#input\_defined\_tags) | Map of key-value tags to be applied to resources | `map(string)` | `{}` | no |
| <a name="input_severity"></a> [severity](#input\_severity) | The perceived type of response required when the alarm is in the `FIRING` state | `string` | `"WARNING"` | no |

## Outputs

| Name | Description |
|------|-------------|
| <a name="output_high_cpu_utilization_alarm_id"></a> [high\_cpu\_utilization\_alarm\_id](#output\_high\_cpu\_utilization\_alarm\_id) | The ID of the high CPU utilization alarm |
| <a name="output_high_cpu_utilization_alarm_name"></a> [high\_cpu\_utilization\_alarm\_name](#output\_high\_cpu\_utilization\_alarm\_name) | The name of the high CPU utilization alarm |
| <a name="output_high_load_average_alarm_id"></a> [high\_load\_average\_alarm\_id](#output\_high\_load\_average\_alarm\_id) | The ID of the high load average alarm |
| <a name="output_high_load_average_alarm_name"></a> [high\_load\_average\_alarm\_name](#output\_high\_load\_average\_alarm\_name) | The name of the high load average alarm |
<!-- END OF PRE-COMMIT-TERRAFORM DOCS HOOK -->
