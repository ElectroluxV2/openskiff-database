-- select s.sailor_id, r.name, s.family_name, s.given_name, c.short_name, string_agg(n.sailing_number, ',') AS sailing_numbers, f.place from starting_list as sl
--     left join regattas r on sl.regatta_id = r.regatta_id
--     left join sailors s on s.sailor_id = sl.sailor_id
--     left join clubs c on sl.club_id = c.club_id
--     left join sailing_numbers_associated_to_sailors n on s.sailor_id = n.sailor_id
--     left join races_finish_line_list f on r.regatta_id = f.regatta_id and n.sailing_number = f.sail_number
-- where sl.regatta_id = 1
-- group by s.sailor_id, r.name, s.family_name, s.given_name, c.short_name, f.place;

CREATE EXTENSION IF NOT EXISTS tablefunc;

select * from results where sailor_id = 5;

select * from crosstab(
    'select sailor_id, race_number, concat(points, abbreviation)
     from results
     order by 1, 2'
    ) as ct(sailor_id bigint, r1 text, r2 text, r3 text, r4 text, r5 text, r6 text);


select * from results where sailor_id = 2;