create DATABASE SCOPED CREDENTIAL cred_rimon
with IDENTITY = 'Managed Identity'

CREATE EXTERNAL DATA SOURCE source_silver
with (
      location = 'https://awstoragedatalakerimon.blob.core.windows.net/silver',
      CREDENTIAL =  cred_rimon
)

CREATE EXTERNAL DATA SOURCE source_gold
with (
      location = 'https://awstoragedatalakerimon.blob.core.windows.net/gold',
      CREDENTIAL =  cred_rimon
)

create EXTERNAL FILE FORMAT format_parquet
with 
(
    FORMAT_TYPE = PARQUET,
    DATA_COMPRESSION = 'org.apache.hadoop.io.compress.SnappyCodec'
)


----------------------------------
---------Create External Table
----------------------------------

CREATE EXTERNAL TABLE gold.extsales
WITH
(
    LOCATION = 'extsales',
    DATA_SOURCE = source_gold,
    FILE_FORMAT = format_parquet
)
as 
SELECT * from gold.sales

select * from gold.extsales



