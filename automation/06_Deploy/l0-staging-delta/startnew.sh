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

curl -X PUT -H "Authorization: Bearer ${AUTH_TOKEN}" "${CDAP_ENDPOINT}/v3/namespaces/default/apps/0ASSET_ATTR_deltab -d "0ASSET_ATTR_TEXT_asset_subnumber_delta-cdap-data-pipeline.jsonb
curl -X PUT -H "Authorization: Bearer ${AUTH_TOKEN}" "${CDAP_ENDPOINT}/v3/namespaces/default/apps/0CUSTOMER_ATTR_deltab -d "0CUSTOMER_ATTR_customer_master_delta-cdap-data-pipeline.jsonb
curl -X PUT -H "Authorization: Bearer ${AUTH_TOKEN}" "${CDAP_ENDPOINT}/v3/namespaces/default/apps/0CUST_COMPC_ATTR_deltab -d "0CUST_COMPC_ATTR_customer_company_data_delta-cdap-data-pipeline.jsonb
curl -X PUT -H "Authorization: Bearer ${AUTH_TOKEN}" "${CDAP_ENDPOINT}/v3/namespaces/default/apps/0CUST_SALES_ATTR_deltab -d "0CUST_SALES_ATTR_customer_sales_data_delta-cdap-data-pipeline.jsonb
curl -X PUT -H "Authorization: Bearer ${AUTH_TOKEN}" "${CDAP_ENDPOINT}/v3/namespaces/default/apps/0FI_GL_4_deltab -d "0FI_GL_4_general_ledger_line_items_delta-cdap-data-pipeline.jsonb
curl -X PUT -H "Authorization: Bearer ${AUTH_TOKEN}" "${CDAP_ENDPOINT}/v3/namespaces/default/apps/0MATERIAL_ATTR_deltab -d "0MATERIAL_ATTR_material_master_delta-cdap-data-pipeline.jsonb
curl -X PUT -H "Authorization: Bearer ${AUTH_TOKEN}" "${CDAP_ENDPOINT}/v3/namespaces/default/apps/0MATERIAL_TEXT_deltab -d "0MATERIAL_TEXT_material_description_delta-cdap-data-pipeline.jsonb
curl -X PUT -H "Authorization: Bearer ${AUTH_TOKEN}" "${CDAP_ENDPOINT}/v3/namespaces/default/apps/0MAT_PLANT_ATTR_deltab -d "0MAT_PLANT_ATTR_material_plant_data_delta-cdap-data-pipeline.jsonb
curl -X PUT -H "Authorization: Bearer ${AUTH_TOKEN}" "${CDAP_ENDPOINT}/v3/namespaces/default/apps/0MAT_ST_LOC_ATTR_deltab -d "0MAT_ST_LOC_ATTR_material_storage_location_delta-cdap-data-pipeline.jsonb
curl -X PUT -H "Authorization: Bearer ${AUTH_TOKEN}" "${CDAP_ENDPOINT}/v3/namespaces/default/apps/0PLANT_ATTR_deltab-d "0PLANT_ATTR_plant_master_delta-cdap-data-pipeline.jsonb
curl -X PUT -H "Authorization: Bearer ${AUTH_TOKEN}" "${CDAP_ENDPOINT}/v3/namespaces/default/apps/0VENDOR_ATTR_deltab-d "0VENDOR_ATTR_supply_master_delta-cdap-data-pipeline.jsonb
curl -X PUT -H "Authorization: Bearer ${AUTH_TOKEN}" "${CDAP_ENDPOINT}/v3/namespaces/default/apps/2LIS_02_HDR_deltab -d "2LIS_02_HDR_purchasing_header_delta-cdap-data-pipeline.jsonb
curl -X PUT -H "Authorization: Bearer ${AUTH_TOKEN}" "${CDAP_ENDPOINT}/v3/namespaces/default/apps/2LIS_02_ITM_deltab -d "2LIS_02_ITM_purchasing_item_delta-cdap-data-pipeline.jsonb
curl -X PUT -H "Authorization: Bearer ${AUTH_TOKEN}" "${CDAP_ENDPOINT}/v3/namespaces/default/apps/2LIS_04_P_MATNR_deltab -d "2LIS_04_P_MATNR_material_production_planning_delta-cdap-data-pipeline.jsonb
curl -X PUT -H "Authorization: Bearer ${AUTH_TOKEN}" "${CDAP_ENDPOINT}/v3/namespaces/default/apps/2LIS_06_INV_deltab -d "2LIS_06_INV_invoice_verification_data_delta-cdap-data-pipeline.jsonb
curl -X PUT -H "Authorization: Bearer ${AUTH_TOKEN}" "${CDAP_ENDPOINT}/v3/namespaces/default/apps/2LIS_11_VAHDR_deltab -d "2LIS_11_VAHDR_sales_document_header_delta-cdap-data-pipeline.jsonb
curl -X PUT -H "Authorization: Bearer ${AUTH_TOKEN}" "${CDAP_ENDPOINT}/v3/namespaces/default/apps/2LIS_11_VAITM_deltab -d "2LIS_11_VAITM_sales_document_item_delta-cdap-data-pipeline.jsonb
curl -X PUT -H "Authorization: Bearer ${AUTH_TOKEN}" "${CDAP_ENDPOINT}/v3/namespaces/default/apps/2LIS_11_VASCL_deltab -d "2LIS_11_VASCL_sales_document_schedule_line_delta-cdap-data-pipeline.jsonb
curl -X PUT -H "Authorization: Bearer ${AUTH_TOKEN}" "${CDAP_ENDPOINT}/v3/namespaces/default/apps/2LIS_12_VCHDR_deltab -d "2LIS_12_VCHDR_delivery_header_delta-cdap-data-pipeline.jsonb
curl -X PUT -H "Authorization: Bearer ${AUTH_TOKEN}" "${CDAP_ENDPOINT}/v3/namespaces/default/apps/2LIS_12_VCITM_deltab -d "2LIS_12_VCITM_delivery_item_delta-cdap-data-pipeline.jsonb
curl -X PUT -H "Authorization: Bearer ${AUTH_TOKEN}" "${CDAP_ENDPOINT}/v3/namespaces/default/apps/2LIS_12_VCSCL_deltab -d "2LIS_12_VCSCL_schedule_line_delivery_delta-cdap-data-pipeline.jsonb
curl -X PUT -H "Authorization: Bearer ${AUTH_TOKEN}" "${CDAP_ENDPOINT}/v3/namespaces/default/apps/2LIS_13_VDHDR_deltab -d "2LIS_13_VDHDR_billing_document_header_delta-cdap-data-pipeline.jsonb
curl -X PUT -H "Authorization: Bearer ${AUTH_TOKEN}" "${CDAP_ENDPOINT}/v3/namespaces/default/apps/2LIS_13_VDITM_deltab -d "2LIS_13_VDITM_billing_document_item_delta-cdap-data-pipeline.jsonb

