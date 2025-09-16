CREATE DATABASE SCOPED CREDENTIAL credNil
WITH
    IDENTITY = 'Managed Identity';


CREATE EXTERNAL DATA SOURCE source_silver
WITH (
    LOCATION = 'https://storagedatalake34.dfs.core.windows.net/silver',
    CREDENTIAL = credNil
)

CREATE EXTERNAL DATA SOURCE source_gold
WITH (
    LOCATION = 'https://storagedatalake34.dfs.core.windows.net/gold',
    CREDENTIAL = credNil
)



CREATE EXTERNAL FILE FORMAT fileformat_parquet
WITH (
    FORMAT_TYPE = PARQUET,
    DATA_COMPRESSION = 'org.apache.hadoop.io.compress.SnappyCodec'
)


CREATE EXTERNAL TABLE gold.extcalender 
WITH (
    LOCATION = 'ext_calender',
    DATA_SOURCE = source_gold,
    FILE_FORMAT = fileformat_parquet
    
)
AS SELECT * from gold.calender;




CREATE EXTERNAL TABLE gold.extproduct_categories
WITH (
    LOCATION = 'ext_product_categories',
    DATA_SOURCE = source_gold,
    FILE_FORMAT = fileformat_parquet
    
)
AS SELECT * from gold.product_categories;


CREATE EXTERNAL TABLE gold.extproduct
WITH (
    LOCATION = 'ext_product',
    DATA_SOURCE = source_gold,
    FILE_FORMAT = fileformat_parquet
    
)
AS SELECT * from gold.product;


CREATE EXTERNAL TABLE gold.extreturns
WITH (
    LOCATION = 'ext_returns',
    DATA_SOURCE = source_gold,
    FILE_FORMAT = fileformat_parquet
    
)
AS SELECT * from gold.returns;





