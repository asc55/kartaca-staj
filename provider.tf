# https://registry.terraform.io/providers/hashicorp/google/latest/docs
provider "google" {
  project = "kartaca-staj"
  region  = "europe-west1"
}

# https://www.terraform.io/language/settings/backends/gcs
terraform {
  backend "gcs" {
    bucket = "kartaca-staj-bucket"
    prefix = "terraform/state"
  }
  required_providers {
    google = {
      source  = "hashicorp/google"
      version = "~> 4.0"
    }
  }
}
