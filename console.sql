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

select  get_points(null, 'DNS', get_total_sailors(1)) as step_one_points;


select fl.sail_number from races_finish_line_list fl group by fl.sail_number having count(fl.place) > 5;

select s.given_name, s.family_name from races_finish_line_list fl
    left join sailing_numbers_associated_to_sailors snats on fl.regatta_id = snats.regatta_id and fl.sail_number = snats.sail_number
    left join sailors s on snats.sailor_id = s.sailor_id
group by s.given_name, s.family_name having count(fl.place) < 4;




select * from regattas where extract(year from begin_date) = '2022';
create index regattas_year_index on regattas(begin_date desc nulls last);
select * from regattas order by extract(year from begin_date) desc;