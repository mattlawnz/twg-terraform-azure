variable "tags" {
  type    = map(string)
  default   = {
      "environment"             = "dev",
      "backup"                  = "false",
      "created_by"              = "jourdan.templeton@awaregroup.com",
      "data_classification"     = "Restricted",
      "hours_of_operation"      = "24x5",
      "owner"                   = "IS",
      "git_repo"                = "https://github.com/jourdant/twg-terraform"
      "pipeline"                = "pipeline1"
  }
}