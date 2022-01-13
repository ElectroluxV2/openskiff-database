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
    sailor_id bigserial references sailors(sailor_id),
    regatta_id bigserial references regattas(regatta_id),
    sailing_number varchar(16) not null,

    primary key (sailor_id, regatta_id, sailing_number),
    unique (regatta_id, sailing_number)
);

drop table if exists starting_list cascade;
create table starting_list (
    regatta_id bigserial references regattas(regatta_id),
    sailor_id bigserial references sailors(sailor_id),
    club_id bigserial references clubs(club_id),

    primary key (regatta_id, sailor_id, club_id),
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

drop procedure if exists get_staring_list_for_regatta;
create procedure get_staring_list_for_regatta(target_regatta_id bigint)
language sql
as $$
select s.sailor_id, r.name, s.family_name, s.given_name, c.short_name, string_agg(n.sailing_number, ',') AS sailing_numbers from starting_list as sl
    left join regattas r on sl.regatta_id = r.regatta_id
    left join sailors s on s.sailor_id = sl.sailor_id
    left join clubs c on sl.club_id = c.club_id
    left join sailing_numbers_associated_to_sailors n on s.sailor_id = n.sailor_id
where sl.regatta_id = target_regatta_id
group by s.sailor_id, r.name, s.family_name, s.given_name, c.short_name;
$$;

-----------------------------------------------
-----------------------------------------------
-----------------------------------------------

call get_staring_list_for_regatta(1);

select sailing_number from sailing_numbers_associated_to_sailors where sailor_id = 6 and regatta_id = 1;

select s.sailor_id, r.name, s.family_name, s.given_name, n.sailing_number, c.short_name from starting_list as sl
    left join regattas r on sl.regatta_id = r.regatta_id
    left join sailors s on s.sailor_id = sl.sailor_id
    left join clubs c on sl.club_id = c.club_id
    left join sailing_numbers_associated_to_sailors n on s.sailor_id = n.sailor_id
where sl.regatta_id = 1;

select s.sailor_id, r.name, s.family_name, s.given_name, c.short_name, string_agg(n.sailing_number, ', ') AS sailing_numbers from starting_list as sl
    left join regattas r on sl.regatta_id = r.regatta_id
    left join sailors s on s.sailor_id = sl.sailor_id
    left join clubs c on sl.club_id = c.club_id
    left join sailing_numbers_associated_to_sailors n on s.sailor_id = n.sailor_id
where sl.regatta_id = 1
group by s.sailor_id, r.name, s.family_name, s.given_name, c.short_name;