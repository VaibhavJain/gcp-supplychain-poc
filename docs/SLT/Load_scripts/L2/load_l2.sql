truncate table `{{ projectid }}.{{ slt_l2_canonical }}.forecast`;
insert into `{{ projectid }}.{{ slt_l2_canonical }}.forecast`
select * from `{{ projectid }}.{{ slt_l2_canonical }}.forecast_vw`

truncate table `{{ projectid }}.{{ slt_l2_canonical }}.inventory`;
insert into `{{ projectid }}.{{ slt_l2_canonical }}.inventory`
select * from `{{ projectid }}.{{ slt_l2_canonical }}.inventory_vw`

truncate table `{{ projectid }}.{{ slt_l2_canonical }}.legal_entity`;
insert into `{{ projectid }}.{{ slt_l2_canonical }}.legal_entity`
select * from `{{ projectid }}.{{ slt_l2_canonical }}.legal_entity_vw`

truncate table `{{ projectid }}.{{ slt_l2_canonical }}.location`;
insert into `{{ projectid }}.{{ slt_l2_canonical }}.location`
select * from `{{ projectid }}.{{ slt_l2_canonical }}.location_vw`

truncate table `{{ projectid }}.{{ slt_l2_canonical }}.order`;
insert into `{{ projectid }}.{{ slt_l2_canonical }}.order`
select * from `{{ projectid }}.{{ slt_l2_canonical }}.order_vw`

truncate table `{{ projectid }}.{{ slt_l2_canonical }}.product`;
insert into `{{ projectid }}.{{ slt_l2_canonical }}.product`
select * from `{{ projectid }}.{{ slt_l2_canonical }}.product_vw`