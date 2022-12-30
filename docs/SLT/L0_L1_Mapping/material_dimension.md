
## Table Name : material_dimension

| sap_table | sap_column              | column_name                    | data_type | description                                                  |
|-----------|-------------------------|--------------------------------|-----------|--------------------------------------------------------------|
|           |                         | material_uuid                  | STRING    | Unique Generated Id                                          |
|           |                         | material_key                   | STRING    | Material Key                                                 |
| MARA      | MANDT                   | client                         | STRING    | Client                                                       |
| MARA      | MATNR                   | material                       | STRING    | Material Number                                              |
| MARC      | WERKS                   | plant                          | STRING    | Plant                                                        |
| MARA      | ERSDA                   | created_on                     | DATE      | Created On                                                   |
| MARA      | CREATED_AT_TIME         | created_time                   | TIME      | Time of Creation                                             |
| MARA      | ERNAM                   | created_by                     | STRING    | Name of Person who Created the Object                        |
| MARA      | LAEDA                   | last_change                    | DATE      | Date of Last Change                                          |
| MARA      | AENAM                   | changed_by                     | STRING    | Name of person who changed object                            |
| MARA      | VPSTA                   | complete_status                | STRING    | Maintenance status of complete material                      |
| MARA      | PSTAT                   | maint_status                   | STRING    | Maintenance status                                           |
| MARA      | LVORM                   | df_client_level                | STRING    | Flag Material for Deletion at Client Level                   |
| MARA      | MTART                   | material_type                  | STRING    | Material type                                                |
| MARA      | MBRSH                   | industry_sector                | STRING    | Industry Sector                                              |
| MARA      | MATKL                   | material_group                 | STRING    | Material Group                                               |
| MARA      | BISMT                   | old_matl_number                | STRING    | Old material number                                          |
| MARA      | MEINS                   | base_unit                      | STRING    | Base Unit of Measure                                         |
| MARA      | BSTME                   | order_unit                     | STRING    | Purchase Order Unit of Measure                               |
| MARA      | ZEINR                   | document                       | STRING    | Document number (without document management system)         |
| MARA      | ZEIAR                   | document_type                  | STRING    | Document type (without Document Management system)           |
| MARA      | ZEIVR                   | doc_version                    | STRING    | Document version (without Document Management system)        |
| MARA      | ZEIFO                   | page_format                    | STRING    | Page format of document (without Document Management system) |
| MARA      | AESZN                   | doc_change_no                  | STRING    | Document change number (without document management system)  |
| MARA      | BLATT                   | page_number                    | STRING    | Page number of document (without Document Management system) |
| MARA      | BLANZ                   | no_of_sheets                   | STRING    | Number of sheets (without Document Management system)        |
| MARA      | FERTH                   | prod_insp_memo                 | STRING    | Production/inspection memo                                   |
| MARA      | FORMT                   | page_format_1                  | STRING    | Page Format of Production Memo                               |
| MARA      | GROES                   | size_dimensions                | STRING    | Size/dimensions                                              |
| MARA      | WRKST                   | basic_material                 | STRING    | Basic Material                                               |
| MARA      | NORMT                   | ind_std_desc                   | STRING    | Industry Standard Description (such as ANSI or ISO)          |
| MARA      | LABOR                   | lab_office                     | STRING    | Laboratory/design office                                     |
| MARA      | EKWSL                   | purch_value_key                | STRING    | Purchasing Value Key                                         |
| MARA      | BRGEW                   | gross_weight                   | NUMERIC   | Gross weight                                                 |
| MARA      | NTGEW                   | net_weight                     | NUMERIC   | Net weight                                                   |
| MARA      | GEWEI                   | weight_unit                    | STRING    | Weight Unit                                                  |
| MARA      | VOLUM                   | volume                         | NUMERIC   | Volume                                                       |
| MARA      | VOLEH                   | volume_unit                    | STRING    | Volume unit                                                  |
| MARA      | BEHVO                   | container                      | STRING    | Container requirements                                       |
| MARA      | RAUBE                   | stor_conditions                | STRING    | Storage conditions                                           |
| MARA      | TEMPB                   | temperature                    | STRING    | Temperature conditions indicator                             |
| MARA      | DISST                   | low_level_code                 | STRING    | Low-Level Code                                               |
| MARA      | TRAGR                   | trans_group                    | STRING    | Transportation Group                                         |
| MARA      | STOFF                   | haz_matl_no                    | STRING    | Hazardous material number                                    |
| MARA      | SPART                   | division                       | STRING    | Division                                                     |
| MARA      | KUNNR                   | competitor                     | STRING    | Competitor                                                   |
| MARA      | EANNR                   | ean_number                     | STRING    | European Article Number (EAN) - obsolete!!!!!                |
| MARA      | WESCH                   | gr_slips_quantity              | NUMERIC   | Quantity: Number of GR/GI slips to be printed                |
| MARA      | BWVOR                   | procure_rule                   | STRING    | Procurement rule                                             |
| MARA      | BWSCL                   | supply_source                  | STRING    | Source of Supply                                             |
| MARA      | SAISO                   | season                         | STRING    | Season Category                                              |
| MARA      | ETIAR                   | label_type                     | STRING    | Label type                                                   |
| MARA      | ETIFO                   | label_form                     | STRING    | Label form                                                   |
| MARA      | ENTAR                   | field_deact                    | STRING    | Deactivated                                                  |
| MARA      | EAN11                   | ean_upc                        | STRING    | International Article Number (EAN/UPC)                       |
| MARA      | NUMTP                   | ean_category                   | STRING    | Category of International Article Number (EAN)               |
| MARA      | LAENG                   | length_obj                     | NUMERIC   | Length                                                       |
| MARA      | BREIT                   | width                          | NUMERIC   | Width                                                        |
| MARA      | HOEHE                   | height                         | NUMERIC   | Height                                                       |
| MARA      | MEABM                   | unit                           | STRING    | Unit of Dimension for Length/Width/Height                    |
| MARA      | PRDHA                   | prod_hierarchy                 | STRING    | Product hierarchy                                            |
| MARA      | AEKLK                   | net_change_cstg                | STRING    | Stock Transfer Net Change Costing                            |
| MARA      | CADKZ                   | cad_indicator                  | STRING    | CAD Indicator                                                |
| MARA      | QMPUR                   | qm_procurement                 | STRING    | QM in Procurement Is Active                                  |
| MARA      | ERGEW                   | allowed_pkg_wt                 | NUMERIC   | Allowed packaging weight                                     |
| MARA      | ERGEI                   | unit_of_weight                 | STRING    | Unit of weight (allowed packaging weight)                    |
| MARA      | ERVOL                   | allowed_volume                 | NUMERIC   | Allowed packaging volume                                     |
| MARA      | ERVOE                   | volume_unit_1                  | STRING    | Volume unit (allowed packaging volume)                       |
| MARA      | GEWTO                   | excess_wt_tolerance            | NUMERIC   | Excess Weight Tolerance for Handling unit                    |
| MARA      | VOLTO                   | excess_volume_tol              | NUMERIC   | Excess Volume Tolerance of the Handling Unit                 |
| MARA      | VABME                   | var_order_unit                 | STRING    | Variable Purchase Order Unit Active                          |
| MARA      | KZREV                   | revision_level                 | STRING    | Revision Level Has Been Assigned to the Material             |
| MARA      | KZKFG                   | configurable                   | STRING    | Configurable Material                                        |
| MARA      | XCHPF                   | batch_mgmt_rqt                 | STRING    | Batch management requirement indicator                       |
| MARA      | VHART                   | packag_mat_type                | STRING    | Packaging Material Type                                      |
| MARA      | FUELG                   | maximum_level                  | NUMERIC   | Maximum level (by volume)                                    |
| MARA      | STFAK                   | stacking_factor                | INT64     | Stacking factor                                              |
| MARA      | MAGRV                   | matl_grp_pckmat                | STRING    | Material Group: Packaging Materials                          |
| MARA      | BEGRU                   | authorizgroup                  | STRING    | Authorization Group                                          |
| MARA      | DATAB                   | valid_from                     | DATE      | Valid-From Date                                              |
| MARA      | LIQDT                   | valid_to                       | DATE      | Deletion date                                                |
| MARA      | SAISJ                   | season_year                    | STRING    | Season Year                                                  |
| MARA      | PLGTP                   | price_band_cat                 | STRING    | Price Band Category                                          |
| MARA      | MLGUT                   | w_empties_bom                  | STRING    | Empties Bill of Material                                     |
| MARA      | EXTWG                   | ext_matl_group                 | STRING    | External Material Group                                      |
| MARA      | SATNR                   | cross_plant_cm                 | STRING    | Cross-Plant Configurable Material                            |
| MARA      | ATTYP                   | matl_category                  | STRING    | Material Category                                            |
| MARA      | KZKUP                   | co_product                     | STRING    | Indicator: Material can be co-product                        |
| MARA      | KZNFM                   | follow_up_matl                 | STRING    | Indicator: The material has a follow-up material             |
| MARA      | PMATA                   | pr_ref_matl                    | STRING    | Pricing Reference Material                                   |
| MARA      | MSTAE                   | x_plant_status                 | STRING    | Cross-Plant Material Status                                  |
| MARA      | MSTAV                   | x_dchain_status                | STRING    | Cross-distribution-chain material status                     |
| MARA      | MSTDE                   | valid_from_1                   | DATE      | Date from which the cross-plant material status is valid     |
| MARA      | MSTDV                   | valid_from_2                   | DATE      | Date from which the X-distr.-chain material status is valid  |
| MARA      | TAKLV                   | tax_class                      | STRING    | Tax classification of the material                           |
| MARA      | RBNRM                   | catalog_profile                | STRING    | Catalog Profile                                              |
| MARA      | MHDRZ                   | rem_shelf_life                 | NUMERIC   | Minimum Remaining Shelf Life                                 |
| MARA      | MHDHB                   | tot_shelf_life                 | NUMERIC   | Total shelf life                                             |
| MARA      | MHDLP                   | storage                        | NUMERIC   | Storage percentage                                           |
| MARA      | INHME                   | content_unit                   | STRING    | Content unit                                                 |
| MARA      | INHAL                   | net_contents                   | NUMERIC   | Net contents                                                 |
| MARA      | VPREH                   | comp_price_unit                | NUMERIC   | Comparison price unit                                        |
| MARA      | ETIAG                   | label_matl_grpg                | STRING    | IS-R Labeling: material grouping (deactivated in 4.0)        |
| MARA      | INHBR                   | gross_contents                 | NUMERIC   | Gross contents                                               |
| MARA      | CMETH                   | conv_method                    | STRING    | Quantity Conversion Method                                   |
| MARA      | CUOBF                   | int_object_no                  | STRING    | Internal object number                                       |
| MARA      | KZUMW                   | envt_relevant                  | STRING    | Environmentally Relevant                                     |
| MARA      | KOSCH                   | prod_allocation                | STRING    | Product allocation determination procedure                   |
| MARA      | SPROF                   | pricing_profile                | STRING    | Pricing profile for variants                                 |
| MARA      | NRFHG                   | disc_in_kind                   | STRING    | Material qualifies for discount in kind                      |
| MARA      | MFRPN                   | mfr_part_number                | STRING    | Manufacturer Part Number                                     |
| MARA      | MFRNR                   | manufacturer                   | STRING    | Manufacturer number                                          |
| MARA      | BMATN                   | int_material_no                | STRING    | Number of firms own (internal) inventory-managed material    |
| MARA      | MPROF                   | mfr_part_profile               | STRING    | Mfr part profile                                             |
| MARA      | KZWSM                   | units_meas_use                 | STRING    | Units of measure usage                                       |
| MARA      | SAITY                   | rollout                        | STRING    | Rollout in a Season                                          |
| MARA      | PROFL                   | dgindprofile                   | STRING    | Dangerous Goods Indicator Profile                            |
| MARA      | IHIVI                   | highly_viscous                 | STRING    | Indicator: Highly Viscous                                    |
| MARA      | ILOOS                   | in_bulk_liquid                 | STRING    | Indicator: In Bulk/Liquid                                    |
| MARA      | SERLV                   | serializlevel                  | STRING    | Level of Explicitness for Serial Number                      |
| MARA      | KZGVH                   | closed                         | STRING    | Packaging Material is Closed Packaging                       |
| MARA      | XGCHP                   | batch_rec_req                  | STRING    | Approved Batch Record Required                               |
| MARA      | KZEFF                   | assign_eff_vals                | STRING    | Assign effectivity parameter values/ override change numbers |
| MARA      | COMPL                   | comp_level                     | STRING    | Material completion level                                    |
| MARA      | IPRKZ                   | period_ind                     | STRING    | Period Indicator for Shelf Life Expiration Date              |
| MARA      | RDMHD                   | rounding_rule                  | STRING    | Rounding rule for calculation of SLED                        |
| MARA      | PRZUS                   | prodcomposition                | STRING    | Indicator: Product composition printed on packaging          |
| MARA      | MTPOS_MARA              | genitemcatgroup                | STRING    | General item category group                                  |
| MARA      | BFLME                   | log_variants                   | STRING    | Generic Material with Logistical Variants                    |
| MARA      | MATFI                   | material_locked                | STRING    | Material Is Locked                                           |
| MARA      | CMREL                   | cm_relevant                    | STRING    | Relevant for Configuration Management                        |
| MARA      | BBTYP                   | astmt_list_type                | STRING    | Assortment List Type                                         |
| MARA      | SLED_BBD                | expiration_date                | STRING    | Expiration Date                                              |
| MARA      | GTIN_VARIANT            | ean_variant                    | STRING    | Global Trade Item Number Variant                             |
| MARA      | GENNR                   | genericmaterial                | STRING    | Material Number of the Generic Material in Prepack Materials |
| MARA      | RMATP                   | ref_mat_for_pckg               | STRING    | Reference material for materials packed in same way          |
| MARA      | GDS_RELEVANT            | gds_relevant                   | STRING    | Indicator: Global Data Synchronization-Relevant              |
| MARA      | WEORA                   | origin_accept                  | STRING    | Acceptance At Origin                                         |
| MARA      | HUTYP_DFLT              | stand_hu_type                  | STRING    | Standard HU Type                                             |
| MARA      | PILFERABLE              | pilferable                     | STRING    | Pilferable                                                   |
| MARA      | WHSTC                   | wh_stor_cond                   | STRING    | Warehouse Storage Condition                                  |
| MARA      | WHMATGR                 | wh_mat_grp                     | STRING    | Warehouse Material Group                                     |
| MARA      | HNDLCODE                | handling_ind                   | STRING    | Handling Indicator                                           |
| MARA      | HAZMAT                  | haz_sub                        | STRING    | Relevant for Hazardous Substances                            |
| MARA      | HUTYP                   | hutyp                          | STRING    | Handling Unit Type                                           |
| MARA      | TARE_VAR                | variable_tw                    | STRING    | Variable Tare Weight                                         |
| MARA      | MAXC                    | max_capacity                   | NUMERIC   | Maximum Allowed Capacity of Packaging Material               |
| MARA      | MAXC_TOL                | overcapac_tol                  | NUMERIC   | Overcapacity Tolerance of the Handling Unit                  |
| MARA      | MAXL                    | max_length                     | NUMERIC   | Maximum Packing Length of Packaging Material                 |
| MARA      | MAXB                    | max_pack_width                 | NUMERIC   | Maximum Packing Width of Packaging Material                  |
| MARA      | MAXH                    | max_height                     | NUMERIC   | Maximum Packing Height of Packaging Material                 |
| MARA      | MAXDIM_UOM              | unit_of_measure                | STRING    | Unit of Measure for Maximum Packing Length/Width/Height      |
| MARA      | HERKL                   | ctry_of_origin                 | STRING    | Country of Origin of Material (Non-Preferential Origin)      |
| MARA      | MFRGR                   | mat_freight_grp                | STRING    | Material freight group                                       |
| MARA      | QQTIME                  | quarant_per                    | NUMERIC   | Quarantine Period                                            |
| MARA      | QQTIMEUOM               | time_unit                      | STRING    | Time Unit for Quarantine Period                              |
| MARA      | QGRP                    | qual_insp_grp                  | STRING    | Quality Inspection Group                                     |
| MARA      | SERIAL                  | serial_no_prf                  | STRING    | Serial Number Profile                                        |
| MARA      | PS_SMARTFORM            | form_name                      | STRING    | Form Name                                                    |
| MARA      | LOGUNIT                 | logistics_uom                  | STRING    | EWM CW: Logistics Unit of Measure                            |
| MARA      | CWQREL                  | cw_relevant                    | STRING    | EWM CW: Material Is a Catch Weight Material                  |
| MARA      | CWQPROC                 | cw_profile                     | STRING    | EWM CW: Catch Weight Profile for Entering CW Quantity        |
| MARA      | CWQTOLGR                | catch_wt_tol_grp               | STRING    | Catch Weight Tolerance Group                                 |
| MARA      | ADPROF                  | adjust_profile                 | STRING    | Adjustment Profile                                           |
| MARA      | IPMIPPRODUCT            | intel_property                 | STRING    | ID for an Intellectual Property (CRM Product)                |
| MARA      | ALLOW_PMAT_IGNO         | var_price_allowed              | STRING    | Variant Price Allowed (for Material Master)                  |
| MARA      | MEDIUM                  | medium                         | STRING    | Medium                                                       |
| MARA      | COMMODITY               | commodity                      | STRING    | Commodity                                                    |
| MARA      | ANIMAL_ORIGIN           | animal_origin                  | STRING    | Indicator: Contains Non-Textile Parts of Animal Origin       |
| MARA      | TEXTILE_COMP_IND        | texcompactive                  | STRING    | Indicator: New Textile Composition Function                  |
| MARA      | LAST_CHANGED_TIME       | last_chgd_time                 | TIME      | Time of Last Change                                          |
| MARA      | MATNR_EXTERNAL          | material_1                     | STRING    | External Representation of Material Number                   |
| MARA      | CHML_CMPLNC_RLVNCE_IND  | chemical_compliance_relevance  | STRING    | Chemical Compliance Relevance Indicator                      |
| MARA      | LOGISTICAL_MAT_CATEGORY | logl_material_cat              | STRING    | Category of a Logistical Material                            |
| MARA      | SALES_MATERIAL          | sales_material_no              | STRING    | Material Number of a Sales Material                          |
| MARA      | IDENTIFICATION_TAG_TYPE | tag_type                       | STRING    | Identification Tag Type                                      |
| MARA      | SGT_CSGR                | seg_structure                  | STRING    | Segmentation Structure                                       |
| MARA      | SGT_COVSA               | seg_strategy                   | STRING    | Segmentation Strategy                                        |
| MARA      | SGT_STAT                | seg_status                     | STRING    | Segmentation Material Master Status                          |
| MARA      | SGT_SCOPE               | seg_scope                      | STRING    | Segmentation Strategy Scope                                  |
| MARA      | SGT_REL                 | seg_relevant                   | STRING    | Segmentation Relevant                                        |
| MARA      | ANP                     | anp_code                       | STRING    | ANP Code                                                     |
| MARA      | PSM_CODE                | psm_code                       | STRING    | Code of Protected Species Management                         |
| MARA      | FSH_MG_AT1              | fsh_attribute1                 | STRING    | Fashion Information Field: 1                                 |
| MARA      | FSH_MG_AT2              | fsh_attribute2                 | STRING    | Fashion Information Field: 2                                 |
| MARA      | FSH_MG_AT3              | fsh_attribute3                 | STRING    | Fashion Information Field: 3                                 |
| MARA      | FSH_SEALV               | season_usage                   | STRING    | Indicator: Use of Season                                     |
| MARA      | FSH_SEAIM               | season_act_im                  | STRING    | Indicator: Season Active in Inventory Management             |
| MARA      | FSH_SC_MID              | mat_conv_id                    | STRING    | Material Conversion ID for Characteristic Value Conversion   |
| MARA      | DUMMY_PRD_INCL_EEW_PS   | dummy_field                    | STRING    | Dummy Field                                                  |
| MARA      | SCM_MATID_GUID16        | product                        | BYTES     | Internal Key for Product                                     |
| MARA      | SCM_MATID_GUID22        | product_id                     | STRING    | Internal Number (UID) for Product                            |
| MARA      | SCM_MATURITY_DUR        | maturation_time                | NUMERIC   | Maturation Time                                              |
| MARA      | SCM_SHLF_LFE_REQ_MIN    | req_min_sh_life                | NUMERIC   | Obsolete. Use /SAPAPO/MATKEY-/SAPAPO/SHELF_LIFE_REQ_MIN.     |
| MARA      | SCM_SHLF_LFE_REQ_MAX    | req_max_sh_life                | NUMERIC   | Required Maximum Shelf Life                                  |
| MARA      | SCM_PUOM                | preferred_uom                  | STRING    | Preferred Alternative UoM for Warehouse Operations           |
| MARA      | RMATP_PB                | reference_product              | STRING    | Reference Product for Package Building                       |
| MARA      | PROD_SHAPE              | product_shape                  | STRING    | Product Shape                                                |
| MARA      | MO_PROFILE_ID           | prod_orient_prof               | STRING    | Product Orientation Profile                                  |
| MARA      | OVERHANG_TRESH          | overhang_threshold             | NUMERIC   | Overhang Threshold [%]                                       |
| MARA      | BRIDGE_TRESH            | bridge_threshold               | NUMERIC   | Bridge Threshold [%]                                         |
| MARA      | BRIDGE_MAX_SLOPE        | maximum_slope                  | NUMERIC   | Maximum Slope for Bridges [°]                                |
| MARA      | HEIGHT_NONFLAT          | abs_height_thresh              | NUMERIC   | Absolute Height Threshold for Stacking on Non-Flat Surface   |
| MARA      | HEIGHT_NONFLAT_UOM      | abs_height_thresh_1            | STRING    | UoM of Abs. Height Threshold (Stacking on Non-Flat Surface)  |
| MARA      | SCM_KITCOMP             | product_for_kito               | STRING    | Product for Kit-to-Order                                     |
| MARA      | SCM_PROD_PAOOPT         | procure_to_order               | STRING    | Product Can Be Procure-to-Order                              |
| MARA      | SCM_BOD_DEPLVL          | push_depl_fr_supp              | STRING    | Carry Out Push Deployment from Supplier                      |
| MARA      | SCM_RESTRICT_INVBAL     | no_inv_balancing               | STRING    | Inventory Balancing Not Allowed                              |
| MARA      | SCM_DRP_GL_STOCK        | glb_stk_entry_loc              | STRING    | DRP: Global Stock on Entry Location                          |
| MARA      | SCM_EXCL_EXPEDITE       | no_express_shipment            | STRING    | Exclude from Express Shipment                                |
| MARA      | __CWM__XCWMAT           | cw_material                    | STRING    | Material Is Activated for CW                                 |
| MARA      | __CWM__VALUM            | valuation_uom                  | STRING    | Valuation Unit of Measure                                    |
| MARA      | __CWM__TOLGR            | tolerance_group                | STRING    | Tolerance Group for CWM                                      |
| MARA      | __CWM__TARA             | fixed_tare                     | STRING    | Consider Complete Tare for each Reference Unit of Measure    |
| MARA      | __CWM__TARUM            | tare_calc                      | STRING    | Reference Unit of Measure for the TARE Calculation           |
| MARA      | __BEV1__LULEINH         | loading_units                  | STRING    | Loading Units                                                |
| MARA      | __BEV1__LULDEGRP        | loading_unit_group             | STRING    | Loading Unit Group: IS Beverage                              |
| MARA      | __BEV1__NESTRUCCAT      | struct_category                | STRING    | Structure Category for Material Relationship                 |
| MARA      | __DSD__SL_TOLTYP        | tolerance_type                 | STRING    | Tolerance Type ID                                            |
| MARA      | __DSD__SV_CNT_GRP       | counting_group                 | STRING    | Counting Group                                               |
| MARA      | __DSD__VC_GROUP         | dsd_grouping                   | STRING    | DSD Grouping                                                 |
| MARA      | __SAPMP__KADU           | cable_diameter                 | NUMERIC   | Cable Diameter                                               |
| MARA      | __SAPMP__ABMEIN         | unit_for_dimensions            | STRING    | Unit for Dimensions                                          |
| MARA      | __SAPMP__KADP           | cabdia_allow                   | NUMERIC   | Cable Diameter Allowance in Percent                          |
| MARA      | __SAPMP__BRAD           | bending_factor                 | NUMERIC   | Bending Factor                                               |
| MARA      | __SAPMP__SPBI           | inner_width                    | NUMERIC   | Inner Width                                                  |
| MARA      | __SAPMP__TRAD           | outer_diameter                 | NUMERIC   | Outer Diameter                                               |
| MARA      | __SAPMP__KEDU           | core_diameter                  | NUMERIC   | Core Diameter                                                |
| MARA      | __SAPMP__SPTR           | load_capacity                  | NUMERIC   | Load Capacity                                                |
| MARA      | __SAPMP__FBDK           | r_o_flange_thick               | NUMERIC   | Run-Out Flange Thickness                                     |
| MARA      | __SAPMP__FBHK           | r_o_flange_height              | NUMERIC   | R-O Flange Height                                            |
| MARA      | __SAPMP__RILI           | coil_delivery                  | STRING    | Coil Delivery                                                |
| MARA      | __SAPMP__FBAK           | run_out_flange                 | STRING    | Run-Out Flange                                               |
| MARA      | __SAPMP__AHO            | no_vert_layers                 | STRING    | Maximum Number of Vertical Layers                            |
| MARA      | __SAPMP__MIFRR          | clearance                      | NUMERIC   | Smallest Permissible Reel Clearance for a Cable              |
| MARA      | __STTPEC__SERTYPE       | serialization_type             | INT64     | Serialization Type                                           |
| MARA      | __STTPEC__SYNCACT       | sync_active                    | STRING    | Synchronization Active                                       |
| MARA      | __STTPEC__SYNCTIME      | last_synchronized              | NUMERIC   | Synchronization Time Stamp                                   |
| MARA      | __STTPEC__SYNCCHG       | changed_since_int              | STRING    | Indicator Changed Since Integration                          |
| MARA      | __STTPEC__COUNTRY_REF   | prof_rel_country               | STRING    | Profile Relevant Country                                     |
| MARA      | __STTPEC__PRDCAT        | product_category               | STRING    | Product Category                                             |
| MARA      | __VSO__R_TILT_IND       | tilting_allowed                | STRING    | Material may be Tilted (Vehicle Space Optimization)          |
| MARA      | __VSO__R_STACK_IND      | no_stacking                    | STRING    | Stacking not Allowed (VSO)                                   |
| MARA      | __VSO__R_BOT_IND        | bottom_layer                   | STRING    | Bottom Layer (Vehicle Space Optimization)                    |
| MARA      | __VSO__R_TOP_IND        | top_layer                      | STRING    | Top Layer (VSO)                                              |
| MARA      | __VSO__R_STACK_NO       | stacking_factor_1              | STRING    | Stacking Factor (Vehicle Space Optimization)                 |
| MARA      | __VSO__R_PAL_IND        | load_w_o_pkm                   | STRING    | Load without Packaging Material (VSO)                        |
| MARA      | __VSO__R_PAL_OVR_D      | overhang_depth                 | NUMERIC   | Permissible Overhang (Depth) of Packaging Material (VSO)     |
| MARA      | __VSO__R_PAL_OVR_W      | overhang_width                 | NUMERIC   | Permissible Overhang (Width) of Shipping Material (VSO)      |
| MARA      | __VSO__R_PAL_B_HT       | max_stack_hght                 | NUMERIC   | Maximum Stacking Height of the Packaging Material (VSO)      |
| MARA      | __VSO__R_PAL_MIN_H      | min_stack_hght                 | NUMERIC   | Minimum Stacking Height of the Packaging Material (VSO)      |
| MARA      | __VSO__R_TOL_B_HT       | stackh_toleran                 | NUMERIC   | Tolerance to Exceed the Max. Stacking Height (VSO)           |
| MARA      | __VSO__R_NO_P_GVH       | no_mat_pkm                     | STRING    | Number of Materials for each Closed PKM (VSO)                |
| MARA      | __VSO__R_QUAN_UNIT      | uom_vso                        | STRING    | Unit of Measure Vehicle Space Optimization                   |
| MARA      | __VSO__R_KZGVH_IND      | closed_pkm_req                 | STRING    | Closed Packaging Material Required (VSO)                     |
| MARA      | PACKCODE                | packaging_code                 | STRING    | Packaging Code                                               |
| MARA      | DG_PACK_STATUS          | dg_pckg_status                 | STRING    | Dangerous Goods Packaging Status                             |
| MARA      | SRV_DURA                | work_duration                  | NUMERIC   | Duration of Work                                             |
| MARA      | SRV_DURA_UOM            | unit_1                         | STRING    | Unit for Duration of Work                                    |
| MARA      | SRV_SERWI               | service_profile                | STRING    | Service Profile                                              |
| MARA      | SRV_ESCAL               | response_prof                  | STRING    | Response Profile                                             |
| MARA      | SOM_CYCLE               | billing_cycle                  | STRING    | Billing Cycle                                                |
| MARA      | SOM_CYCLE_RULE          | billing_cycle_determ           | STRING    | Billing Cycle Determination Rule ID                          |
| MARA      | SOM_TC_SCHEMA           | assignment_schema              | STRING    | Assignment Schema                                            |
| MARA      | MCOND                   | condition_mgmt                 | STRING    | Material Condition Management                                |
| MARA      | RETDELC                 | return_code                    | STRING    | Return Code                                                  |
| MARA      | LOGLEV_RETO             | return_to_log_level            | STRING    | Return to Logistics Level                                    |
| MARA      | NSNID                   | nsn                            | STRING    | NATO Stock Number                                            |
| MARA      | ICFA                    | ammunition_code                | STRING    | Interchangeability Code for Ammunition                       |
| MARA      | RIC_ID                  | ric_id                         | INT64     | Reportable Item Code - Numerical ID                          |
| MARA      | OVLPN                   | overlength_part_num            | STRING    | Overlength Part Number                                       |
| MARA      | ADSPC_SPC               | spare_prt_class_code           | STRING    | Spare Part Class Code                                        |
| MARA      | VARID                   | var_obj_id                     | BYTES     | GUID Variable Object Identification                          |
| MARA      | MSBOOKPARTNO            | ms_book_part_no                | STRING    | Manufacturer Book Part Number                                |
| MARA      | DPCBT                   | su_btch_default_val            | STRING    | Single-Unit Batch Def. Value                                 |
| MARA      | XGRDT                   | sng_un_bch_rcp                 | STRING    | Goods Receipt to Posted Single-Unit Batch Allowed            |
| MARA      | IMATN                   | fff_class                      | STRING    | FFF class                                                    |
| MARA      | PICNUM                  | chain_no                       | STRING    | Supersession chain number                                    |
| MARA      | BSTAT                   | creation_status                | STRING    | Creation Status - Seasonal Procurement                       |
| MARA      | COLOR_ATINN             | internal_char                  | STRING    | Internal Charactieristic Number for Color Characteristics    |
| MARA      | SIZE1_ATINN             | internal_char_1                | STRING    | Internal Char. Number for Characteristics for Main Sizes     |
| MARA      | SIZE2_ATINN             | internal_char_2                | STRING    | Internal Char. Number for Characteristics for Second Sizes   |
| MARA      | COLOR                   | color                          | STRING    | Characteristic Value for Colors of Variants                  |
| MARA      | SIZE1                   | main_size                      | STRING    | Characteristic Value for Main Sizes of Variants              |
| MARA      | SIZE2                   | second_size                    | STRING    | Characteristic Value for Second Size for Variants            |
| MARA      | FREE_CHAR               | char_value                     | STRING    | Characteristic Value for Evaluation Purposes                 |
| MARA      | CARE_CODE               | care_code                      | STRING    | Care Codes (such as Washing Code, Ironing Code, etc.)        |
| MARA      | BRAND_ID                | brand                          | STRING    | Brand                                                        |
| MARA      | FIBER_CODE1             | component_1                    | STRING    | Fiber Code for Textiles (Component 1)                        |
| MARA      | FIBER_PART1             | perc_share_1                   | STRING    | Percentage Share of Fiber (Component 1)                      |
| MARA      | FIBER_CODE2             | component_2                    | STRING    | Fiber Code for Textiles (Component 2)                        |
| MARA      | FIBER_PART2             | perc_share_2                   | STRING    | Percentage Share of Fiber (Component 2)                      |
| MARA      | FIBER_CODE3             | component_3                    | STRING    | Fiber Code for Textiles (Component 3)                        |
| MARA      | FIBER_PART3             | perc_share_3                   | STRING    | Percentage Share of Fiber (Component 3)                      |
| MARA      | FIBER_CODE4             | component_4                    | STRING    | Fiber Code for Textiles (Component 4)                        |
| MARA      | FIBER_PART4             | perc_share_4                   | STRING    | Percentage Share of Fiber (Component 4)                      |
| MARA      | FIBER_CODE5             | component_5                    | STRING    | Fiber Code for Textiles (Component 5)                        |
| MARA      | FIBER_PART5             | perc_share_5                   | STRING    | Percentage Share of Fiber (Component 5)                      |
| MARA      | FASHGRD                 | fashion_grade                  | STRING    | Fashion Grade                                                |
| MARC      | MATNR                   | material_marc                  | STRING    | Material Number                                              |
| MARC      | PSTAT                   | maint_status_marc              | STRING    | Maintenance status                                           |
| MARC      | LVORM                   | df_plant_level                 | STRING    | Flag Material for Deletion at Plant Level                    |
| MARC      | BWTTY                   | valuation_cat                  | STRING    | Valuation Category                                           |
| MARC      | XCHAR                   | batches                        | STRING    | Batch management indicator (internal)                        |
| MARC      | MMSTA                   | p_s_matl_status                | STRING    | Plant-Specific Material Status                               |
| MARC      | MMSTD                   | valid_from_marc                | DATE      | Date from Which the Plant-Specific Material Status Is Valid  |
| MARC      | MAABC                   | abc_indicator                  | STRING    | ABC Indicator                                                |
| MARC      | KZKRI                   | critical_part                  | STRING    | Indicator: Critical part                                     |
| MARC      | EKGRP                   | purch_group                    | STRING    | Purchasing Group                                             |
| MARC      | AUSME                   | unit_of_issue                  | STRING    | Unit of issue                                                |
| MARC      | DISPR                   | mrp_profile                    | STRING    | Material: MRP profile                                        |
| MARC      | DISMM                   | mrp_type                       | STRING    | MRP Type                                                     |
| MARC      | DISPO                   | mrp_controller                 | STRING    | MRP Controller                                               |
| MARC      | KZDIE                   | mrpctrllr_buyer                | STRING    | Indicator: MRP controller is buyer (deactivated)             |
| MARC      | PLIFZ                   | pl_deliv_time                  | NUMERIC   | Planned Delivery Time in Days                                |
| MARC      | WEBAZ                   | gr_proc_time                   | NUMERIC   | Goods receipt processing time in days                        |
| MARC      | PERKZ                   | period_ind_marc                | STRING    | Period Indicator                                             |
| MARC      | AUSSS                   | assembly_scrap                 | NUMERIC   | Assembly scrap in percent                                    |
| MARC      | DISLS                   | lot_sizing_procedure           | STRING    | Lot Sizing Procedure within Materials Planning               |
| MARC      | BESKZ                   | procurement                    | STRING    | Procurement Type                                             |
| MARC      | SOBSL                   | specprocurement                | STRING    | Special procurement type                                     |
| MARC      | MINBE                   | reorder_point                  | NUMERIC   | Reorder Point                                                |
| MARC      | EISBE                   | safety_stock                   | NUMERIC   | Safety stock                                                 |
| MARC      | BSTMI                   | min_lot_size                   | NUMERIC   | Minimum Lot Size                                             |
| MARC      | BSTMA                   | max_lot_size                   | NUMERIC   | Maximum Lot Size                                             |
| MARC      | BSTFE                   | fixed_lot_size                 | NUMERIC   | Fixed lot size                                               |
| MARC      | BSTRF                   | rounding_value                 | NUMERIC   | Rounding value for purchase order quantity                   |
| MARC      | MABST                   | max_stock_level                | NUMERIC   | Maximum Stock Level                                          |
| MARC      | LOSFX                   | lsi_costs                      | NUMERIC   | Lot-Size-Independent Costs                                   |
| MARC      | SBDKZ                   | indiv_coll                     | STRING    | Dependent requirements ind. for individual and coll. reqmts  |
| MARC      | LAGPR                   | storage_costs                  | STRING    | Storage Costs Percentage Code                                |
| MARC      | ALTSL                   | selectionmethod                | STRING    | Method for Selecting Alternative Bills of Material           |
| MARC      | KZAUS                   | discontin_ind                  | STRING    | Discontinuation indicator                                    |
| MARC      | AUSDT                   | eff_out_date                   | DATE      | Effective-Out Date                                           |
| MARC      | NFMAT                   | follow_up_matl_marc            | STRING    | Follow-Up Material                                           |
| MARC      | KZBED                   | reqmts_grouping                | STRING    | Indicator for Requirements Grouping                          |
| MARC      | MISKZ                   | mixed_mrp                      | STRING    | Mixed MRP indicator                                          |
| MARC      | FHORI                   | schedmargin_key                | STRING    | Scheduling Margin Key for Floats                             |
| MARC      | PFREI                   | autom_fix_pl_ords              | STRING    | Indicator: automatic fixing of planned orders                |
| MARC      | FFREI                   | autom_release                  | STRING    | Release indicator for production orders                      |
| MARC      | RGEKZ                   | backflush                      | STRING    | Indicator: Backflush                                         |
| MARC      | FEVOR                   | prodn_supervisor               | STRING    | Production Supervisor                                        |
| MARC      | BEARZ                   | processing_time                | NUMERIC   | Processing time                                              |
| MARC      | RUEZT                   | setup_time                     | NUMERIC   | Setup and teardown time                                      |
| MARC      | TRANZ                   | interoperation                 | NUMERIC   | Interoperation time                                          |
| MARC      | BASMG                   | base_quantity                  | NUMERIC   | Base quantity                                                |
| MARC      | DZEIT                   | inhseprodtime                  | NUMERIC   | In-house production time                                     |
| MARC      | MAXLZ                   | max_storage                    | NUMERIC   | Maximum Storage Period                                       |
| MARC      | LZEIH                   | time_unit_marc                 | STRING    | Unit for maximum storage period                              |
| MARC      | KZPRO                   | withd_fm_pr_bin                | STRING    | Indicator: withdrawal of stock from production bin           |
| MARC      | GPMKZ                   | rough_cut_plng                 | STRING    | Indicator: Material Included in Rough-Cut Planning           |
| MARC      | UEETO                   | overdely_tol                   | NUMERIC   | Overdelivery tolerance limit                                 |
| MARC      | UEETK                   | unlimited                      | STRING    | Indicator: Unlimited Overdelivery Allowed                    |
| MARC      | UNETO                   | underdely_tol                  | NUMERIC   | Underdelivery tolerance limit                                |
| MARC      | WZEIT                   | total_rl_time                  | NUMERIC   | Total replenishment lead time (in workdays)                  |
| MARC      | ATPKZ                   | replacemt_part                 | STRING    | Replacement part                                             |
| MARC      | VZUSL                   | surcharge                      | NUMERIC   | Surcharge factor for cost in percent                         |
| MARC      | HERBL                   | state_of_manufac               | STRING    | State of manufacture                                         |
| MARC      | INSMK                   | post_to_insp_stk               | STRING    | Post to Inspection Stock                                     |
| MARC      | SPROZ                   | sample                         | NUMERIC   | Sample for quality inspection (in %) (deactivated)           |
| MARC      | QUAZT                   | quarantine                     | NUMERIC   | Quarantine period (deactivated)                              |
| MARC      | SSQSS                   | qm_control_key                 | STRING    | Control Key for Quality Management in Procurement            |
| MARC      | MPDAU                   | mean_insp_dur                  | NUMERIC   | Mean inspection duration (deactivated)                       |
| MARC      | KZPPV                   | insp_plan_ind                  | STRING    | Indicator for inspection plan (deactivated)                  |
| MARC      | KZDKZ                   | doc_required                   | STRING    | Documentation required indicator                             |
| MARC      | WSTGH                   | active_subst                   | NUMERIC   | Active substance content (deactivated)                       |
| MARC      | PRFRQ                   | insp_interval                  | NUMERIC   | Interval Until Next Recurring Inspection                     |
| MARC      | NKMPR                   | next_inspection                | DATE      | Date according to check sampling inspection (deactivated)    |
| MARC      | UMLMC                   | stock_in_tfr                   | NUMERIC   | Stock in transfer (plant to plant)                           |
| MARC      | LADGR                   | loading_group                  | STRING    | Loading Group                                                |
| MARC      | XCHPF                   | batch_mgmt_rqt_plnt            | STRING    | Batch Management Requirement Indicator for Plant             |
| MARC      | USEQU                   | quota_arr_usage                | STRING    | Quota arrangement usage                                      |
| MARC      | LGRAD                   | service_level                  | NUMERIC   | Service level                                                |
| MARC      | AUFTL                   | splitting_ind                  | STRING    | Splitting Indicator                                          |
| MARC      | PLVAR                   | plan_version                   | STRING    | Plan Version                                                 |
| MARC      | OTYPE                   | object_type                    | STRING    | Object Type                                                  |
| MARC      | OBJID                   | object_id                      | STRING    | Object ID                                                    |
| MARC      | MTVFP                   | avail_check                    | STRING    | Checking Group for Availability Check                        |
| MARC      | PERIV                   | fi_year_variant                | STRING    | Fiscal Year Variant                                          |
| MARC      | KZKFK                   | corr_factors                   | STRING    | Indicator: take correction factors into account              |
| MARC      | VRVEZ                   | setup_time_1                   | NUMERIC   | Shipping setup time                                          |
| MARC      | VBAMG                   | base_quantity_1                | NUMERIC   | Base quantity for capacity planning in shipping              |
| MARC      | VBEAZ                   | processing_time_1              | NUMERIC   | Shipping processing time                                     |
| MARC      | LIZYK                   | deactivated                    | STRING    | Deactivated                                                  |
| MARC      | BWSCL                   | supply_source_marc             | STRING    | Source of Supply                                             |
| MARC      | KAUTB                   | autom_po                       | STRING    | Indicator: automatic purchase order allowed                  |
| MARC      | KORDB                   | source_list                    | STRING    | Indicator: Source list requirement                           |
| MARC      | STAWN                   | commodity_code                 | STRING    | Commodity Code                                               |
| MARC      | HERKL                   | ctry_of_origin_marc            | STRING    | Country of Origin of Material (Non-Preferential Origin)      |
| MARC      | HERKR                   | reg_of_origin                  | STRING    | Region of Origin of Material (Non-Preferential Origin)       |
| MARC      | EXPME                   | comm_code_unit                 | STRING    | Unit of measure for commodity code (foreign trade)           |
| MARC      | MTVER                   | intrastat_group                | STRING    | Material Group for Intrastat                                 |
| MARC      | PRCTR                   | profit_center                  | STRING    | Profit Center                                                |
| MARC      | TRAME                   | stk_in_transit                 | NUMERIC   | Stock in Transit                                             |
| MARC      | MRPPP                   | plng_calendar                  | STRING    | PPC Planning Calendar                                        |
| MARC      | SAUFT                   | repetitive_mfg                 | STRING    | Indicator: Repetitive Manufacturing Allowed                  |
| MARC      | FXHOR                   | plng_time_fence                | STRING    | Planning time fence                                          |
| MARC      | VRMOD                   | consmption_mode                | STRING    | Consumption mode                                             |
| MARC      | VINT1                   | bwd_cons_per                   | STRING    | Consumption period: backward                                 |
| MARC      | VINT2                   | fwd_cons_period                | STRING    | Consumption period: forward                                  |
| MARC      | VERKZ                   | version                        | STRING    | Version Indicator                                            |
| MARC      | STLAL                   | alternative                    | STRING    | Alternative BOM                                              |
| MARC      | STLAN                   | usage                          | STRING    | BOM Usage                                                    |
| MARC      | PLNNR                   | group_key_list                 | STRING    | Key for Task List Group                                      |
| MARC      | APLAL                   | group_counter                  | STRING    | Group Counter                                                |
| MARC      | LOSGR                   | cstg_lot_size                  | NUMERIC   | Lot Size for Product Costing                                 |
| MARC      | SOBSK                   | specproctype                   | STRING    | Special Procurement Type for Costing                         |
| MARC      | FRTME                   | production_unit                | STRING    | Production unit                                              |
| MARC      | LGPRO                   | prod_stor_loc                  | STRING    | Issue Storage Location                                       |
| MARC      | DISGR                   | mrp_group                      | STRING    | MRP Group                                                    |
| MARC      | KAUSF                   | component_scrap                | NUMERIC   | Component Scrap in Percent                                   |
| MARC      | QZGTP                   | certificatetype                | STRING    | Certificate Type                                             |
| MARC      | QMATV                   | insp_setup                     | STRING    | Inspection Setup Exists for Material/Plant                   |
| MARC      | TAKZT                   | takt_time                      | NUMERIC   | Takt time                                                    |
| MARC      | RWPRO                   | coverage_prof                  | STRING    | Range of coverage profile                                    |
| MARC      | COPAM                   | field_name                     | STRING    | Local field name for CO/PA link to SOP                       |
| MARC      | ABCIN                   | cc_phys_inv                    | STRING    | Physical Inventory Indicator for Cycle Counting              |
| MARC      | AWSLS                   | variance_key                   | STRING    | Variance Key                                                 |
| MARC      | SERNP                   | serialnoprofile                | STRING    | Serial Number Profile                                        |
| MARC      | CUOBJ                   | int_object_no_marc             | STRING    | Internal object number                                       |
| MARC      | STDPD                   | confble_matl                   | STRING    | Configurable material                                        |
| MARC      | SFEPR                   | rem_profile                    | STRING    | Repetitive Manufacturing Profile                             |
| MARC      | XMCNG                   | neg_stocks                     | STRING    | Negative stocks allowed in plant                             |
| MARC      | QSSYS                   | target_qm_sys                  | STRING    | Required QM System for Supplier                              |
| MARC      | LFRHY                   | planning_cycle                 | STRING    | Planning cycle                                               |
| MARC      | RDPRF                   | rnding_profile                 | STRING    | Rounding Profile                                             |
| MARC      | VRBMT                   | ref_matl_cons                  | STRING    | Reference material for consumption                           |
| MARC      | VRBWK                   | ref_plant_cons                 | STRING    | Reference plant for consumption                              |
| MARC      | VRBDT                   | date_to                        | DATE      | To date of the material to be copied for consumption         |
| MARC      | VRBFK                   | multiplier                     | NUMERIC   | Multiplier for reference material for consumption            |
| MARC      | AUTRU                   | autom_reset                    | STRING    | Reset Forecast Model Automatically                           |
| MARC      | PREFE                   | cus_preference                 | STRING    | Customs Preference                                           |
| MARC      | PRENC                   | exemption_cert                 | STRING    | Exemption certificate: Indicator for legal control           |
| MARC      | PRENO                   | exempt_cert_no                 | STRING    | Exemption certificate number for legal control               |
| MARC      | PREND                   | iss_date_of_crt                | DATE      | Exemption certificate: Issue date of exemption certificate   |
| MARC      | PRENE                   | vendor_decl                    | STRING    | Indicator: Vendor declaration exists                         |
| MARC      | PRENG                   | vdr_decl_date                  | DATE      | Validity date of vendor declaration                          |
| MARC      | ITARK                   | military_goods                 | STRING    | Indicator: Military goods                                    |
| MARC      | SERVG                   | service_level_1                | STRING    | IS-R service level                                           |
| MARC      | KZKUP                   | co_product_marc                | STRING    | Indicator: Material can be co-product                        |
| MARC      | STRGR                   | strategy_group                 | STRING    | Planning Strategy Group                                      |
| MARC      | CUOBV                   | int_object_no_1                | STRING    | Internal object number of configurable material for planning |
| MARC      | LGFSB                   | stor_loc_ep                    | STRING    | Default storage location for external procurement            |
| MARC      | SCHGT                   | bulk_material                  | STRING    | Indicator: bulk material                                     |
| MARC      | CCFIX                   | cc_ind_fixed                   | STRING    | CC indicator is fixed                                        |
| MARC      | EPRIO                   | stock_det_grp                  | STRING    | Stock determination group                                    |
| MARC      | QMATA                   | qm_mat_auth                    | STRING    | Material Authorization Group for Activities in QM            |
| MARC      | RESVP                   | adjustmt_period                | NUMERIC   | Period of adjustment for planned independent requirements    |
| MARC      | PLNTY                   | task_list_type                 | STRING    | Task List Type                                               |
| MARC      | UOMGR                   | uom_group                      | STRING    | Unit of Mearsure Group (Oil, Natural Gas,...)                |
| MARC      | UMRSL                   | conv_group                     | STRING    | Conversion Group (Oil, Natural Gas,..)                       |
| MARC      | ABFAC                   | air_buoy_fact                  | NUMERIC   | Air Bouyancy Factor                                          |
| MARC      | SFCPF                   | prod_sched_profile             | STRING    | Production Scheduling Profile                                |
| MARC      | SHFLG                   | safety_time_ind                | STRING    | Safety time indicator (with or without safety time)          |
| MARC      | SHZET                   | safety_time                    | STRING    | Safety time (in workdays)                                    |
| MARC      | MDACH                   | action_control                 | STRING    | Action control: planned order processing                     |
| MARC      | KZECH                   | enter_batch                    | STRING    | Determination of batch entry in the production/process order |
| MARC      | MEGRU                   | uom_group_1                    | STRING    | Unit of Measure Group                                        |
| MARC      | MFRGR                   | mat_freight_grp_marc           | STRING    | Material freight group                                       |
| MARC      | PROFIL                  | backfl_profile                 | STRING    | Name of Backflush Profile                                    |
| MARC      | VKUMC                   | stk_transfer_sv                | NUMERIC   | Stock transfer sales value (plant to plant) for VO material  |
| MARC      | VKTRW                   | st_in_trans_sp                 | NUMERIC   | Transit value at sales price for value-only material         |
| MARC      | KZAGL                   | smth_prom_cons                 | STRING    | Indicator: smooth promotion consumption                      |
| MARC      | FVIDK                   | prod_version                   | STRING    | Production Version To Be Costed                              |
| MARC      | FXPRU                   | fixed_price_co_prod            | STRING    | Fixed-Price Co-Product                                       |
| MARC      | LOGGR                   | logistics_group                | STRING    | Logistics handling group for workload calculation            |
| MARC      | FPRFM                   | dist_prof                      | STRING    | Distribution profile of material in plant                    |
| MARC      | GLGMG                   | tied_empties                   | NUMERIC   | Tied Empties Stock                                           |
| MARC      | VKGLG                   | slsval_tiedempt                | NUMERIC   | Sales value of tied empties stock                            |
| MARC      | INDUS                   | mat_category                   | STRING    | Material CFOP category                                       |
| MARC      | MOWNR                   | eu_prod_list_no                | STRING    | CAP: Number of CAP products list                             |
| MARC      | MOGRU                   | cap_prod_group                 | STRING    | Common Agricultural Policy: CAP products group-Foreign Trade |
| MARC      | CASNR                   | cas_no_pharm                   | STRING    | CAS number for pharmaceutical products in foreign trade      |
| MARC      | GPNUM                   | prodcom_no                     | STRING    | Production statistics: PRODCOM number for foreign trade      |
| MARC      | STEUC                   | control_code                   | STRING    | Control code for consumption taxes in foreign trade          |
| MARC      | FABKZ                   | jit_indicator                  | STRING    | Indicator: Item Relevant to JIT Delivery Schedules           |
| MARC      | MATGR                   | mat_grouping                   | STRING    | Group of Materials for Transition Matrix                     |
| MARC      | VSPVB                   | proposed_s_area                | STRING    | Proposed Supply Area in Material Master Record               |
| MARC      | DPLFS                   | fair_share_rule                | STRING    | Fair share rule                                              |
| MARC      | DPLPU                   | push_distribution              | STRING    | Indicator: push distribution                                 |
| MARC      | DPLHO                   | deploymnt_hrzn                 | NUMERIC   | Deployment horizon in days                                   |
| MARC      | MINLS                   | min_lot_size_1                 | NUMERIC   | Minimum lot size for Supply Demand Match                     |
| MARC      | MAXLS                   | max_lot_size_1                 | NUMERIC   | Maximum lot size for Supply Demand Match                     |
| MARC      | FIXLS                   | fix_lot_size                   | NUMERIC   | Fixed lot size for Supply Demand Match                       |
| MARC      | LTINC                   | lot_size_incr                  | NUMERIC   | Lot size increment for  Supply Demand Match                  |
| MARC      | COMPL                   | this_field_is_no_longer_used   | STRING    | This field is no longer used                                 |
| MARC      | CONVT                   | conv_type                      | STRING    | Conversion types for production figures                      |
| MARC      | SHPRO                   | st_per_profile                 | STRING    | Period Profile for Safety Time                               |
| MARC      | AHDIS                   | mrp_dep_reqmts                 | STRING    | MRP relevancy for dependent requirements                     |
| MARC      | DIBER                   | mrp_area_exists                | STRING    | Indicator: MRP area exists                                   |
| MARC      | KZPSP                   | cross_project                  | STRING    | Indicator for cross-project material                         |
| MARC      | OCMPF                   | overall_profile                | STRING    | Overall profile for order change management                  |
| MARC      | APOKZ                   | relevant_to_apo                | STRING    | Indicator: Is material relevant for APO                      |
| MARC      | MCRUE                   | mardh_rec_already_exists_for   | STRING    | MARDH rec. already exists for per. before last of MARD per.  |
| MARC      | LFMON                   | current_period                 | STRING    | Current period (posting period)                              |
| MARC      | LFGJA                   | year_cur_period                | STRING    | Fiscal Year of Current Period                                |
| MARC      | EISLO                   | min_safetystock                | NUMERIC   | Minimum Safety Stock                                         |
| MARC      | NCOST                   | do_not_cost                    | STRING    | Do Not Cost                                                  |
| MARC      | ROTATION_DATE           | putaway_stkrmvl                | STRING    | Strategy for Putaway and Stock Removal                       |
| MARC      | UCHKZ                   | ob_management                  | STRING    | Indicator for Original Batch Management                      |
| MARC      | UCMAT                   | ob_ref_matrial                 | STRING    | Reference Material for Original Batches                      |
| MARC      | EXCISE_TAX_RLVNCE       | excise_tax_relevance_indicator | STRING    | Excise Tax Relevance Indicator                               |
| MARC      | BWESB                   | val_gr_blocked_stck            | NUMERIC   | Valuated Goods Receipt Blocked Stock                         |
| MARC      | SGT_COVS                | seg_strategy_marc              | STRING    | Segmentation Strategy                                        |
| MARC      | SGT_STATC               | seg_status_mrp                 | STRING    | Segmentation Status                                          |
| MARC      | SGT_SCOPE               | seg_scope_marc                 | STRING    | Segmentation Strategy Scope                                  |
| MARC      | SGT_MRPSI               | sort_stk_method                | STRING    | Sort Stock based on Segment                                  |
| MARC      | SGT_PRCM                | cons_prio                      | STRING    | Consumption Priority                                         |
| MARC      | SGT_CHINT               | discr_batch_no                 | STRING    | Discrete Batch Number                                        |
| MARC      | SGT_STK_PRT             | stk_prot                       | STRING    | Stock Protection Indicator                                   |
| MARC      | SGT_DEFSC               | def_segment                    | STRING    | Default Stock Segment value                                  |
| MARC      | SGT_MRP_ATP_STATUS      | atp_mrp_status                 | STRING    | ATP/MRP Status for Material and Segment                      |
| MARC      | SGT_MMSTD               | valid_from_1_marc              | DATE      | Date from which the plant-specific material status is valid  |
| MARC      | FSH_MG_ARUN_REQ         | arun                           | STRING    | Supply Assignment (ARun)                                     |
| MARC      | FSH_SEAIM               | season_act_im_marc             | STRING    | Indicator: Season Active in Inventory Management             |
| MARC      | FSH_VAR_GROUP           | variant_group                  | STRING    | Variant Group                                                |
| MARC      | FSH_KZECH               | batch_assignment               | STRING    | Indicator: Batch Assignment during TR to TO conversion       |
| MARC      | FSH_CALENDAR_GROUP      | calendar_group                 | STRING    | Calendar Group                                               |
| MARC      | ARUN_FIX_BATCH          | assign_batches                 | STRING    | Assign Batches in Supply Assignment (ARun)                   |
| MARC      | PPSKZ                   | advanced_planning              | STRING    | Indicator for Advanced Planning                              |
| MARC      | CONS_PROCG              | consign_control                | STRING    | Consignment Control                                          |
| MARC      | GI_PR_TIME              | gi_proc_time                   | NUMERIC   | Goods Issue Processing Time in Days                          |
| MARC      | MULTIPLE_EKGRP          | across_purch_group             | STRING    | Purchasing Across Purchasing Group                           |
| MARC      | REF_SCHEMA              | deter_schema                   | STRING    | Reference Determination Schema                               |
| MARC      | MIN_TROC                | minimum_target_range           | STRING    | Minimum Target Range of Coverage                             |
| MARC      | MAX_TROC                | maximum_target_range           | STRING    | Maximum Target Range of Coverage                             |
| MARC      | TARGET_STOCK            | target_stock                   | NUMERIC   | Target Stock                                                 |
| MARC      | NF_FLAG                 | nf_metals                      | STRING    | Indicator: Material Contains NF Metals                       |
| MARC      | __CWM__UMLMC            | stock_in_tfr_1                 | NUMERIC   | Stock in transfer (plant to plant)                           |
| MARC      | __CWM__TRAME            | stk_in_transit_1               | NUMERIC   | Stock in Transit                                             |
| MARC      | __CWM__BWESB            | val_gr_blocked_stck_1          | NUMERIC   | Valuated Goods Receipt Blocked Stock                         |
| MARC      | SCM_MATLOCID_GUID16     | product_marc                   | BYTES     | Internal Key for Product                                     |
| MARC      | SCM_MATLOCID_GUID22     | loc_prod_id                    | STRING    | Internal Number (UID) for Location Product                   |
| MARC      | SCM_GRPRT               | gr_processng_time              | NUMERIC   | Goods Receipt Processing Time                                |
| MARC      | SCM_GIPRT               | gi_processng_time              | NUMERIC   | Goods Issue Processing Time                                  |
| MARC      | SCM_SCOST               | prod_stor_costs                | NUMERIC   | Product-Dependent Storage Costs                              |
| MARC      | SCM_RELDT               | repl_lead_time                 | NUMERIC   | Replenishment Lead Time in Calendar Days                     |
| MARC      | SCM_RRP_TYPE            | pp_plng_proced                 | STRING    | PP Planning Procedure                                        |
| MARC      | SCM_HEUR_ID             | heuristic                      | STRING    | PPC Heuristics                                               |
| MARC      | SCM_PACKAGE_ID          | plan_package                   | STRING    | Planning Package to Which Product Belongs                    |
| MARC      | SCM_SSPEN               | safety_stk_pen                 | NUMERIC   | Penalty Costs for Safety Stock Violation                     |
| MARC      | SCM_GET_ALERTS          | product_alerts                 | STRING    | Alert Relevance of Product                                   |
| MARC      | SCM_RES_NET_NAME        | network_name                   | STRING    | Resource Network                                             |
| MARC      | SCM_CONHAP              | gr_handlg_cap_cons             | NUMERIC   | Handling Capacity Consumption in Unit of Measure (Gds Rcpt)  |
| MARC      | SCM_HUNIT               | uom_handlcap_gr                | STRING    | Unit of Measure: Handling Capacity in Goods Receipt          |
| MARC      | SCM_CONHAP_OUT          | gi_handlg_cap_cons             | NUMERIC   | Handling Capacity Consumption in Unit of Measure (Gds Issue) |
| MARC      | SCM_HUNIT_OUT           | uom_handlcap_gi                | STRING    | Unit of Measure: Handling Capacity in Goods Issue            |
| MARC      | SCM_SHELF_LIFE_LOC      | shelf_life_loc                 | STRING    | Use Location-Dependent Shelf Life of Product when Planning   |
| MARC      | SCM_SHELF_LIFE_DUR      | loc_shelf_life                 | NUMERIC   | Location-Dependent Shelf Life                                |
| MARC      | SCM_MATURITY_DUR        | loc_matur_time                 | NUMERIC   | Location-Dependent Maturation Time                           |
| MARC      | SCM_SHLF_LFE_REQ_MIN    | min_shelf_life                 | NUMERIC   | Minimum Shelf Life Required: Location-Dependent              |
| MARC      | SCM_SHLF_LFE_REQ_MAX    | max_shelf_life                 | NUMERIC   | Maximum Shelf Life Required: Location-Dependent              |
| MARC      | SCM_LSUOM               | lot_size_unit                  | STRING    | Unit of Measure of Lot Size                                  |
| MARC      | SCM_REORD_DUR           | reorder_ds                     | NUMERIC   | Reorder Days Supply (in Workdays)                            |
| MARC      | SCM_TARGET_DUR          | trgt_days_sup                  | NUMERIC   | Target Days Supply in Workdays                               |
| MARC      | SCM_TSTRID              | per_ls_plng_cal                | STRING    | Planning Calendar for Periodic Lot Sizing Procedure          |
| MARC      | SCM_STRA1               | requirement_str                | STRING    | Requirement Strategy                                         |
| MARC      | SCM_PEG_PAST_ALERT      | pegg_alertback                 | NUMERIC   | Alert threshold for delayed receipts                         |
| MARC      | SCM_PEG_FUTURE_ALERT    | pegg_alert                     | NUMERIC   | Alert threshold for early receipts                           |
| MARC      | SCM_PEG_STRATEGY        | peggng_strategy                | STRING    | Pegging strategy for dynamic pegging                         |
| MARC      | SCM_PEG_WO_ALERT_FST    | avoid_alerts                   | STRING    | Avoid Alerts in Pegging                                      |
| MARC      | SCM_FIXPEG_PROD_SET     | fixed_pegging                  | STRING    | Retain Fixed Pegging for Product on Document Change          |
| MARC      | SCM_WHATBOM             | plan_explosion                 | STRING    | Plan Explosion                                               |
| MARC      | SCM_RRP_SEL_GROUP       | planning_group                 | STRING    | Planning Group                                               |
| MARC      | SCM_INTSRC_PROF         | profile                        | STRING    | Profile for Interactive Sourcing                             |
| MARC      | SCM_PRIO                | priority                       | INT64     | Priority of Product                                          |
| MARC      | SCM_MIN_PASS_AMOUNT     | min_passing_amt                | NUMERIC   | Minimum Passing Amount for Continuous I/O Pegging            |
| MARC      | SCM_PROFID              | conversion_rule                | STRING    | Conversion Rule                                              |
| MARC      | SCM_GES_MNG_USE         | entire_receipt                 | STRING    | Use/Consume Entire Quantity of a Receipt Element             |
| MARC      | SCM_GES_BST_USE         | entire_stock                   | STRING    | Use/Consume Entire Quantity of a Stock Element               |
| MARC      | SCM_THRUPUT_TIME        | throughput_time                | NUMERIC   | Throughput Time                                              |
| MARC      | SCM_TPOP                | tpop                           | STRING    | Third-Party Order Processing                                 |
| MARC      | SCM_SAFTY_V             | safety_stock_for_vcl           | NUMERIC   | Safety Stock for Virtual Child Location                      |
| MARC      | SCM_PPSAFTYSTK          | sft_parent_location            | NUMERIC   | Safety Stock at Parent Location                              |
| MARC      | SCM_PPSAFTYSTK_V        | sft_parent_loc_vcl             | NUMERIC   | Safety Stock of Parent Location Virtual Child Location       |
| MARC      | SCM_REPSAFTY            | rep_safety_st                  | NUMERIC   | Repair Safety Stock                                          |
| MARC      | SCM_REPSAFTY_V          | rep_sft_f_vcl                  | NUMERIC   | Repair Safety Stock for Virtual Child Location               |
| MARC      | SCM_REORD_V             | reord_point_vcl                | NUMERIC   | Reorder Point for Virtual Child Location                     |
| MARC      | SCM_MAXSTOCK_V          | maximum_stock_vcl              | NUMERIC   | Maximum Stock Level for Virtual Child Locations              |
| MARC      | SCM_SCOST_PRCNT         | holding_cost_factor            | NUMERIC   | Cost Factor for Stockholding Costs                           |
| MARC      | SCM_PROC_COST           | procuremt_costs                | NUMERIC   | Procurement Costs for Product                                |
| MARC      | SCM_NDCOSTWE            | gr_costs                       | NUMERIC   | Goods Receiving Costs (Network Design)                       |
| MARC      | SCM_NDCOSTWA            | gi_costs                       | NUMERIC   | Goods Issue Costs (Network Design)                           |
| MARC      | DUMMY_PLNT_INCL_EEW_PS  | md_product_plant_extensible_fi | STRING    | MD product plant extensible field element                    |
| MARC      | __SAPMP__TOLPRPL        | tolerance_plus                 | NUMERIC   | Percentage Tolerance Plus                                    |
| MARC      | __SAPMP__TOLPRMI        | tol_minus                      | NUMERIC   | Percentage Tolerance Minus                                   |
| MARC      | __STTPEC__SERVALID      | serialized_from                | DATE      | Serialization Valid From                                     |
| MARC      | __VSO__R_PKGRP          | packing_group                  | STRING    | Packing Group of the Material (VSO)                          |
| MARC      | __VSO__R_LANE_NUM       | picking_line                   | STRING    | Line within the Automatic Picking Zone (VSO)                 |
| MARC      | __VSO__R_PAL_VEND       | matno_pkm_ve                   | STRING    | Material No. of the Packaging Material of the Vendor (VSO)   |
| MARC      | __VSO__R_FORK_DIR       | pick_pkm_length                | STRING    | Pick Packaging Materials only Lengthwise (VSO)               |
| MARC      | IUID_RELEVANT           | iuid_relevant                  | STRING    | IUID-Relevant                                                |
| MARC      | IUID_TYPE               | iuid_type                      | STRING    | Structure Type of UII                                        |
| MARC      | UID_IEA                 | ext_allocation                 | STRING    | External Allocation of UII                                   |
| MARC      | DPCBT                   | su_btch_default_val_marc       | STRING    | Single-Unit Batch Def. Value                                 |
| MBEW      | MATNR                   | material_mbew                  | STRING    | Material Number                                              |
| MBEW      | BWKEY                   | valuation_area                 | STRING    | Valuation area                                               |
| MBEW      | BWTAR                   | valuation_type                 | STRING    | Valuation Type                                               |
| MBEW      | LVORM                   | valuation_type_1               | STRING    | Deletion flag for all material data of a valuation type      |
| MBEW      | LBKUM                   | total_stock                    | NUMERIC   | Total Valuated Stock                                         |
| MBEW      | SALK3                   | total_value                    | NUMERIC   | Value of Total Valuated Stock                                |
| MBEW      | VPRSV                   | price_control                  | STRING    | Price control indicator                                      |
| MBEW      | VERPR                   | moving_price                   | NUMERIC   | Moving Average Price/Periodic Unit Price                     |
| MBEW      | STPRS                   | standard_price                 | NUMERIC   | Standard price                                               |
| MBEW      | PEINH                   | price_unit                     | NUMERIC   | Price unit                                                   |
| MBEW      | BKLAS                   | valuation_class                | STRING    | Valuation Class                                              |
| MBEW      | SALKV                   | value_ma_price                 | NUMERIC   | Value based on moving average price (only with price ctrl S) |
| MBEW      | VMKUM                   | total_stock_pp                 | NUMERIC   | Total valuated stock in previous period                      |
| MBEW      | VMSAL                   | total_value_pp                 | NUMERIC   | Value of total valuated stock in previous period             |
| MBEW      | VMVPR                   | price_ctrl_pp                  | STRING    | Price Control Indicator in Previous Period                   |
| MBEW      | VMVER                   | movavgprice_pp                 | NUMERIC   | Moving Average Price/Periodic Unit Price in Previous Period  |
| MBEW      | VMSTP                   | std_price_pp                   | NUMERIC   | Standard price in the previous period                        |
| MBEW      | VMPEI                   | price_unit_pp                  | NUMERIC   | Price unit of previous period                                |
| MBEW      | VMBKL                   | val_class_pp                   | STRING    | Valuation Class in Previous Period                           |
| MBEW      | VMSAV                   | value_prev_per                 | NUMERIC   | Value based on moving average price (previous period)        |
| MBEW      | VJKUM                   | total_stock_py                 | NUMERIC   | Total Valuated Stock in Previous Year                        |
| MBEW      | VJSAL                   | total_value_py                 | NUMERIC   | Value of total valuated stock in previous year               |
| MBEW      | VJVPR                   | price_ctrl_py                  | STRING    | Price Control Indicator in Previous Year                     |
| MBEW      | VJVER                   | movavgprice_py                 | NUMERIC   | Moving Average Price/Periodic Unit Price in Previous Year    |
| MBEW      | VJSTP                   | std_price_py                   | NUMERIC   | Standard price in previous year                              |
| MBEW      | VJPEI                   | price_unit_py                  | NUMERIC   | Price unit of previous year                                  |
| MBEW      | VJBKL                   | val_class_py                   | STRING    | Valuation Class in Previous Year                             |
| MBEW      | VJSAV                   | value_prev_year                | NUMERIC   | Value based on moving average price (previous year)          |
| MBEW      | LFGJA                   | year_cur_period_mbew           | STRING    | Fiscal Year of Current Period                                |
| MBEW      | LFMON                   | current_period_mbew            | STRING    | Current period (posting period)                              |
| MBEW      | BWTTY                   | valuation_cat_mbew             | STRING    | Valuation Category                                           |
| MBEW      | STPRV                   | previous_price                 | NUMERIC   | Previous price                                               |
| MBEW      | LAEPR                   | last_price_chng                | DATE      | Date of the last price change                                |
| MBEW      | ZKPRS                   | future_price                   | NUMERIC   | Future price                                                 |
| MBEW      | ZKDAT                   | valid_from_mbew                | DATE      | Date as of which the price is valid                          |
| MBEW      | TIMESTAMP               | time_stamp                     | NUMERIC   | UTC Time Stamp in Short Form (YYYYMMDDhhmmss)                |
| MBEW      | BWPRS                   | tax_price_1                    | NUMERIC   | Valuation price based on tax law: level 1                    |
| MBEW      | BWPRH                   | comm_price_1                   | NUMERIC   | Valuation price based on commercial law: level 1             |
| MBEW      | VJBWS                   | tax_price_3                    | NUMERIC   | Valuation price based on tax law: level 3                    |
| MBEW      | VJBWH                   | coml_price_3                   | NUMERIC   | Valuation price based on commercial law: level 3             |
| MBEW      | VVJSL                   | valued_at                      | NUMERIC   | Value of total valuated stock in year before last            |
| MBEW      | VVJLB                   | total_stock_ybl                | NUMERIC   | Total valuated stock in year before last                     |
| MBEW      | VVMLB                   | total_stock_pbl                | NUMERIC   | Total valuated stock in period before last                   |
| MBEW      | VVSAL                   | valued_at_1                    | NUMERIC   | Value of total valuated stock in period before last          |
| MBEW      | ZPLPR                   | fut_plnd_price                 | NUMERIC   | Future planned price                                         |
| MBEW      | ZPLP1                   | planned_price_1                | NUMERIC   | Future Planned Price 1                                       |
| MBEW      | ZPLP2                   | planned_price_2                | NUMERIC   | Future Planned Price 2                                       |
| MBEW      | ZPLP3                   | planned_price_3                | NUMERIC   | Future Planned Price 3                                       |
| MBEW      | ZPLD1                   | plnd_pr_date_1                 | DATE      | Date from Which Future Planned Price 1 Is Valid              |
| MBEW      | ZPLD2                   | plnd_pr_date_2                 | DATE      | Date from Which Future Planned Price 2 Is Valid              |
| MBEW      | ZPLD3                   | plnd_pr_date_3                 | DATE      | Date from Which Future Planned Price 3 Is Valid              |
| MBEW      | PPERZ                   | fut_c_e_period                 | STRING    | Period for future standard cost estimate (deactivated)       |
| MBEW      | PPERL                   | current_c_e_pd                 | STRING    | Period for current standard cost estimate (deactivated)      |
| MBEW      | PPERV                   | prev_c_e_per                   | STRING    | Period for previous standard cost estimate (deactivated)     |
| MBEW      | KALKZ                   | fut_cost_est                   | STRING    | Indicator: standard cost estimate for future period          |
| MBEW      | KALKL                   | curr_cost_est                  | STRING    | Standard Cost Estimate for Current Period                    |
| MBEW      | KALKV                   | prev_cost_est                  | STRING    | Indicator: standard cost estimate for previous period        |
| MBEW      | KALSC                   | overhead_key                   | STRING    | Overhead key (deactivated)                                   |
| MBEW      | XLIFO                   | lifo_fifo_rel                  | STRING    | LIFO/FIFO-Relevant                                           |
| MBEW      | MYPOL                   | lifo_pool                      | STRING    | Pool number for LIFO valuation                               |
| MBEW      | BWPH1                   | commercial_pr_2                | NUMERIC   | Valuation price based on commercial law: level 2             |
| MBEW      | BWPS1                   | tax_price_2                    | NUMERIC   | Valuation price based on tax law: level 2                    |
| MBEW      | ABWKZ                   | devaluation_ind                | STRING    | Lowest value: devaluation indicator                          |
| MBEW      | PSTAT                   | maint_status_mbew              | STRING    | Maintenance status                                           |
| MBEW      | KALN1                   | prodcostest_no                 | STRING    | Cost Estimate Number - Product Costing                       |
| MBEW      | KALNR                   | cost_estimateno                | STRING    | Cost Estimate Number for Cost Est. w/o Qty Structure         |
| MBEW      | BWVA1                   | valuation_var                  | STRING    | Valuation Variant for Future Standard Cost Estimate          |
| MBEW      | BWVA2                   | valuation_var_1                | STRING    | Valuation Variant for Current Standard Cost Estimate         |
| MBEW      | BWVA3                   | valuation_var_2                | STRING    | Valuation Variant for Previous Standard Cost Estimate        |
| MBEW      | VERS1                   | costing_version                | STRING    | Costing Version of Future Standard Cost Estimate             |
| MBEW      | VERS2                   | costing_version_1              | STRING    | Costing Version of Current Standard Cost Estimate            |
| MBEW      | VERS3                   | costing_version_2              | STRING    | Costing Version of Previous Standard Cost Estimate           |
| MBEW      | HRKFT                   | origin_group                   | STRING    | Origin Group as Subdivision of Cost Element                  |
| MBEW      | KOSGR                   | overhead_group                 | STRING    | Costing Overhead Group                                       |
| MBEW      | PPRDZ                   | posting_period                 | STRING    | Period of Future Standard Cost Estimate                      |
| MBEW      | PPRDL                   | current_period_1               | STRING    | Period of Current Standard Cost Estimate                     |
| MBEW      | PPRDV                   | previous_period                | STRING    | Period of Previous Standard Cost Estimate                    |
| MBEW      | PDATZ                   | fut_fyyear                     | STRING    | Fiscal Year of Future Standard Cost Estimate                 |
| MBEW      | PDATL                   | current_fyear                  | STRING    | Fiscal Year of Current Standard Cost Estimate                |
| MBEW      | PDATV                   | previous_fyear                 | STRING    | Fiscal Year of Previous Standard Cost Estimate               |
| MBEW      | EKALR                   | cost_est_w_qs                  | STRING    | Material Is Costed with Quantity Structure                   |
| MBEW      | VPLPR                   | prev_plnd_price                | NUMERIC   | Previous planned price                                       |
| MBEW      | MLMAA                   | ml_act                         | STRING    | Material Ledger Activated at Material Level                  |
| MBEW      | MLAST                   | price_determ                   | STRING    | Material Price Determination: Control                        |
| MBEW      | LPLPR                   | crnt_plan_price                | NUMERIC   | Current Planned Price                                        |
| MBEW      | VKSAL                   | total_sp_value                 | NUMERIC   | Value of Total Valuated Stock at Sales Price                 |
| MBEW      | HKMAT                   | material_origin                | STRING    | Material-related origin                                      |
| MBEW      | SPERW                   | phys_inv_blk                   | STRING    | Physical Inventory Blocking Indicator                        |
| MBEW      | KZIWL                   | ph_inv_vo_mat                  | STRING    | Phys. inventory indicator for  value-only material           |
| MBEW      | WLINL                   | last_count_date                | DATE      | Date of Last Posted Count                                    |
| MBEW      | ABCIW                   | cc_phys_inv_mbew               | STRING    | Physical Inventory Indicator for Cycle Counting              |
| MBEW      | BWSPA                   | val_margin                     | NUMERIC   | Valuation margin                                             |
| MBEW      | LPLPX                   | fxd_curr_planprice             | NUMERIC   | Fixed Portion of Current Planned Price                       |
| MBEW      | VPLPX                   | prev_plprice_fixed             | NUMERIC   | Fixed Portion of Previous Planned Price                      |
| MBEW      | FPLPX                   | fut_planprice_fxd              | NUMERIC   | Fixed Portion of Future Planned Price                        |
| MBEW      | LBWST                   | curr_val_strat                 | STRING    | Val. Strat. for Current Plan Price, Sales Order/Proj. Stock  |
| MBEW      | VBWST                   | prev_valn_strat                | STRING    | Valuation Strategy for Previous Plan Price, Special Stock    |
| MBEW      | FBWST                   | future_valstratgy              | STRING    | Valuation Strategy for Future Planned Price, Special Stock   |
| MBEW      | EKLAS                   | vc_sal_ord_stk                 | STRING    | Valuation Class for Sales Order Stock                        |
| MBEW      | QKLAS                   | project_stk_vc                 | STRING    | Valuation Class for Project Stock                            |
| MBEW      | MTUSE                   | material_usage                 | STRING    | Usage of the material                                        |
| MBEW      | MTORG                   | material_origin_1              | STRING    | Origin of the material                                       |
| MBEW      | OWNPR                   | prod_in_house                  | STRING    | Produced in-house                                            |
| MBEW      | XBEWM                   | valuated_uom                   | STRING    | Valuation based on the batch-specific unit of measure        |
| MBEW      | BWPEI                   | price_unit_1                   | NUMERIC   | Price unit for valuation prices based on tax/commercial law  |
| MBEW      | MBRUE                   | mbewh_rec_already_exists_for   | STRING    | MBEWH rec. already exists for per. before last of MBEW per.  |
| MBEW      | OKLAS                   | vc_vendor                      | STRING    | Valuation Class for Special Stock at the Vendor              |
| MBEW      | DUMMY_VAL_INCL_EEW_PS   | md_product_valuation_extension | STRING    | MD Product valuation extension field element                 |
| MBEW      | OIPPINV                 | prepaid_inv                    | STRING    | Prepaid Inventory Flag for Material Valuation Type Segment   |
|           |                         | finalmd5key                    | STRING    | MD5 key combining all columns                                |
|           |                         | input_last_update_date         | DATETIME  | Last Input read time                                         |
|           |                         | dw_active_indicator            | STRING    | Valid Indicator                                              |
|           |                         | dw_start_date                  | DATETIME  | Record start date                                            |
|           |                         | dw_end_date                    | DATETIME  | Record end date                                              |
|           |                         | dw_last_update_date            | DATETIME  | Record Inserted/Updated date                                 |


Copyright 2021 Google Inc. All rights reserved.
The use of this software is governed by the Pre-GA Offering Terms section of the the Service Specific Terms set forth at https://cloud.google.com/terms/service-terms#general-service-terms