
# RETRIEVECONTACTS (01.00.0000)
resource "oic_oicintegration" "retrievecontacts_01_00_0000" {
  project_id = oic_oicproject.retrieve_information_deploymentv1.code
  code       = "RETRIEVECONTACTS"
  version    = "01.00.0000"
  status     = var.integrations["RETRIEVECONTACTS|01.00.0000"].status

  tracing_enabled_flag         = false
  payload_tracing_enabled_flag = false
  record_enabled_flag          = false
  soft_deactivate              = false

  payload {
    validate = false
  }

  depends_on = [oic_oicproject.retrieve_information_deploymentv1, oic_oicconnection.restinvoke]

}


# RETRIEVECONTACTS (01.01.0000)
resource "oic_oicintegration" "retrievecontacts_01_01_0000" {
  project_id = oic_oicproject.retrieve_information_deploymentv1.code
  code       = "RETRIEVECONTACTS"
  version    = "01.01.0000"
  status     = var.integrations["RETRIEVECONTACTS|01.01.0000"].status

  tracing_enabled_flag         = false
  payload_tracing_enabled_flag = false
  record_enabled_flag          = false
  soft_deactivate              = false

  payload {
    validate = false
  }

  depends_on = [oic_oicproject.retrieve_information_deploymentv2, oic_oicconnection.restinvoke]

}


# RETRIEVEWEATHER (01.00.0000)
resource "oic_oicintegration" "retrieveweather_01_00_0000" {
  project_id = oic_oicproject.retrieve_information_deploymentv1.code
  code       = "RETRIEVEWEATHER"
  version    = "01.00.0000"
  status     = var.integrations["RETRIEVEWEATHER|01.00.0000"].status

  tracing_enabled_flag         = false
  payload_tracing_enabled_flag = false
  record_enabled_flag          = false
  soft_deactivate              = false

  payload {
    validate = false
  }

  depends_on = [oic_oicproject.retrieve_information_deploymentv2, oic_oicconnection.weatherconnection]

}


