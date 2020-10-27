module "rg_aks_label" {
  source      = "cloudposse/label/null"
  version     = "0.18.0"
  environment = var.tags.environment
  name        = "aks"
  namespace   = "twg"
  attributes  = []
  delimiter   = "_"
  #stage       = random_string.suffix.id
  #label_order = ["namespace", "name", "environment", "stage"]
  label_order = ["namespace", "name", "environment"]
  tags = {
    "twg_backup"               = var.tags.backup,
    "twg_created_by"           = var.tags.created_by,
    "twg_data_classification"  = var.tags.data_classification,
    "twg_environment"          = var.tags.environment,
    "twg_hours_of_operation"   = var.tags.hours_of_operation,
    "twg_owner"                = var.tags.owner,
    "twg_version"              = "1.0",
    "twg_application_role"     = "aks dev",
    "twg_application_name"     = "aks dev",
    "twg_project"              = "K8s Dev Environment",
    "twg_development_language" = "yaml",
    "twg_description"          = "Kubernets CLuster for Development and Test",
    "twg_git_repo"             = var.tags.git_repo,
    "twg_pipeline"             = var.tags.pipeline,
  }
}

resource "azurerm_resource_group" "rg" {
  name     = module.rg_aks_label.id
  tags     = module.rg_aks_label.tags
  location = "westus2"
}