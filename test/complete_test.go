package test

import (
	"fmt"
	"testing"

	"github.com/gruntwork-io/terratest/modules/random"
	"github.com/gruntwork-io/terratest/modules/terraform"
	test_structure "github.com/gruntwork-io/terratest/modules/test-structure"
	"github.com/stretchr/testify/assert"
)

func TestComplete(t *testing.T) {
	t.Parallel()

	workingDir := "../examples/complete"

	stage := test_structure.RunTestStage

	defer stage(t, "cleanup", func() {
		terraformOptions := test_structure.LoadTerraformOptions(t, workingDir)

		terraform.Destroy(t, terraformOptions)
	})

	stage(t, "init", func() {
		resourceName := fmt.Sprintf("tf-example-complete-%s", random.UniqueId())

		terraformOptions := &terraform.Options{
			TerraformDir: workingDir,

			Vars: map[string]interface{}{
				"name": resourceName,
			},
		}

		// Save the generated resource name for later tests
		test_structure.SaveString(t, workingDir, "resourceName", resourceName)

		// Save Terraform options so future test stages can reuse them
		test_structure.SaveTerraformOptions(t, workingDir, terraformOptions)

		terraform.Init(t, terraformOptions)
	})

	stage(t, "deploy", func() {
		terraformOptions := test_structure.LoadTerraformOptions(t, workingDir)

		terraform.Plan(t, terraformOptions)
		terraform.ApplyAndIdempotent(t, terraformOptions)
	})

	stage(t, "validate", func() {
		terraformOptions := test_structure.LoadTerraformOptions(t, workingDir)

		// Load the previously saved resource name
		expectedResourceName := test_structure.LoadString(t, workingDir, "resourceName")

		deployedResourceName := terraform.Output(t, terraformOptions, "name")

		assert.Equal(t, deployedResourceName, expectedResourceName)
	})
}
