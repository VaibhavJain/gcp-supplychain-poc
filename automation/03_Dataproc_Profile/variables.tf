#Copyright 2021 Google Inc. All rights reserved.

#The use of this software is governed by the Pre-GA Offering 
#Terms section of the the Service Specific Terms set forth at 
#https://cloud.google.com/terms/service-terms#general-service-terms

variable "host" {
  description = "Datafusion Instance Name for which Instance to be created"
}

variable "name" {
  description = "Name of the Dataproc Profile to be created"
}

variable "lables" {
  description = "Lable for the Instance"
}

variable "project_id" {
  description = "project ID in which Data Fusion Instance exist"
}
