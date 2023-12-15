-- see https://docs.snowflake.com/en/sql-reference/functions/st_difference

ALTER SESSION SET GEOGRAPHY_OUTPUT_FORMAT = 'WKT';

SELECT ST_DIFFERENCE(
  TO_GEOGRAPHY('POLYGON((0 0, 1 0, 2 1, 1 2, 2 3, 1 4, 0 4, 0 0))'),
  TO_GEOGRAPHY('POLYGON((3 0, 3 4, 2 4, 1 3, 2 2, 1 1, 2 0, 3 0))'))
AS difference_between_objects;