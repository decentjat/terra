# main.tf
provider "google" {
  project = "it-dev-461717"
  region  = "us-central1" # optional for bucket
}

resource "google_storage_bucket" "terra_test" {
  name          = "terra-test"
  location      = "US"
  storage_class = "STANDARD"
  force_destroy = true # allows bucket deletion even if it contains objects
}

