terraform {
  backend "remote" {
    organization = "hashicorp-learn-cherrera"

    workspaces {
      name = "learn-terraform-pipelines-k8s"
    }
  }
}

provider "google" {
  version = "3.10.0"
  project = var.google_project
  region  = var.region
}
