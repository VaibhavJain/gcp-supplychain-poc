#Copyright 2021 Google Inc. All rights reserved.

#The use of this software is governed by the Pre-GA Offering 
#Terms section of the the Service Specific Terms set forth at 
#https://cloud.google.com/terms/service-terms#general-service-terms

variable "project_id" {
  description = "Google Cloud Project ID"
  default = "sap-adapter"
}

variable "datasetmain" {
  description = "Dataset Name"
  default = "finalodpsap"
}

variable "datasetmain_name" {
  description = "Dataset Frendly name"
  default = "finalodpsap"
}

variable "dimentions_dataset" {
  description = "Dimention Dataset Name"
  default = "finaldimenodpsap"
}

variable "dimentions_name" {
  description = "Dimention Frendly Name"
  default = "finaldimenodpsap"
}

variable "fact_dataset" {
  description = "Facts Dataset Name"
  default = "finalfactsodpsap"
}

variable "fact_name" {
  description = "Facts Frendly Name"
  default = "finalfactsodpsap"
}

variable "owner_email" {
  description = "Google Project Owner Email ID"
}

