SELECT DATE_TRUNC('QUARTER', '2019-08-01 12:34:56.789'::TIMESTAMP_NTZ) AS "TRUNCATED",
       EXTRACT(   'QUARTER', '2019-08-01 12:34:56.789'::TIMESTAMP_NTZ) AS "EXTRACTED";