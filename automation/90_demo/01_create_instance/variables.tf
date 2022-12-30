# Copyright 2021 Google Inc. All rights reserved.

# The use of this software is governed by the Pre-GA Offering Terms section
# of the the Service Specific Terms set forth at
# https://cloud.google.com/terms/service-terms#general-service-terms


variable "project_id" {
  description = "Google Cloud Project"
  default = "sap-adapter"
}

variable "cdf_name" {
  description = "Google Cloud Datafusion Instance Name"
  default = "sap-odp-test3-demo"
}

variable "cdf_region" {
  description = "Project Region Ex:- is europe-west1"
  default = "europe-west1"
}

variable "cdf_type" {
  description = "Data Fusion Instance Type, Ex:- is BASIC"
  default = "BASIC"
}

variable "compute_service_account" {
  description = "Google Cloud Project Compute Service Account"
  default = "662869350220-compute@developer.gserviceaccount.com"
}

variable "label" {
  description = "Lable, ex :- SAP"
  default = "sapodptesting"
}

variable "network" {
  description = "Google Cloud VPC Network"
  default = "sap-cal-default-network"
}

variable "ip" {
  description = "Network IP, Ex :- 10.232.233.0/22"
  default = "10.89.58.0/22"
}

variable "cdf_version" {
  description = "Data Fusion Instance Version, Ex:- 6.4.0"
  default = "6.4.0"
}
