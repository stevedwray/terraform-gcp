terraform {
  backend "remote" {
    organization = "stevedwray"
    workspaces {
      name = "GCP-Workspace"
    }
  }
  required_providers {
    google = {
      source = "hashicorp/google"
      version = "3.5.0"
    }
  }
}
provider "google" {
#  credentials = file("lab-316902-c7de1ace4681.json")
  project = "lab-316902"
  region  = "us-central1"
  zone    = "us-central1-c"
}

resource "google_compute_network" "vpc_network" {
  name = "terraform-network"
}
