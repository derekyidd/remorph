select *
  from table(information_schema.pipe_usage_history(
    date_range_start=>dateadd('day',-14,current_date()),
    date_range_end=>current_date(),
    pipe_name=>'mydb.public.mypipe'));