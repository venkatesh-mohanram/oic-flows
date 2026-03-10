
# SAMPLERESTTRIGGER
resource "oic_oicconnection" "sampleresttrigger" {
  connection_id = "SAMPLERESTTRIGGER"
  project_id    = oic_oicproject.clinical_interopera_hub_cih_deploymentv1.code
  name            = "SampleRestTrigger"
  security_policy = "OAUTH_INBOUND"
  role            = "SOURCE"
  scope           = "PRIVATE"

  adapter {
    name = "rest"
  }



  depends_on = [oic_oicproject.clinical_interopera_hub_cih_deploymentv1, oic_oicproject.clinical_interopera_hub_cih_deploymentv2]

}


# WEATHERCONNECTION
resource "oic_oicconnection" "weatherconnection" {
  connection_id = "WEATHERCONNECTION"
  project_id    = oic_oicproject.clinical_interopera_hub_cih_deploymentv1.code
  name            = "WeatherConnection"
  security_policy = "NONE"
  role            = "TARGET"
  scope           = "PRIVATE"

  adapter {
    name = "rest"
  }

  connection_properties {
    property_name  = "connectionType"
    property_value = "restUrl"
  }

  connection_properties {
    property_name  = "connectionUrl"
    property_value = var.connections["weatherconnection"]["connectionurl"]
  }



  depends_on = [oic_oicproject.clinical_interopera_hub_cih_deploymentv1, oic_oicproject.clinical_interopera_hub_cih_deploymentv2]

}


