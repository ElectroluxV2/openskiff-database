drop table if exists sailors cascade;
create table sailors (
    sailor_id bigserial,
    sex char check (sex IN ('F', 'M')) not null,
    birth_date date not null,
    given_name varchar(128) not null,
    family_name varchar(128) not null,

    primary key (sailor_id),
    unique (sailor_id)
);

drop table if exists clubs cascade;
create table clubs (
    club_id bigserial,
    short_name varchar(64) not null,
    full_name varchar(256) not null,

    primary key (club_id),
    unique (club_id)
);

drop table if exists places cascade;
create table places (
    place_id bigserial,
    location point,
    name varchar(512) not null,

    primary key (place_id),
    unique (place_id)
);

drop table if exists regattas cascade;
create table regattas (
    regatta_id bigserial,
    place_id bigserial references places(place_id) not null,
    begin_date date not null,
    end_date date not null,
    name varchar(512) not null,

    primary key (regatta_id),
    unique (regatta_id)
);

drop table if exists sailing_numbers_associated_to_sailors cascade;
create table sailing_numbers_associated_to_sailors (
    sailor_id bigserial references sailors(sailor_id) not null,
    regatta_id bigserial references regattas(regatta_id) not null,
    sailing_number varchar(16) not null,

    primary key (sailor_id, regatta_id, sailing_number),
    unique (regatta_id, sailing_number)
);

drop table if exists starting_list cascade;
create table starting_list (
    regatta_id bigserial references regattas(regatta_id) not null,
    sailor_id bigserial references sailors(sailor_id) not null,
    club_id bigserial references clubs(club_id) not null,

    primary key (regatta_id, sailor_id),
    unique (regatta_id, sailor_id, club_id)
);

drop table if exists year_categories cascade;
create table year_categories (
    category varchar(16) not null,
    younger_than int not null,

    primary key (category),
    unique (category)
);

drop table if exists results_abbreviations cascade;
create table results_abbreviations (
    short_name varchar(5) not null,
    full_name varchar(255) not null,

    primary key (short_name),
    unique(short_name)
);

drop table if exists races cascade;
create table races (
    regatta_id bigserial references regattas(regatta_id) not null,
    race_number int not null,

    primary key (regatta_id, race_number),
    unique (regatta_id, race_number)
);

/**
  sail_number -> may be null, end users may mistakenly put wrong data and later correct it, showing null sailor id is absolutely fine.
  unique (regatta_id, race_number, sail_number) -> there may not be multiple different places within same regatta for single race for same sail number
  unique (regatta_id, race_number, place) -> once there is place (eg. 1) for race within regatta, other sail number may not have same place in same race within same regatta
 */
drop table if exists races_finish_line_list cascade;
create table races_finish_line_list (
    regatta_id bigserial not null,
    race_number int not null,
    sail_number varchar(16) not null,
    place int not null,

    foreign key (regatta_id, race_number) references races(regatta_id, race_number),
    primary key (regatta_id, race_number, sail_number),
    unique (regatta_id, race_number, sail_number),
    unique (regatta_id, race_number, place)
);

drop table if exists penalties cascade;
create table penalties (
    regatta_id bigserial,
    race_number int,
    sail_number varchar(16),
    abbreviation varchar(5) references results_abbreviations(short_name),

    foreign key (regatta_id, race_number) references races(regatta_id, race_number),
    unique (regatta_id, race_number, sail_number)
);


create or replace function get_score(place bigint, abbreviation varchar(5), total_sailors int) returns int language plpgsql as $$
begin
    if abbreviation is null then
        return place;
    else
        return total_sailors + 1;
    end if;
end; $$;

create or replace function get_abbreviation_for_sailor(target_sailor_id bigint, target_regatta_id bigint, target_race_number bigint) returns varchar(5) language plpgsql as $$
declare
    row record;
    abbr varchar(5);
begin
    for row in select sailing_number from sailing_numbers_associated_to_sailors where sailor_id = target_sailor_id
    loop
        select abbreviation into abbr from penalties where sail_number = row.sailing_number and regatta_id = target_regatta_id and race_number = target_race_number;
        if abbr is not null then
            return abbr;
        end if;
    end loop;
    return abbr;
end; $$;

create or replace function get_total_sailors(target_regatta_id bigint) returns int language plpgsql as $$
declare
    sailor_count int;
begin
    select count(sailor_id) into sailor_count from starting_list where regatta_id = target_regatta_id;

    return sailor_count;
end; $$;

drop view if exists pre_results;
create view pre_results as select * from (select sl.regatta_id, sl.sailor_id, snats.sailing_number, r.race_number, fl.place, p.abbreviation, get_score(fl.place, p.abbreviation, get_total_sailors(sl.regatta_id)) as pre_score
from starting_list sl
    left join sailing_numbers_associated_to_sailors snats on sl.regatta_id = snats.regatta_id and sl.sailor_id = snats.sailor_id
    full outer join races r on sl.regatta_id = r.regatta_id
    left join races_finish_line_list fl on r.regatta_id = fl.regatta_id and r.race_number = fl.race_number and fl.sail_number = snats.sailing_number
    left join penalties p on r.regatta_id = p.regatta_id and r.race_number = p.race_number and snats.sailing_number = p.sail_number) as tmp
where tmp.pre_score is not null;

create or replace function get_total_sailors(target_regatta_id bigint) returns int language plpgsql as $$
declare
    sailor_count int;
begin
    select count(sailor_id) into sailor_count from starting_list where regatta_id = target_regatta_id;

    return sailor_count;
end; $$;

drop view if exists results;
create view results as select regatta_id, sailor_id, sailing_number, race_number, place, abbreviation, pre_score,
       get_score(rank() over (partition by race_number order by pre_score), abbreviation, get_total_sailors(regatta_id)) as points
from pre_results;


