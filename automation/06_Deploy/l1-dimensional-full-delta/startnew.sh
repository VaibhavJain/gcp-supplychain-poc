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

curl -X PUT -H "Authorization: Bearer ${AUTH_TOKEN}" "${CDAP_ENDPOINT}/v3/namespaces/default/apps/L1_table_creation-cdap-data-pipeline" -d "@$path/L1_table_creation-cdap-data-pipeline.json"
curl -X PUT -H "Authorization: Bearer ${AUTH_TOKEN}" "${CDAP_ENDPOINT}/v3/namespaces/default/apps/company_code_dimension-cdap-data-pipeline" -d "@$path/company_code_dimension-cdap-data-pipeline.json"
curl -X PUT -H "Authorization: Bearer ${AUTH_TOKEN}" "${CDAP_ENDPOINT}/v3/namespaces/default/apps/customer_dimension-cdap-data-pipeline" -d "@$path/customer_dimension-cdap-data-pipeline.json"
curl -X PUT -H "Authorization: Bearer ${AUTH_TOKEN}" "${CDAP_ENDPOINT}/v3/namespaces/default/apps/customer_sales_org_dimension-cdap-data-pipeline" -d "@$path/customer_sales_org_dimension-cdap-data-pipeline.json"
curl -X PUT -H "Authorization: Bearer ${AUTH_TOKEN}" "${CDAP_ENDPOINT}/v3/namespaces/default/apps/delivery_fact-cdap-data-pipeline" -d "@$path/delivery_fact-cdap-data-pipeline.json"
curl -X PUT -H "Authorization: Bearer ${AUTH_TOKEN}" "${CDAP_ENDPOINT}/v3/namespaces/default/apps/inventory_fact-cdap-data-pipeline" -d "@$path/inventory_fact-cdap-data-pipeline.json"
curl -X PUT -H "Authorization: Bearer ${AUTH_TOKEN}" "${CDAP_ENDPOINT}/v3/namespaces/default/apps/material_dimension-cdap-data-pipeline" -d "@$path/material_dimension-cdap-data-pipeline.json"
curl -X PUT -H "Authorization: Bearer ${AUTH_TOKEN}" "${CDAP_ENDPOINT}/v3/namespaces/default/apps/plant_dimension-cdap-data-pipeline.json" -d "@$path/plant_dimension-cdap-data-pipeline.json"
curl -X PUT -H "Authorization: Bearer ${AUTH_TOKEN}" "${CDAP_ENDPOINT}/v3/namespaces/default/apps/production_order_fact-cdap-data-pipeline.json" -d "@$path/production_order_fact-cdap-data-pipeline.json"
curl -X PUT -H "Authorization: Bearer ${AUTH_TOKEN}" "${CDAP_ENDPOINT}/v3/namespaces/default/apps/purchase_order_fact-cdap-data-pipeline" -d "@$path/purchase_order_fact-cdap-data-pipeline.json"
curl -X PUT -H "Authorization: Bearer ${AUTH_TOKEN}" "${CDAP_ENDPOINT}/v3/namespaces/default/apps/sales_order_fact-cdap-data-pipeline.json" -d "@$path/sales_order_fact-cdap-data-pipeline.json"
curl -X PUT -H "Authorization: Bearer ${AUTH_TOKEN}" "${CDAP_ENDPOINT}/v3/namespaces/default/apps/supplier_dimension-cdap-data-pipeline" -d "@$path/supplier_dimension-cdap-data-pipeline.json"
curl -X PUT -H "Authorization: Bearer ${AUTH_TOKEN}" "${CDAP_ENDPOINT}/v3/namespaces/default/apps/supplier_purchase_org_dimension-cdap-data-pipeline" -d "@$path/supplier_purchase_org_dimension-cdap-data-pipeline.json"
