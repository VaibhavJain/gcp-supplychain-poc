#Copyright 2021 Google Inc. All rights reserved.

#The use of this software is governed by the Pre-GA Offering 
#Terms section of the the Service Specific Terms set forth at 
#https://cloud.google.com/terms/service-terms#general-service-terms

read path
export path=$path

read gcloud_username
export gcloud_username=$gcloud_username

read gclod_projectid
export gclod_projectid=$gclod_projectid

read gcloud_cdf_instance
export gcloud_cdf_instance=$gcloud_cdf_instance

sh -x ./startnew.sh
