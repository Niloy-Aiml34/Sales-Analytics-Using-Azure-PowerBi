CREATE VIEW gold.product_subcategories
AS
SELECT * FROM OPENROWSET(
    BULK 'https://storagedatalake34.dfs.core.windows.net/silver/Adventureworks_Product_Subcategories/',
    FORMAT = 'parquet'
) as query1 