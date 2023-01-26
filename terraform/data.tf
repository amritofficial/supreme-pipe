data "archive_file" "source" {
    type = var.source_type
    source_dir = var.source_dir
    output_path = var.output_path
} 