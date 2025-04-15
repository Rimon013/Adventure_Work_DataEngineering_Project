# Adventure_Work_DataEngineering_Project
## Project Review
It is an End-to-End Data Engineering project from scratch where I leverage powerful technologies like Azure Data Factory, Azure Data Lake, Databricks, Azure Synapse Analytics, and Apache Spark.It includes data ingestion, transformation, serving, and reporting, following the medallion architecture (Bronze → Silver → Gold layers).
### The Architecture
1. **Data Source**
     - Source: External APIs via HTTP connections
     - Mechanism: Pull data using API calls (e.g., using Python, Azure Functions, or Logic Apps)
2. **Data Ingestion**
     - Tool: Azure Data Factory
     - Description: A low-code/no-code orchestration tool that is powerful and flexible.
     - Key Feature: We use **dynamic pipelines** with parameters and loops for scalable ingestion.
3. **Medallion Architecture**
     🔹 Raw Data Store (Bronze Layer)
         - After pulling the data, it's landed in the Bronze layer, also known as the Raw layer.
         - This is an exact copy of the source data, stored as-is for auditing and reprocessing purposes.
     🔸 Transformation Layer (Silver Layer)
         - Tool: Databricks
         - Description: Databricks handles the bulk of the transformation and cleaning process using PySpark.
         - We extract data from the Bronze layer, apply transformations, and push clean data to the Silver layer.
     🟡 Serving Layer (Gold Layer)
         - After transformation, the cleaned and enriched data is served to stakeholders.
         - Example consumers: Data Analysts, Data Scientists
         - Common target: Data Warehouse built using Azure Synapse Analytics
4. **Reporting**
     - The final step involves building interactive dashboards using Power BI.
     - We connect Power BI to Azure Synapse or other data stores, pulling relevant fact and dimension tables for analysis
### Data Flow Summarry & Tech Stack
     API (HTTP) → Azure Data Factory (ADF) → Bronze (Raw Data) → Databricks (Transform) → Silver → Synapse (Serve) → Power BI (Report)
     Azure Data Factory (Ingestion & Orchestration)
     Azure Data Lake (Storage: Bronze, Silver, Gold layers)
     Azure Databricks (Transformation using PySpark)
     Azure Synapse Analytics (Data Warehouse)
     Power BI (Visualization & Reporting)

