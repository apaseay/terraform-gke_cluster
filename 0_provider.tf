terraform {
  required_providers {
    google = {
      source  = "hashicorp/google"
      version = "6.44.0"
    }
    google-beta = {
      source  = "hashicorp/google-beta"
      version = "6.44.0"
    }
  }
}

provider "google" {
  credentials = file("gcp-key.json")
  project     = var.project_id
  region      = var.region
}

provider "google-beta" {
  credentials = file("gcp-key.json")
  project     = var.project_id
  region      = var.region
}