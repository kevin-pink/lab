variable "gcp_project" {}

provider "google" {
  project = var.gcp_project 
  region  = "us-west1"
}

terraform {
  backend "gcs" {
    bucket  = "tf-remote-state-student_00_3fedb7123627-21207-6653"
    prefix  = "terraform/state/lab01" 
  }
}

resource "google_compute_network" "example_vpc" {
  name                    = "example-vpc"
  auto_create_subnetworks = true 
}
