variable "azure_env" {
    type    = map(string)
    default = {
        tenant_id       = "",
        subscription_id = "",
        
        #https://www.terraform.io/docs/providers/azurerm/guides/service_principal_client_secret.html#creating-a-service-principal-using-the-azure-cli
        client_id       = "",
        client_secret   = "",
    }
}


variable "tags" {
  type    = map(string)
  default   = {
      "environment"             = "dev",
      "backup"                  = "false",
      "created_by"              = "",
      "data_classification"     = "Restricted",
      "hours_of_operation"      = "24x5",
      "owner"                   = "IS",
      "git_repo"                = ""
      "pipeline"                = ""
  }
}