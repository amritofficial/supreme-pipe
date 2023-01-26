variable "project_id" {
    type = string
    default = "terraform-cicd-375615"
}

variable "region" {
    type = string
    default = "us-central1"
}

variable "zone" {
    type = string
    default = "us-central1-c"
}

variable "credentials" {
    default = "../config/cred/terraform-cicd-375615.json"
}

variable "gcs_bucket_name" {
    type = string
    default = "terraform-cicd-375615"
}

variable "storage_class" {
    type = string
    default = "REGIONAL"
}

variable "function_name" {
    type = string
    default = "function-trigger-on-gcs"
}

variable "runtime" {
    type = string
    default = "python37"
}

variable "entry_point" {
    type = string
    default = "hello_gcs"
}

variable "event_type" {
    type = string
    default = "google.cloud.storage.object.finalize"
}

variable "resource" {
    type = string
    default = "terraform-cicd-375615-input"
}

variable "source_type" {
    type = string
    default = "zip"
}

variable "source_dir" {
    type = string
    default = "../src"
}

variable "output_path" {
    type = string
    default = "/tmp/function.zip"
}