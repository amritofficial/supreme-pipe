resource "google_cloudfunctions_function" "function" {
    name = var.function_name
    runtime = var.runtime

    source_archive_bucket = var.source_archive_bucket

    entry_point = var.entry_point

    event_trigger {
        event_type = "google.cloud.storage.object.finalize"
        resource = var.resource
    }
}