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

    select sailor0_.sailor_id as sailor_i1_9_0_, sailor0_.birth_date as birth_da2_9_0_, sailor0_.family_name as family_n3_9_0_, sailor0_.given_name as given_na4_9_0_, sailor0_.sex as sex5_9_0_ from public.sailors sailor0_ where sailor0_.sailor_id=1;



-- select * from races_finish_line_list fl
--     full outer join races r
--         on fl.race_number = r.race_number
-- --     full outer join sailing_numbers_associated_to_sailors snats
-- --         on fl.regatta_id = snats.regatta_id
-- --         and fl.sail_number = snats.sail_number
--     where snats.sailor_id = 21 order by r.race_number;


select * from races r
    left outer join races_finish_line_list rfll
        on r.regatta_id = rfll.regatta_id
               and r.race_number = rfll.race_number
where r.race_number = 1;


select * from races_finish_line_list
    full outer join races r
        on r.regatta_id = races_finish_line_list.regatta_id
               and r.race_number = races_finish_line_list.race_number
    where sail_number = '7547';

select * from races r
    right outer join races_finish_line_list fl
        on fl.regatta_id = r.regatta_id
        and fl.race_number = r.race_number
;

select sl.sailor_id, sl.club_id, snats.sail_number, r.race_number from starting_list sl
    right join sailing_numbers_associated_to_sailors snats
        on sl.sailor_id = snats.sailor_id
    right join races r
        on sl.regatta_id = r.regatta_id
where sl.regatta_id = 1
group by sl.sailor_id, sl.club_id, snats.sail_number, r.race_number;


select r.race_number from races r where regatta_id = 1;

select fl.race_number, fl.place from races_finish_line_list fl
    full outer join races r
        on r.regatta_id = fl.regatta_id
               and r.race_number = fl.race_number
where fl.regatta_id = 1 and sail_number = '7547';

select r.race_number from races r
    full outer join races_finish_line_list fl
        on r.regatta_id = fl.regatta_id
       and r.race_number = fl.race_number
where r.regatta_id = 1;

select r.race_number from races r where regatta_id = 1;
select fl.place, fl.race_number from races_finish_line_list fl where sail_number = '9922';
select fl.place, fl.race_number from races_finish_line_list fl where sail_number = '7547';

select r.race_number, fl.place from races r
     left join races_finish_line_list fl
        on r.regatta_id = fl.regatta_id
        and r.race_number = fl.race_number
where r.regatta_id = 1 and fl.sail_number = '7547';

select sl.sailor_id, fl.place, fl.race_number from starting_list sl
    left join sailing_numbers_associated_to_sailors snats
        on sl.regatta_id = snats.regatta_id
    left join races_finish_line_list fl
        on snats.regatta_id = fl.regatta_id
        and snats.sailor_id = sl.sailor_id
        and snats.sail_number = fl.sail_number

where fl.sail_number = '7547';

select fl.sail_number, fl.race_number, fl.place from races_finish_line_list fl
    full join (select fl.sail_number, fl.place, fl.race_number from starting_list sl
    left join sailing_numbers_associated_to_sailors snats
        on sl.regatta_id = snats.regatta_id
    left join races_finish_line_list fl
        on snats.regatta_id = fl.regatta_id
        and snats.sailor_id = sl.sailor_id
        and snats.sail_number = fl.sail_number) t on t.sail_number = fl.sail_number and t.race_number = fl.race_number
where fl.race_number = 1;


select r.race_number from races r where regatta_id = 1;
select fl.race_number, fl.place, fl.sail_number from races_finish_line_list fl
where regatta_id = 1 and sail_number = '7547';


-- select r.regatta_id, r.race_number from races r
--     cross join races_finish_line_list fl
-- where r.race_number = 1;


select snats.sailor_id, '[' || string_agg(fl.race_number::text || ':' || fl.place, ',') || ']' as places from races_finish_line_list fl
    left join sailing_numbers_associated_to_sailors snats
        on fl.sail_number = snats.sail_number
        and fl.regatta_id = snats.regatta_id
where sailor_id = 21
group by snats.sailor_id;

select r.sailor_id, r.total_points,
    '[' || string_agg(r.race_number::text || ':' || r.place, ',') || ']' as places
from results r

where r.regatta_id = 1
group by r.total_points, r.sailor_id;


select * from results;

select * from results2;

