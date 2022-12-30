MERGE INTO `sap-adapter.slt_staging.material_storage_location` tgt
USING (
WITH mard as
(select MANDT as client,
MATNR as material,
WERKS as plant,
LGORT as stor_loc,
PSTAT as maint_status,
LVORM as df_stor_loc_lvl,
LFGJA as year_cur_period,
LFMON as current_period,
SPERR as phys_inv_blk,
LABST as unrestricted,
UMLME as stock_in_tfr,
INSME as quality_insp,
EINME as restricted_use,
SPEME as blocked,
RETME as returns_block_stock,
VMLAB as unrestr_use,
VMUML as in_transfer,
VMINS as in_qual_insp,
VMEIN as restr_use_pp,
VMSPE as blocked_1,
VMRET as returns_1,
KZILL as warehouse_stock,
KZILQ as qualinspstock,
KZILE as restricted_use_1,
KZILS as blocked_stock,
KZVLL as warehouse_stock_1,
KZVLQ as qualinspstock_1,
KZVLE as restricted_use_2,
KZVLS as blocked_stock_1,
DISKZ as mrp_ind,
LSOBS as spec_proc_sloc,
LMINB as reorder_point,
LBSTF as replenishmt_qty,
HERKL as ctry_of_origin,
EXPPG as preference_ind,
EXVER as export_ind,
LGPBE as storage_bin,
KLABS as unrestr_consgt,
KINSM as cnsgt_in_qinsp,
KEINM as restr_consgt,
KSPEM as blocked_consgt,
DLINL as last_count_date,
PRCTL as profit_center,
ERSDA as created_on,
VKLAB as sp_stock_value,
VKUML as stk_transfer_sv,
LWMKB as picking_area,
BSKRF as inven_cor_fact,
MDRUE as mardh_rec_already_exists_for,
MDJIN as fiscal_year_of_current_physica,
DUMMY_STL_INCL_EEW_PS as md_product_storage_location,
FSH_SALLOC_QTY_S as allocated_stock,
__CWM__LABST as unrestricted_1,
__CWM__INSME as quality_insp_1,
__CWM__EINME as restricted_use_3,
__CWM__SPEME as blocked_2,
__CWM__RETME as returns_2,
__CWM__UMLME as stock_in_tfr_1,
__CWM__KLABS as unrestr_consgt_1,
__CWM__KINSM as cnsgt_in_qinsp_1,
__CWM__KEINM as restr_consgt_1,
__CWM__KSPEM as blocked_consgt_1,
__CWM__VMLAB as unrestr_use_1,
__CWM__VMINS as in_qual_insp_1,
__CWM__VMEIN as restr_use_pp_1,
__CWM__VMSPE as blocked_3,
__CWM__VMRET as returns_3,
__CWM__VMUML as in_transfer_1,
_sequence_num as dw_input_sequence,
TO_HEX(MD5((select string_agg(CAST(col as STRING), ', ' order by offset)
    				from unnest(split(trim(format('%t',(select as struct mard.* except(_is_deleted,_row_id,_source_timestamp,_sequence_num))), '()'),', ')) col with offset
    				where not col IS NULL))) as finalmd5key
from `sap-adapter.slt_raw.mard` as mard
where mard._sequence_num > coalesce((select case when full_delta_indicator = 'F'
    												then min_input_sequence_num
    											when full_delta_indicator <> 'F'
    											then max_input_sequence_num
    											end
    										from `sap-adapter.slt_staging.staging_audit_table`
    											where table_name = 'material_storage_location'),0))
select client as client_key,
material as material_key,
plant as plant_key,
stor_loc as stor_loc_key,
*
From  mard
UNION ALL
select null as client_key,
null as material_key,
null as plant_key,
null as stor_loc_key,
mard.*
From mard as mard
INNER JOIN `sap-adapter.slt_staging.material_storage_location` as uji
ON mard.client = uji.client
AND mard.material = uji.material
AND mard.plant = uji.plant
AND mard.stor_loc = uji.stor_loc
AND mard.finalmd5key != uji.finalmd5key
WHERE uji.dw_active_indicator = 'Y') as src
ON src.client_key = tgt.client
AND src.material_key = tgt.material
AND src.plant_key = tgt.plant
AND src.stor_loc_key = tgt.stor_loc
WHEN MATCHED AND src.finalmd5key != tgt.finalmd5key
    THEN UPDATE set tgt.dw_active_indicator = 'N',
    tgt.dw_last_update_date = CURRENT_DATETIME()
    WHEN NOT MATCHED THEN
