
resource "oic_oicproject" "tf_credenti_rotation_usecase_deploymentv1" {
  file_location = "${path.module}/DEPLOYMENTV1.car"
  code = "TF_CREDENTI_ROTATION_USECASE"

}


