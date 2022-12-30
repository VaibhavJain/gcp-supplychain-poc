
## Table Name : 2LIS_06_INV_invoice_verification_data


| SAP Column | BQ Column | Short Description |
|---|---|---|
| AFNAM | requisitioner | Name of requisitioner/requester |
| ANLN1 | main_asset_number | Main Asset Number |
| ANLN2 | asset_subnumber | Asset Subnumber |
| AREWR | gr_ir_clearing_value_lc | GR/IR account clearing value in local currency |
| AREWW | gr_ir_clearing_value_fc | Clearing value on GR/IR clearing account (transac. currency) |
| ARKUEMW | tax_invoice_reduction | Sales Tax Portion of Automatic Invoice Reduction Amount |
| ARKUEN | automatic_invoice_reduction | Automatic Invoice Reduction Amount (Net) |
| AUFNR | order_number | Order Number |
| BASME | base_unit_of_measure_1 | Base Unit of Measure for BOM |
| BELNR | accounting_document_number | Accounting Document Number |
| BEWAE | purchase_order_currency | Purchase order currency |
| BEZNK | unplanned_delivery_costs | Unplanned Delivery Costs |
| BKTXT | document_header_text | Document Header Text |
| BLDAT | document_date | Document Date in Document |
| BPMNG | quantity_purchase_order_price_unit | Quantity in Purchase Order Price Unit |
| BPRBM | quantity_invoiced_po_price_units | Quantity Invoiced in Supplier Invoice in PO Price Units |
| BPREM | invoice_receipt_quantity | Invoice receipt quantity in order price unit |
| BPRME | order_price_unit | Order Price Unit (Purchasing) |
| BPUMN | denominator_quantity_conversion | Denominator for Conv. of Order Price Unit into Order Unit |
| BPUMZ | numerator_quantity_conversion | Numerator for Conversion of Order Price Unit into Order Unit |
| BPWEM | goods_receipt_quantity | Goods Receipt Quantity in Purchase Order Price Unit |
| BSMNG | quantity_ordered | Quantity ordered against this purchase requisition |
| BSTME | purchase_order_unit | Purchase Order Unit of Measure |
| BUDAT | posting_date | Posting Date in the Document |
| BUKRS | company_code | Company Code |
| BUZEI | invoice_item | Document Item in Invoice Document |
| COBL_NR | sequential_number | Four Character Sequential Number for Coding Block |
| DIFFMW | sales_tax_difference | Sales Tax Portion of the Invoice Verification Difference |
| DIFFN | document_balance | Document Balance |
| EBELN | purchasing_document_number | Purchasing Document Number |
| EBELP | item_number | Item Number of Purchasing Document |
| EKGRP | purchasing_group | Purchasing Group |
| EKORG | purchasing_organization | Purchasing organization |
| EREKZ | final_invoice | Final Invoice Indicator |
| FIKRS | financial_management_area | Financial Management Area |
| FIPOS | commitment_item | Commitment Item |
| FISTL | funds_center | Funds Center |
| FKBER | functional_area | Functional Area |
| GEBER | fund | Fund |
| GJAHR | fiscal_year | Fiscal Year |
| GSBER | business_area | Business Area |
| HWAER | local_currency | Currency Key |
| IVTYP | invoice_verification_category | Origin of a Logistics Invoice Verification Document |
| KNTTP | account_assignment_category | Account Assignment Category |
| KOART | account_type | Account type |
| KOKRS | controlling_area | Controlling Area |
| KONNR | outline_agreement | Number of principal purchase agreement |
| KOSTL | cost_center | Cost Center |
| KTOPL | chart_of_accounts | Chart of Accounts |
| KTPNR | principal_agreement_item | Item number of principal purchase agreement |
| LFBNR | reference_document | Document No. of a Reference Document |
| LFGJA | year_current_period | Fiscal Year of Current Period |
| LFPOS | reference_documnet_item | Item of a Reference Document |
| LIEFFMW | tax_in_supplier_error | Tax in Supplier Error |
| LIEFFN | supplier_error | Supplier Error (Exclusive of Tax) |
| LIFNR | vendors_account_number | Different Invoicing Party |
| LIFNR2 | vendors_account_number_2 | Vendor's account number |
| LOGSYS | logical_system | Logical system |
| LSTAR | activity_type | Activity Type |
| MAKZMW | tax_amount_accepted_manually | Tax Amount Accepted Manually |
| MAKZN | net_amount_accepted_manually | Manually accepted net difference amount |
| MATKL | material_group | Material Group |
| MATNR | material_number | Material Number |
| MEINS | base_unit_of_measure_2 | Base Unit of Measure |
| MENGE | order_quantity | Quantity |
| MRM_ZLSPR | logistics_payment_block | Logistics payment block |
| MWSKZ_BNK | tax_code | Tax Code |
| NETPR | net_order_price | Net Price in Purchasing Document (in Document Currency) |
| NETWR | net_order_value | Net Value in Document Currency |
| NOQUANTITY | no_quantity_logic | No quantity logic (document item without quantity) |
| NPLNR | network_number | Network Number for Account Assignment |
| PAOBJNR | profitability_segment_number | Profitability Segment Number (CO-PA) |
| PEINH | price_unit | Price unit |
| PRCTR | profit_center | Profit Center |
| PS_PSP_PNR | wbs_element | Work Breakdown Structure Element (WBS Element) |
| PSTYP | item_category | Item category in purchasing document |
| RBMNG | invoiced_document_quantity | Quantity Invoiced in Supplier Invoice in PO Order Units |
| RBSTAT | invoice_document_status | Invoice document status |
| RBWWR | invoice_amount_document_currecny | Invoice Amount in Document Currency of Supplier Invoice |
| REFWR | invoice_value | Invoice Value in Foreign Currency |
| REMNG | invoice_quantity | Quantity invoiced |
| RETPO | returns_item | Returns Item |
| REWWR | foreign_currency_amount | Invoice Amount in Foreign Currency |
| RMWWR | gross_invoice_amount | Gross Invoice Amount in Document Currency |
| ROCANCEL | cancel_data_record | Record Type in Extraction of Invoice Verification Data |
| SAKNR | gl_account_number | G/L Account Number |
| SHKZG | debit_credit_indicator | Debit/Credit Indicator |
| SPGRC | block_reason_quality | Blocking Reason: Quality |
| SPGRG | order_price_quantity | Blocking Reason: Order Price Quantity |
| SPGRM | blocking_reason_quantity | Blocking Reason: Quantity |
| SPGRP | blocking_reason_price | Blocking Reason: Price |
| SPGRQ | manual_blocking_reason | Manual Blocking Reason |
| SPGRS | blocking_reason_item_amount | Blocking Reason: Item Amount |
| SPGRT | blocking_reason_date | Blocking Reason: Date |
| SPGRV | blocking_reason_project_budget | Blocking Reason: Project Budget |
| STBLG | reversal_document_number | Reversal document number |
| STJAH | year_of_reversal_document | Fiscal year of reversal document |
| TBTKZ | subsequent_debit_credit | Indicator: Subsequent Debit/Credit |
| TXZ01 | short_text | Short Text |
| UMREN | denominator | Denominator for conversion to base units of measure |
| UMREZ | counter | Numerator for Conversion to Base Units of Measure |
| VORNR | activity_number | Operation/Activity Number |
| WAERS | currency_key | Currency Key |
| WEMNG | quantity_of_goods_received | Quantity of Goods Received |
| WENWR | net_value_foreign_currency | Accepted net value of service in foreign currency |
| WEPOS | goods_receipt_indicator | Goods Receipt Indicator |
| WERKS | plant | Plant |
| WEUNB | goods_receipt_non_valuated | Goods Receipt, Non-Valuated |
| WEWWR | goods_receipt_value | Value of goods received in foreign currency |
| WMWST1 | value_added_tax_amount | Tax Amount in Document Currency with +/- Sign |
| WRBTR | amount | Amount in Document Currency |
| XBLNR | reference_document_number | Reference Document Number |
| XRECH | post_invoice | Indicator: post invoice |
| ZLSPR | payment_block | Payment Block Key |