package test

import (
	"fmt"
	"testing"

	"github.com/gruntwork-io/terratest/modules/random"
	"github.com/gruntwork-io/terratest/modules/terraform"
	test_structure "github.com/gruntwork-io/terratest/modules/test-structure"
	"github.com/stretchr/testify/assert"
)

func TestVMAlarms(t *testing.T) {
	t.Parallel()

	workingDir := "../examples/vm-alarms"

	stage := test_structure.RunTestStage

	defer stage(t, "cleanup", func() {
		terraformOptions := test_structure.LoadTerraformOptions(t, workingDir)

		terraform.Destroy(t, terraformOptions)
	})

	stage(t, "init", func() {
		terraformOptions := &terraform.Options{
			TerraformDir: workingDir,

			Vars: map[string]interface{}{
				"name": fmt.Sprintf("vm-alarms-example-%s", random.UniqueId()),
			},
		}

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

		expectedOutputs := []string{
			"high_cpu_utilization_alarm_id",
			"high_cpu_utilization_alarm_name",
			"high_load_average_alarm_id",
			"high_load_average_alarm_name",
			"high_memory_utilization_alarm_id",
			"high_memory_utilization_alarm_name",
		}

		for _, outputName := range expectedOutputs {
			_, err := terraform.OutputE(t, terraformOptions, outputName)

			assert.NoError(t, err, fmt.Sprintf("Expected output not found: %s", outputName))
		}
	})
}
