# Complete

Complete example using all supported module inputs.

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

<!-- BEGINNING OF PRE-COMMIT-TERRAFORM DOCS HOOK -->
## Requirements

No requirements.

## Providers

No providers.

## Modules

| Name | Source | Version |
|------|--------|---------|
| <a name="module_monitoring"></a> [monitoring](#module\_monitoring) | ../../ | n/a |

## Resources

No resources.

## Inputs

| Name | Description | Type | Default | Required |
|------|-------------|------|---------|:--------:|
| <a name="input_name"></a> [name](#input\_name) | The resource name | `string` | `"tf-example-complete"` | no |

## Outputs

| Name | Description |
|------|-------------|
| <a name="output_id"></a> [id](#output\_id) | The resource ID |
| <a name="output_name"></a> [name](#output\_name) | The resource name |
<!-- END OF PRE-COMMIT-TERRAFORM DOCS HOOK -->
