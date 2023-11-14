terraform {
  backend "remote" {
    hostname     = "app.terraform.io"
    organization = "poniform"
    workspaces {
      name = "old-ws"
    }
  }
  required_providers {
    google = {
      source  = "google"
      version = "5.2.0"
    }
  }
}

provider "google" {
  project     = var.GCP_PROJECT
  credentials = var.GOOGLE_CREDENTIALS
}