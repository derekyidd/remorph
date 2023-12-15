-- see https://docs.snowflake.com/en/sql-reference/snowflake-scripting/exception

EXCEPTION
  WHEN MY_FIRST_EXCEPTION OR MY_SECOND_EXCEPTION OR MY_THIRD_EXCEPTION THEN
    RETURN 123;
  WHEN MY_FOURTH_EXCEPTION THEN
    RETURN 4;
  WHEN OTHER THEN
    RETURN 99;