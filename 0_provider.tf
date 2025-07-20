terraform {
  required_providers {
    google-beta = {
      source = "hashicorp/google-beta"
      version = "6.44.0"
    }
  }
}

provider "google-beta" {
  credentials = file("gcp-key.json")   # This should match the service account key file in the pipeline
  project     = var.project_id         # Use a variable for flexibility
  region      = var.region             # Use a variable for region
}