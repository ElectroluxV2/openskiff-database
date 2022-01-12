truncate table clubs cascade;
insert into clubs (club_id, short_name, full_name)
values (1, 'GKŻ', 'Gdański Klub Żeglarski'),
       (2, 'YKPK', 'Yacht Klub Polski Kraków'),
       (3, 'MKŻ Arka', 'Miejski Klub Żeglarski Arka Gdynia');

truncate table sailors cascade;
insert into sailors (sailor_id, sex, given_name, family_name, birth_date)
values (1, 'M', 'Maksymilian', 'Markow', '2003-01-01'),
       (2, 'M', 'Michał', 'Sitko', '2004-01-01'),
       (3, 'M', 'Wojtek', 'Konstanty', '2002-01-01'),
       (4, 'F', 'Magda', 'Winiarska', '2006-01-01'),
       (5, 'M', 'Witold', 'Pytliński', '2007-01-01'),
       (6, 'M', 'Maciej', 'Pytliński', '2005-01-01');

truncate table places cascade;
insert into places (place_id, name, location)
values (1, 'Kraków', '(0, 0)'),
       (2, 'Warszawa', '(0, 0)'),
       (3, 'Gdynia', '(0, 0)');

truncate table regattas cascade;
insert into regattas (regatta_id, name, place_id)
values (1, 'XXVII Regaty Ekologiczne', 1);

truncate table sailing_numbers_associated_to_sailors;
insert into sailing_numbers_associated_to_sailors (sailor_id, regatta_id, sailing_number)
values (1, 1, '13'),
       (2, 1, '103'),
       (3, 1, '261'),
       (4, 1, '73'),
       (5, 1, '138'),
       (6, 1, '16'),
       (6, 1, '6');

truncate table starting_list;
insert into starting_list (regatta_id, sailor_id, club_id)
values (1, 1, 2),
       (1, 2, 2),
       (1, 3, 2),
       (1, 4, 2),
       (1, 5, 2),
       (1, 6, 2);