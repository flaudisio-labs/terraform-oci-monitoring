# Terraform Module - OCI - Monitoring

Terraform module to create Monitoring.

## Usage

```hcl
module "monitoring" {
  source = "git::ssh://git@github.com/fcorp-team/terraform-oci-monitoring.git?ref=v0.0.0"

  name = "tf-example-complete"
}
```

## Examples

- [Complete](examples/complete/)

<!-- BEGINNING OF PRE-COMMIT-TERRAFORM DOCS HOOK -->
## Requirements

| Name | Version |
|------|---------|
| <a name="requirement_terraform"></a> [terraform](#requirement\_terraform) | >= 1.3.0 |
| <a name="requirement_oci"></a> [oci](#requirement\_oci) | ~> 4.0 |

## Providers

| Name | Version |
|------|---------|
| <a name="provider_null"></a> [null](#provider\_null) | n/a |

## Modules

No modules.

## Resources

| Name | Type |
|------|------|
| [null_resource.this](https://registry.terraform.io/providers/hashicorp/null/latest/docs/resources/resource) | resource |

## Inputs

| Name | Description | Type | Default | Required |
|------|-------------|------|---------|:--------:|
| <a name="input_name"></a> [name](#input\_name) | The resource name | `string` | n/a | yes |

## Outputs

| Name | Description |
|------|-------------|
| <a name="output_id"></a> [id](#output\_id) | The resource ID |
| <a name="output_name"></a> [name](#output\_name) | The resource name |
<!-- END OF PRE-COMMIT-TERRAFORM DOCS HOOK -->

## License

© 2022 FCorp
