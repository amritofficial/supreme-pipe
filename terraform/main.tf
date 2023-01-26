
# resource "google_compute_network" "vpc_network" {
#   name = "terraform-network"
# }

# Create a Cloud Storage Bucket for the Cloud Function to store code
module "google_cloud_storage_bucket_function" {
    source = "./modules/gcs"
    gcs_bucket_name = "${var.gcs_bucket_name}-function"
    project_id = var.project_id
    region = var.region
    storage_class = var.storage_class
}

# Create the Cloud Storage Bucket where the file will be uploaded to trigger Cloud Function
module "google_cloud_storage_bucket_input" {
    source = "./modules/gcs"
    gcs_bucket_name = "${var.gcs_bucket_name}-input"
    project_id = var.project_id
    region = var.region
    storage_class = var.storage_class
}

# Create the Cloud function triggered by a `Finalize` event on the bucket
module "cloud_function" {
    function_name = var.function_name
    runtime = var.runtime

    source = "./modules/function"

    # Get the source code of the cloud function as a Zip compression
    source_archive_bucket = "${var.gcs_bucket_name}-input"

    entry_point = var.entry_point

    resource = var.resource

    depends_on = [
        module.google_cloud_storage_bucket_function
    ]
}