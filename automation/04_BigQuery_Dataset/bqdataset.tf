#Copyright 2021 Google Inc. All rights reserved.

#The use of this software is governed by the Pre-GA Offering 
#Terms section of the the Service Specific Terms set forth at 
#https://cloud.google.com/terms/service-terms#general-service-terms

resource "google_bigquery_dataset" "bq-data-set" {
     dataset_id                      = var.datasetmain
     default_partition_expiration_ms = 0
     delete_contents_on_destroy      = false
     description                     = "SCM Dataset"
     friendly_name                   = var.datasetmain_name
     labels                          = {
         "env" = "default"
        }
     location                        = "EU"
     project                         = var.project_id


     access {
         role          = "OWNER"
         user_by_email = var.owner_email
        }
     access {
         role          = "OWNER"
         special_group = "projectOwners"
        }
     access {
         role          = "READER"
         special_group = "projectReaders"
        }
     access {
         role          = "WRITER"
         special_group = "projectWriters"
        }
}

resource "google_bigquery_dataset" "bq-data-set_dimention" {
     dataset_id                      = var.dimention_dataset
     default_partition_expiration_ms = 0
     delete_contents_on_destroy      = false
     description                     = "SCM Dataset"
     friendly_name                   = var.dimention_name
     labels                          = {
         "env" = "default"
        }
     location                        = "EU"
     project                         = var.project_id

     access {
         role          = "OWNER"
         user_by_email = var.owner_email
        }
     access {
         role          = "OWNER"
         special_group = "projectOwners"
        }
     access {
         role          = "READER"
         special_group = "projectReaders"
        }
     access {
         role          = "WRITER"
         special_group = "projectWriters"
        }
}

resource "google_bigquery_dataset" "bq-data-set_fact" {
     dataset_id                      = var.fact_dataset
     default_partition_expiration_ms = 0
     delete_contents_on_destroy      = false
     description                     = "SCM Dataset"
     friendly_name                   = var.fact_name
     labels                          = {
         "env" = "default"
        }
     location                        = "EU"
     project                         = var.project_id

     access {
         role          = "OWNER"
         user_by_email = var.owner_email
        }
     access {
         role          = "OWNER"
         special_group = "projectOwners"
        }
     access {
         role          = "READER"
         special_group = "projectReaders"
        }
     access {
         role          = "WRITER"
         special_group = "projectWriters"
        }
}
