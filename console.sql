drop table if exists sailors;
create table sailors (
    sailor_id bigserial unique primary key,
    given_name varchar(128) not null,
    family_name varchar(128) not null,
    birth_date date not null
);

drop table if exists clubs;
create table clubs (
    club_id bigserial unique primary key,
    short_name varchar(64) not null,
    full_name varchar(256) not null
);

drop table if exists places;
create table places (
    place_id bigserial unique primary key,
    name varchar(512) not null,
    location point
);

drop table if exists regattas;
create table regattas (
    regatta_id bigserial unique primary key,
    name varchar(512) not null,
    place_id bigserial references places(place_id) not null
);

drop table if exists sailing_numbers_associated_to_sailors;
create table sailing_numbers_associated_to_sailors (
    sailor_id bigserial references sailors(sailor_id),
    regatta_id bigserial references regattas(regatta_id),
    sailing_number varchar(16) not null,
    primary key (sailor_id, regatta_id, sailing_number),
    unique (regatta_id, sailing_number)
);

drop table if exists starting_list;
create table starting_list (
    regatta_id bigserial references regattas(regatta_id),
    sailor_id bigserial references sailors(sailor_id),
    club_id bigserial references clubs(club_id),
    primary key (regatta_id, sailor_id, club_id),
    unique (regatta_id, sailor_id, club_id)
);

select s.sailor_id, r.name, s.family_name, s.given_name, n.sailing_number, c.short_name from starting_list as sl
    left join regattas r on sl.regatta_id = r.regatta_id
    left join sailors s on s.sailor_id = sl.sailor_id
    left join clubs c on sl.club_id = c.club_id
    left join sailing_numbers_associated_to_sailors n on s.sailor_id = n.sailor_id
where sl.regatta_id = 1;