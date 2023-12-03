// Airbyte Terraform provider documentation: https://registry.terraform.io/providers/airbytehq/airbyte/latest/docs

// Sources
resource "airbyte_source_faker" "faker" {
  configuration = {
    always_updated    = false
    count             = 1000
    parallelism       = 9
    records_per_slice = 10
    seed              = 6
    source_type       = "faker"
  }
  name         = "Faker"
  workspace_id = var.workspace_id
}
