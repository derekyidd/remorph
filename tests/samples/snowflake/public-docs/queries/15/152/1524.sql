-- see https://docs.snowflake.com/en/sql-reference/functions/try_to_date

SELECT TRY_TO_DATE('2018-09-15'), TRY_TO_DATE('Invalid');