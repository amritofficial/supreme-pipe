resource "google_storage_bucket" "bucket_creation" {
    name = var.gcs_bucket_name
    project = var.project_id
    location = var.region
}
