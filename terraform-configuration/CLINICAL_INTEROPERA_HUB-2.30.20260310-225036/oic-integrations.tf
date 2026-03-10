
# ADT_A03 (01.00.0000)
resource "oic_oicintegration" "adt_a03_01_00_0000" {
  project_id = oic_oicproject.clinical_interopera_hub_cih_deploymentv1.code
  code       = "ADT_A03"
  version    = "01.00.0000"
  status     = var.integrations["ADT_A03|01.00.0000"].status

  tracing_enabled_flag         = false
  payload_tracing_enabled_flag = false
  record_enabled_flag          = false
  soft_deactivate              = false

  payload {
    validate = false
  }

  depends_on = [oic_oicproject.clinical_interopera_hub_cih_deploymentv1, oic_oicconnection.sampleresttrigger, oic_oicconnection.weatherconnection]

}


# ADT_A03 (01.01.0000)
resource "oic_oicintegration" "adt_a03_01_01_0000" {
  project_id = oic_oicproject.clinical_interopera_hub_cih_deploymentv1.code
  code       = "ADT_A03"
  version    = "01.01.0000"
  status     = var.integrations["ADT_A03|01.01.0000"].status

  tracing_enabled_flag         = false
  payload_tracing_enabled_flag = false
  record_enabled_flag          = false
  soft_deactivate              = false

  payload {
    validate = false
  }

  depends_on = [oic_oicproject.clinical_interopera_hub_cih_deploymentv2, oic_oicconnection.sampleresttrigger, oic_oicconnection.weatherconnection]

}


# GETWEATHERINFO_OPENMETEO (01.00.0000)
resource "oic_oicintegration" "getweatherinfo_openmeteo_01_00_0000" {
  project_id = oic_oicproject.clinical_interopera_hub_cih_deploymentv1.code
  code       = "GETWEATHERINFO_OPENMETEO"
  version    = "01.00.0000"
  status     = var.integrations["GETWEATHERINFO_OPENMETEO|01.00.0000"].status

  tracing_enabled_flag         = false
  payload_tracing_enabled_flag = false
  record_enabled_flag          = false
  soft_deactivate              = false

  payload {
    validate = false
  }

  depends_on = [oic_oicproject.clinical_interopera_hub_cih_deploymentv1, oic_oicproject.clinical_interopera_hub_cih_deploymentv2, oic_oicconnection.sampleresttrigger, oic_oicconnection.weatherconnection]

}


# GETWEATHERINFO_OPENWEATHER (01.00.0000)
resource "oic_oicintegration" "getweatherinfo_openweather_01_00_0000" {
  project_id = oic_oicproject.clinical_interopera_hub_cih_deploymentv1.code
  code       = "GETWEATHERINFO_OPENWEATHER"
  version    = "01.00.0000"
  status     = var.integrations["GETWEATHERINFO_OPENWEATHER|01.00.0000"].status

  tracing_enabled_flag         = false
  payload_tracing_enabled_flag = false
  record_enabled_flag          = false
  soft_deactivate              = false

  payload {
    validate = false
  }

  depends_on = [oic_oicproject.clinical_interopera_hub_cih_deploymentv1, oic_oicproject.clinical_interopera_hub_cih_deploymentv2, oic_oicconnection.sampleresttrigger, oic_oicconnection.weatherconnection]

}


# RLN_ORU_R01 (01.00.0000)
resource "oic_oicintegration" "rln_oru_r01_01_00_0000" {
  project_id = oic_oicproject.clinical_interopera_hub_cih_deploymentv1.code
  code       = "RLN_ORU_R01"
  version    = "01.00.0000"
  status     = var.integrations["RLN_ORU_R01|01.00.0000"].status

  tracing_enabled_flag         = false
  payload_tracing_enabled_flag = false
  record_enabled_flag          = false
  soft_deactivate              = false

  payload {
    validate = false
  }

  depends_on = [oic_oicproject.clinical_interopera_hub_cih_deploymentv1, oic_oicconnection.sampleresttrigger, oic_oicconnection.weatherconnection]

}


# RLN_ORU_R01 (01.01.0000)
resource "oic_oicintegration" "rln_oru_r01_01_01_0000" {
  project_id = oic_oicproject.clinical_interopera_hub_cih_deploymentv1.code
  code       = "RLN_ORU_R01"
  version    = "01.01.0000"
  status     = var.integrations["RLN_ORU_R01|01.01.0000"].status

  tracing_enabled_flag         = false
  payload_tracing_enabled_flag = false
  record_enabled_flag          = false
  soft_deactivate              = false

  payload {
    validate = false
  }

  depends_on = [oic_oicproject.clinical_interopera_hub_cih_deploymentv2, oic_oicconnection.sampleresttrigger, oic_oicconnection.weatherconnection]

}


