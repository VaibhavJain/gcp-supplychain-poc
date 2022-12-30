MERGE INTO `sap-adapter.slt_staging.shipment_stage_data` tgt
USING (
WITH vtts as
(select MANDT as client,
TKNUM as shipment_number,
TSNUM as stage_no,
TSTYP as stage_category,
TSRFO as seq_stage,
ELUPD as change,
ERNAM as created_by,
ERDAT as created_on,
ERZET as entry_time,
AENAM as changed_by,
AEDAT as changed_on,
AEZET as time_of_change,
ROUTE as route_for_stage,
VSART as shp_type_stage,
INCO1 as incoterms_prnt,
LAUFK as leg_indicator,
ADRNA as departureaddr,
KNOTA as departure_point,
VSTEL as shpptdeparture,
LSTEL as dep_load_point,
WERKA as plant_dep,
LGORTA as dep_pnt_st_loc,
KUNNA as cust_depart_pt,
LIFNA as vendor_dep_point,
BELAD as dep_add_info,
ADRNZ as destinaddr,
KNOTZ as dest_point,
VSTEZ as shptdestination,
LSTEZ as destloadpoint,
WERKZ as plant_dest_pnt,
LGORTZ as dest_stor_loc,
KUNNZ as cust_dest_point,
LIFNZ as vendor_destin_pt,
ABLAD as dest_add_info,
DPTBG as planshipstart,
UPTBG as plantranssttime,
DATBG as currshipmtstart,
UATBG as acttranspstrttm,
DPTEN as planshipmentend,
UPTEN as plantransendtim,
DATEN as act_shipmentend,
UATEN as actshipmtendtim,
TDLNR as service_agent,
DISTZ as distance,
MEDST as uom_distance,
FAHZT as travel_time,
GESZT as total_time,
MEIZT as trav_times,
LGNUMA as dep_wareh_no,
TORA as departure_gate,
ADRKNZA as dep_addr_ind,
KUNABLA as dep_unl_point,
LGNUMZ as dest_warehouse,
TORZ as dest_gate,
ADRKNZZ as dest_addr_ind,
KUNABLZ as dest_unl_point,
GESZTD as planned_total_time,
FAHZTD as planned_act_durat,
GESZTDA as actual_total_time,
FAHZTDA as actual_duration,
SDABW as spec_processing,
FRKRL as shpmntcostsrel,
SKALSM as pricing_procedure,
FBSTA as shipm_csts_cal,
ARSTA as shpmt_costs_set,
STAFO as update_group,
CONT_DG as contains_dg,
WARZTD as planned_waiting_time,
WARZTDA as curr_waiting_time,
ABLAND1 as cntryofdeprt,
ABPSTLZ as depart_postal_cde,
ABORT01 as departure_point_1,
EDLAND1 as dest_country,
EDPSTLZ as dest_postal_code,
EDORT01 as destination,
_sequence_num as dw_input_sequence,
TO_HEX(MD5((select string_agg(CAST(col as STRING), ', ' order by offset)
    				from unnest(split(trim(format('%t',(select as struct vtts.* except(_is_deleted,_row_id,_source_timestamp,_sequence_num))), '()'),', ')) col with offset
    				where not col IS NULL))) as finalmd5key
from `sap-adapter.slt_raw.vtts` as vtts
where vtts._sequence_num > coalesce((select case when full_delta_indicator = 'F'
    												then min_input_sequence_num
    											when full_delta_indicator <> 'F'
    											then max_input_sequence_num
    											end
    										from `sap-adapter.slt_staging.staging_audit_table`
    											where table_name = 'shipment_stage_data'),0))
select client as client_key,
shipment_number as shipment_number_key,
stage_no as stage_no_key,
*
From  vtts
UNION ALL
select null as client_key,
null as shipment_number_key,
null as stage_no_key,
vtts.*
From vtts as vtts
INNER JOIN `sap-adapter.slt_staging.shipment_stage_data` as uji
ON vtts.client = uji.client
AND vtts.shipment_number = uji.shipment_number
AND vtts.stage_no = uji.stage_no
AND vtts.finalmd5key != uji.finalmd5key
WHERE uji.dw_active_indicator = 'Y') as src
ON src.client_key = tgt.client
AND src.shipment_number_key = tgt.shipment_number
AND src.stage_no_key = tgt.stage_no
WHEN MATCHED AND src.finalmd5key != tgt.finalmd5key
    THEN UPDATE set tgt.dw_active_indicator = 'N',
    tgt.dw_last_update_date = CURRENT_DATETIME()
    WHEN NOT MATCHED THEN
