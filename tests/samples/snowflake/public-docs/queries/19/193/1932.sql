-- see https://docs.snowflake.com/en/sql-reference/functions/minhash

USE SCHEMA snowflake_sample_data.tpch_sf1;

SELECT MINHASH(5, *) FROM orders;