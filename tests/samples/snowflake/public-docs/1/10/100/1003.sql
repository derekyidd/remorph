ALTER SESSION SET GEOGRAPHY_OUTPUT_FORMAT='WKT';
SELECT ST_STARTPOINT(TO_GEOGRAPHY('LINESTRING(1 1, 2 2, 3 3, 4 4)'));
