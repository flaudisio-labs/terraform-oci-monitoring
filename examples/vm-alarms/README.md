# VM Alarms example

This folder shows an example of how to use the several `vm-*-alarms` modules maintained in this repo.

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
|------|---------|
| <a name="provider_oci"></a> [oci](#provider\_oci) | n/a |

## Modules

| Name | Source | Version |
|------|--------|---------|
| <a name="module_vm_cpu_alarms"></a> [vm\_cpu\_alarms](#module\_vm\_cpu\_alarms) | ../../modules/alarms/vm-cpu-alarms | n/a |
| <a name="module_vm_memory_alarms"></a> [vm\_memory\_alarms](#module\_vm\_memory\_alarms) | ../../modules/alarms/vm-memory-alarms | n/a |

## Resources

| Name | Type |
|------|------|
| [oci_core_instance.this](https://registry.terraform.io/providers/oracle/oci/latest/docs/resources/core_instance) | resource |
| [oci_ons_notification_topic.this](https://registry.terraform.io/providers/oracle/oci/latest/docs/resources/ons_notification_topic) | resource |
| [oci_core_images.this](https://registry.terraform.io/providers/oracle/oci/latest/docs/data-sources/core_images) | data source |
| [oci_core_subnets.this](https://registry.terraform.io/providers/oracle/oci/latest/docs/data-sources/core_subnets) | data source |
| [oci_identity_availability_domain.this](https://registry.terraform.io/providers/oracle/oci/latest/docs/data-sources/identity_availability_domain) | data source |

## Inputs

| Name | Description | Type | Default | Required |
|------|-------------|------|---------|:--------:|
| <a name="input__oci_fingerprint"></a> [\_oci\_fingerprint](#input\_\_oci\_fingerprint) | n/a | `any` | n/a | yes |
| <a name="input__oci_private_key_path"></a> [\_oci\_private\_key\_path](#input\_\_oci\_private\_key\_path) | n/a | `any` | n/a | yes |
| <a name="input__oci_tenancy_ocid"></a> [\_oci\_tenancy\_ocid](#input\_\_oci\_tenancy\_ocid) | n/a | `any` | n/a | yes |
| <a name="input__oci_user_ocid"></a> [\_oci\_user\_ocid](#input\_\_oci\_user\_ocid) | n/a | `any` | n/a | yes |
| <a name="input_compartment_id"></a> [compartment\_id](#input\_compartment\_id) | The OCID of the compartment to which the resources will be deployed | `string` | n/a | yes |
| <a name="input_name"></a> [name](#input\_name) | A name to identify all resources deployed by this example | `string` | `"vm-alarms-example"` | no |

## Outputs

| Name | Description |
|------|-------------|
| <a name="output_high_cpu_utilization_alarm_id"></a> [high\_cpu\_utilization\_alarm\_id](#output\_high\_cpu\_utilization\_alarm\_id) | The ID of the high CPU utilization alarm |
| <a name="output_high_cpu_utilization_alarm_name"></a> [high\_cpu\_utilization\_alarm\_name](#output\_high\_cpu\_utilization\_alarm\_name) | The name of the high CPU utilization alarm |
| <a name="output_high_load_average_alarm_id"></a> [high\_load\_average\_alarm\_id](#output\_high\_load\_average\_alarm\_id) | The ID of the high load average alarm |
| <a name="output_high_load_average_alarm_name"></a> [high\_load\_average\_alarm\_name](#output\_high\_load\_average\_alarm\_name) | The name of the high load average alarm |
| <a name="output_high_memory_utilization_alarm_id"></a> [high\_memory\_utilization\_alarm\_id](#output\_high\_memory\_utilization\_alarm\_id) | The ID of the high memory utilization alarm |
| <a name="output_high_memory_utilization_alarm_name"></a> [high\_memory\_utilization\_alarm\_name](#output\_high\_memory\_utilization\_alarm\_name) | The name of the high memory utilization alarm |
<!-- END_TF_DOCS -->
