MERGE INTO `sap-adapter.slt_staging.batches_data` tgt
USING (
WITH mcha as
(select MANDT as client,
MATNR as material,
WERKS as plant,
CHARG as batch,
LVORM as batch_del_flag,
ERSDA as created_on,
ERNAM as created_by,
AENAM as changed_by,
LAEDA as last_change,
VERAB as available_from,
VFDAT as sled_bbd,
ZUSCH as status_key,
ZUSTD as batch_restr,
ZAEDT as last_change_1,
LIFNR as vendor,
LICHA as supplier_batch,
VLCHA as original_batch,
VLWRK as original_plant,
VLMAT as orig_material,
BATCH_ID as batch_id,
XPCBT as su_batch,
BWTAR as valuation_type,
CHAME as batch_issue_un,
LWEDT as last_goods_rec,
FVDT1 as dates,
FVDT2 as date_1,
FVDT3 as date_2,
FVDT4 as date_3,
FVDT5 as date_4,
FVDT6 as date_5,
HERKL as ctry_of_origin,
HERKR as reg_of_origin,
MTVER as intrastat_group,
QNDAT as next_inspection,
HSDAT as date_of_manuf,
CUOBJ_BM as int_object_no,
DEACT_BM as batch_deactivated,
BATCH_TYPE as batch_type,
SGT_SCAT as stock_segment,
ERSDA_TMSTP as deprecated,
ERSDA_TZ_SYS as deprecated_1,
ERSDA_TZ_USR as deprecated_2,
ZFDAT as certif_on,
CREATION_DATETIME as created_on_1,
LASTCHANGE_DATETIME as last_change_2,
__STTPEC__SERTYPE as serialization_type,
__STTPEC__SYNCTIME as last_synchronized,
__STTPEC__SYNCACT as sync_active,
FSH_SEASON_YEAR as season_year,
FSH_SEASON as season,
FSH_COLLECTION as collection,
FSH_THEME as theme,
_sequence_num as dw_input_sequence,
TO_HEX(MD5((select string_agg(CAST(col as STRING), ', ' order by offset)
    				from unnest(split(trim(format('%t',(select as struct mcha.* except(_is_deleted,_row_id,_source_timestamp,_sequence_num))), '()'),', ')) col with offset
    				where not col IS NULL))) as finalmd5key
from `sap-adapter.slt_raw.mcha` as mcha
where mcha._sequence_num > coalesce((select case when full_delta_indicator = 'F'
    												then min_input_sequence_num
    											when full_delta_indicator <> 'F'
    											then max_input_sequence_num
    											end
    										from `sap-adapter.slt_staging.staging_audit_table`
    											where table_name = 'batches_data'),0))
select client as client_key,
material as material_key,
plant as plant_key,
batch as batch_key,
*
From  mcha
UNION ALL
select null as client_key,
null as material_key,
null as plant_key,
null as batch_key,
mcha.*
From mcha as mcha
INNER JOIN `sap-adapter.slt_staging.batches_data` as uji
ON mcha.client = uji.client
AND mcha.material = uji.material
AND mcha.plant = uji.plant
AND mcha.batch = uji.batch
AND mcha.finalmd5key != uji.finalmd5key
WHERE uji.dw_active_indicator = 'Y') as src
ON src.client_key = tgt.client
AND src.material_key = tgt.material
AND src.plant_key = tgt.plant
AND src.batch_key = tgt.batch
WHEN MATCHED AND src.finalmd5key != tgt.finalmd5key
    THEN UPDATE set tgt.dw_active_indicator = 'N',
    tgt.dw_last_update_date = CURRENT_DATETIME()
    WHEN NOT MATCHED THEN
insert(client,
material,
plant,
batch,
batch_del_flag,
created_on,
created_by,
changed_by,
last_change,
available_from,
sled_bbd,
status_key,
batch_restr,
last_change_1,
vendor,
supplier_batch,
original_batch,
original_plant,
orig_material,
batch_id,
su_batch,
valuation_type,
batch_issue_un,
last_goods_rec,
dates,
date_1,
date_2,
date_3,
date_4,
date_5,
ctry_of_origin,
reg_of_origin,
intrastat_group,
next_inspection,
date_of_manuf,
int_object_no,
batch_deactivated,
batch_type,
stock_segment,
deprecated,
deprecated_1,
deprecated_2,
certif_on,
created_on_1,
last_change_2,
serialization_type,
last_synchronized,
sync_active,
season_year,
season,
collection,
theme,
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
src.batch,
src.batch_del_flag,
src.created_on,
src.created_by,
src.changed_by,
src.last_change,
src.available_from,
src.sled_bbd,
src.status_key,
src.batch_restr,
src.last_change_1,
src.vendor,
src.supplier_batch,
src.original_batch,
src.original_plant,
src.orig_material,
src.batch_id,
src.su_batch,
src.valuation_type,
src.batch_issue_un,
src.last_goods_rec,
src.dates,
src.date_1,
src.date_2,
src.date_3,
src.date_4,
src.date_5,
src.ctry_of_origin,
src.reg_of_origin,
src.intrastat_group,
src.next_inspection,
src.date_of_manuf,
src.int_object_no,
src.batch_deactivated,
src.batch_type,
src.stock_segment,
src.deprecated,
src.deprecated_1,
src.deprecated_2,
src.certif_on,
src.created_on_1,
src.last_change_2,
src.serialization_type,
src.last_synchronized,
src.sync_active,
src.season_year,
src.season,
src.collection,
src.theme,
src.finalmd5key,
src.dw_input_sequence,
'Y',
CURRENT_DATETIME(),
DATETIME(9999, 12, 31, 23, 59, 59),
CURRENT_DATETIME()
);
MERGE INTO `sap-adapter.slt_staging.staging_audit_table` tgt
USING ( SELECT
    		'batches_data' as table_name
    		,'mcha' as sap_table_name
    		,CASE WHEN (select full_delta_indicator from `sap-adapter.slt_staging.staging_audit_table` where table_name = 'batches_data') IS NULL
    				OR (select full_delta_indicator from `sap-adapter.slt_staging.staging_audit_table` where table_name = 'batches_data') = 'F'
    			THEN 'F'
    			ELSE 'D'
    		END AS full_delta_indicator
    		,0 as min_input_sequence_num
    		,(select max(dw_input_sequence) as max_input_sequence_num from `sap-adapter.slt_staging.batches_data`) as max_input_sequence_num
    		,(coalesce((select COUNT(*) AS inserted_record_count from `sap-adapter.slt_staging.batches_data` a
    		where a.dw_input_sequence > coalesce((select case when full_delta_indicator = 'F'
    						then min_input_sequence_num
    						when full_delta_indicator <> 'F'
    						then max_input_sequence_num
    					end
    				from `sap-adapter.slt_staging.staging_audit_table`
    				where table_name = 'batches_data'),0)),(select count(*) AS inserted_record_count from `sap-adapter.slt_staging.batches_data`))) AS inserted_record_count
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
    