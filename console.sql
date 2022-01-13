
-----------------------------------------------
-----------------------------------------------
-----------------------------------------------

call get_staring_list_for_regatta(1);

select sailing_number from sailing_numbers_associated_to_sailors where sailor_id = 10 and regatta_id = 1;

select s.sailor_id, r.name, s.family_name, s.given_name, n.sailing_number, c.short_name from starting_list as sl
    left join regattas r on sl.regatta_id = r.regatta_id
    left join sailors s on s.sailor_id = sl.sailor_id
    left join clubs c on sl.club_id = c.club_id
    left join sailing_numbers_associated_to_sailors n on s.sailor_id = n.sailor_id
where sl.regatta_id = 1;

select race_number from races where regatta_id = 1;


select s.sailor_id, r.name, s.family_name, s.given_name, c.short_name, string_agg(n.sailing_number, ',') AS sailing_numbers, f.place from starting_list as sl
    left join regattas r on sl.regatta_id = r.regatta_id
    left join sailors s on s.sailor_id = sl.sailor_id
    left join clubs c on sl.club_id = c.club_id
    left join sailing_numbers_associated_to_sailors n on s.sailor_id = n.sailor_id
    left join races_finish_line_list f on r.regatta_id = f.regatta_id and n.sailing_number = f.sail_number
where sl.regatta_id = 1
group by s.sailor_id, r.name, s.family_name, s.given_name, c.short_name, f.place;


select race_number, sail_number, place from races_finish_line_list where regatta_id = 1 group by race_number, sail_number, place;

CREATE EXTENSION IF NOT EXISTS tablefunc;

select place, race_number from races_finish_line_list where regatta_id = 1 and sail_number = '9922';

select * from crosstab(
   'select sail_number, race_number, place from races_finish_line_list where regatta_id = 1 and sail_number = ''9922'''
) as cr(s1 text, s2 text, s3 text);