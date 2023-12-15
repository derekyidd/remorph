-- see https://docs.snowflake.com/en/sql-reference/functions-analytic

SELECT
    p, o, i,
    COUNT(i) OVER (PARTITION BY p ORDER BY o RANGE BETWEEN UNBOUNDED PRECEDING AND CURRENT ROW) count_i_Range_Pre,
    SUM(i)   OVER (PARTITION BY p ORDER BY o RANGE BETWEEN UNBOUNDED PRECEDING AND CURRENT ROW) sum_i_Range_Pre,
    AVG(i)   OVER (PARTITION BY p ORDER BY o RANGE BETWEEN UNBOUNDED PRECEDING AND CURRENT ROW) avg_i_Range_Pre,
    MIN(i)   OVER (PARTITION BY p ORDER BY o RANGE BETWEEN UNBOUNDED PRECEDING AND CURRENT ROW) min_i_Range_Pre,
    MAX(i)   OVER (PARTITION BY p ORDER BY o RANGE BETWEEN UNBOUNDED PRECEDING AND CURRENT ROW) max_i_Range_Pre
  FROM example_cumulative
  ORDER BY p,o;