terraform {
  required_providers {
    oic = {
      source  = "oracle/oic"
      version = "1.33.187"
    }
  }
}

locals {
  TF_CONFIGURATION_VERSION = "2.10.20260312-050811"
}

provider "oic" {
  mode                    = var.MODE
  base_url                = var.OIC_BASE_URL
  instance                = var.OIC_INSTANCE
  import_project_rel_path = var.OIC_IMPORT_PROJECT_REL_PATH
  auth_url                = var.OIC_AUTH_URL
  client_id               = var.OIC_CLIENT_ID
  client_secret           = var.OIC_CLIENT_SECRET
  scope                   = var.OIC_SCOPE
  secret_strategy         = var.OIC_SECRET_STRATEGY
  auth_type               = var.OCI_AUTH_TYPE
}
