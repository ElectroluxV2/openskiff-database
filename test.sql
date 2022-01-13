select * from crosstab(
    'select sail_number, race_number, place
     from races_finish_line_list
     order by 1, 2',
   'select distinct race_number from races where regatta_id = 1 order by 1'
    ) as ct(sail_number varchar(16), r1 integer, r2 integer, r3 integer, r4 integer, r5 integer, r6 integer);


select count(sailor_id) + 1 from starting_list where regatta_id = 1;