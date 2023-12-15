-- see https://docs.snowflake.com/en/sql-reference/functions/generator

SELECT seq4(), uniform(1, 10, 42) 
  FROM TABLE(GENERATOR(ROWCOUNT => 10)) v 
  ORDER BY 1;