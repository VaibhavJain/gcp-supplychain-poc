MERGE INTO `sap-adapter.slt_staging.logon_data` tgt
USING (
WITH usr02 as
(select MANDT as client,
BNAME as user,
BCODE as initial_pw,
GLTGV as valid_from,
GLTGB as valid_to,
USTYP as user_type,
CLASS as user_group,
LOCNT as failed_logons,
UFLAG as user_lock,
ACCNT as account_no,
ANAME as creator,
ERDAT as created_on,
TRDAT as last_logon_date,
LTIME as last_logon_time,
OCOD1 as initial_pw_1,
BCDA1 as password_change,
CODV1 as code_version,
OCOD2 as initial_pw_2,
BCDA2 as password_change_1,
CODV2 as code_version_1,
OCOD3 as initial_pw_3,
BCDA3 as password_change_2,
CODV3 as code_version_2,
OCOD4 as initial_pw_4,
BCDA4 as password_change_3,
CODV4 as code_version_3,
OCOD5 as initial_pw_5,
BCDA5 as password_change_4,
CODV5 as code_version_4,
VERSN as user_master_record_version,
CODVN as code_version_5,
TZONE as time_zone,
ZBVMASTER as cua_user,
PASSCODE as password_hash_val,
PWDCHGDATE as password_change_5,
PWDSTATE as password_change_6,
RESERVED as cua_control,
PWDHISTORY as external_history,
PWDLGNDATE as password_logon,
PWDSETDATE as password_reset,
PWDINITIAL as initial_password,
PWDLOCKDATE as password_lock,
PWDSALTEDHASH as hash_value,
SECURITY_POLICY as security_policy,
_sequence_num as dw_input_sequence,
TO_HEX(MD5((select string_agg(CAST(col as STRING), ', ' order by offset)
    				from unnest(split(trim(format('%t',(select as struct usr02.* except(_is_deleted,_row_id,_source_timestamp,_sequence_num))), '()'),', ')) col with offset
    				where not col IS NULL))) as finalmd5key
from `sap-adapter.slt_raw.usr02` as usr02
where usr02._sequence_num > coalesce((select case when full_delta_indicator = 'F'
    												then min_input_sequence_num
    											when full_delta_indicator <> 'F'
    											then max_input_sequence_num
    											end
    										from `sap-adapter.slt_staging.staging_audit_table`
    											where table_name = 'logon_data'),0))
select client as client_key,
user as user_key,
*
From  usr02
UNION ALL
select null as client_key,
null as user_key,
usr02.*
From usr02 as usr02
INNER JOIN `sap-adapter.slt_staging.logon_data` as uji
ON usr02.client = uji.client
AND usr02.user = uji.user
AND usr02.finalmd5key != uji.finalmd5key
WHERE uji.dw_active_indicator = 'Y') as src
ON src.client_key = tgt.client
AND src.user_key = tgt.user
WHEN MATCHED AND src.finalmd5key != tgt.finalmd5key
    THEN UPDATE set tgt.dw_active_indicator = 'N',
    tgt.dw_last_update_date = CURRENT_DATETIME()
    WHEN NOT MATCHED THEN
insert(client,
user,
initial_pw,
valid_from,
valid_to,
user_type,
user_group,
failed_logons,
user_lock,
account_no,
creator,
created_on,
last_logon_date,
last_logon_time,
initial_pw_1,
password_change,
code_version,
initial_pw_2,
password_change_1,
code_version_1,
initial_pw_3,
password_change_2,
code_version_2,
initial_pw_4,
password_change_3,
code_version_3,
initial_pw_5,
password_change_4,
code_version_4,
user_master_record_version,
code_version_5,
time_zone,
cua_user,
password_hash_val,
password_change_5,
password_change_6,
cua_control,
external_history,
password_logon,
password_reset,
initial_password,
password_lock,
hash_value,
security_policy,
finalmd5key,
dw_input_sequence,
dw_active_indicator,
dw_start_date,
dw_end_date,
dw_last_update_date
)
values(src.client,
src.user,
src.initial_pw,
src.valid_from,
src.valid_to,
src.user_type,
src.user_group,
src.failed_logons,
src.user_lock,
src.account_no,
src.creator,
src.created_on,
src.last_logon_date,
src.last_logon_time,
src.initial_pw_1,
src.password_change,
src.code_version,
src.initial_pw_2,
src.password_change_1,
src.code_version_1,
src.initial_pw_3,
src.password_change_2,
src.code_version_2,
src.initial_pw_4,
src.password_change_3,
src.code_version_3,
src.initial_pw_5,
src.password_change_4,
src.code_version_4,
src.user_master_record_version,
src.code_version_5,
src.time_zone,
src.cua_user,
src.password_hash_val,
src.password_change_5,
src.password_change_6,
src.cua_control,
src.external_history,
src.password_logon,
src.password_reset,
src.initial_password,
src.password_lock,
src.hash_value,
src.security_policy,
src.finalmd5key,
src.dw_input_sequence,
'Y',
CURRENT_DATETIME(),
DATETIME(9999, 12, 31, 23, 59, 59),
CURRENT_DATETIME()
);
MERGE INTO `sap-adapter.slt_staging.staging_audit_table` tgt
USING ( SELECT
    		'logon_data' as table_name
    		,'usr02' as sap_table_name
    		,CASE WHEN (select full_delta_indicator from `sap-adapter.slt_staging.staging_audit_table` where table_name = 'logon_data') IS NULL
    				OR (select full_delta_indicator from `sap-adapter.slt_staging.staging_audit_table` where table_name = 'logon_data') = 'F'
    			THEN 'F'
    			ELSE 'D'
    		END AS full_delta_indicator
    		,0 as min_input_sequence_num
    		,(select max(dw_input_sequence) as max_input_sequence_num from `sap-adapter.slt_staging.logon_data`) as max_input_sequence_num
    		,(coalesce((select COUNT(*) AS inserted_record_count from `sap-adapter.slt_staging.logon_data` a
    		where a.dw_input_sequence > coalesce((select case when full_delta_indicator = 'F'
    						then min_input_sequence_num
    						when full_delta_indicator <> 'F'
    						then max_input_sequence_num
    					end
    				from `sap-adapter.slt_staging.staging_audit_table`
    				where table_name = 'logon_data'),0)),(select count(*) AS inserted_record_count from `sap-adapter.slt_staging.logon_data`))) AS inserted_record_count
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
    