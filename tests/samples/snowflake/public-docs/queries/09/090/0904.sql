-- see https://docs.snowflake.com/en/sql-reference/constructs/at-before

SELECT * FROM my_table AT(TIMESTAMP => 'Fri, 01 May 2015 16:20:00 -0700'::timestamp);