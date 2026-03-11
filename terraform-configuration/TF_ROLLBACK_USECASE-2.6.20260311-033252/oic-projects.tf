
resource "oic_oicproject" "tf_rollback_usecase_deploymentv1" {
  file_location = "${path.module}/DEPLOYMENTV1.car"
  code = "TF_ROLLBACK_USECASE"

}


resource "oic_oicproject" "tf_rollback_usecase_deploymentv2" {
  file_location = "${path.module}/DEPLOYMENTV2.car"
  code = "TF_ROLLBACK_USECASE"

  depends_on = [oic_oicproject.tf_rollback_usecase_deploymentv1]

}


