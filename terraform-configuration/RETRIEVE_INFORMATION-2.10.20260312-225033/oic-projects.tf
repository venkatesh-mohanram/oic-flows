
resource "oic_oicproject" "retrieve_information_deploymentv1" {
  file_location = "${path.module}/DEPLOYMENTV1.car"
  code = "RETRIEVE_INFORMATION"

}


resource "oic_oicproject" "retrieve_information_deploymentv2" {
  file_location = "${path.module}/DEPLOYMENTV2.car"
  code = "RETRIEVE_INFORMATION"

  depends_on = [oic_oicproject.retrieve_information_deploymentv1]

}


