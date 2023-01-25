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