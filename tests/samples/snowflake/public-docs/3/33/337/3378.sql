SET (MIN, MAX)=(40, 70);

SELECT $MIN;

SELECT AVG(SALARY) FROM EMP WHERE AGE BETWEEN $MIN AND $MAX;