#Copyright 2021 Google Inc. All rights reserved.

#The use of this software is governed by the Pre-GA Offering 
#Terms section of the the Service Specific Terms set forth at 
#https://cloud.google.com/terms/service-terms#general-service-terms

data "google_client_config" "current" {}

terraform {
required_providers {
cdap = {
source = "GoogleCloudPlatform/cdap"
# version = "< 1.0"
}
}
}

provider "cdap" {
# Configuration options
host = "var.host"
token = data.google_client_config.current.access_token
}

resource "cdap_profile" "profile" {
name = "var.name"
label = "var.lables
profile_provisioner {
name = "gcp-dataproc"
properties {
name = "projectId"
value = "var.project_id"
is_editable = true
}
}
}
