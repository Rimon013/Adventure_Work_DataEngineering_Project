-------------------------------
-- Create View Calendar
-------------------------------
CREATE VIEW Gold.Calendar
as 
select * from OPENROWSET ( bulk 'https://awstoragedatalakerimon.blob.core.windows.net/silver/Calendar/',
                           format = 'PARQUET') as Query1

-------------------------------
-- Create View Customers
-------------------------------
CREATE VIEW Gold.Customer
as 
select * from OPENROWSET ( bulk 'https://awstoragedatalakerimon.blob.core.windows.net/silver/Customers/',
                           format = 'PARQUET') as Query1

-------------------------------
-- Create View Product_Categories
-------------------------------
CREATE VIEW Gold.Product_Categories
as 
select * from OPENROWSET ( bulk 'https://awstoragedatalakerimon.blob.core.windows.net/silver/Product_Categories/',
                           format = 'PARQUET') as Query1

-------------------------------
-- Create View Product_Subcategories
-------------------------------
CREATE VIEW Gold.Product_Subcategories
as 
select * from OPENROWSET ( bulk 'https://awstoragedatalakerimon.blob.core.windows.net/silver/Product_Subcategories/',
                           format = 'PARQUET') as Query1

-------------------------------
-- Create View Products
-------------------------------
CREATE VIEW Gold.Products
as 
select * from OPENROWSET ( bulk 'https://awstoragedatalakerimon.blob.core.windows.net/silver/Products/',
                           format = 'PARQUET') as Query1

-------------------------------
-- Create View Returns
-------------------------------
CREATE VIEW Gold.Returns
as 
select * from OPENROWSET ( bulk 'https://awstoragedatalakerimon.blob.core.windows.net/silver/Returns/',
                           format = 'PARQUET') as Query1

-------------------------------
-- Create View Sales
-------------------------------
CREATE VIEW Gold.Sales
as 
select * from OPENROWSET ( bulk 'https://awstoragedatalakerimon.blob.core.windows.net/silver/Sales/',
                           format = 'PARQUET') as Query1

-------------------------------
-- Create View Territories
-------------------------------
CREATE VIEW Gold.Territories
as 
select * from OPENROWSET ( bulk 'https://awstoragedatalakerimon.blob.core.windows.net/silver/Territories/',
                           format = 'PARQUET') as Query1