insert(client,
shipment_number,
stage_no,
stage_category,
seq_stage,
change,
created_by,
created_on,
entry_time,
changed_by,
changed_on,
time_of_change,
route_for_stage,
shp_type_stage,
incoterms_prnt,
leg_indicator,
departureaddr,
departure_point,
shpptdeparture,
dep_load_point,
plant_dep,
dep_pnt_st_loc,
cust_depart_pt,
vendor_dep_point,
dep_add_info,
destinaddr,
dest_point,
shptdestination,
destloadpoint,
plant_dest_pnt,
dest_stor_loc,
cust_dest_point,
vendor_destin_pt,
dest_add_info,
planshipstart,
plantranssttime,
currshipmtstart,
acttranspstrttm,
planshipmentend,
plantransendtim,
act_shipmentend,
actshipmtendtim,
service_agent,
distance,
uom_distance,
travel_time,
total_time,
trav_times,
dep_wareh_no,
departure_gate,
dep_addr_ind,
dep_unl_point,
dest_warehouse,
dest_gate,
dest_addr_ind,
dest_unl_point,
planned_total_time,
planned_act_durat,
actual_total_time,
actual_duration,
spec_processing,
shpmntcostsrel,
pricing_procedure,
shipm_csts_cal,
shpmt_costs_set,
update_group,
contains_dg,
planned_waiting_time,
curr_waiting_time,
cntryofdeprt,
depart_postal_cde,
departure_point_1,
dest_country,
dest_postal_code,
destination,
finalmd5key,
dw_input_sequence,
dw_active_indicator,
dw_start_date,
dw_end_date,
dw_last_update_date
)
values(src.client,
src.shipment_number,
src.stage_no,
src.stage_category,
src.seq_stage,
src.change,
src.created_by,
src.created_on,
src.entry_time,
src.changed_by,
src.changed_on,
src.time_of_change,
src.route_for_stage,
src.shp_type_stage,
src.incoterms_prnt,
src.leg_indicator,
src.departureaddr,
src.departure_point,
src.shpptdeparture,
src.dep_load_point,
src.plant_dep,
src.dep_pnt_st_loc,
src.cust_depart_pt,
src.vendor_dep_point,
src.dep_add_info,
src.destinaddr,
src.dest_point,
src.shptdestination,
src.destloadpoint,
src.plant_dest_pnt,
src.dest_stor_loc,
src.cust_dest_point,
src.vendor_destin_pt,
src.dest_add_info,
src.planshipstart,
src.plantranssttime,
src.currshipmtstart,
src.acttranspstrttm,
src.planshipmentend,
src.plantransendtim,
src.act_shipmentend,
src.actshipmtendtim,
src.service_agent,
src.distance,
src.uom_distance,
src.travel_time,
src.total_time,
src.trav_times,
src.dep_wareh_no,
src.departure_gate,
src.dep_addr_ind,
src.dep_unl_point,
src.dest_warehouse,
src.dest_gate,
src.dest_addr_ind,
src.dest_unl_point,
src.planned_total_time,
src.planned_act_durat,
src.actual_total_time,
src.actual_duration,
src.spec_processing,
src.shpmntcostsrel,
src.pricing_procedure,
src.shipm_csts_cal,
src.shpmt_costs_set,
src.update_group,
src.contains_dg,
src.planned_waiting_time,
src.curr_waiting_time,
src.cntryofdeprt,
src.depart_postal_cde,
src.departure_point_1,
src.dest_country,
src.dest_postal_code,
src.destination,
src.finalmd5key,
src.dw_input_sequence,
'Y',
CURRENT_DATETIME(),
DATETIME(9999, 12, 31, 23, 59, 59),
CURRENT_DATETIME()
);
MERGE INTO `sap-adapter.slt_staging.staging_audit_table` tgt
USING ( SELECT
    		'shipment_stage_data' as table_name
    		,'vtts' as sap_table_name
    		,CASE WHEN (select full_delta_indicator from `sap-adapter.slt_staging.staging_audit_table` where table_name = 'shipment_stage_data') IS NULL
    				OR (select full_delta_indicator from `sap-adapter.slt_staging.staging_audit_table` where table_name = 'shipment_stage_data') = 'F'
    			THEN 'F'
    			ELSE 'D'
    		END AS full_delta_indicator
    		,0 as min_input_sequence_num
    		,(select max(dw_input_sequence) as max_input_sequence_num from `sap-adapter.slt_staging.shipment_stage_data`) as max_input_sequence_num
    		,(coalesce((select COUNT(*) AS inserted_record_count from `sap-adapter.slt_staging.shipment_stage_data` a
    		where a.dw_input_sequence > coalesce((select case when full_delta_indicator = 'F'
    						then min_input_sequence_num
    						when full_delta_indicator <> 'F'
    						then max_input_sequence_num
    					end
    				from `sap-adapter.slt_staging.staging_audit_table`
    				where table_name = 'shipment_stage_data'),0)),(select count(*) AS inserted_record_count from `sap-adapter.slt_staging.shipment_stage_data`))) AS inserted_record_count
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
    