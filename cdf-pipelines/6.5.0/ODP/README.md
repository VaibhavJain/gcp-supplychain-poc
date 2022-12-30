# SCM Digital Twin Data Integration in Cloud Data Fusion

## Version 
Version 1.0

## Overview
Data fusion comes with an easy to use drag-and-drop user interface to create data pipelines called Integrate. Integrate lets user create pipelines with three types of elements:

Data sources - such as SAP HANA by using ODP plugin.
Transformations, which sit between inputs and outputs
Sinks, which are outputs - such as Big Query.

In data integration we are getting all the data into the Big query as a raw layer. Using the raw layer built the data warehousing and the semantic layer.

### Data integration flow is divided into 3 layers.

| Layers | Description |
| ------ | ------ |
| L0 layer  | Raw layer, extracting the data using ODP plugin from the SAP and loading into the Big query. |
| L1 layer  | Wareshouse layer, data is extracted from raw layer and loading into dimensions and facts. |
| L2 layer  | Canonical layer, data is extracted from warehouse and loading into different entity like Asset, Inventory, Legal_entity, forecast, order and product.|

#### Integration jobs are divided into 4 modules.

     1. l0-staging-full
     2. l0-staging-delta
     3. l1-dimension-full-delta
     4. l2-canonical-full


Copyright 2021 Google Inc. All rights reserved.

The use of this software is governed by the Pre-GA Offering Terms section
of the the Service Specific Terms set forth at
https://cloud.google.com/terms/service-terms#general-service-terms


