MERGE INTO `sap-adapter.slt_staging.controlling_area_master` tgt
USING (
WITH tka01 as
(select MANDT as client,
KOKRS as co_area,
BEZEI as name,
WAERS as currency,
KTOPL as chart_of_accts,
LMONA as fi_year_variant,
KOKFI as cocd_co_area,
LOGSYSTEM as logical_system,
ALEMT as distr_method,
MD_LOGSYSTEM as ls_master_data,
KHINR as std_hierarchy,
KOMP1 as convert_revenue,
KOMP0 as productive_ind,
KOMP2 as reserve,
ERKRS as operating_concern,
DPRCT as dummy_prctr,
PHINR as area,
PCLDG as prctr_ledger,
PCBEL as elim_intbusvol,
XWBUK as diff_ccode_curr,
BPHINR as area_1,
XBPALE as ale_active_bp,
KSTAR_FIN as celem_vend_dwnp,
KSTAR_FID as revtyp_cus_dwnp,
PCACUR as prctr_local_currency,
PCACURTP as currency_type,
PCATRCUR as transaction_currency,
CTYP as currency_type_1,
RCLAC as recledgr_active,
BLART as document_type,
FIKRS as fm_area,
RCL_PRIMAC as acctdet_forprim_cels,
PCA_ALEMT as ale_dist_method,
PCA_VALU as valuation_view,
CVPROF as curr_val_prof,
CVACT as c_v_pro_active,
VNAME as person_respons,
PCA_ACC_DIFF as account_control,
TP_VALOHB as valview_calcbas,
DEFPRCTR as default_prctr,
F_OBSOLETE as hide_entry,
LEADING_FSV as leading_fs_version,
AUTH_USE_NO_STD as no_stdhier,
AUTH_USE_ADD1 as hierarchy_1,
AUTH_USE_ADD2 as hierarchy_2,
AUTH_KE_NO_STD as no_stdhier_1,
AUTH_KE_USE_ADD1 as hierarchy_1_1,
AUTH_KE_USE_ADD2 as hierarchy_2_1,
OBJCUR_USE as alter_use_obj_crcy,
OBJCUR_KURST as exch_rate_type,
OBJCUR_CURDT as trns_date_type,
OBJCUR_SRCCT as source_currency_type,
OBJCUR_SRCAL as equal_crcy_preferred,
_sequence_num as dw_input_sequence,
TO_HEX(MD5((select string_agg(CAST(col as STRING), ', ' order by offset)
    				from unnest(split(trim(format('%t',(select as struct tka01.* except(_is_deleted,_row_id,_source_timestamp,_sequence_num))), '()'),', ')) col with offset
    				where not col IS NULL))) as finalmd5key
from `sap-adapter.slt_raw.tka01` as tka01
where tka01._sequence_num > coalesce((select case when full_delta_indicator = 'F'
    												then min_input_sequence_num
    											when full_delta_indicator <> 'F'
    											then max_input_sequence_num
    											end
    										from `sap-adapter.slt_staging.staging_audit_table`
    											where table_name = 'controlling_area_master'),0))
select client as client_key,
co_area as co_area_key,
*
From  tka01
UNION ALL
select null as client_key,
null as co_area_key,
tka01.*
From tka01 as tka01
INNER JOIN `sap-adapter.slt_staging.controlling_area_master` as uji
ON tka01.client = uji.client
AND tka01.co_area = uji.co_area
AND tka01.finalmd5key != uji.finalmd5key
WHERE uji.dw_active_indicator = 'Y') as src
ON src.client_key = tgt.client
AND src.co_area_key = tgt.co_area
WHEN MATCHED AND src.finalmd5key != tgt.finalmd5key
    THEN UPDATE set tgt.dw_active_indicator = 'N',
    tgt.dw_last_update_date = CURRENT_DATETIME()
    WHEN NOT MATCHED THEN
