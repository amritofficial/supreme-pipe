terraform {
  required_providers {
    google = {
      source = "hashicorp/google"
      version = "3.5.0"
    }
  }
}

provider "google" {
  credentials = file("../config/cred/terraform-cicd-375615.json")
  project = "terraform-cicd-375615"
  region  = "us-central1"
  zone    = "us-central1-c"
}
