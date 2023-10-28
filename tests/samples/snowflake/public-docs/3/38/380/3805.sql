SELECT <column_list> [ , <level_expression> ]
  FROM <data_source>
    START WITH <predicate>
    CONNECT BY [ PRIOR ] <col1_identifier> = [ PRIOR ] <col2_identifier>
           [ , [ PRIOR ] <col3_identifier> = [ PRIOR ] <col4_identifier> ]
           ...
  ...