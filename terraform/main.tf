
# resource "google_compute_network" "vpc_network" {
#   name = "terraform-network"
# }

module "google_cloud_storage_bucket_function" {
    source = "./modules/gcs"
    gcs_bucket_name = "${var.gcs_bucket_name}-function"
    project_id = var.project_id
    region = var.region
}