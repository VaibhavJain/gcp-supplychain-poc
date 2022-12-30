#Copyright 2021 Google Inc. All rights reserved.

#The use of this software is governed by the Pre-GA Offering 
#Terms section of the the Service Specific Terms set forth at 
#https://cloud.google.com/terms/service-terms#general-service-terms

#__________________#
#Gcloud Information#
#------------------#

gcloud auth login $gcloud_username
gcloud config set project $gcloud_projectid

#__________________#
#SET CDF Variables #
#------------------#

export AUTH_TOKEN=$(gcloud auth print-access-token)
export INSTANCE_ID=$gcloud_cdf_instance
export CDAP_ENDPOINT=$(gcloud beta data-fusion instances describe \
        --location=$gcloud_location \
        --format="value(apiEndpoint)" \
          ${INSTANCE_ID})

#__________________#
#Deploy Pipelines  #
#------------------#

curl -X PUT -H "Authorization: Bearer ${AUTH_TOKEN}" "${CDAP_ENDPOINT}/v3/namespaces/default/apps/L2_loading_data-cdap-data-pipeline" -d "@$path/L2_loading_data-cdap-data-pipeline.json"
curl -X PUT -H "Authorization: Bearer ${AUTH_TOKEN}" "${CDAP_ENDPOINT}/v3/namespaces/default/apps/L2_table_creation-cdap-data-pipeline.json" -d "@$path/L2_table_creation-cdap-data-pipeline.json"
curl -X PUT -H "Authorization: Bearer ${AUTH_TOKEN}" "${CDAP_ENDPOINT}/v3/namespaces/default/apps/L2_table_views-cdap-data-pipeline.json" -d "@$path/L2_table_views-cdap-data-pipeline.json"
