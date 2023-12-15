-- see https://docs.snowflake.com/en/sql-reference/functions/st_simplify

SELECT ST_SIMPIFY(
  TO_GEOMETRY('LINESTRING(1100 1100, 2500 2100, 3100 3100, 4900 1100, 3100 1900)'),
  500);