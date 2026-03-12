variable "MODE" {
  type = string
  default = "EXTERNAL"
}

variable "OIC_BASE_URL" {
  type = string
  default = "NotAvailable"
}

variable "OIC_INSTANCE" {
  type = string
  default = "NotAvailable"
}

variable "OIC_IMPORT_PROJECT_REL_PATH" {
  type = string
  default = "/projects/archive"
}

variable "OIC_AUTH_URL" {
  type = string
  default = "NotAvailable"
}

variable "OIC_CLIENT_ID" {
  type = string
  default = "NotAvailable"
}

variable "OIC_CLIENT_SECRET" {
  type      = string
  sensitive = true
  default = "NotAvailable"
}

variable "OIC_SCOPE" {
  type = string
  default = "NotAvailable"
}

variable "OIC_SECRET_STRATEGY" {
  type = string
  default = "vault"
}

variable "OCI_AUTH_TYPE" {
  type = string
  default = "obotoken"
}

# Values formerly emitted into locals.tf; now emitted into terraform.tfvars.json
variable "connections" {
  description = "Connection parameter values keyed by connection tf name."
  type        = map(map(string))
  default     = {}
}

variable "integrations" {
  description = "Integration values keyed by <code>|<version>."
  type = map(object({
    status = string
  }))
  default = {}
}
