SELECT a, b, IFNULL(a,b), IFNULL(b,a) FROM i;

--------+--------+-------------+-------------+
   a    |   b    | ifnull(a,b) | ifnull(b,a) |
--------+--------+-------------+-------------+
 0      | 5      | 0           | 5           |
 0      | [NULL] | 0           | 0           |
 [NULL] | 5      | 5           | 5           |
 [NULL] | [NULL] | [NULL]      | [NULL]      |
--------+--------+-------------+-------------+