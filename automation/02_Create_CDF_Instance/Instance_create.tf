#Copyright 2021 Google Inc. All rights reserved.

#The use of this software is governed by the Pre-GA Offering 
#Terms section of the the Service Specific Terms set forth at 
#https://cloud.google.com/terms/service-terms#general-service-terms


terraform {
  required_version = ">= 0.14"

  required_providers {
    # Cloud Run support was added on 3.3.0
    google = ">= 3.3"
  }
}

provider "google-beta" {
  project = var.project_id
}

resource "google_data_fusion_instance" "extended_instance" {
  provider = google-beta
  name = var.cdf_name
  description = "My Data Fusion instance using terraform"
  region = var.cdf_region
  type = var.cdf_type
  dataproc_service_account = var.compute_service_account
  enable_stackdriver_logging = true
  enable_stackdriver_monitoring = true
  labels = {
    example_key = var.label
  }
  private_instance = true
  network_config {
    network = var.network
    ip_allocation = var.ip
  }
  version = var.cdf_version
}
