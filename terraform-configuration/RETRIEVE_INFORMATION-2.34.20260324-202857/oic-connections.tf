
# RESTINVOKE
resource "oic_oicconnection" "restinvoke" {
  connection_id = "RESTINVOKE"
  project_id    = oic_oicproject.retrieve_information_deploymentv2.code
  name            = "RestInvoke"
  security_policy = "BASIC_AUTH"
  role            = "SOURCE_AND_TARGET"
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
    property_value = var.connections["restinvoke"]["connectionurl"]
  }


  security_properties {
    property_name  = "username"
    property_value = var.connections["restinvoke"]["sec_username"]
  }

  security_properties {
    property_name  = "password"
    property_value = var.connections["restinvoke"]["sec_password"]
  }


  depends_on = [oic_oicproject.retrieve_information_deploymentv1, oic_oicproject.retrieve_information_deploymentv2]

}


# WEATHERCONNECTION
resource "oic_oicconnection" "weatherconnection" {
  connection_id = "WEATHERCONNECTION"
  project_id    = oic_oicproject.retrieve_information_deploymentv2.code
  name            = "WeatherConnection"
  security_policy = "CUSTOM_SINGLE_TOKEN"
  role            = "SOURCE_AND_TARGET"
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


  security_properties {
    property_name  = "accessToken"
    property_value = var.connections["weatherconnection"]["sec_accesstoken"]
  }


  depends_on = [oic_oicproject.retrieve_information_deploymentv2]

}


