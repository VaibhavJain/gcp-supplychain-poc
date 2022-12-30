
## Table Name : purchase_requisition_fact

| sap_table | sap_column                | column_name                | data_type | description                                                 |
|-----------|---------------------------|----------------------------|-----------|-------------------------------------------------------------|
|           |                           | purchase_requisition_uuid  | STRING    | Unique Generated Id                                         |
|           |                           | purchase_requisition_key   | STRING    | Purchase Requisition Key                                    |
| EBAN      | MANDT                     | client                     | STRING    | Client                                                      |
| EBAN      | BANFN                     | purchase_req               | STRING    | Purchase Requisition Number                                 |
| EBAN      | BNFPO                     | requisn_item               | STRING    | Item number of purchase requisition                         |
|           |                           | material_uuid              | STRING    | Material Dimension Unique Generated Id                      |
|           |                           | material_key               | STRING    | Material key from Material Dimension                        |
|           |                           | supplier_uuid              | STRING    | Supplier Dimension Unique Generated Id                      |
|           |                           | supplier_key               | STRING    | Supplier key from Supplier Dimension                        |
|           |                           | plant_uuid                 | STRING    | Plant Dimension Unique Generated Id                         |
|           |                           | plant_key                  | STRING    | Plant key from Plant Dimension                              |
|           |                           | customer_uuid              | STRING    | Customer Dimension Unique Generated Id                      |
|           |                           | customer_key               | STRING    | Customer Key from Customer Dimension                        |
|           |                           | supplier_company_code_uuid | STRING    | Supplier Code Dimension Unique Generated Id                 |
|           |                           | supplier_company_code_key  | STRING    | Supplier Company Code Key from Supplier Code Dimension      |
|           |                           | company_code_uuid          | STRING    | Company code Dimension Unique Generated Id                  |
|           |                           | company_code_key           | STRING    | Company code key from Company code Dimension                |
|           |                           | storage_location_uuid      | STRING    | Storage location Dimension Unique Generated Id              |
|           |                           | storage_location_key       | STRING    | Storage location key from Storage location Dimension        |
| EBAN      | BSART                     | document_type              | STRING    | Purchase Requisition Document Type                          |
| EBAN      | BSTYP                     | doc_category               | STRING    | Purchasing Document Category                                |
| EBAN      | BSAKZ                     | control                    | STRING    | Control indicator for purchasing document type              |
| EBAN      | LOEKZ                     | deletion_ind               | STRING    | Deletion indicator in purchasing document                   |
| EBAN      | STATU                     | processing_stat            | STRING    | Processing status of purchase requisition                   |
| EBAN      | ESTKZ                     | creation_ind               | STRING    | Creation indicator (purchase requisition/schedule lines)    |
| EBAN      | FRGKZ                     | release_ind                | STRING    | Release Indicator                                           |
| EBAN      | FRGZU                     | release_state              | STRING    | Release State                                               |
| EBAN      | FRGST                     | rel_strategy               | STRING    | Release strategy in the purchase requisition                |
| EBAN      | EKGRP                     | purch_group                | STRING    | Purchasing Group                                            |
| EBAN      | ERNAM                     | created_by                 | STRING    | Name of Person who Created the Object                       |
| EBAN      | ERDAT                     | changed_on                 | DATE      | Date of Last Change                                         |
| EBAN      | AFNAM                     | requisitioner              | STRING    | Name of requisitioner/requester                             |
| EBAN      | TXZ01                     | short_text                 | STRING    | Short Text                                                  |
| EBAN      | MATNR                     | material                   | STRING    | Material Number                                             |
| EBAN      | EMATN                     | mpn_material               | STRING    | Material number corresponding to manufacturer part number   |
| EBAN      | WERKS                     | plant                      | STRING    | Plant                                                       |
| EBAN      | LGORT                     | stor_loc                   | STRING    | Storage location                                            |
| EBAN      | BEDNR                     | tracking_number            | STRING    | Requirement Tracking Number                                 |
| EBAN      | MATKL                     | material_group             | STRING    | Material Group                                              |
| EBAN      | RESWK                     | supplying_plant            | STRING    | Supplying (issuing) plant in case of stock transport order  |
| EBAN      | MENGE                     | quantity                   | NUMERIC   | Purchase requisition quantity                               |
| EBAN      | MEINS                     | unit_of_measure            | STRING    | Purchase requisition unit of measure                        |
| EBAN      | BUMNG                     | shortage                   | NUMERIC   | Shortage (stock undercoverage) quantity                     |
| EBAN      | BADAT                     | requisn_date               | DATE      | Requisition (request) date                                  |
| EBAN      | LPEIN                     | delivery_date              | STRING    | Category of delivery date                                   |
| EBAN      | LFDAT                     | delivery_date_1            | DATE      | Item delivery date                                          |
| EBAN      | FRGDT                     | release_date               | DATE      | Purchase Requisition Release Date                           |
| EBAN      | WEBAZ                     | gr_proc_time               | NUMERIC   | Goods receipt processing time in days                       |
| EBAN      | PREIS                     | valuation_price            | NUMERIC   | Price in Purchase Requisition                               |
| EBAN      | PEINH                     | price_unit                 | NUMERIC   | Price unit                                                  |
| EBAN      | PSTYP                     | item_category              | STRING    | Item category in purchasing document                        |
| EBAN      | KNTTP                     | acct_assgmt_cat            | STRING    | Account Assignment Category                                 |
| EBAN      | KZVBR                     | consumption                | STRING    | Consumption posting                                         |
| EBAN      | KFLAG                     | modifiable                 | STRING    | Acct.asst.modifiable                                        |
| EBAN      | VRTKZ                     | distribution               | STRING    | Distribution Indicator for Multiple Account Assignment      |
| EBAN      | TWRKZ                     | partial_invoice            | STRING    | Partial invoice indicator                                   |
| EBAN      | WEPOS                     | goods_receipt              | STRING    | Goods Receipt Indicator                                     |
| EBAN      | WEUNB                     | gr_non_valuated            | STRING    | Goods Receipt, Non-Valuated                                 |
| EBAN      | REPOS                     | invoice_receipt            | STRING    | Invoice receipt indicator                                   |
| EBAN      | LIFNR                     | desired_vendor             | STRING    | Desired Vendor                                              |
| EBAN      | FLIEF                     | fixed_vendor               | STRING    | Fixed vendor                                                |
| EBAN      | EKORG                     | purchasing_org             | STRING    | Purchasing organization                                     |
| EBAN      | VRTYP                     | doc_category_1             | STRING    | Purchasing Document Category                                |
| EBAN      | KONNR                     | agreement                  | STRING    | Number of principal purchase agreement                      |
| EBAN      | KTPNR                     | agreement_item             | STRING    | Item number of principal purchase agreement                 |
| EBAN      | INFNR                     | info_record                | STRING    | Number of purchasing info record                            |
| EBAN      | ZUGBA                     | assigned                   | STRING    | Assigned Source of Supply                                   |
| EBAN      | QUNUM                     | quota_arr                  | STRING    | Number of quota arrangement                                 |
| EBAN      | QUPOS                     | quota_arr_item             | STRING    | Quota arrangement item                                      |
| EBAN      | DISPO                     | mrp_controller             | STRING    | MRP Controller                                              |
| EBAN      | SERNR                     | bom_expl_number            | STRING    | BOM explosion number                                        |
| EBAN      | BVDAT                     | last_resubmiss             | DATE      | Date of last resubmission                                   |
| EBAN      | BATOL                     | resubmission               | NUMERIC   | Resubmission interval of purchase requisition               |
| EBAN      | BVDRK                     | no_resubmiss               | NUMERIC   | Number of resubmissions                                     |
| EBAN      | EBELN                     | purchase_order             | STRING    | Purchase order number                                       |
| EBAN      | EBELP                     | item                       | STRING    | Purchase order item number                                  |
| EBAN      | BEDAT                     | po_date                    | DATE      | Purchase Order Date                                         |
| EBAN      | BSMNG                     | order_quantity             | NUMERIC   | Quantity ordered against this purchase requisition          |
| EBAN      | LBLNI                     | entry_sheet                | STRING    | Entry Sheet Number                                          |
| EBAN      | BWTAR                     | valuation_type             | STRING    | Valuation Type                                              |
| EBAN      | XOBLR                     | commitments                | STRING    | Item affects commitments                                    |
| EBAN      | EBAKZ                     | closed                     | STRING    | Purchase requisition closed                                 |
| EBAN      | RSNUM                     | reservation_number         | STRING    | Number of reservation/dependent requirements                |
| EBAN      | SOBKZ                     | special_stock              | STRING    | Special Stock Indicator                                     |
| EBAN      | ARSNR                     | settle_reser_no            | STRING    | Settlement reservation number                               |
| EBAN      | ARSPS                     | settle_item_no             | STRING    | Item number of the settlement reservation                   |
| EBAN      | FIXKZ                     | fixed_ind                  | STRING    | Purchase requisition is fixed                               |
| EBAN      | BMEIN                     | order_unit                 | STRING    | Purchase Order Unit of Measure                              |
| EBAN      | REVLV                     | revision_level             | STRING    | Revision level                                              |
| EBAN      | VORAB                     | advance_proc               | STRING    | Advance procurement: project stock                          |
| EBAN      | PACKNO                    | package_number             | STRING    | Package number                                              |
| EBAN      | KANBA                     | kanban_indicat             | STRING    | Kanban Indicator                                            |
| EBAN      | BPUEB                     | po_price                   | STRING    | Use Requisition Price in Purchase Order                     |
| EBAN      | CUOBJ                     | int_object_no              | STRING    | Configuration (internal object number)                      |
| EBAN      | FRGGR                     | release_group              | STRING    | Release group                                               |
| EBAN      | FRGRL                     | subj_to_release            | STRING    | Release Not Yet Completely Effected                         |
| EBAN      | AKTNR                     | promotion                  | STRING    | Promotion                                                   |
| EBAN      | CHARG                     | batch                      | STRING    | Batch Number                                                |
| EBAN      | UMSOK                     | sp_ind_st_tfr              | STRING    | Special stock indicator for physical stock transfer         |
| EBAN      | VERID                     | prod_version               | STRING    | Production Version                                          |
| EBAN      | FIPOS                     | commitment_item            | STRING    | Commitment Item                                             |
| EBAN      | FISTL                     | funds_center               | STRING    | Funds Center                                                |
| EBAN      | GEBER                     | fund                       | STRING    | Fund                                                        |
| EBAN      | KZKFG                     | origin_of_config           | STRING    | Origin of Configuration                                     |
| EBAN      | SATNR                     | cross_plant_cm             | STRING    | Cross-Plant Configurable Material                           |
| EBAN      | MNG02                     | committed_qty              | NUMERIC   | Committed Quantity                                          |
| EBAN      | DAT01                     | committed_date             | DATE      | Committed date                                              |
| EBAN      | ATTYP                     | matl_category              | STRING    | Material Category                                           |
| EBAN      | ADRNR                     | address                    | STRING    | Manual address number in purchasing document item           |
| EBAN      | ADRN2                     | address_1                  | STRING    | Number of delivery address                                  |
| EBAN      | KUNNR                     | customer                   | STRING    | Customer                                                    |
| EBAN      | EMLIF                     | supplier                   | STRING    | Supplier to be Supplied/Who is to Receive Delivery          |
| EBAN      | LBLKZ                     | sc_supplier                | STRING    | Subcontracting Supplier                                     |
| EBAN      | KZBWS                     | valuation                  | STRING    | Valuation of Special Stock                                  |
| EBAN      | WAERS                     | currency                   | STRING    | Currency Key                                                |
| EBAN      | IDNLF                     | supp_mat_no                | STRING    | Material Number Used by Supplier                            |
| EBAN      | GSFRG                     | overall_req_rel            | STRING    | Overall release of purchase requisitions                    |
| EBAN      | MPROF                     | mfr_part_profile           | STRING    | Mfr part profile                                            |
| EBAN      | KZFME                     | units_meas_use             | STRING    | Units of measure usage                                      |
| EBAN      | SPRAS                     | language_key               | STRING    | Language Key                                                |
| EBAN      | TECHS                     | standardvariant            | STRING    | Parameter Variant/Standard Variant                          |
| EBAN      | MFRPN                     | mfr_part_number            | STRING    | Manufacturer Part Number                                    |
| EBAN      | MFRNR                     | manufacturer               | STRING    | Manufacturer number                                         |
| EBAN      | EMNFR                     | external_manuf             | STRING    | External manufacturer code name or number                   |
| EBAN      | FORDN                     | framework_order            | STRING    | Framework Order                                             |
| EBAN      | FORDP                     | frwrk_ord_item             | STRING    | Item of framework order                                     |
| EBAN      | PLIFZ                     | pl_deliv_time              | NUMERIC   | Planned Delivery Time in Days                               |
| EBAN      | BERID                     | mrp_area                   | STRING    | MRP Area                                                    |
| EBAN      | UZEIT                     | deliver_date_time          | TIME      | Delivery Date Time-Spot                                     |
| EBAN      | FKBER                     | functional_area            | STRING    | Functional Area                                             |
| EBAN      | GRANT_NBR                 | grants                     | STRING    | Grant                                                       |
| EBAN      | MEMORY                    | incomplete                 | STRING    | Purchase Requisition not yet Complete                       |
| EBAN      | BANPR                     | proc_state                 | STRING    | Requisition Processing State                                |
| EBAN      | RLWRT                     | tot_val_rel                | NUMERIC   | Total value at time of release                              |
| EBAN      | BLCKD                     | blocking_ind               | STRING    | Purchase Requisition Blocked                                |
| EBAN      | REVNO                     | version                    | STRING    | Version number in Purchasing                                |
| EBAN      | BLCKT                     | blocking_text              | STRING    | Reason for Item Block                                       |
| EBAN      | BESWK                     | procuring_plant            | STRING    | Procuring Plant                                             |
| EBAN      | EPROFILE                  | procurement_prof           | STRING    | External Procurement Profile                                |
| EBAN      | EPREFDOC                  | external_doc               | STRING    | External Procurement Reference Document                     |
| EBAN      | EPREFITM                  | external_item              | STRING    | External Procurement Reference Item                         |
| EBAN      | GMMNG                     | po_qty_on_hold             | NUMERIC   | PO Quantity of Purchase Requisition in POs on Hold          |
| EBAN      | WRTKZ                     | reduce_com_value           | STRING    | Value-Based Commitment Reduction for Service Purchase Reqs  |
| EBAN      | RESLO                     | iss_stor_loc               | STRING    | Issuing Storage Location for Stock Transport Order          |
| EBAN      | KBLNR                     | earmarked_funds            | STRING    | Document Number for Earmarked Funds                         |
| EBAN      | KBLPOS                    | document_item              | STRING    | Earmarked Funds: Document Item                              |
| EBAN      | PRIO_URG                  | reqmt_urgency              | STRING    | Requirement Urgency                                         |
| EBAN      | PRIO_REQ                  | reqmt_priority             | STRING    | Requirement Priority                                        |
| EBAN      | MEMORYTYPE                | incompl_cat                | STRING    | Category of Incompleteness                                  |
| EBAN      | ANZSN                     | no_serial_no               | INT64     | Number of serial numbers                                    |
| EBAN      | MHDRZ                     | rem_shelf_life             | NUMERIC   | Minimum Remaining Shelf Life                                |
| EBAN      | IPRKZ                     | period_ind                 | STRING    | Period Indicator for Shelf Life Expiration Date             |
| EBAN      | NODISP                    | res_purc_req               | STRING    | Ind: Reserv. not applicable to MRP;Purc. req. not created   |
| EBAN      | SRM_CONTRACT_ID           | central_contract           | STRING    | Central Contract                                            |
| EBAN      | SRM_CONTRACT_ITM          | cent_contract_item         | STRING    | Central Contract Item Number                                |
| EBAN      | BUDGET_PD                 | budget_period              | STRING    | Budget Period                                               |
| EBAN      | ELDAT                     | planned_dates              | DATE      | Receipt/Requirements date                                   |
| EBAN      | EXPERT_MODE               | pr_in_expert_mode          | STRING    | PR Created in Expert Mode                                   |
| EBAN      | CENTRAL_PURREQN_PROC      | is_central_pr_procg        | STRING    | Is PR relevant for Central PR Processing                    |
| EBAN      | SPE_CRM_REF_SO            | crm_ref_order              | STRING    | CRM Reference Order Number for TPOP Process                 |
| EBAN      | SPE_CRM_REF_ITEM          | crm_rf_item_no             | STRING    | CRM Reference Sales Order Item Number in TPOP Process       |
| EBAN      | DUMMY_EBAN_INCL_EEW_PS    | pr_ext_include             | STRING    | Data element for purchase requisition extensibility         |
| EBAN      | STORENETWORKID            | character                  | STRING    | 128 character                                               |
| EBAN      | STORESUPPLIERID           | character_field_length_64  | STRING    | Character field, length 64                                  |
| EBAN      | CREATIONDATE              | creation_date              | DATE      | Purchasing Document Creation Date                           |
| EBAN      | CREATIONTIME              | creation_time              | TIME      | Purchasing Document Creation Time                           |
| EBAN      | PRODUCTTYPE               | product_type_group         | STRING    | Product Type Group                                          |
| EBAN      | SERVICEPERFORMER          | service_performer          | STRING    | Service Performer                                           |
| EBAN      | ISEOPBLOCKED              | business_purp_compl        | STRING    | Business Purpose Completed                                  |
| EBAN      | EXT_REV_TMSTMP            | external_revision          | NUMERIC   | Timestamp for Revision of External Calls                    |
| EBAN      | FMFGUS_KEY                | us_govt                    | STRING    | United States Federal Government Fields                     |
| EBAN      | STARTDATE                 | start_date                 | DATE      | Start Date for Period of Performance                        |
| EBAN      | ENDDATE                   | end_date                   | DATE      | End Date for Period of Performance                          |
| EBAN      | EXTMATERIALFORPURG        | material_1                 | STRING    | Material of External System                                 |
| EBAN      | EXTFIXEDSUPPLIERFORPURG   | fixed_supplier             | STRING    | Fixed Supplier of External System                           |
| EBAN      | EXTDESIREDSUPPLIERFORPURG | desired_supplier           | STRING    | Desired Supplier of External System                         |
| EBAN      | EXTCONTRACTFORPURG        | contract                   | STRING    | Contract of External System                                 |
| EBAN      | EXTCONTRACTITEMFORPURG    | contract_item              | STRING    | Contract Item of External System                            |
| EBAN      | EXTINFORECORDFORPURG      | info_record_1              | STRING    | Info Record of External System                              |
| EBAN      | EXTPLANTFORPURG           | plant_1                    | STRING    | Plant of External System                                    |
| EBAN      | EXTCOMPANYCODEFORPURG     | company_code               | STRING    | Company Code of External System                             |
| EBAN      | EXTPURGORGFORPURG         | purch_organization         | STRING    | Purchasing Organization                                     |
| EBAN      | EXTSOURCESYSTEM           | comm_system                | STRING    | Communication System ID                                     |
| EBAN      | EXT_BE_SOURCE_SYS         | connected_system_id        | STRING    | Connected System ID                                         |
| EBAN      | EXT_BE_PRCHANGEINDICATOR  | pr_change_indicator        | STRING    | Change Indicator for PR in Central Procurement              |
| EBAN      | EXTDOCTYPEFORPURG         | pr_doctyp_of_connsys       | STRING    | PR Document Type of Connected System                        |
| EBAN      | EXTAPPROVALSTATUS         | ext_prcsng_status          | STRING    | External Processing Status                                  |
| EBAN      | PURCHASEREQNITEMUNIQUEID  | pr_item                    | STRING    | Key to identify purchase requisition item                   |
| EBAN      | LASTCHANGEDATETIME        | time_stamp                 | NUMERIC   | UTC Time Stamp in Long Form (YYYYMMDDhhmmssmmmuuun)         |
| EBAN      | ISONBEHALFCART            | shop_on_behalf_ind         | STRING    | Shop on behalf indicator                                    |
| EBAN      | SDM_VERSION               | sdm_version                | STRING    | Version of Silent Data Migration                            |
| EBAN      | SAKTO                     | g_l_account                | STRING    | G/L Account Number                                          |
| EBAN      | KOSTL                     | cost_center                | STRING    | Cost Center                                                 |
| EBAN      | EXPECTED_VALUE            | expected_value             | NUMERIC   | Expected Value of Overall Limit                             |
| EBAN      | LIMIT_AMOUNT              | overall_limit              | NUMERIC   | Overall Limit                                               |
| EBAN      | ADVCODE                   | advice_code                | STRING    | Advice Code                                                 |
| EBAN      | STACODE                   | statuscode                 | STRING    | Status Code                                                 |
| EBAN      | BANFN_CS                  | cs_preq                    | STRING    | Cross-System PReq Number                                    |
| EBAN      | BNFPO_CS                  | cs_preqitm                 | STRING    | Cross-System PReq Item                                      |
| EBAN      | ITEM_CS                   | cs_item_cat                | STRING    | Cross-System Item Category                                  |
| EBAN      | BSMNG_SND                 | po_qty_sender              | NUMERIC   | PO Quantity Sender                                          |
| EBAN      | NO_MARD_DATA              | no_sloc_data               | STRING    | No Storage Location Data Exists for Material                |
| EBAN      | ADMOI                     | model_id_code              | STRING    | Model ID Code                                               |
| EBAN      | ADPRI                     | order_priority             | STRING    | Order Priority                                              |
| EBAN      | LPRIO                     | delivery_prior             | STRING    | Delivery Priority                                           |
| EBAN      | ADACN                     | aircraftreg_no             | STRING    | Aircraft registration number                                |
| EBAN      | ADDNS                     | donotsub                   | STRING    | Do Not Substitute                                           |
| EBAN      | SERRU                     | subcon_type                | STRING    | Type of subcontracting                                      |
| EBAN      | DISUB_SOBKZ               | sp_stock                   | STRING    | Special stock indicator Subcontracting                      |
| EBAN      | DISUB_PSPNR               | wbs_element                | STRING    | Work Breakdown Structure Element (WBS Element)              |
| EBAN      | DISUB_KUNNR               | customer_1                 | STRING    | Customer Number                                             |
| EBAN      | DISUB_VBELN               | sales_document             | STRING    | Sales and Distribution Document Number                      |
| EBAN      | DISUB_POSNR               | item_1                     | STRING    | Item number of the SD document                              |
| EBAN      | DISUB_OWNER               | owner_of_stock             | STRING    | Owner of stock                                              |
| EBAN      | FLDLOGSSUPPLYPROCESS      | supply_process             | STRING    | Field Logistics: Supply Process                             |
| EBAN      | FLDLOGSDELIVISHELDONSHORE | hold_on_shore              | STRING    | Field Logistics: Hold on-shore (Indicator)                  |
| EBAN      | FSH_SEASON_YEAR           | season_year                | STRING    | Season Year                                                 |
| EBAN      | FSH_SEASON                | season                     | STRING    | Season                                                      |
| EBAN      | FSH_COLLECTION            | collection                 | STRING    | Fashion Collection                                          |
| EBAN      | FSH_THEME                 | theme                      | STRING    | Fashion Theme                                               |
| EBAN      | FSH_VAS_REL               | vas_relevant               | STRING    | VAS Relevant                                                |
| EBAN      | FSH_VAS_PRNT_ID           | item_2                     | STRING    | Item Number of Purchasing Document                          |
| EBAN      | FSH_TRANSACTION           | transaction_number         | STRING    | Transaction Number                                          |
| EBAN      | FSH_ITEM_GROUP            | item_group                 | STRING    | Item Group                                                  |
| EBAN      | FSH_ITEM                  | item_number                | STRING    | Item Number                                                 |
| EBAN      | IUID_RELEVANT             | iuid_relevant              | STRING    | IUID-Relevant                                               |
| EBAN      | SC_SR_ITEM_KEY            | catalog_item_key           | INT64     | Catalog Item Key                                            |
| EBAN      | SC_CATALOGID              | web_service_id             | STRING    | Technical Key of a Web Service (for Example - a Catalog)    |
| EBAN      | SC_CATALOGITEM            | catalog_item               | STRING    | Catalog Item Id                                             |
| EBAN      | SC_REQUESTOR              | requestor                  | STRING    | Requestor                                                   |
| EBAN      | SC_AUTHOR                 | author                     | STRING    | Author of Requisition                                       |
| EBAN      | SGT_SCAT                  | stock_segment              | STRING    | Stock Segment                                               |
| EBAN      | SGT_RCAT                  | reqmnt_segment             | STRING    | Requirement Segment                                         |
| EBAN      | WRF_CHARSTC1              | characteristic_1           | STRING    | Characteristic Value 1                                      |
| EBAN      | WRF_CHARSTC2              | characteristic_2           | STRING    | Characteristic Value 2                                      |
| EBAN      | WRF_CHARSTC3              | characteristic_3           | STRING    | Characteristic Value 3                                      |
| EBKN      | BANFN                     | purchase_req_ebkn          | STRING    | Purchase Requisition Number                                 |
| EBKN      | BNFPO                     | requisn_item_ebkn          | STRING    | Item number of purchase requisition                         |
| EBKN      | ZEBKN                     | ser_no_acc_ass             | STRING    | Serial number for PReq account assignment segment           |
| EBKN      | LOEKZ                     | deletion_ind_ebkn          | STRING    | Deletion indicator in purchasing document                   |
| EBKN      | ERDAT                     | created_on                 | DATE      | Date on which the record was created                        |
| EBKN      | ERNAM                     | created_by_ebkn            | STRING    | Name of Person who Created the Object                       |
| EBKN      | MENGE                     | quantity_ebkn              | NUMERIC   | Purchase requisition quantity                               |
| EBKN      | VPROZ                     | distribution_ebkn          | NUMERIC   | Distribution percentage in the case of multiple acct assgt  |
| EBKN      | SAKTO                     | g_l_account_ebkn           | STRING    | G/L Account Number                                          |
| EBKN      | GSBER                     | business_area              | STRING    | Business Area                                               |
| EBKN      | KOSTL                     | cost_center_ebkn           | STRING    | Cost Center                                                 |
| EBKN      | PROJN                     | not_in_use                 | STRING    | Old: Project number : No longer used --> PS_POSNR           |
| EBKN      | VBELN                     | sales_document_ebkn        | STRING    | Sales and Distribution Document Number                      |
| EBKN      | VBELP                     | item_ebkn                  | STRING    | Sales Document Item                                         |
| EBKN      | VETEN                     | schedule_line_ebkn         | STRING    | Schedule Line Number                                        |
| EBKN      | ANLN1                     | asset                      | STRING    | Main Asset Number                                           |
| EBKN      | ANLN2                     | sub_number                 | STRING    | Asset Subnumber                                             |
| EBKN      | AUFNR                     | order_number               | STRING    | Order Number                                                |
| EBKN      | WEMPF                     | recipient                  | STRING    | Goods recipient                                             |
| EBKN      | ABLAD                     | unloading_point            | STRING    | Unloading Point                                             |
| EBKN      | KOKRS                     | co_area                    | STRING    | Controlling Area                                            |
| EBKN      | XBKST                     | posting_to_cost_cent       | STRING    | Posting to cost center?                                     |
| EBKN      | XBAUF                     | to_order                   | STRING    | Post To Order                                               |
| EBKN      | XBPRO                     | to_project                 | STRING    | Post to project                                             |
| EBKN      | KSTRG                     | cost_object                | STRING    | Cost Object                                                 |
| EBKN      | PAOBJNR                   | profit_segment             | STRING    | Profitability Segment Number (CO-PA)                        |
| EBKN      | PRCTR                     | profit_center              | STRING    | Profit Center                                               |
| EBKN      | PS_PSP_PNR                | wbs_element_ebkn           | STRING    | Work Breakdown Structure Element (WBS Element)              |
| EBKN      | NPLNR                     | network                    | STRING    | Network Number for Account Assignment                       |
| EBKN      | AUFPL                     | plan_no_f_oper             | STRING    | Routing number of operations in the order                   |
| EBKN      | IMKEY                     | real_estate_key            | STRING    | Internal Key for Real Estate Object                         |
| EBKN      | APLZL                     | counter                    | STRING    | Internal counter                                            |
| EBKN      | VPTNR                     | partner                    | STRING    | Partner account number                                      |
| EBKN      | FIPOS                     | commitment_item_ebkn       | STRING    | Commitment Item                                             |
| EBKN      | RECID                     | recovery_indic             | STRING    | Recovery Indicator                                          |
| EBKN      | FISTL                     | funds_center_ebkn          | STRING    | Funds Center                                                |
| EBKN      | GEBER                     | fund_ebkn                  | STRING    | Fund                                                        |
| EBKN      | FKBER                     | functional_area_ebkn       | STRING    | Functional Area                                             |
| EBKN      | DABRZ                     | reference_date             | DATE      | Reference date for settlement                               |
| EBKN      | NETWR                     | net_value                  | NUMERIC   | Net Order Value in PO Currency                              |
| EBKN      | AUFPL_ORD                 | plan_no_f_oper_1           | STRING    | Routing number of operations in the order                   |
| EBKN      | APLZL_ORD                 | counter_1                  | STRING    | General counter for order                                   |
| EBKN      | EXTWBSELEMENT             | wbs_element_1              | STRING    | Work Breakdown Structure Element (WBS Element)              |
| EBKN      | EXTVORNR                  | network_activity           | STRING    | Network Activity                                            |
| EBKN      | SERVICE_DOC_TYPE          | service_doc_type           | STRING    | Service Document Type                                       |
| EBKN      | SERVICE_DOC_ID            | service_document           | STRING    | Service Document ID                                         |
| EBKN      | SERVICE_DOC_ITEM_ID       | service_doc_item           | STRING    | Service Document Item ID                                    |
| EBKN      | KBLNR                     | earmarked_funds_ebkn       | STRING    | Document Number for Earmarked Funds                         |
| EBKN      | KBLPOS                    | document_item_ebkn         | STRING    | Earmarked Funds: Document Item                              |
| EBKN      | LSTAR                     | activity_type              | STRING    | Activity Type                                               |
| EBKN      | PRZNR                     | business_proc              | STRING    | Business Process                                            |
| EBKN      | GRANT_NBR                 | grants_ebkn                | STRING    | Grant                                                       |
| EBKN      | FM_SPLIT_BATCH            | dist_batch_no              | STRING    | Batch to group results from an PSM assignment distribution  |
| EBKN      | FM_SPLIT_BEGRU            | auth_group                 | STRING    | Authorization group for PSM account assignment distribution |
| EBKN      | BUDGET_PD                 | budget_period_ebkn         | STRING    | Budget Period                                               |
| EBKN      | DUMMY_INCL_EEW_COBL       | dummy                      | STRING    | Custom Fields: Dummy for Use in Extension Includes          |
| EBKN      | FMFGUS_KEY                | us_govt_ebkn               | STRING    | United States Federal Government Fields                     |
| EBKN      | EGRUP                     | equity_group               | STRING    | Equity group                                                |
| EBKN      | VNAME                     | joint_venture              | STRING    | Joint venture                                               |
| EBKN      | TCOBJNR                   | object_number              | STRING    | Object number                                               |
| EBKN      | DATEOFSERVICE             | date_of_service            | DATE      | Date of Service                                             |
| EBKN      | NOTAXCORR                 | do_not_correct             | STRING    | Do Not Consider Item in Input Tax Correction                |
| EBKN      | DIFFOPTRATE               | option_rate                | NUMERIC   | Real Estate Option Rate                                     |
| EBKN      | HASDIFFOPTRATE            | diff_opt_rate              | STRING    | Use Different Option Rate                                   |
|           |                           | finalmd5key                | STRING    | MD5 key combining all columns                               |
|           |                           | input_last_update_date     | DATETIME  | Last Input read time                                        |
|           |                           | dw_active_indicator        | STRING    | Valid Indicator                                             |
|           |                           | dw_start_date              | DATETIME  | Record start date                                           |
|           |                           | dw_end_date                | DATETIME  | Record end date                                             |
|           |                           | dw_last_update_date        | DATETIME  | Record Inserted/Updated date                                |


Copyright 2021 Google Inc. All rights reserved.
The use of this software is governed by the Pre-GA Offering Terms section of the the Service Specific Terms set forth at https://cloud.google.com/terms/service-terms#general-service-terms