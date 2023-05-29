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

	workingDir := "../examples/lb-alarms"

	stage := test_structure.RunTestStage

	defer stage(t, "cleanup", func() {
		terraformOptions := test_structure.LoadTerraformOptions(t, workingDir)

		terraform.Destroy(t, terraformOptions)
	})

	stage(t, "init", func() {
		terraformOptions := &terraform.Options{
			TerraformDir: workingDir,

			Vars: map[string]interface{}{
				"name": fmt.Sprintf("lb-alarms-example-%s", random.UniqueId()),
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
			"failed_ssl_client_cert_verify_alarm_ids",
			"failed_ssl_client_cert_verify_alarm_names",
			"http_5xx_responses_alarm_ids",
			"http_5xx_responses_alarm_names",
			"unhealthy_backend_servers_alarm_ids",
			"unhealthy_backend_servers_alarm_names",
		}

		for _, outputName := range expectedOutputs {
			_, err := terraform.OutputE(t, terraformOptions, outputName)

			assert.NoError(t, err, fmt.Sprintf("Expected output not found: %s", outputName))
		}
	})
}
