
## Table Name : material_dimension

| column_name                    | data_type | description                                                  |
|--------------------------------|-----------|--------------------------------------------------------------|
| material_uuid                  | STRING    | Unique Generated Id                                          |
| material_key                   | STRING    | Material Key                                                 |
| client                         | STRING    | Client                                                       |
| material                       | STRING    | Material Number                                              |
| plant                          | STRING    | Plant                                                        |
| created_on                     | DATE      | Created On                                                   |
| created_time                   | TIME      | Time of Creation                                             |
| created_by                     | STRING    | Name of Person who Created the Object                        |
| last_change                    | DATE      | Date of Last Change                                          |
| changed_by                     | STRING    | Name of person who changed object                            |
| complete_status                | STRING    | Maintenance status of complete material                      |
| maint_status                   | STRING    | Maintenance status                                           |
| df_client_level                | STRING    | Flag Material for Deletion at Client Level                   |
| material_type                  | STRING    | Material type                                                |
| industry_sector                | STRING    | Industry Sector                                              |
| material_group                 | STRING    | Material Group                                               |
| old_matl_number                | STRING    | Old material number                                          |
| base_unit                      | STRING    | Base Unit of Measure                                         |
| order_unit                     | STRING    | Purchase Order Unit of Measure                               |
| document                       | STRING    | Document number (without document management system)         |
| document_type                  | STRING    | Document type (without Document Management system)           |
| doc_version                    | STRING    | Document version (without Document Management system)        |
| page_format                    | STRING    | Page format of document (without Document Management system) |
| doc_change_no                  | STRING    | Document change number (without document management system)  |
| page_number                    | STRING    | Page number of document (without Document Management system) |
| no_of_sheets                   | STRING    | Number of sheets (without Document Management system)        |
| prod_insp_memo                 | STRING    | Production/inspection memo                                   |
| page_format_1                  | STRING    | Page Format of Production Memo                               |
| size_dimensions                | STRING    | Size/dimensions                                              |
| basic_material                 | STRING    | Basic Material                                               |
| ind_std_desc                   | STRING    | Industry Standard Description (such as ANSI or ISO)          |
| lab_office                     | STRING    | Laboratory/design office                                     |
| purch_value_key                | STRING    | Purchasing Value Key                                         |
| gross_weight                   | NUMERIC   | Gross weight                                                 |
| net_weight                     | NUMERIC   | Net weight                                                   |
| weight_unit                    | STRING    | Weight Unit                                                  |
| volume                         | NUMERIC   | Volume                                                       |
| volume_unit                    | STRING    | Volume unit                                                  |
| container                      | STRING    | Container requirements                                       |
| stor_conditions                | STRING    | Storage conditions                                           |
| temperature                    | STRING    | Temperature conditions indicator                             |
| low_level_code                 | STRING    | Low-Level Code                                               |
| trans_group                    | STRING    | Transportation Group                                         |
| haz_matl_no                    | STRING    | Hazardous material number                                    |
| division                       | STRING    | Division                                                     |
| competitor                     | STRING    | Competitor                                                   |
| ean_number                     | STRING    | European Article Number (EAN) - obsolete!!!!!                |
| gr_slips_quantity              | NUMERIC   | Quantity: Number of GR/GI slips to be printed                |
| procure_rule                   | STRING    | Procurement rule                                             |
| supply_source                  | STRING    | Source of Supply                                             |
| season                         | STRING    | Season Category                                              |
| label_type                     | STRING    | Label type                                                   |
| label_form                     | STRING    | Label form                                                   |
| field_deact                    | STRING    | Deactivated                                                  |
| ean_upc                        | STRING    | International Article Number (EAN/UPC)                       |
| ean_category                   | STRING    | Category of International Article Number (EAN)               |
| length_obj                     | NUMERIC   | Length                                                       |
| width                          | NUMERIC   | Width                                                        |
| height                         | NUMERIC   | Height                                                       |
| unit                           | STRING    | Unit of Dimension for Length/Width/Height                    |
| prod_hierarchy                 | STRING    | Product hierarchy                                            |
| net_change_cstg                | STRING    | Stock Transfer Net Change Costing                            |
| cad_indicator                  | STRING    | CAD Indicator                                                |
| qm_procurement                 | STRING    | QM in Procurement Is Active                                  |
| allowed_pkg_wt                 | NUMERIC   | Allowed packaging weight                                     |
| unit_of_weight                 | STRING    | Unit of weight (allowed packaging weight)                    |
| allowed_volume                 | NUMERIC   | Allowed packaging volume                                     |
| volume_unit_1                  | STRING    | Volume unit (allowed packaging volume)                       |
| excess_wt_tolerance            | NUMERIC   | Excess Weight Tolerance for Handling unit                    |
| excess_volume_tol              | NUMERIC   | Excess Volume Tolerance of the Handling Unit                 |
| var_order_unit                 | STRING    | Variable Purchase Order Unit Active                          |
| revision_level                 | STRING    | Revision Level Has Been Assigned to the Material             |
| configurable                   | STRING    | Configurable Material                                        |
| batch_mgmt_rqt                 | STRING    | Batch management requirement indicator                       |
| packag_mat_type                | STRING    | Packaging Material Type                                      |
| maximum_level                  | NUMERIC   | Maximum level (by volume)                                    |
| stacking_factor                | INT64     | Stacking factor                                              |
| matl_grp_pckmat                | STRING    | Material Group: Packaging Materials                          |
| authorizgroup                  | STRING    | Authorization Group                                          |
| valid_from                     | DATE      | Valid-From Date                                              |
| valid_to                       | DATE      | Deletion date                                                |
| season_year                    | STRING    | Season Year                                                  |
| price_band_cat                 | STRING    | Price Band Category                                          |
| w_empties_bom                  | STRING    | Empties Bill of Material                                     |
| ext_matl_group                 | STRING    | External Material Group                                      |
| cross_plant_cm                 | STRING    | Cross-Plant Configurable Material                            |
| matl_category                  | STRING    | Material Category                                            |
| co_product                     | STRING    | Indicator: Material can be co-product                        |
| follow_up_matl                 | STRING    | Indicator: The material has a follow-up material             |
| pr_ref_matl                    | STRING    | Pricing Reference Material                                   |
| x_plant_status                 | STRING    | Cross-Plant Material Status                                  |
| x_dchain_status                | STRING    | Cross-distribution-chain material status                     |
| valid_from_1                   | DATE      | Date from which the cross-plant material status is valid     |
| valid_from_2                   | DATE      | Date from which the X-distr.-chain material status is valid  |
| tax_class                      | STRING    | Tax classification of the material                           |
| catalog_profile                | STRING    | Catalog Profile                                              |
| rem_shelf_life                 | NUMERIC   | Minimum Remaining Shelf Life                                 |
| tot_shelf_life                 | NUMERIC   | Total shelf life                                             |
| storage                        | NUMERIC   | Storage percentage                                           |
| content_unit                   | STRING    | Content unit                                                 |
| net_contents                   | NUMERIC   | Net contents                                                 |
| comp_price_unit                | NUMERIC   | Comparison price unit                                        |
| label_matl_grpg                | STRING    | IS-R Labeling: material grouping (deactivated in 4.0)        |
| gross_contents                 | NUMERIC   | Gross contents                                               |
| conv_method                    | STRING    | Quantity Conversion Method                                   |
| int_object_no                  | STRING    | Internal object number                                       |
| envt_relevant                  | STRING    | Environmentally Relevant                                     |
| prod_allocation                | STRING    | Product allocation determination procedure                   |
| pricing_profile                | STRING    | Pricing profile for variants                                 |
| disc_in_kind                   | STRING    | Material qualifies for discount in kind                      |
| mfr_part_number                | STRING    | Manufacturer Part Number                                     |
| manufacturer                   | STRING    | Manufacturer number                                          |
| int_material_no                | STRING    | Number of firms own (internal) inventory-managed material    |
| mfr_part_profile               | STRING    | Mfr part profile                                             |
| units_meas_use                 | STRING    | Units of measure usage                                       |
| rollout                        | STRING    | Rollout in a Season                                          |
| dgindprofile                   | STRING    | Dangerous Goods Indicator Profile                            |
| highly_viscous                 | STRING    | Indicator: Highly Viscous                                    |
| in_bulk_liquid                 | STRING    | Indicator: In Bulk/Liquid                                    |
| serializlevel                  | STRING    | Level of Explicitness for Serial Number                      |
| closed                         | STRING    | Packaging Material is Closed Packaging                       |
| batch_rec_req                  | STRING    | Approved Batch Record Required                               |
| assign_eff_vals                | STRING    | Assign effectivity parameter values/ override change numbers |
| comp_level                     | STRING    | Material completion level                                    |
| period_ind                     | STRING    | Period Indicator for Shelf Life Expiration Date              |
| rounding_rule                  | STRING    | Rounding rule for calculation of SLED                        |
| prodcomposition                | STRING    | Indicator: Product composition printed on packaging          |
| genitemcatgroup                | STRING    | General item category group                                  |
| log_variants                   | STRING    | Generic Material with Logistical Variants                    |
| material_locked                | STRING    | Material Is Locked                                           |
| cm_relevant                    | STRING    | Relevant for Configuration Management                        |
| astmt_list_type                | STRING    | Assortment List Type                                         |
| expiration_date                | STRING    | Expiration Date                                              |
| ean_variant                    | STRING    | Global Trade Item Number Variant                             |
| genericmaterial                | STRING    | Material Number of the Generic Material in Prepack Materials |
| ref_mat_for_pckg               | STRING    | Reference material for materials packed in same way          |
| gds_relevant                   | STRING    | Indicator: Global Data Synchronization-Relevant              |
| origin_accept                  | STRING    | Acceptance At Origin                                         |
| stand_hu_type                  | STRING    | Standard HU Type                                             |
| pilferable                     | STRING    | Pilferable                                                   |
| wh_stor_cond                   | STRING    | Warehouse Storage Condition                                  |
| wh_mat_grp                     | STRING    | Warehouse Material Group                                     |
| handling_ind                   | STRING    | Handling Indicator                                           |
| haz_sub                        | STRING    | Relevant for Hazardous Substances                            |
| hutyp                          | STRING    | Handling Unit Type                                           |
| variable_tw                    | STRING    | Variable Tare Weight                                         |
| max_capacity                   | NUMERIC   | Maximum Allowed Capacity of Packaging Material               |
| overcapac_tol                  | NUMERIC   | Overcapacity Tolerance of the Handling Unit                  |
| max_length                     | NUMERIC   | Maximum Packing Length of Packaging Material                 |
| max_pack_width                 | NUMERIC   | Maximum Packing Width of Packaging Material                  |
| max_height                     | NUMERIC   | Maximum Packing Height of Packaging Material                 |
| unit_of_measure                | STRING    | Unit of Measure for Maximum Packing Length/Width/Height      |
| ctry_of_origin                 | STRING    | Country of Origin of Material (Non-Preferential Origin)      |
| mat_freight_grp                | STRING    | Material freight group                                       |
| quarant_per                    | NUMERIC   | Quarantine Period                                            |
| time_unit                      | STRING    | Time Unit for Quarantine Period                              |
| qual_insp_grp                  | STRING    | Quality Inspection Group                                     |
| serial_no_prf                  | STRING    | Serial Number Profile                                        |
| form_name                      | STRING    | Form Name                                                    |
| logistics_uom                  | STRING    | EWM CW: Logistics Unit of Measure                            |
| cw_relevant                    | STRING    | EWM CW: Material Is a Catch Weight Material                  |
| cw_profile                     | STRING    | EWM CW: Catch Weight Profile for Entering CW Quantity        |
| catch_wt_tol_grp               | STRING    | Catch Weight Tolerance Group                                 |
| adjust_profile                 | STRING    | Adjustment Profile                                           |
| intel_property                 | STRING    | ID for an Intellectual Property (CRM Product)                |
| var_price_allowed              | STRING    | Variant Price Allowed (for Material Master)                  |
| medium                         | STRING    | Medium                                                       |
| commodity                      | STRING    | Commodity                                                    |
| animal_origin                  | STRING    | Indicator: Contains Non-Textile Parts of Animal Origin       |
| texcompactive                  | STRING    | Indicator: New Textile Composition Function                  |
| last_chgd_time                 | TIME      | Time of Last Change                                          |
| material_1                     | STRING    | External Representation of Material Number                   |
| chemical_compliance_relevance  | STRING    | Chemical Compliance Relevance Indicator                      |
| logl_material_cat              | STRING    | Category of a Logistical Material                            |
| sales_material_no              | STRING    | Material Number of a Sales Material                          |
| tag_type                       | STRING    | Identification Tag Type                                      |
| seg_structure                  | STRING    | Segmentation Structure                                       |
| seg_strategy                   | STRING    | Segmentation Strategy                                        |
| seg_status                     | STRING    | Segmentation Material Master Status                          |
| seg_scope                      | STRING    | Segmentation Strategy Scope                                  |
| seg_relevant                   | STRING    | Segmentation Relevant                                        |
| anp_code                       | STRING    | ANP Code                                                     |
| psm_code                       | STRING    | Code of Protected Species Management                         |
| fsh_attribute1                 | STRING    | Fashion Information Field: 1                                 |
| fsh_attribute2                 | STRING    | Fashion Information Field: 2                                 |
| fsh_attribute3                 | STRING    | Fashion Information Field: 3                                 |
| season_usage                   | STRING    | Indicator: Use of Season                                     |
| season_act_im                  | STRING    | Indicator: Season Active in Inventory Management             |
| mat_conv_id                    | STRING    | Material Conversion ID for Characteristic Value Conversion   |
| dummy_field                    | STRING    | Dummy Field                                                  |
| product                        | BYTES     | Internal Key for Product                                     |
| product_id                     | STRING    | Internal Number (UID) for Product                            |
| maturation_time                | NUMERIC   | Maturation Time                                              |
| req_min_sh_life                | NUMERIC   | Obsolete. Use /SAPAPO/MATKEY-/SAPAPO/SHELF_LIFE_REQ_MIN.     |
| req_max_sh_life                | NUMERIC   | Required Maximum Shelf Life                                  |
| preferred_uom                  | STRING    | Preferred Alternative UoM for Warehouse Operations           |
| reference_product              | STRING    | Reference Product for Package Building                       |
| product_shape                  | STRING    | Product Shape                                                |
| prod_orient_prof               | STRING    | Product Orientation Profile                                  |
| overhang_threshold             | NUMERIC   | Overhang Threshold [%]                                       |
| bridge_threshold               | NUMERIC   | Bridge Threshold [%]                                         |
| maximum_slope                  | NUMERIC   | Maximum Slope for Bridges [°]                                |
| abs_height_thresh              | NUMERIC   | Absolute Height Threshold for Stacking on Non-Flat Surface   |
| abs_height_thresh_1            | STRING    | UoM of Abs. Height Threshold (Stacking on Non-Flat Surface)  |
| product_for_kito               | STRING    | Product for Kit-to-Order                                     |
| procure_to_order               | STRING    | Product Can Be Procure-to-Order                              |
| push_depl_fr_supp              | STRING    | Carry Out Push Deployment from Supplier                      |
| no_inv_balancing               | STRING    | Inventory Balancing Not Allowed                              |
| glb_stk_entry_loc              | STRING    | DRP: Global Stock on Entry Location                          |
| no_express_shipment            | STRING    | Exclude from Express Shipment                                |
| cw_material                    | STRING    | Material Is Activated for CW                                 |
| valuation_uom                  | STRING    | Valuation Unit of Measure                                    |
| tolerance_group                | STRING    | Tolerance Group for CWM                                      |
| fixed_tare                     | STRING    | Consider Complete Tare for each Reference Unit of Measure    |
| tare_calc                      | STRING    | Reference Unit of Measure for the TARE Calculation           |
| loading_units                  | STRING    | Loading Units                                                |
| loading_unit_group             | STRING    | Loading Unit Group: IS Beverage                              |
| struct_category                | STRING    | Structure Category for Material Relationship                 |
| tolerance_type                 | STRING    | Tolerance Type ID                                            |
| counting_group                 | STRING    | Counting Group                                               |
| dsd_grouping                   | STRING    | DSD Grouping                                                 |
| cable_diameter                 | NUMERIC   | Cable Diameter                                               |
| unit_for_dimensions            | STRING    | Unit for Dimensions                                          |
| cabdia_allow                   | NUMERIC   | Cable Diameter Allowance in Percent                          |
| bending_factor                 | NUMERIC   | Bending Factor                                               |
| inner_width                    | NUMERIC   | Inner Width                                                  |
| outer_diameter                 | NUMERIC   | Outer Diameter                                               |
| core_diameter                  | NUMERIC   | Core Diameter                                                |
| load_capacity                  | NUMERIC   | Load Capacity                                                |
| r_o_flange_thick               | NUMERIC   | Run-Out Flange Thickness                                     |
| r_o_flange_height              | NUMERIC   | R-O Flange Height                                            |
| coil_delivery                  | STRING    | Coil Delivery                                                |
| run_out_flange                 | STRING    | Run-Out Flange                                               |
| no_vert_layers                 | STRING    | Maximum Number of Vertical Layers                            |
| clearance                      | NUMERIC   | Smallest Permissible Reel Clearance for a Cable              |
| serialization_type             | INT64     | Serialization Type                                           |
| sync_active                    | STRING    | Synchronization Active                                       |
| last_synchronized              | NUMERIC   | Synchronization Time Stamp                                   |
| changed_since_int              | STRING    | Indicator Changed Since Integration                          |
| prof_rel_country               | STRING    | Profile Relevant Country                                     |
| product_category               | STRING    | Product Category                                             |
| tilting_allowed                | STRING    | Material may be Tilted (Vehicle Space Optimization)          |
| no_stacking                    | STRING    | Stacking not Allowed (VSO)                                   |
| bottom_layer                   | STRING    | Bottom Layer (Vehicle Space Optimization)                    |
| top_layer                      | STRING    | Top Layer (VSO)                                              |
| stacking_factor_1              | STRING    | Stacking Factor (Vehicle Space Optimization)                 |
| load_w_o_pkm                   | STRING    | Load without Packaging Material (VSO)                        |
| overhang_depth                 | NUMERIC   | Permissible Overhang (Depth) of Packaging Material (VSO)     |
| overhang_width                 | NUMERIC   | Permissible Overhang (Width) of Shipping Material (VSO)      |
| max_stack_hght                 | NUMERIC   | Maximum Stacking Height of the Packaging Material (VSO)      |
| min_stack_hght                 | NUMERIC   | Minimum Stacking Height of the Packaging Material (VSO)      |
| stackh_toleran                 | NUMERIC   | Tolerance to Exceed the Max. Stacking Height (VSO)           |
| no_mat_pkm                     | STRING    | Number of Materials for each Closed PKM (VSO)                |
| uom_vso                        | STRING    | Unit of Measure Vehicle Space Optimization                   |
| closed_pkm_req                 | STRING    | Closed Packaging Material Required (VSO)                     |
| packaging_code                 | STRING    | Packaging Code                                               |
| dg_pckg_status                 | STRING    | Dangerous Goods Packaging Status                             |
| work_duration                  | NUMERIC   | Duration of Work                                             |
| unit_1                         | STRING    | Unit for Duration of Work                                    |
| service_profile                | STRING    | Service Profile                                              |
| response_prof                  | STRING    | Response Profile                                             |
| billing_cycle                  | STRING    | Billing Cycle                                                |
| billing_cycle_determ           | STRING    | Billing Cycle Determination Rule ID                          |
| assignment_schema              | STRING    | Assignment Schema                                            |
| condition_mgmt                 | STRING    | Material Condition Management                                |
| return_code                    | STRING    | Return Code                                                  |
| return_to_log_level            | STRING    | Return to Logistics Level                                    |
| nsn                            | STRING    | NATO Stock Number                                            |
| ammunition_code                | STRING    | Interchangeability Code for Ammunition                       |
| ric_id                         | INT64     | Reportable Item Code - Numerical ID                          |
| overlength_part_num            | STRING    | Overlength Part Number                                       |
| spare_prt_class_code           | STRING    | Spare Part Class Code                                        |
| var_obj_id                     | BYTES     | GUID Variable Object Identification                          |
| ms_book_part_no                | STRING    | Manufacturer Book Part Number                                |
| su_btch_default_val            | STRING    | Single-Unit Batch Def. Value                                 |
| sng_un_bch_rcp                 | STRING    | Goods Receipt to Posted Single-Unit Batch Allowed            |
| fff_class                      | STRING    | FFF class                                                    |
| chain_no                       | STRING    | Supersession chain number                                    |
| creation_status                | STRING    | Creation Status - Seasonal Procurement                       |
| internal_char                  | STRING    | Internal Charactieristic Number for Color Characteristics    |
| internal_char_1                | STRING    | Internal Char. Number for Characteristics for Main Sizes     |
| internal_char_2                | STRING    | Internal Char. Number for Characteristics for Second Sizes   |
| color                          | STRING    | Characteristic Value for Colors of Variants                  |
| main_size                      | STRING    | Characteristic Value for Main Sizes of Variants              |
| second_size                    | STRING    | Characteristic Value for Second Size for Variants            |
| char_value                     | STRING    | Characteristic Value for Evaluation Purposes                 |
| care_code                      | STRING    | Care Codes (such as Washing Code, Ironing Code, etc.)        |
| brand                          | STRING    | Brand                                                        |
| component_1                    | STRING    | Fiber Code for Textiles (Component 1)                        |
| perc_share_1                   | STRING    | Percentage Share of Fiber (Component 1)                      |
| component_2                    | STRING    | Fiber Code for Textiles (Component 2)                        |
| perc_share_2                   | STRING    | Percentage Share of Fiber (Component 2)                      |
| component_3                    | STRING    | Fiber Code for Textiles (Component 3)                        |
| perc_share_3                   | STRING    | Percentage Share of Fiber (Component 3)                      |
| component_4                    | STRING    | Fiber Code for Textiles (Component 4)                        |
| perc_share_4                   | STRING    | Percentage Share of Fiber (Component 4)                      |
| component_5                    | STRING    | Fiber Code for Textiles (Component 5)                        |
| perc_share_5                   | STRING    | Percentage Share of Fiber (Component 5)                      |
| fashion_grade                  | STRING    | Fashion Grade                                                |
| material_marc                  | STRING    | Material Number                                              |
| maint_status_marc              | STRING    | Maintenance status                                           |
| df_plant_level                 | STRING    | Flag Material for Deletion at Plant Level                    |
| valuation_cat                  | STRING    | Valuation Category                                           |
| batches                        | STRING    | Batch management indicator (internal)                        |
| p_s_matl_status                | STRING    | Plant-Specific Material Status                               |
| valid_from_marc                | DATE      | Date from Which the Plant-Specific Material Status Is Valid  |
| abc_indicator                  | STRING    | ABC Indicator                                                |
| critical_part                  | STRING    | Indicator: Critical part                                     |
| purch_group                    | STRING    | Purchasing Group                                             |
| unit_of_issue                  | STRING    | Unit of issue                                                |
| mrp_profile                    | STRING    | Material: MRP profile                                        |
| mrp_type                       | STRING    | MRP Type                                                     |
| mrp_controller                 | STRING    | MRP Controller                                               |
| mrpctrllr_buyer                | STRING    | Indicator: MRP controller is buyer (deactivated)             |
| pl_deliv_time                  | NUMERIC   | Planned Delivery Time in Days                                |
| gr_proc_time                   | NUMERIC   | Goods receipt processing time in days                        |
| period_ind_marc                | STRING    | Period Indicator                                             |
| assembly_scrap                 | NUMERIC   | Assembly scrap in percent                                    |
| lot_sizing_procedure           | STRING    | Lot Sizing Procedure within Materials Planning               |
| procurement                    | STRING    | Procurement Type                                             |
| specprocurement                | STRING    | Special procurement type                                     |
| reorder_point                  | NUMERIC   | Reorder Point                                                |
| safety_stock                   | NUMERIC   | Safety stock                                                 |
| min_lot_size                   | NUMERIC   | Minimum Lot Size                                             |
| max_lot_size                   | NUMERIC   | Maximum Lot Size                                             |
| fixed_lot_size                 | NUMERIC   | Fixed lot size                                               |
| rounding_value                 | NUMERIC   | Rounding value for purchase order quantity                   |
| max_stock_level                | NUMERIC   | Maximum Stock Level                                          |
| lsi_costs                      | NUMERIC   | Lot-Size-Independent Costs                                   |
| indiv_coll                     | STRING    | Dependent requirements ind. for individual and coll. reqmts  |
| storage_costs                  | STRING    | Storage Costs Percentage Code                                |
| selectionmethod                | STRING    | Method for Selecting Alternative Bills of Material           |
| discontin_ind                  | STRING    | Discontinuation indicator                                    |
| eff_out_date                   | DATE      | Effective-Out Date                                           |
| follow_up_matl_marc            | STRING    | Follow-Up Material                                           |
| reqmts_grouping                | STRING    | Indicator for Requirements Grouping                          |
| mixed_mrp                      | STRING    | Mixed MRP indicator                                          |
| schedmargin_key                | STRING    | Scheduling Margin Key for Floats                             |
| autom_fix_pl_ords              | STRING    | Indicator: automatic fixing of planned orders                |
| autom_release                  | STRING    | Release indicator for production orders                      |
| backflush                      | STRING    | Indicator: Backflush                                         |
| prodn_supervisor               | STRING    | Production Supervisor                                        |
| processing_time                | NUMERIC   | Processing time                                              |
| setup_time                     | NUMERIC   | Setup and teardown time                                      |
| interoperation                 | NUMERIC   | Interoperation time                                          |
| base_quantity                  | NUMERIC   | Base quantity                                                |
| inhseprodtime                  | NUMERIC   | In-house production time                                     |
| max_storage                    | NUMERIC   | Maximum Storage Period                                       |
| time_unit_marc                 | STRING    | Unit for maximum storage period                              |
| withd_fm_pr_bin                | STRING    | Indicator: withdrawal of stock from production bin           |
| rough_cut_plng                 | STRING    | Indicator: Material Included in Rough-Cut Planning           |
| overdely_tol                   | NUMERIC   | Overdelivery tolerance limit                                 |
| unlimited                      | STRING    | Indicator: Unlimited Overdelivery Allowed                    |
| underdely_tol                  | NUMERIC   | Underdelivery tolerance limit                                |
| total_rl_time                  | NUMERIC   | Total replenishment lead time (in workdays)                  |
| replacemt_part                 | STRING    | Replacement part                                             |
| surcharge                      | NUMERIC   | Surcharge factor for cost in percent                         |
| state_of_manufac               | STRING    | State of manufacture                                         |
| post_to_insp_stk               | STRING    | Post to Inspection Stock                                     |
| sample                         | NUMERIC   | Sample for quality inspection (in %) (deactivated)           |
| quarantine                     | NUMERIC   | Quarantine period (deactivated)                              |
| qm_control_key                 | STRING    | Control Key for Quality Management in Procurement            |
| mean_insp_dur                  | NUMERIC   | Mean inspection duration (deactivated)                       |
| insp_plan_ind                  | STRING    | Indicator for inspection plan (deactivated)                  |
| doc_required                   | STRING    | Documentation required indicator                             |
| active_subst                   | NUMERIC   | Active substance content (deactivated)                       |
| insp_interval                  | NUMERIC   | Interval Until Next Recurring Inspection                     |
| next_inspection                | DATE      | Date according to check sampling inspection (deactivated)    |
| stock_in_tfr                   | NUMERIC   | Stock in transfer (plant to plant)                           |
| loading_group                  | STRING    | Loading Group                                                |
| batch_mgmt_rqt_plnt            | STRING    | Batch Management Requirement Indicator for Plant             |
| quota_arr_usage                | STRING    | Quota arrangement usage                                      |
| service_level                  | NUMERIC   | Service level                                                |
| splitting_ind                  | STRING    | Splitting Indicator                                          |
| plan_version                   | STRING    | Plan Version                                                 |
| object_type                    | STRING    | Object Type                                                  |
| object_id                      | STRING    | Object ID                                                    |
| avail_check                    | STRING    | Checking Group for Availability Check                        |
| fi_year_variant                | STRING    | Fiscal Year Variant                                          |
| corr_factors                   | STRING    | Indicator: take correction factors into account              |
| setup_time_1                   | NUMERIC   | Shipping setup time                                          |
| base_quantity_1                | NUMERIC   | Base quantity for capacity planning in shipping              |
| processing_time_1              | NUMERIC   | Shipping processing time                                     |
| deactivated                    | STRING    | Deactivated                                                  |
| supply_source_marc             | STRING    | Source of Supply                                             |
| autom_po                       | STRING    | Indicator: automatic purchase order allowed                  |
| source_list                    | STRING    | Indicator: Source list requirement                           |
| commodity_code                 | STRING    | Commodity Code                                               |
| ctry_of_origin_marc            | STRING    | Country of Origin of Material (Non-Preferential Origin)      |
| reg_of_origin                  | STRING    | Region of Origin of Material (Non-Preferential Origin)       |
| comm_code_unit                 | STRING    | Unit of measure for commodity code (foreign trade)           |
| intrastat_group                | STRING    | Material Group for Intrastat                                 |
| profit_center                  | STRING    | Profit Center                                                |
| stk_in_transit                 | NUMERIC   | Stock in Transit                                             |
| plng_calendar                  | STRING    | PPC Planning Calendar                                        |
| repetitive_mfg                 | STRING    | Indicator: Repetitive Manufacturing Allowed                  |
| plng_time_fence                | STRING    | Planning time fence                                          |
| consmption_mode                | STRING    | Consumption mode                                             |
| bwd_cons_per                   | STRING    | Consumption period: backward                                 |
| fwd_cons_period                | STRING    | Consumption period: forward                                  |
| version                        | STRING    | Version Indicator                                            |
| alternative                    | STRING    | Alternative BOM                                              |
| usage                          | STRING    | BOM Usage                                                    |
| group_key_list                 | STRING    | Key for Task List Group                                      |
| group_counter                  | STRING    | Group Counter                                                |
| cstg_lot_size                  | NUMERIC   | Lot Size for Product Costing                                 |
| specproctype                   | STRING    | Special Procurement Type for Costing                         |
| production_unit                | STRING    | Production unit                                              |
| prod_stor_loc                  | STRING    | Issue Storage Location                                       |
| mrp_group                      | STRING    | MRP Group                                                    |
| component_scrap                | NUMERIC   | Component Scrap in Percent                                   |
| certificatetype                | STRING    | Certificate Type                                             |
| insp_setup                     | STRING    | Inspection Setup Exists for Material/Plant                   |
| takt_time                      | NUMERIC   | Takt time                                                    |
| coverage_prof                  | STRING    | Range of coverage profile                                    |
| field_name                     | STRING    | Local field name for CO/PA link to SOP                       |
| cc_phys_inv                    | STRING    | Physical Inventory Indicator for Cycle Counting              |
| variance_key                   | STRING    | Variance Key                                                 |
| serialnoprofile                | STRING    | Serial Number Profile                                        |
| int_object_no_marc             | STRING    | Internal object number                                       |
| confble_matl                   | STRING    | Configurable material                                        |
| rem_profile                    | STRING    | Repetitive Manufacturing Profile                             |
| neg_stocks                     | STRING    | Negative stocks allowed in plant                             |
| target_qm_sys                  | STRING    | Required QM System for Supplier                              |
| planning_cycle                 | STRING    | Planning cycle                                               |
| rnding_profile                 | STRING    | Rounding Profile                                             |
| ref_matl_cons                  | STRING    | Reference material for consumption                           |
| ref_plant_cons                 | STRING    | Reference plant for consumption                              |
| date_to                        | DATE      | To date of the material to be copied for consumption         |
| multiplier                     | NUMERIC   | Multiplier for reference material for consumption            |
| autom_reset                    | STRING    | Reset Forecast Model Automatically                           |
| cus_preference                 | STRING    | Customs Preference                                           |
| exemption_cert                 | STRING    | Exemption certificate: Indicator for legal control           |
| exempt_cert_no                 | STRING    | Exemption certificate number for legal control               |
| iss_date_of_crt                | DATE      | Exemption certificate: Issue date of exemption certificate   |
| vendor_decl                    | STRING    | Indicator: Vendor declaration exists                         |
| vdr_decl_date                  | DATE      | Validity date of vendor declaration                          |
| military_goods                 | STRING    | Indicator: Military goods                                    |
| service_level_1                | STRING    | IS-R service level                                           |
| co_product_marc                | STRING    | Indicator: Material can be co-product                        |
| strategy_group                 | STRING    | Planning Strategy Group                                      |
| int_object_no_1                | STRING    | Internal object number of configurable material for planning |
| stor_loc_ep                    | STRING    | Default storage location for external procurement            |
| bulk_material                  | STRING    | Indicator: bulk material                                     |
| cc_ind_fixed                   | STRING    | CC indicator is fixed                                        |
| stock_det_grp                  | STRING    | Stock determination group                                    |
| qm_mat_auth                    | STRING    | Material Authorization Group for Activities in QM            |
| adjustmt_period                | NUMERIC   | Period of adjustment for planned independent requirements    |
| task_list_type                 | STRING    | Task List Type                                               |
| uom_group                      | STRING    | Unit of Mearsure Group (Oil, Natural Gas,...)                |
| conv_group                     | STRING    | Conversion Group (Oil, Natural Gas,..)                       |
| air_buoy_fact                  | NUMERIC   | Air Bouyancy Factor                                          |
| prod_sched_profile             | STRING    | Production Scheduling Profile                                |
| safety_time_ind                | STRING    | Safety time indicator (with or without safety time)          |
| safety_time                    | STRING    | Safety time (in workdays)                                    |
| action_control                 | STRING    | Action control: planned order processing                     |
| enter_batch                    | STRING    | Determination of batch entry in the production/process order |
| uom_group_1                    | STRING    | Unit of Measure Group                                        |
| mat_freight_grp_marc           | STRING    | Material freight group                                       |
| backfl_profile                 | STRING    | Name of Backflush Profile                                    |
| stk_transfer_sv                | NUMERIC   | Stock transfer sales value (plant to plant) for VO material  |
| st_in_trans_sp                 | NUMERIC   | Transit value at sales price for value-only material         |
| smth_prom_cons                 | STRING    | Indicator: smooth promotion consumption                      |
| prod_version                   | STRING    | Production Version To Be Costed                              |
| fixed_price_co_prod            | STRING    | Fixed-Price Co-Product                                       |
| logistics_group                | STRING    | Logistics handling group for workload calculation            |
| dist_prof                      | STRING    | Distribution profile of material in plant                    |
| tied_empties                   | NUMERIC   | Tied Empties Stock                                           |
| slsval_tiedempt                | NUMERIC   | Sales value of tied empties stock                            |
| mat_category                   | STRING    | Material CFOP category                                       |
| eu_prod_list_no                | STRING    | CAP: Number of CAP products list                             |
| cap_prod_group                 | STRING    | Common Agricultural Policy: CAP products group-Foreign Trade |
| cas_no_pharm                   | STRING    | CAS number for pharmaceutical products in foreign trade      |
| prodcom_no                     | STRING    | Production statistics: PRODCOM number for foreign trade      |
| control_code                   | STRING    | Control code for consumption taxes in foreign trade          |
| jit_indicator                  | STRING    | Indicator: Item Relevant to JIT Delivery Schedules           |
| mat_grouping                   | STRING    | Group of Materials for Transition Matrix                     |
| proposed_s_area                | STRING    | Proposed Supply Area in Material Master Record               |
| fair_share_rule                | STRING    | Fair share rule                                              |
| push_distribution              | STRING    | Indicator: push distribution                                 |
| deploymnt_hrzn                 | NUMERIC   | Deployment horizon in days                                   |
| min_lot_size_1                 | NUMERIC   | Minimum lot size for Supply Demand Match                     |
| max_lot_size_1                 | NUMERIC   | Maximum lot size for Supply Demand Match                     |
| fix_lot_size                   | NUMERIC   | Fixed lot size for Supply Demand Match                       |
| lot_size_incr                  | NUMERIC   | Lot size increment for  Supply Demand Match                  |
| this_field_is_no_longer_used   | STRING    | This field is no longer used                                 |
| conv_type                      | STRING    | Conversion types for production figures                      |
| st_per_profile                 | STRING    | Period Profile for Safety Time                               |
| mrp_dep_reqmts                 | STRING    | MRP relevancy for dependent requirements                     |
| mrp_area_exists                | STRING    | Indicator: MRP area exists                                   |
| cross_project                  | STRING    | Indicator for cross-project material                         |
| overall_profile                | STRING    | Overall profile for order change management                  |
| relevant_to_apo                | STRING    | Indicator: Is material relevant for APO                      |
| mardh_rec_already_exists_for   | STRING    | MARDH rec. already exists for per. before last of MARD per.  |
| current_period                 | STRING    | Current period (posting period)                              |
| year_cur_period                | STRING    | Fiscal Year of Current Period                                |
| min_safetystock                | NUMERIC   | Minimum Safety Stock                                         |
| do_not_cost                    | STRING    | Do Not Cost                                                  |
| putaway_stkrmvl                | STRING    | Strategy for Putaway and Stock Removal                       |
| ob_management                  | STRING    | Indicator for Original Batch Management                      |
| ob_ref_matrial                 | STRING    | Reference Material for Original Batches                      |
| excise_tax_relevance_indicator | STRING    | Excise Tax Relevance Indicator                               |
| val_gr_blocked_stck            | NUMERIC   | Valuated Goods Receipt Blocked Stock                         |
| seg_strategy_marc              | STRING    | Segmentation Strategy                                        |
| seg_status_mrp                 | STRING    | Segmentation Status                                          |
| seg_scope_marc                 | STRING    | Segmentation Strategy Scope                                  |
| sort_stk_method                | STRING    | Sort Stock based on Segment                                  |
| cons_prio                      | STRING    | Consumption Priority                                         |
| discr_batch_no                 | STRING    | Discrete Batch Number                                        |
| stk_prot                       | STRING    | Stock Protection Indicator                                   |
| def_segment                    | STRING    | Default Stock Segment value                                  |
| atp_mrp_status                 | STRING    | ATP/MRP Status for Material and Segment                      |
| valid_from_1_marc              | DATE      | Date from which the plant-specific material status is valid  |
| arun                           | STRING    | Supply Assignment (ARun)                                     |
| season_act_im_marc             | STRING    | Indicator: Season Active in Inventory Management             |
| variant_group                  | STRING    | Variant Group                                                |
| batch_assignment               | STRING    | Indicator: Batch Assignment during TR to TO conversion       |
| calendar_group                 | STRING    | Calendar Group                                               |
| assign_batches                 | STRING    | Assign Batches in Supply Assignment (ARun)                   |
| advanced_planning              | STRING    | Indicator for Advanced Planning                              |
| consign_control                | STRING    | Consignment Control                                          |
| gi_proc_time                   | NUMERIC   | Goods Issue Processing Time in Days                          |
| across_purch_group             | STRING    | Purchasing Across Purchasing Group                           |
| deter_schema                   | STRING    | Reference Determination Schema                               |
| minimum_target_range           | STRING    | Minimum Target Range of Coverage                             |
| maximum_target_range           | STRING    | Maximum Target Range of Coverage                             |
| target_stock                   | NUMERIC   | Target Stock                                                 |
| nf_metals                      | STRING    | Indicator: Material Contains NF Metals                       |
| stock_in_tfr_1                 | NUMERIC   | Stock in transfer (plant to plant)                           |
| stk_in_transit_1               | NUMERIC   | Stock in Transit                                             |
| val_gr_blocked_stck_1          | NUMERIC   | Valuated Goods Receipt Blocked Stock                         |
| product_marc                   | BYTES     | Internal Key for Product                                     |
| loc_prod_id                    | STRING    | Internal Number (UID) for Location Product                   |
| gr_processng_time              | NUMERIC   | Goods Receipt Processing Time                                |
| gi_processng_time              | NUMERIC   | Goods Issue Processing Time                                  |
| prod_stor_costs                | NUMERIC   | Product-Dependent Storage Costs                              |
| repl_lead_time                 | NUMERIC   | Replenishment Lead Time in Calendar Days                     |
| pp_plng_proced                 | STRING    | PP Planning Procedure                                        |
| heuristic                      | STRING    | PPC Heuristics                                               |
| plan_package                   | STRING    | Planning Package to Which Product Belongs                    |
| safety_stk_pen                 | NUMERIC   | Penalty Costs for Safety Stock Violation                     |
| product_alerts                 | STRING    | Alert Relevance of Product                                   |
| network_name                   | STRING    | Resource Network                                             |
| gr_handlg_cap_cons             | NUMERIC   | Handling Capacity Consumption in Unit of Measure (Gds Rcpt)  |
| uom_handlcap_gr                | STRING    | Unit of Measure: Handling Capacity in Goods Receipt          |
| gi_handlg_cap_cons             | NUMERIC   | Handling Capacity Consumption in Unit of Measure (Gds Issue) |
| uom_handlcap_gi                | STRING    | Unit of Measure: Handling Capacity in Goods Issue            |
| shelf_life_loc                 | STRING    | Use Location-Dependent Shelf Life of Product when Planning   |
| loc_shelf_life                 | NUMERIC   | Location-Dependent Shelf Life                                |
| loc_matur_time                 | NUMERIC   | Location-Dependent Maturation Time                           |
| min_shelf_life                 | NUMERIC   | Minimum Shelf Life Required: Location-Dependent              |
| max_shelf_life                 | NUMERIC   | Maximum Shelf Life Required: Location-Dependent              |
| lot_size_unit                  | STRING    | Unit of Measure of Lot Size                                  |
| reorder_ds                     | NUMERIC   | Reorder Days Supply (in Workdays)                            |
| trgt_days_sup                  | NUMERIC   | Target Days Supply in Workdays                               |
| per_ls_plng_cal                | STRING    | Planning Calendar for Periodic Lot Sizing Procedure          |
| requirement_str                | STRING    | Requirement Strategy                                         |
| pegg_alertback                 | NUMERIC   | Alert threshold for delayed receipts                         |
| pegg_alert                     | NUMERIC   | Alert threshold for early receipts                           |
| peggng_strategy                | STRING    | Pegging strategy for dynamic pegging                         |
| avoid_alerts                   | STRING    | Avoid Alerts in Pegging                                      |
| fixed_pegging                  | STRING    | Retain Fixed Pegging for Product on Document Change          |
| plan_explosion                 | STRING    | Plan Explosion                                               |
| planning_group                 | STRING    | Planning Group                                               |
| profile                        | STRING    | Profile for Interactive Sourcing                             |
| priority                       | INT64     | Priority of Product                                          |
| min_passing_amt                | NUMERIC   | Minimum Passing Amount for Continuous I/O Pegging            |
| conversion_rule                | STRING    | Conversion Rule                                              |
| entire_receipt                 | STRING    | Use/Consume Entire Quantity of a Receipt Element             |
| entire_stock                   | STRING    | Use/Consume Entire Quantity of a Stock Element               |
| throughput_time                | NUMERIC   | Throughput Time                                              |
| tpop                           | STRING    | Third-Party Order Processing                                 |
| safety_stock_for_vcl           | NUMERIC   | Safety Stock for Virtual Child Location                      |
| sft_parent_location            | NUMERIC   | Safety Stock at Parent Location                              |
| sft_parent_loc_vcl             | NUMERIC   | Safety Stock of Parent Location Virtual Child Location       |
| rep_safety_st                  | NUMERIC   | Repair Safety Stock                                          |
| rep_sft_f_vcl                  | NUMERIC   | Repair Safety Stock for Virtual Child Location               |
| reord_point_vcl                | NUMERIC   | Reorder Point for Virtual Child Location                     |
| maximum_stock_vcl              | NUMERIC   | Maximum Stock Level for Virtual Child Locations              |
| holding_cost_factor            | NUMERIC   | Cost Factor for Stockholding Costs                           |
| procuremt_costs                | NUMERIC   | Procurement Costs for Product                                |
| gr_costs                       | NUMERIC   | Goods Receiving Costs (Network Design)                       |
| gi_costs                       | NUMERIC   | Goods Issue Costs (Network Design)                           |
| md_product_plant_extensible_fi | STRING    | MD product plant extensible field element                    |
| tolerance_plus                 | NUMERIC   | Percentage Tolerance Plus                                    |
| tol_minus                      | NUMERIC   | Percentage Tolerance Minus                                   |
| serialized_from                | DATE      | Serialization Valid From                                     |
| packing_group                  | STRING    | Packing Group of the Material (VSO)                          |
| picking_line                   | STRING    | Line within the Automatic Picking Zone (VSO)                 |
| matno_pkm_ve                   | STRING    | Material No. of the Packaging Material of the Vendor (VSO)   |
| pick_pkm_length                | STRING    | Pick Packaging Materials only Lengthwise (VSO)               |
| iuid_relevant                  | STRING    | IUID-Relevant                                                |
| iuid_type                      | STRING    | Structure Type of UII                                        |
| ext_allocation                 | STRING    | External Allocation of UII                                   |
| su_btch_default_val_marc       | STRING    | Single-Unit Batch Def. Value                                 |
| material_mbew                  | STRING    | Material Number                                              |
| valuation_area                 | STRING    | Valuation area                                               |
| valuation_type                 | STRING    | Valuation Type                                               |
| valuation_type_1               | STRING    | Deletion flag for all material data of a valuation type      |
| total_stock                    | NUMERIC   | Total Valuated Stock                                         |
| total_value                    | NUMERIC   | Value of Total Valuated Stock                                |
| price_control                  | STRING    | Price control indicator                                      |
| moving_price                   | NUMERIC   | Moving Average Price/Periodic Unit Price                     |
| standard_price                 | NUMERIC   | Standard price                                               |
| price_unit                     | NUMERIC   | Price unit                                                   |
| valuation_class                | STRING    | Valuation Class                                              |
| value_ma_price                 | NUMERIC   | Value based on moving average price (only with price ctrl S) |
| total_stock_pp                 | NUMERIC   | Total valuated stock in previous period                      |
| total_value_pp                 | NUMERIC   | Value of total valuated stock in previous period             |
| price_ctrl_pp                  | STRING    | Price Control Indicator in Previous Period                   |
| movavgprice_pp                 | NUMERIC   | Moving Average Price/Periodic Unit Price in Previous Period  |
| std_price_pp                   | NUMERIC   | Standard price in the previous period                        |
| price_unit_pp                  | NUMERIC   | Price unit of previous period                                |
| val_class_pp                   | STRING    | Valuation Class in Previous Period                           |
| value_prev_per                 | NUMERIC   | Value based on moving average price (previous period)        |
| total_stock_py                 | NUMERIC   | Total Valuated Stock in Previous Year                        |
| total_value_py                 | NUMERIC   | Value of total valuated stock in previous year               |
| price_ctrl_py                  | STRING    | Price Control Indicator in Previous Year                     |
| movavgprice_py                 | NUMERIC   | Moving Average Price/Periodic Unit Price in Previous Year    |
| std_price_py                   | NUMERIC   | Standard price in previous year                              |
| price_unit_py                  | NUMERIC   | Price unit of previous year                                  |
| val_class_py                   | STRING    | Valuation Class in Previous Year                             |
| value_prev_year                | NUMERIC   | Value based on moving average price (previous year)          |
| year_cur_period_mbew           | STRING    | Fiscal Year of Current Period                                |
| current_period_mbew            | STRING    | Current period (posting period)                              |
| valuation_cat_mbew             | STRING    | Valuation Category                                           |
| previous_price                 | NUMERIC   | Previous price                                               |
| last_price_chng                | DATE      | Date of the last price change                                |
| future_price                   | NUMERIC   | Future price                                                 |
| valid_from_mbew                | DATE      | Date as of which the price is valid                          |
| time_stamp                     | NUMERIC   | UTC Time Stamp in Short Form (YYYYMMDDhhmmss)                |
| tax_price_1                    | NUMERIC   | Valuation price based on tax law: level 1                    |
| comm_price_1                   | NUMERIC   | Valuation price based on commercial law: level 1             |
| tax_price_3                    | NUMERIC   | Valuation price based on tax law: level 3                    |
| coml_price_3                   | NUMERIC   | Valuation price based on commercial law: level 3             |
| valued_at                      | NUMERIC   | Value of total valuated stock in year before last            |
| total_stock_ybl                | NUMERIC   | Total valuated stock in year before last                     |
| total_stock_pbl                | NUMERIC   | Total valuated stock in period before last                   |
| valued_at_1                    | NUMERIC   | Value of total valuated stock in period before last          |
| fut_plnd_price                 | NUMERIC   | Future planned price                                         |
| planned_price_1                | NUMERIC   | Future Planned Price 1                                       |
| planned_price_2                | NUMERIC   | Future Planned Price 2                                       |
| planned_price_3                | NUMERIC   | Future Planned Price 3                                       |
| plnd_pr_date_1                 | DATE      | Date from Which Future Planned Price 1 Is Valid              |
| plnd_pr_date_2                 | DATE      | Date from Which Future Planned Price 2 Is Valid              |
| plnd_pr_date_3                 | DATE      | Date from Which Future Planned Price 3 Is Valid              |
| fut_c_e_period                 | STRING    | Period for future standard cost estimate (deactivated)       |
| current_c_e_pd                 | STRING    | Period for current standard cost estimate (deactivated)      |
| prev_c_e_per                   | STRING    | Period for previous standard cost estimate (deactivated)     |
| fut_cost_est                   | STRING    | Indicator: standard cost estimate for future period          |
| curr_cost_est                  | STRING    | Standard Cost Estimate for Current Period                    |
| prev_cost_est                  | STRING    | Indicator: standard cost estimate for previous period        |
| overhead_key                   | STRING    | Overhead key (deactivated)                                   |
| lifo_fifo_rel                  | STRING    | LIFO/FIFO-Relevant                                           |
| lifo_pool                      | STRING    | Pool number for LIFO valuation                               |
| commercial_pr_2                | NUMERIC   | Valuation price based on commercial law: level 2             |
| tax_price_2                    | NUMERIC   | Valuation price based on tax law: level 2                    |
| devaluation_ind                | STRING    | Lowest value: devaluation indicator                          |
| maint_status_mbew              | STRING    | Maintenance status                                           |
| prodcostest_no                 | STRING    | Cost Estimate Number - Product Costing                       |
| cost_estimateno                | STRING    | Cost Estimate Number for Cost Est. w/o Qty Structure         |
| valuation_var                  | STRING    | Valuation Variant for Future Standard Cost Estimate          |
| valuation_var_1                | STRING    | Valuation Variant for Current Standard Cost Estimate         |
| valuation_var_2                | STRING    | Valuation Variant for Previous Standard Cost Estimate        |
| costing_version                | STRING    | Costing Version of Future Standard Cost Estimate             |
| costing_version_1              | STRING    | Costing Version of Current Standard Cost Estimate            |
| costing_version_2              | STRING    | Costing Version of Previous Standard Cost Estimate           |
| origin_group                   | STRING    | Origin Group as Subdivision of Cost Element                  |
| overhead_group                 | STRING    | Costing Overhead Group                                       |
| posting_period                 | STRING    | Period of Future Standard Cost Estimate                      |
| current_period_1               | STRING    | Period of Current Standard Cost Estimate                     |
| previous_period                | STRING    | Period of Previous Standard Cost Estimate                    |
| fut_fyyear                     | STRING    | Fiscal Year of Future Standard Cost Estimate                 |
| current_fyear                  | STRING    | Fiscal Year of Current Standard Cost Estimate                |
| previous_fyear                 | STRING    | Fiscal Year of Previous Standard Cost Estimate               |
| cost_est_w_qs                  | STRING    | Material Is Costed with Quantity Structure                   |
| prev_plnd_price                | NUMERIC   | Previous planned price                                       |
| ml_act                         | STRING    | Material Ledger Activated at Material Level                  |
| price_determ                   | STRING    | Material Price Determination: Control                        |
| crnt_plan_price                | NUMERIC   | Current Planned Price                                        |
| total_sp_value                 | NUMERIC   | Value of Total Valuated Stock at Sales Price                 |
| material_origin                | STRING    | Material-related origin                                      |
| phys_inv_blk                   | STRING    | Physical Inventory Blocking Indicator                        |
| ph_inv_vo_mat                  | STRING    | Phys. inventory indicator for  value-only material           |
| last_count_date                | DATE      | Date of Last Posted Count                                    |
| cc_phys_inv_mbew               | STRING    | Physical Inventory Indicator for Cycle Counting              |
| val_margin                     | NUMERIC   | Valuation margin                                             |
| fxd_curr_planprice             | NUMERIC   | Fixed Portion of Current Planned Price                       |
| prev_plprice_fixed             | NUMERIC   | Fixed Portion of Previous Planned Price                      |
| fut_planprice_fxd              | NUMERIC   | Fixed Portion of Future Planned Price                        |
| curr_val_strat                 | STRING    | Val. Strat. for Current Plan Price, Sales Order/Proj. Stock  |
| prev_valn_strat                | STRING    | Valuation Strategy for Previous Plan Price, Special Stock    |
| future_valstratgy              | STRING    | Valuation Strategy for Future Planned Price, Special Stock   |
| vc_sal_ord_stk                 | STRING    | Valuation Class for Sales Order Stock                        |
| project_stk_vc                 | STRING    | Valuation Class for Project Stock                            |
| material_usage                 | STRING    | Usage of the material                                        |
| material_origin_1              | STRING    | Origin of the material                                       |
| prod_in_house                  | STRING    | Produced in-house                                            |
| valuated_uom                   | STRING    | Valuation based on the batch-specific unit of measure        |
| price_unit_1                   | NUMERIC   | Price unit for valuation prices based on tax/commercial law  |
| mbewh_rec_already_exists_for   | STRING    | MBEWH rec. already exists for per. before last of MBEW per.  |
| vc_vendor                      | STRING    | Valuation Class for Special Stock at the Vendor              |
| md_product_valuation_extension | STRING    | MD Product valuation extension field element                 |
| prepaid_inv                    | STRING    | Prepaid Inventory Flag for Material Valuation Type Segment   |
| finalmd5key                    | STRING    | MD5 key combining all columns                                |
| input_last_update_date         | DATETIME  | Last Input read time                                         |
| dw_active_indicator            | STRING    | Valid Indicator                                              |
| dw_start_date                  | DATETIME  | Record start date                                            |
| dw_end_date                    | DATETIME  | Record end date                                              |
| dw_last_update_date            | DATETIME  | Record Inserted/Updated date                                 |


Copyright 2021 Google Inc. All rights reserved.
The use of this software is governed by the Pre-GA Offering Terms section of the the Service Specific Terms set forth at https://cloud.google.com/terms/service-terms#general-service-terms