MERGE INTO `sap-adapter.slt_staging.batch_level_stock_data` tgt
USING (
WITH mchb as
(select MANDT as client,
MATNR as material,
WERKS as plant,
LGORT as stor_loc,
CHARG as batch,
LVORM as stock_del_flag,
ERSDA as created_on,
ERNAM as created_by,
LAEDA as last_change,
AENAM as changed_by,
LFGJA as year_cur_period,
LFMON as current_period,
SPERC as phys_inv_blk,
CLABS as unrestricted,
CUMLM as stock_in_tfr,
CINSM as quality_insp,
CEINM as restricted_use,
CSPEM as blocked,
CRETM as returns_block_stock,
CVMLA as unrestr_use,
CVMUM as in_transfer,
CVMIN as in_qual_insp,
CVMEI as restr_use_pp,
CVMSP as blocked_1,
CVMRE as returns_1,
KZICL as warehouse_stock,
KZICQ as qualinspstock,
KZICE as restricted_use_1,
KZICS as blocked_stock,
KZVCL as warehouse_stock_1,
KZVCQ as qualinspstock_1,
KZVCE as restricted_use_2,
KZVCS as blocked_stock_1,
HERKL as ctry_of_origin,
CHDLL as last_count_date,
CHJIN as fiscal_year_of_current_physica,
CHRUE as mchbh_rec_already_exists_for,
SGT_SCAT as stock_segment,
FSH_SEASON_YEAR as season_year,
FSH_SEASON as season,
FSH_COLLECTION as collection,
FSH_THEME as theme,
FSH_SALLOC_QTY as allocated_stock,
__CWM__CLABS as unrestricted_1,
__CWM__CINSM as quality_insp_1,
__CWM__CEINM as restricted_use_3,
__CWM__CSPEM as blocked_2,
__CWM__CRETM as returns_2,
__CWM__CUMLM as stock_in_tfr_1,
__CWM__CVMLA as unrestr_use_1,
__CWM__CVMIN as in_qual_insp_1,
__CWM__CVMEI as restr_use_pp_1,
__CWM__CVMSP as blocked_3,
__CWM__CVMRE as returns_3,
__CWM__CVMUM as in_transfer_1,
_sequence_num as dw_input_sequence,
TO_HEX(MD5((select string_agg(CAST(col as STRING), ', ' order by offset)
    				from unnest(split(trim(format('%t',(select as struct mchb.* except(_is_deleted,_row_id,_source_timestamp,_sequence_num))), '()'),', ')) col with offset
    				where not col IS NULL))) as finalmd5key
from `sap-adapter.slt_raw.mchb` as mchb
where mchb._sequence_num > coalesce((select case when full_delta_indicator = 'F'
    												then min_input_sequence_num
    											when full_delta_indicator <> 'F'
    											then max_input_sequence_num
    											end
    										from `sap-adapter.slt_staging.staging_audit_table`
    											where table_name = 'batch_level_stock_data'),0))
select client as client_key,
material as material_key,
plant as plant_key,
stor_loc as stor_loc_key,
batch as batch_key,
*
From  mchb
UNION ALL
select null as client_key,
null as material_key,
null as plant_key,
null as stor_loc_key,
null as batch_key,
mchb.*
From mchb as mchb
INNER JOIN `sap-adapter.slt_staging.batch_level_stock_data` as uji
ON mchb.client = uji.client
AND mchb.material = uji.material
AND mchb.plant = uji.plant
AND mchb.stor_loc = uji.stor_loc
AND mchb.batch = uji.batch
AND mchb.finalmd5key != uji.finalmd5key
WHERE uji.dw_active_indicator = 'Y') as src
ON src.client_key = tgt.client
AND src.material_key = tgt.material
AND src.plant_key = tgt.plant
AND src.stor_loc_key = tgt.stor_loc
AND src.batch_key = tgt.batch
WHEN MATCHED AND src.finalmd5key != tgt.finalmd5key
    THEN UPDATE set tgt.dw_active_indicator = 'N',
    tgt.dw_last_update_date = CURRENT_DATETIME()
    WHEN NOT MATCHED THEN
insert(client,
material,
plant,
stor_loc,
batch,
stock_del_flag,
created_on,
created_by,
last_change,
changed_by,
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
ctry_of_origin,
last_count_date,
fiscal_year_of_current_physica,
mchbh_rec_already_exists_for,
stock_segment,
season_year,
season,
collection,
theme,
allocated_stock,
unrestricted_1,
quality_insp_1,
restricted_use_3,
blocked_2,
returns_2,
stock_in_tfr_1,
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
src.batch,
src.stock_del_flag,
src.created_on,
src.created_by,
src.last_change,
src.changed_by,
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
src.ctry_of_origin,
src.last_count_date,
src.fiscal_year_of_current_physica,
src.mchbh_rec_already_exists_for,
src.stock_segment,
src.season_year,
src.season,
src.collection,
src.theme,
src.allocated_stock,
src.unrestricted_1,
src.quality_insp_1,
src.restricted_use_3,
src.blocked_2,
src.returns_2,
src.stock_in_tfr_1,
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
    		'batch_level_stock_data' as table_name
    		,'mchb' as sap_table_name
    		,CASE WHEN (select full_delta_indicator from `sap-adapter.slt_staging.staging_audit_table` where table_name = 'batch_level_stock_data') IS NULL
    				OR (select full_delta_indicator from `sap-adapter.slt_staging.staging_audit_table` where table_name = 'batch_level_stock_data') = 'F'
    			THEN 'F'
    			ELSE 'D'
    		END AS full_delta_indicator
    		,0 as min_input_sequence_num
    		,(select max(dw_input_sequence) as max_input_sequence_num from `sap-adapter.slt_staging.batch_level_stock_data`) as max_input_sequence_num
    		,(coalesce((select COUNT(*) AS inserted_record_count from `sap-adapter.slt_staging.batch_level_stock_data` a
    		where a.dw_input_sequence > coalesce((select case when full_delta_indicator = 'F'
    						then min_input_sequence_num
    						when full_delta_indicator <> 'F'
    						then max_input_sequence_num
    					end
    				from `sap-adapter.slt_staging.staging_audit_table`
    				where table_name = 'batch_level_stock_data'),0)),(select count(*) AS inserted_record_count from `sap-adapter.slt_staging.batch_level_stock_data`))) AS inserted_record_count
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
    