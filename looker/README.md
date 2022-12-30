**NOTE: This semantic layer requires exporting SAP data into BigQuery through Cloud Data Fusion**

___
# Readme: SCM Digital Twin Semantic Layer in Looker (LookML)

## This semantic layer has been released in public preview, and we are actively looking for opportunities to collect feedback and refine the LookML, and dashboards. If you are interested in helping us make this semantic layer better please email us at {scm-private-twin@google.com}

### What does this semantic layer do for me?

- Expertise - Leverage analytics expertise of Looker
- Central Data Platform - Take advantage of Looker's data platform functionality, including data actions, scheduling, permissions, alerting, parameterization, and row level security allowing users to only see what data they have access

### Semantic layer Info
This semantic layer is modeled on the Private, Public and Community Datasets. Then Data is consolidated into a few Looker Explores optimized for flexible analysis. This semantic layer should serve as a template that can be further enhanced

### LookML Folder Structure

#### Dashboard

- Persona - Contains all persona dashboards.
- Widgets - Contains all the widget dashboards.

#### Model

- Persona - Contains all the models for persona dashboards (with same name as on persona dashboards).
- Widgets - Contains all the models for widget dashboards (with same name as on widget dashboards).

#### View

- Inventory
- Community
  - Community New - Latest data from community partners.
  - Community Old - Data provided by community partners at the initial stage of development.
- Demand
- Derived
  - Demand - Contains derived tables which are required for demand views.
  - Private - Contains derived tables which are required for private (enterprise data) views.
- Private
- Public
- Route Optimization
- Supplier Risk
- Sustainability

### Readme

- Contains all the important information related to the project.

### Manifest

- All the variables which are used in the project are declared in the manifest file.

### Git Actions

- In this project GCP source repository is configured using the SSH key.
- You can configure the project to git hub also using personal access token

### Supporting Demo Assets

- See all 4 Persona Dashboards and 6+ Widgets
  - **Persona 1**: Demand planner
  - **Persona 2**: Inventory planner
  - **Persona 3**: Logistics & Fulfillment manager
  - **Persona 4**: Supplier risk & Sustainability
  - **Widgets** are Focused KPI dashboards that can be assembled to create a persona dashboard

### Prerequisites

1. Kindly contact scm-private-twin@google.com for Persona 2,3,4 and few widgets as users need to have NDA with data partners like Project 44, Shippeo, Crux, Craft, and many more to explore the LooML views and models.
2. Familiarize yourself with the all persona and widgets dashboards
3. Adjust screen settings to optimize the resolution and layout for presenting the demo
  - Test the sizing (vertical pitch) of the Looker Dashboard on your computer. If the vertical range is too large for your screen, reduce your browser zoom magnification to the right size. Hide Chrome bookmarks bar (\<ctrl>\<shift>\<b> in Windows).

### List Of KPI's

