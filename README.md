# Adventure_Work_DataEngineering_Project
### Project Review
It is an End-to-End Data Engineering project from scratch where I leverage powerful technologies like Azure Data Factory, Azure Data Lake, Databricks, Azure Synapse Analytics, and Apache Spark.This project demonstrates a complete end-to-end data engineering solution using Azure services. It includes data ingestion, transformation, serving, and reporting, following the medallion architecture (Bronze → Silver → Gold layers).
## The Architecture
1. **Data Source**
     - Source: External APIs via HTTP connections
     - Mechanism: Pull data using API calls (e.g., using Python, Azure Functions, or Logic Apps)
2. **Data Ingestion**
     - Tool: Azure Data Factory
     - Description: A low-code/no-code orchestration tool that is powerful and flexible.
     - Key Feature: We use **dynamic pipelines** with parameters and loops for scalable ingestion.
