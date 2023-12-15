-- see https://docs.snowflake.com/en/sql-reference/functions/copy_history

select *
from table(information_schema.copy_history(TABLE_NAME=>'MYTABLE', START_TIME=> DATEADD(hours, -1, CURRENT_TIMESTAMP())));