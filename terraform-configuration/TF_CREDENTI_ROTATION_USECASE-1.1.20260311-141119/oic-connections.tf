
# RESTINVOKE
resource "oic_oicconnection" "restinvoke" {
  connection_id = "RESTINVOKE"
  project_id    = oic_oicproject.tf_credenti_rotation_usecase_deploymentv1.code
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


  depends_on = [oic_oicproject.tf_credenti_rotation_usecase_deploymentv1]

}


