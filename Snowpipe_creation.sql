----------------pipe creation--RETAILRAW.PUBLIC.CSV-----------------
create or replace pipe retail_snow_pipe_demographic 
auto_ingest=true as 
copy into RETAILRAW.PUBLIC.DEMOGRAPHIC_RAW
from '@retail/hh_demographic'
file_format=CSV;

create or replace pipe retail_snow_pipe_CAMPAIGN_DESC 
auto_ingest=true as 
copy into RETAILRAW.PUBLIC.CAMPAIGN_DESC_RAW
from '@retail/campaign_desc'
file_format=CSV;

create or replace pipe retail_snow_pipe_CAMPAIGN 
auto_ingest=true as 
copy into RETAILRAW.PUBLIC.CAMPAIGN_RAW
from '@retail/campaign_table'
file_format=CSV;

create or replace pipe retail_snow_pipe_coupon
auto_ingest=true as 
copy into RETAILRAW.PUBLIC.COUPON_RAW
from '@retail/coupon'
file_format=CSV;

create or replace pipe retail_snow_pipe_COUPON_REDEMPT
auto_ingest=true as 
copy into RETAILRAW.PUBLIC.COUPON_REDEMPT_RAW
from '@retail/coupon_redempt'
file_format=CSV;
create or replace pipe retail_snow_pipe_product
auto_ingest=true as 
copy into RETAILRAW.PUBLIC.product_raw
from '@retail/product'
file_format=CSV;
create or replace pipe retail_snow_pipe_transaction
auto_ingest=true as 
copy into RETAILRAW.PUBLIC.transaction_raw
from '@retail/transaction'
file_format=CSV;
/*drop pipe retail_snow_pipe_demographics;*/
SHOW pipes;
ALTER PIPE RETAIL_SNOW_PIPE_DEMOGRAPHIC refresh;
ALTER PIPE RETAIL_SNOW_PIPE_CAMPAIGN refresh;
ALTER PIPE RETAIL_SNOW_PIPE_COUPON refresh;
ALTER PIPE retail_snow_pipe_CAMPAIGN_DESC refresh;
ALTER PIPE retail_snow_pipe_product refresh;
ALTER PIPE retail_snow_pipe_transaction refresh;
ALTER PIPE retail_snow_pipe_COUPON_REDEMPT refresh;

SELECT COUNT(*) FROM demographic_RAW;
SELECT COUNT(*) FROM COUPON_RAW;
SELECT COUNT(*) FROM CAMPAIGN_DESC_RAW;
SELECT COUNT(*) FROM CAMPAIGN_RAW;
SELECT COUNT(*) FROM COUPON_REDEMPT_RAW;
SELECT COUNT(*) FROM product_raw;
SELECT COUNT(*) FROM transaction_raw;
SELECT COUNT(*) FROM RETAILRAW.PUBLIC.TRANSACTION_NEW;
SELECT COUNT(*) FROM RETAILRAW.PUBLIC.COUPON_REDEMPT_NEW;
SELECT COUNT(*) FROM RETAILRAW.PUBLIC.CAMPAIGN_DESC_NEW;
