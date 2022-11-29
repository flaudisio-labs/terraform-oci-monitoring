# OCI Monitoring modules

This repo contains modules for deploying and managing [Monitoring](https://docs.oracle.com/en-us/iaas/Content/Monitoring/Concepts/monitoringoverview.htm) resources:

- [alarms](modules/alarms): a collection of alarms for a variety of metrics (e.g. CPU usage, memory usage, etc.) to be
  added to VM instances and other resources.

Click on each module above to see its documentation. See the [examples](examples) folder for working usage examples.

## Using a Terraform module

To use a module in your Terraform templates, set the `source` argument to the Git URL of this repo. You should also set
the `ref` parameter to a specific version, as the `main` branch will occasionally have backward incompatible changes.

For example, to use `v0.5.1` of the `vm-cpu-alarms` module:

```hcl
module "vm_cpu_alarms" {
  source = "git::ssh://git@github.com/fcorp-team/terraform-oci-monitoring.git//modules/alarms/vm-cpu-alarms?ref=v0.5.1"

  # Inputs for the vm-cpu-alarms module
  instance_name = "my-instance"
  instance_id   = "ocid1.instance.oc1.EXAMPLE"
  # ...
}
```

## Tests

See the [test](test) folder for details.

## License

© 2022 FCorp
