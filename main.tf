terraform {
  required_providers {
    google = {
      source = "hashicorp/google"
      version = "5.25.0"
    }
  }
}

provider "google" {
  # Configuration options 
  region = "us-central1"
  project = "class5-5-416402"
  zone = "us-central1-a"
  credentials = "class5-5-416402-9cbd58fdc2ad.json"
}

resource "google_storage_bucket" "bucket5" {
  name          = "starwars23"
  location      = "us-central1"
  force_destroy = true 

  }