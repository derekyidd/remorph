SELECT object_col,
       GET(XMLGET(object_col, 'level2'), '$')
    FROM xml_demo;