-- see https://docs.snowflake.com/en/sql-reference/functions/bitxor_agg

SELECT k AS k_col, d AS d_col, s1, s2
  FROM bitwise_example
  ORDER BY k_col;