**\#** | **Industry METRIC / KPI** | **Industry Category** | **Details** | **STATUS**
1 | Forecast Accuracy | **Demand Planning** | Forecast Accuracy is the degree of closeness of forecasted quantity to that actual quantity <br><br> Forecast Accuracy= 1- MAPE <br><br> MAPE = 〖Actual Demand - Forecast〗 / 〖Actual Demand〗 *100 <br><br> • MAPE will be calculated at the lowest level, which is SKU. <br><br> • MAPE will be aggregated according to the dimension selected. Aggregation method will be average. <br><br> • In calculating Forecast Accuracy for different data streams, relevant forecast values will be used in the above formula. <br><br> o For example, MAPE for Statistical Forecast = Mean of “(Actual Demand – Statistical Forecast) *100 / Actual Demand” <br><br> • Forecast generated with "Lead time Lag" months before will be used to calculate accuracy | Possible in Supply Chain Twin
2 | Forecast Value Add | **Demand Planning** | Difference between accuracies of final forecast (consensus) and system generated forecast. <br><br> Forecast Value Add (FVA) = 〖Forecast Accuracy\_Consensus〗 - 〖Forecast Accuracy_Baseline〗<br><br> Note: <br> The Forecast stream can be changed based on various inputs such as Sales FVA, Finance FVA etc | Possible in Supply Chain Twin
3 | Forecast Bias Tracking Signal | **Supply Planning** | A forecast bias occurs when the errors exhibit a consistent pattern. That is, forecasts may have a general tendency to be too high or too low. A normal property of a good forecast is that the error (MAPE) is randomly distributed. <br><br> Forecast Bias Tracking Signal = 〖Cumulative Sum of Error Over 6 Months〗 / 〖 Mean Absolute Deviation〗 <br><br> MAD = 1 / N * 〖Actual Demand - Forecast〗<br><br> where N = number of months | Possible in Supply Chain Twin
4 | Actual Retails to Consensus Retail Bottom Up Plan % | **Supply Planning** | Bottom-up forecasting is a method of estimating a company's future performance by starting with low-level company data and working “up” to revenue. Revenue (also referred to as Sales or Income). This approach starts with detailed customer or product information and then broadens up to revenue | Possible in Supply Chain Twin
5 | Supplier OTIF | **Supply Planning** | Performance of the supplier in delivering: the correct product at the correct time in the correct quantity, quality, condition & packaging with correct documentation <br><br> 'Supplier OTIF = 〖Total No. of Perfect Supplier Receipts〗 / 〖Total No. of Supplier Receipts〗Available in Supply Chain Pulse
6 | Supplier on Quantity | **Supply Planning** | Percentage of orders, which amongst all the items are received in the quantities committed. The number of orders that are received from suppliers in the quantities committed divided by the total orders received. <br><br> Supplier on Quantity = 〖Total number of Orders received In Full〗 / 〖Total No. Of Orders received〗 * 100 % | Available in Supply Chain Pulse
7 | Supplier on Time | **Supply Planning** | The percentage of orders that are fulfilled on the customer's originally committed date <br><br> 'Supplier on Time = 〖Total number of orders received on the original commitment date〗 / 〖Total number of orders received〗 x 100% | Available in Supply Chain Pulse
8 | Supplier on Quality | **Supply Planning** | % of “On-Quality” Customer Shipments delivered as per Agreed Quality Standards <br><br> Supplier on Quality = 〖Total receipts passing Quality Standards〗 / 〖Total number of receipts〗| Available in Supply Chain Pulse
9 | Supplier on Documentation | **Supply Planning** | Percentage of orders with on time and accurate documentation supporting the order, including packing slips, bills of lading, invoices, etc. <br><br> 'Accurate Documentation = 〖Total number of orders received with accurate documentation〗 / 〖Total number of orders received〗x 100% | Possible in Supply Chain Twin
10 | Gap to Safety Stock (Dynamic Buffer Mgmt) | **Supply Planning** | Comparison of the current inventory with required target Inventory Norms such as Safety Stock, Minimum Stocking Level and Maximum Stocking Level <br><br> Gap to Safety Stock = Inventory on Hand - Safety Stock | Possible in Supply Chain Twin
11 | Inventory Days of Supply | **Supply Planning** | Inventory days of supply refer to an efficiency ratio measuring the average amount of time in days that a company or warehouse holds inventory before selling or shipping it. These are utilized for raw materials (RM), work in process (WIP), partially finished goods (PFG) and fully finished goods (FFG) <br><br> 'Inventory Days of Supply = 〖Average Inventory ($)〗 / (〖Annual Sales($)〗 / 365) | Possible in Supply Chain Twin
12 | Inventory Trend | **Supply Planning** | Report showing the Inventory Trend by Forms such as FG, WIP and RM by On Hand Balance, Open Order and In Transit Inventory, 'Snapshot of inventory as per system records | Possible in Supply Chain Twin
13 | Inventory Turns | **Supply Planning** | Inventory turnover is a ratio that measures the number of times inventory is sold or consumed in a given time period. Also known as inventory turns, stock turn, and stock turnover, the inventory turnover formula is calculated by dividing the cost of goods sold (COGS) by average inventory <br><br> 'Inventory Turns = 〖Annual COGS($)〗 / 〖Average Inventory($)〗| Possible in Supply Chain Twin
14 | Excess & Obsolete | **Supply Planning** | Quantity of inventory Excess & Obsolete, Basd on agreed business rules, inventory can be classified into Excess and Obsolete. <br><br> Rules can be different for different business units such as Parts, Tractors, UTVs etc | Available in Supply Chain Pulse
15 | Air to Sea Ratio | **Supply Planning** | Measure the expedited Air Freight cost compared to the total Freight costs <br><br> 'Air to Sea Ratio = 〖Air Freight Costs〗 / 〖Total Freight Costs〗| Possible in Supply Chain Twin
16 | Inter DC Freight Cost % | **Supply Planning** | Additional Freight incurred due to Inter DC material movement or Order Movement due to unavailability of right material at the right DC at the right time expressed as a percentage of COGS <br><br> Inter DC Freight Cost % = 〖Additional Freight〗 / 〖COGS of Business Unit〗 *100% <br> where, <br> Additional Freight = 〖Freight Incurred due to expedition〗 - 〖Regular freight without expedition〗| Possible in Supply Chain Twin
17 | Inventory Ageing | **Supply Planning** | The number of orders shipping the correct product at the correct time in the correct quantity, condition & packaging with the correct documentation to the correct customer | Possible in Supply Chain Twin
18 | Delivery OTIF | **Supply Planning** | The number of orders shipping the correct product at the correct time in the correct quantity, condition & packaging with the correct documentation to the correct customer <br><br> Delivery OTIF = 〖No. Of Orders On Time In Full〗 / 〖Total No. Of Orders〗| Available in Supply Chain Pulse
19 | Delivery on Quantity | **Supply Planning** | Percentage of orders, which amongst all of the items are received by customers in the quantities committed. The number of orders that are received by the customer in the quantities committed divided by the total orders. <br><br> 'Delivery on Quantity = 〖Total number of Orders delivered In Full〗 / 〖Total No. Of Orders Delivered〗 * 100 % | Available in Supply Chain Pulse
20 | Delivery on Time | **Supply Planning** | The percentage of orders that are fulfilled on the customer's originally committed date <br><br> Delivery on Time = 〖Total number of orders delivered on the original commitment date〗 / 〖Total number of orders delivered〗 x 100% | Available in Supply Chain Pulse
21 | Delivery on Quality | **Supply Planning** | % of “On-Quality” Customer Shipments delivered as per Agreed Quality Standards <br><br> Delivery on Quality = 〖Total Shipments passing Quality Standards〗 / 〖Total No. Of Shipments〗| Possible in Supply Chain Twin
22 | Overdue Purchase Order Items | **Procure to pay** | POs that are past due from GAC date requiring update, <br> Supplier <br> Plant <br> Material Group <br> Purchasing Group <br> Purchasing Category <br> Document | Possible in Supply Chain Twin
23 | Overiew of PO/ Rejections (category owner/ Geo/ Global) | **Procure to pay** | PO Cancel details with reason code and category for tracking, <br> Product Type <br> PO Details | Available in Supply Chain Pulse
24 | Delivery Forecast | **Procure to pay** | Forecasting/tracking PO Deliveries, <br> PO Item Level <br> Material Group <br> Supplier <br> Material <br> Supplier <br> Plant | Available in Supply Chain Pulse
25 | Variance in Price/Time/Qty Ordered items and Delivered items | **Procure to pay** | visibility to discrepancies in PO data from Factory Invoice Data ,Supplier Evaluation <br> Purchasing Group <br> Purchasing Organization <br> Purchasing Category <br> Material Group <br> Plant <br> Document <br> Trend by Supplier <br> Trend by Purchasing Category | Possible in Supply Chain Twin
26 | Order Entry Quantity | **Order to Cash** | The original number of units entered on a Sales Order before any rejections occur. ,Order Entry Net Amount, Order Entry Wholesale Amount | Possible in Supply Chain Twin
27 | Confirmed Quantity | **Order to Cash** | The number of units requested by the Customer that has confirmed the ability to deliver to the Customer. ,Confirmed Net Amount, Confirmed Whlsl Amount | Possible in Supply Chain Twin
28 | Open Orders | **Order to Cash** | ,Open Net Amt <br> Open Wholesale Amount | Available in Supply Chain Pulse
29 | Bill Invc Quantity | **Order to Cash** | The number of units of Product delivered to the Customer Ship To as represented on a line item of a Billing Document classified as an invoice. The Invoice Quantity reflects all Product delivered, prior to the application of Adjustment Quantity or Return Quantity. ,Bill Invoice Net Amt <br> Bill Invoice Wholesale Amt | Possible in Supply Chain Twin
30 | Reject Quantity | **Order to Cash** | The number of units on a Sales Order that will not be delivered regardless of reaSales Order. ,Reject Net Amt <br> Reject Whlsl Amt | Possible in Supply Chain Twin
31 | Order Fulfillment Tracking | **Order to Cash** | Order Fulfillment Tracking Report ,Reserved OH Quantity | Possible in Supply Chain Twin
32 | Sales Order Status Details with City Schedule Report | **Order to Cash** | Report displays Sls Doc Header Number(s) along with the Matl Numbers, sizes, and the allocated statuses asSales Orderciated with those. Key real time report for quick view of what is on order and the status. ,Confirmed Quantity <br> Reserved OH Inv Quantity <br> Alloc F Quantity <br> Alloc D Quantity <br> Shipped Quantity <br> Rejected Quantity <br> Whlsl Prc | Possible in Supply Chain Twin
33 | Sales Reps Assigned to Account  | **Order to Cash** | Report Sales Reps Assigned to Account ,Agreement <br> Valid From Date <br> Valid To Date | Possible in Supply Chain Twin
34 | Returns & Claims Activity | **Order to Cash** | Report displays a high level summary of various amounts and quantities asSales Orderciated with claims. ,New/Escl CM Count/Amt <br> New/Escl DM Count/Amt <br> New/Escl RTN Count/Amt <br> Approved Count/Amt <br> Denied/Cancel Count/Amt | Possible in Supply Chain Twin
35 | Order Status Exception | **Order to Cash** | Ability to discover patterns in data and interpret that in a way to make more informed business decisions for all core business processes. ,Open Quantity | Available in Supply Chain Pulse
36 | Sls Doc Header Number Status by Month | **Order to Cash** | Report displays a High-level overview by Month or Week. This does not supply any order details, just summaries. Category and Sub Category are reflected at time of order entry, if it changes after order entry, it will not update. ,On Order Quantity <br> Unassign Quantity <br> Reserved OH Inv Quantity <br> Alloc F Quantity <br> Alloc D Quantity <br> Ship Quantity <br> Billed Quantity | Possible in Supply Chain Twin
37 | Customer Billing Report | **Order to Cash** | Customer Billing Report ,Billing Quantity / Net Amt / Whlsl Amt | Possible in Supply Chain Twin
38 | Unshippable Orders | **Order to Cash** | Report displays Sls Doc Header Number(s) that meet a specific unshippable criteria, like Contract, Incomplete, or Delivery Block, etc… ,Open Quantity / Net Amt / Whlsl Amt | Possible in Supply Chain Twin
39 | Order Reject ReaSales Order | **Order to Cash** | Report displays Sls Doc Header Number(s) that have been rejected and includes Matl Numbers, sizes, and asSales Orderciated rejected details. Key real time report for Cancellation analysis. ,Reject Quantity / Net Amt / Whlsl Amt | Available in Supply Chain Pulse
40 | Customer Master Change Report | **Order to Cash** | Ability to discover patterns in data and interpret that in a way to make more informed business decisions for all core business processes. ,# of Changes | Possible in Supply Chain Twin
41 | ConSales Orderlidated Account Views | **Order to Cash** | View of Key metrics for Customer Finance on the Business Partner level ,AR <br> Net Revenue <br> Disputes <br> Payscore <br> Fiscal Year <br> Period | Possible in Supply Chain Twin
42 | Net Revenue View | **Order to Cash** | Gross to Net Revenue breakdown ,Gross revenue <br> Net revenue <br> Tax <br> Discounts <br> Fiscal Year <br> Period <br> Profit Center <br> Cost Center | Possible in Supply Chain Twin
43 | Days Sales Outstanding (DS0) | **Order to Cash** | Days sales outstanding (DSales Order) is a measure of the average number of days that it takes a company to collect payment after a sale has been made calculated by dividing the amount of accounts receivable during a given period by the total value of credit sales during the same period, and multiplying the result by the number of days in the period measured. ,Company Code, acct name, month, previous month, Sales, AR Open Balance, Payment Terms | Possible in Supply Chain Twin
44 | Cost of Good Sold % | **Finance and Costing** | Percentage of costs incurred to produce a Good to the Revenue it generates <br> 'COGS % = 〖Cost of Goods Sold ($)〗 / 〖Total Revenue ($)〗| Possible in Supply Chain Twin
45 | Cash to Cash Cycle Time | **Finance and Costing** | Time it takes for a dollar to flow back into the company after its been spent for raw materials <br> CCC Days = 〖Days of Inventory〗 + 〖Days Sales outstanding〗 - 〖Days payables outstanding〗 | Possible in Supply Chain Twin
46 | Direct Material Cost %| **Finance and Costing** | Direct Material Cost is a total material cost which also includes scrap, material variance, freight & duty etc. other than standard material cost <br><br> 'Direct Material Cost Ratio % = 〖Total Direct Material Cost ($)〗 / 〖Cost of Goods ($)〗 | Possible in Supply Chain Twin
47 | Manufacturing Cost %| **Finance and Costing** | Manufacturing Cost is a total cost to produce finished goods including all fixed and variable costs associated with operating plant, inbound, and inter-facility transportation costs <br><br> Direct Material Cost Ratio % = 〖Total Direct Manufacturing Cost ($)〗 / 〖Cost of Goods ($)〗 | Possible in Supply Chain Twin
48 | Days Sales Outstanding (Accounts Receivable)| **Finance and Costing** | The length of time from when a sale is made until cash for it is received from customers. The amount of sales outstanding expressed in days. <br><br> Days Sales Outstanding = 〖Average Accounts Receivable($)〗 / (〖Annual Sales($)〗 / 365) | Possible in Supply Chain Twin
49 | Days Payable Outstanding (Accounts Payable)| **Finance and Costing** | The length of time from purchasing materials, labor and/or conversion resources until cash payments must be made expressed in days <br><br> 'Days Payable Outstanding = 〖Average Accounts Payable($)〗 / (〖Annual Sales($)〗 / 365) | Possible in Supply Chain Twin
50 | Total PO's Received | **Inbound Shipments** | No. of POs received ,Count (Distinct Purchasing_document) | Available in Supply Chain Pulse
51 | Total Lines Received | **Inbound Shipments** | No. of Line Items (within those POs) received ,Count (Distinct Purchasing_document\|\|Scheduled_item) | Available in Supply Chain Pulse
52 | Total Units Received | **Inbound Shipments** | No. of units of products received ,Sum of Delivery Quantity | Available in Supply Chain Pulse
53 | ASN Accuracy % | **Inbound Shipments** | Accuracy of the delivery Date mentioned in Advanced Shipment Notes sent from Suppliers ,count(distinct Delivery_number Where ASN_Accuracy = 1)/count(distinct Delivery_number ) | Available in Supply Chain Pulse
54 | Inbound Deliveries | **Inbound Shipments** | No. of incoming shipments on their way ,Count (Distinct <br> purchasing_document where po_type='OPEN',Purchasing_Doc_Type='NB',<br> deletion_indicator<>'L',return_po_indicator<>'X', <br> drop_ship_indicator<>'V', <br> material_type='HAWA',shipment_flag='With Inbound Shipments') | Available in Supply Chain Pulse
55 | Open POs w/o ASN | **Inbound Shipments** | No. of open POs where no ASN has been issued by Suppliers ,<br> Count (DIstinct purchasing_document where <br>po_type='OPEN',<br> Purchasing_Doc_Type='NB',deletion_indicator<>'L', <br> return_po_indicator<>'X', <br> drop_ship_indicator<>'V',material_type='HAWA', <br> shipment_flag='Without Inbound Shipments') | Available in Supply Chain Pulse
56 | Delivery Docs PGI'd | **Outbound Deliveries** | No. of Delivery Documents sent out for Delivery ,count(distinct delivery_num) | Available in Supply Chain Pulse
57 | Delivery Lines PGI'd | **Outbound Deliveries** | No. of Line items (Within delivery docs) sent out for Delivery ,count(distinct delivery_num\|\|item) | Available in Supply Chain Pulse
58 | Units PGI'd | **Outbound Deliveries** | No. of units sent out for Delivery ,SUM(delivery_quantity) | Available in Supply Chain Pulse
59 | Average Lines/Delivery | **Outbound Deliveries** | Average No. of units per Delivery Document ,count(distinct delivery_num\|\|item)/count(distinct delivery_num)| Available in Supply Chain Pulse
60 | Average Units/Line | **Outbound Deliveries** |Average No. of units per Delivery line item ,SUM(delivery_quantity)/count(distinct delivery_num\|\|item) | Available in Supply Chain Pulse
61 | Internal Freight | **Outbound Deliveries** | Freight charges paid by the company ,-1*SUM(Internal_Shipping_Amount) | Possible in Supply Chain Twin
62 | External Freight | **Outbound Deliveries** | Freight charged to customers ,SUM(External_Shipping_Amount) | Possible in Supply Chain Twin
63 | Delivery Fill Rate (Raw) | **Outbound Deliveries** | Rate of On-time deliveries ,COUNT(DISTINCT DELIVERY_NUM when Fill Rate = 1 AND shipping_condition <> 'B1')/COUNT(DISTINCT DELIVERY_NUM where shipping_condition <> 'B1') | Possible in Supply Chain Twin
64 | Customer Return Docs | **Customers Returns** | No. of Deliveries returned by customers ,COUNT(DISTINCT Material_Document) | Possible in Supply Chain Twin
65 | Customer Return Docs Items | **Customers Returns** | No. of Line items (within delivery documents) returned by customers ,COUNT(DISTINCT Material_Document\|\|Material_Doc_Item) | Available in Supply Chain Pulse
66 | Customer Return Units | **Customers Returns** | No. of units of product returned by customers ,SUM(Quantity) | Available in Supply Chain Pulse
67 | Customer Return Amount | **Customers Returns** | Dollar Value of the deliveries returned by customers ,SUM(Amt_in_loc_cur) | Available in Supply Chain Pulse
68 | Supplier Return POs | **Supplier Returns** | No. of POs returned to Suppliers ,COUNT(DISTINCT purchase_order) | Available in Supply Chain Pulse
69 | Supplier Return PO Lines | **Supplier Returns** | No. of line items (within POs) returned to Suppliers ,COUNT(DISTINCT purchase_order\|\|item) | Available in Supply Chain Pulse
70 | Supplier Return Units | **Supplier Returns** | No. of units returned to Suppliers ,SUM(Quantity) | Available in Supply Chain Pulse
71 | Supplier Return Amount | **Supplier Returns** | Dollar value of Pos returned to Suppliers ,SUM(Amt_in_loc_cur) | Possible in Supply Chain Twin
72 | Perfect Order % (WIP) | **Quality** | % of Orders with no returns (from customers) ,COUNT(DISTINCT DELIVERY_NUM when Perfect_Order = 'X')/COUNT(DISTINCT DELIVERY_NUM) | Possible in Supply Chain Twin
73 | Sub Optimum Delivery % | **Quality** | % of shipments sent from plant which isn't the closest plant to the customer location ,COUNT(DISTINCT sales_document when Sub_Optimum_Delivery = 'X')/COUNT(DISTINCT sales_document) | Possible in Supply Chain Twin
74 | % Returns/Delivery | **Quality** | % of returns ,Count(Distinct Material_Doc) (From Customer Returns Aggr Fact)/COUNT(Distinct Delivery_Num) (From Outbound Aggr Fact) | Possible in Supply Chain Twin
75 | Production Cycle Time | **Production** | Cycle time is the total time required to produce an unit of SKU, as defined by the standard operating procedure. Production Cycle Time = Average Total Time required for assembly from Raw Tractor to required SKU by Stages with all materials available. | Possible in Supply Chain Twin
76 | Invoice to Shipping Days | **Production** | The time taken to Ship Materials from the Invoice Date 'Invoice to Shipping Days = Average time taken to ship SKUs after Invoice is generated | Possible in Supply Chain Twin
77 | Capacity Utilization % | **Production** | A measure of how intensively a resource is being used to produce goods or service, it is based on as per the factory calendar. Capacity Utilization = 〖Actual Capacity Consumed (Hours)〗 / 〖Total Available Capacity (Hours)〗 x 100 | Current Data model not supported
78 | Production Schedule Variation % | **Production** | This indicator is for measuring the actual production as a % of the scheduled production, also known as the absolute variance. 'Production Schedule Variation = 〖Scheduled Production - Actual Production〗 / 〖Scheduled Production〗 x 100 | Current Data model not supported
79 | Production Downtime Hours | **Production** | Any unplanned stoppage in production will be noted as downtime. Production Downtime = DownTime * Manpower affected | Current Data model not supported
80 | Storage Utilization | **Warehousing** | Storage utilization is a measure of how well the available data storage space in an enterprise is used. There are a number of variables that can be used to determine the storage utilization in a system. The relative priorities assigned to each variable can also affect the utilization figure | Current Data model not supported
81 | Dock to Stock Time | **Warehousing** | Dock to stock (DTS) begins when a warehouse receives goods at a loading dock and ends once the inventory has been stored (e.g., on racks, pallets, shelves, or in bins) | Current Data model not supported
82 | Number of Counts | **Warehousing** | No. of Storage bins counted ,COUNT(DISTINCT Storage Bin) | Current Data model not supported
83 | Cycle Counts Accuracy | **Warehousing** | No. of counts where the counted quantity matched the quantity mentioned in SAP ,COUNT(DISTINCT Storage Bin) Where Accurate_Counts = 1 and inventory_status = 'Z' /COUNT(DISTINCT Storage Bin) | Current Data model not supported

Copyright 2021 Google Inc. All rights reserved.

The use of this software is governed by the Pre-GA Offering Terms
section of the the Service Specific Terms set forth at [https://cloud.google.com/terms/service-terms#general-service-terms](https://cloud.google.com/terms/service-terms#general-service-terms)
