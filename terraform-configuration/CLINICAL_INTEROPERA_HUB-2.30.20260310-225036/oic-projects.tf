
resource "oic_oicproject" "clinical_interopera_hub_cih_deploymentv1" {
  file_location = "${path.module}/CIH_DEPLOYMENTV1.car"
  code = "CLINICAL_INTEROPERA_HUB"

}


resource "oic_oicproject" "clinical_interopera_hub_cih_deploymentv2" {
  file_location = "${path.module}/CIH_DEPLOYMENTV2.car"
  code = "CLINICAL_INTEROPERA_HUB"

  depends_on = [oic_oicproject.clinical_interopera_hub_cih_deploymentv1]

}