insert(client,
co_area,
name,
currency,
chart_of_accts,
fi_year_variant,
cocd_co_area,
logical_system,
distr_method,
ls_master_data,
std_hierarchy,
convert_revenue,
productive_ind,
reserve,
operating_concern,
dummy_prctr,
area,
prctr_ledger,
elim_intbusvol,
diff_ccode_curr,
area_1,
ale_active_bp,
celem_vend_dwnp,
revtyp_cus_dwnp,
prctr_local_currency,
currency_type,
transaction_currency,
currency_type_1,
recledgr_active,
document_type,
fm_area,
acctdet_forprim_cels,
ale_dist_method,
valuation_view,
curr_val_prof,
c_v_pro_active,
person_respons,
account_control,
valview_calcbas,
default_prctr,
hide_entry,
leading_fs_version,
no_stdhier,
hierarchy_1,
hierarchy_2,
no_stdhier_1,
hierarchy_1_1,
hierarchy_2_1,
alter_use_obj_crcy,
exch_rate_type,
trns_date_type,
source_currency_type,
equal_crcy_preferred,
finalmd5key,
dw_input_sequence,
dw_active_indicator,
dw_start_date,
dw_end_date,
dw_last_update_date
)
values(src.client,
src.co_area,
src.name,
src.currency,
src.chart_of_accts,
src.fi_year_variant,
src.cocd_co_area,
src.logical_system,
src.distr_method,
src.ls_master_data,
src.std_hierarchy,
src.convert_revenue,
src.productive_ind,
src.reserve,
src.operating_concern,
src.dummy_prctr,
src.area,
src.prctr_ledger,
src.elim_intbusvol,
src.diff_ccode_curr,
src.area_1,
src.ale_active_bp,
src.celem_vend_dwnp,
src.revtyp_cus_dwnp,
src.prctr_local_currency,
src.currency_type,
src.transaction_currency,
src.currency_type_1,
src.recledgr_active,
src.document_type,
src.fm_area,
src.acctdet_forprim_cels,
src.ale_dist_method,
src.valuation_view,
src.curr_val_prof,
src.c_v_pro_active,
src.person_respons,
src.account_control,
src.valview_calcbas,
src.default_prctr,
src.hide_entry,
src.leading_fs_version,
src.no_stdhier,
src.hierarchy_1,
src.hierarchy_2,
src.no_stdhier_1,
src.hierarchy_1_1,
src.hierarchy_2_1,
src.alter_use_obj_crcy,
src.exch_rate_type,
src.trns_date_type,
src.source_currency_type,
src.equal_crcy_preferred,
src.finalmd5key,
src.dw_input_sequence,
'Y',
CURRENT_DATETIME(),
DATETIME(9999, 12, 31, 23, 59, 59),
CURRENT_DATETIME()
);
MERGE INTO `sap-adapter.slt_staging.staging_audit_table` tgt
USING ( SELECT
    		'controlling_area_master' as table_name
    		,'tka01' as sap_table_name
    		,CASE WHEN (select full_delta_indicator from `sap-adapter.slt_staging.staging_audit_table` where table_name = 'controlling_area_master') IS NULL
    				OR (select full_delta_indicator from `sap-adapter.slt_staging.staging_audit_table` where table_name = 'controlling_area_master') = 'F'
    			THEN 'F'
    			ELSE 'D'
    		END AS full_delta_indicator
    		,0 as min_input_sequence_num
    		,(select max(dw_input_sequence) as max_input_sequence_num from `sap-adapter.slt_staging.controlling_area_master`) as max_input_sequence_num
    		,(coalesce((select COUNT(*) AS inserted_record_count from `sap-adapter.slt_staging.controlling_area_master` a
    		where a.dw_input_sequence > coalesce((select case when full_delta_indicator = 'F'
    						then min_input_sequence_num
    						when full_delta_indicator <> 'F'
    						then max_input_sequence_num
    					end
    				from `sap-adapter.slt_staging.staging_audit_table`
    				where table_name = 'controlling_area_master'),0)),(select count(*) AS inserted_record_count from `sap-adapter.slt_staging.controlling_area_master`))) AS inserted_record_count
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
    