insert(client,
material,
plant,
stor_loc,
maint_status,
df_stor_loc_lvl,
year_cur_period,
current_period,
phys_inv_blk,
unrestricted,
stock_in_tfr,
quality_insp,
restricted_use,
blocked,
returns_block_stock,
unrestr_use,
in_transfer,
in_qual_insp,
restr_use_pp,
blocked_1,
returns_1,
warehouse_stock,
qualinspstock,
restricted_use_1,
blocked_stock,
warehouse_stock_1,
qualinspstock_1,
restricted_use_2,
blocked_stock_1,
mrp_ind,
spec_proc_sloc,
reorder_point,
replenishmt_qty,
ctry_of_origin,
preference_ind,
export_ind,
storage_bin,
unrestr_consgt,
cnsgt_in_qinsp,
restr_consgt,
blocked_consgt,
last_count_date,
profit_center,
created_on,
sp_stock_value,
stk_transfer_sv,
picking_area,
inven_cor_fact,
mardh_rec_already_exists_for,
fiscal_year_of_current_physica,
md_product_storage_location,
allocated_stock,
unrestricted_1,
quality_insp_1,
restricted_use_3,
blocked_2,
returns_2,
stock_in_tfr_1,
unrestr_consgt_1,
cnsgt_in_qinsp_1,
restr_consgt_1,
blocked_consgt_1,
unrestr_use_1,
in_qual_insp_1,
restr_use_pp_1,
blocked_3,
returns_3,
in_transfer_1,
finalmd5key,
dw_input_sequence,
dw_active_indicator,
dw_start_date,
dw_end_date,
dw_last_update_date
)
values(src.client,
src.material,
src.plant,
src.stor_loc,
src.maint_status,
src.df_stor_loc_lvl,
src.year_cur_period,
src.current_period,
src.phys_inv_blk,
src.unrestricted,
src.stock_in_tfr,
src.quality_insp,
src.restricted_use,
src.blocked,
src.returns_block_stock,
src.unrestr_use,
src.in_transfer,
src.in_qual_insp,
src.restr_use_pp,
src.blocked_1,
src.returns_1,
src.warehouse_stock,
src.qualinspstock,
src.restricted_use_1,
src.blocked_stock,
src.warehouse_stock_1,
src.qualinspstock_1,
src.restricted_use_2,
src.blocked_stock_1,
src.mrp_ind,
src.spec_proc_sloc,
src.reorder_point,
src.replenishmt_qty,
src.ctry_of_origin,
src.preference_ind,
src.export_ind,
src.storage_bin,
src.unrestr_consgt,
src.cnsgt_in_qinsp,
src.restr_consgt,
src.blocked_consgt,
src.last_count_date,
src.profit_center,
src.created_on,
src.sp_stock_value,
src.stk_transfer_sv,
src.picking_area,
src.inven_cor_fact,
src.mardh_rec_already_exists_for,
src.fiscal_year_of_current_physica,
src.md_product_storage_location,
src.allocated_stock,
src.unrestricted_1,
src.quality_insp_1,
src.restricted_use_3,
src.blocked_2,
src.returns_2,
src.stock_in_tfr_1,
src.unrestr_consgt_1,
src.cnsgt_in_qinsp_1,
src.restr_consgt_1,
src.blocked_consgt_1,
src.unrestr_use_1,
src.in_qual_insp_1,
src.restr_use_pp_1,
src.blocked_3,
src.returns_3,
src.in_transfer_1,
src.finalmd5key,
src.dw_input_sequence,
'Y',
CURRENT_DATETIME(),
DATETIME(9999, 12, 31, 23, 59, 59),
CURRENT_DATETIME()
);
MERGE INTO `sap-adapter.slt_staging.staging_audit_table` tgt
USING ( SELECT
    		'material_storage_location' as table_name
    		,'mard' as sap_table_name
    		,CASE WHEN (select full_delta_indicator from `sap-adapter.slt_staging.staging_audit_table` where table_name = 'material_storage_location') IS NULL
    				OR (select full_delta_indicator from `sap-adapter.slt_staging.staging_audit_table` where table_name = 'material_storage_location') = 'F'
    			THEN 'F'
    			ELSE 'D'
    		END AS full_delta_indicator
    		,0 as min_input_sequence_num
    		,(select max(dw_input_sequence) as max_input_sequence_num from `sap-adapter.slt_staging.material_storage_location`) as max_input_sequence_num
    		,(coalesce((select COUNT(*) AS inserted_record_count from `sap-adapter.slt_staging.material_storage_location` a
    		where a.dw_input_sequence > coalesce((select case when full_delta_indicator = 'F'
    						then min_input_sequence_num
    						when full_delta_indicator <> 'F'
    						then max_input_sequence_num
    					end
    				from `sap-adapter.slt_staging.staging_audit_table`
    				where table_name = 'material_storage_location'),0)),(select count(*) AS inserted_record_count from `sap-adapter.slt_staging.material_storage_location`))) AS inserted_record_count
    		,CURRENT_DATETIME() as last_update_date   
    )scr
    on tgt.table_name = scr.table_name
    WHEN MATCHED THEN 
    UPDATE set tgt.min_input_sequence_num = 0
    			,tgt.max_input_sequence_num = scr.max_input_sequence_num
    			,tgt.inserted_record_count = scr.inserted_record_count
    			,tgt.last_update_date = scr.last_update_date
    WHEN NOT MATCHED THEN
    INSERT (table_name,
    		sap_table_name,
    		full_delta_indicator,
    		min_input_sequence_num,
    		max_input_sequence_num,
    		inserted_record_count,
    		last_update_date)
    VALUES(scr.table_name,
    		scr.sap_table_name,
    		scr.full_delta_indicator,
    		scr.min_input_sequence_num,
    		scr.max_input_sequence_num,
    		scr.inserted_record_count,
    		scr.last_update_date);
    