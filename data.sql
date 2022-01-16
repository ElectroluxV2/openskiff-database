truncate table clubs cascade;
insert into clubs (club_id, short_name, full_name)
values (1, 'GKŻ', 'Gdański Klub Żeglarski'),
       (2, 'MKŻ Arka', 'Miejski Klub Żeglarski Arka Gdynia'),
       (3, 'KŻ HORN', 'Klub Żeglarski HORN Kraków'),
       (4, 'OKŻ', 'Olsztyński Klub Żeglarski'),
       (5, 'SKŻ', 'Sopocki Klub Żeglarski Ergo Hestia'),
       (6, 'UKS Kotwica', 'Uczniowski Klub Sportowy Kotiwca Gdynia'),
       (7, 'AŻ Prestige', 'Akademia Żeglarska Prestige'),
       (8, 'OPTI CWM', 'OPTI CWM Gdynia'),
       (9, 'KS Spójnia', 'Klub Sportowy Spójnia Warszawa'),
       (10, 'S&S', 'Sail & Ski Klub Warszawa'),
       (11, 'Junga', 'Fundacja Jacht Klub Junga');

truncate table sailors cascade;
insert into sailors (sailor_id, sex, birth_date, given_name, family_name)
values (1, 'M', '2008-01-01', 'Piotr', 'Trella'),
       (2, 'F', '2008-01-01', 'Julianna', 'Ponto'),
       (3, 'M', '2006-01-01', 'Max', 'Berliński'),
       (4, 'M', '2006-01-01', 'Jakub', 'Rozwadowski'),
       (5, 'F', '2007-01-01', 'Dominika', 'Godlewska'),
       (6, 'F', '2009-01-01', 'Daria', 'Pedowska'),
       (7, 'F', '2008-01-01', 'Aniela', 'Frąckowiak'),
       (8, 'F', '2008-01-01', 'Natasza', 'Tarnawska'),
       (9, 'M', '2006-01-01', 'Maksym', 'Kowalewski'),
       (10, 'M', '2006-01-01', 'Wiktor', 'Welenc'),
       (11, 'M', '2007-01-01', 'Kacper', 'Płoszaj'),
       (12, 'F', '2009-01-01', 'Laura', 'Kwiatkowska'),
       (13, 'M', '2010-01-01', 'Mikołaj', 'Nędza'),
       (14, 'M', '2006-01-01', 'Konstanty', 'Skwarlo'),
       (15, 'M', '2008-01-01', 'Aleksander', 'Paczos'),
       (16, 'M', '2008-01-01', 'Patryk', 'Glinka'),
       (17, 'F', '2008-01-01', 'Małgosia', 'Zielinska'),
       (18, 'F', '2010-01-01', 'Barbara', 'Riemer'),
       (19, 'M', '2008-01-01', 'Szymon', 'Łysik'),
       (20, 'M', '2007-01-01', 'Wiktor', 'Sebastiański'),
       (21, 'M', '2009-01-01', 'Tymoteusz', 'Siutkowski');

truncate table places cascade;
insert into places (place_id, location, name)
values (1, '(54.517930, 18.551069)', 'Gdynia, Polska'),
       (2, '(54.367410, 18.777035)', 'Gorki Zachodnie, Gdańsk, Polska'),
       (4, '(50.032630, 19.994765)', 'Kraków, Polska'),
       (5, '(54.274804, 18.097708)', 'Kartuzy, Polska'),
       (6, '(52.436472, 21.040848)', 'Nieporęt, Polska');

truncate table regattas cascade;
insert into regattas (regatta_id, place_id, begin_date, end_date, name)
values (1, 1, '2020-11-07', '2020-11-08', 'Finał Super Pucharu Arki');

truncate table sailing_numbers_associated_to_sailors cascade ;
insert into sailing_numbers_associated_to_sailors (regatta_id, sailor_id, sailing_number)
values (1, 1, '9425'),
       (1, 2, '9922'),
       (1, 3, '7482'),
       (1, 4, '10067'),
       (1, 5, '8134'),
       (1, 6, '8188'),
       (1, 7, '8035'),
       (1, 8, '11139'),
       (1, 9, '10092'),
       (1, 10, '2'),
       (1, 10, '22'),
       (1, 11, '10366'),
       (1, 12, '10649'),
       (1, 13, '11135'),
       (1, 14, '9182'),
       (1, 15, '10684'),
       (1, 16, '9809'),
       (1, 17, '9476'),
       (1, 18, '8030'),
       (1, 19, '11869'),
       (1, 20, '9850'),
       (1, 21, '7547');

truncate table starting_list cascade ;
insert into starting_list (regatta_id, sailor_id, club_id)
values (1, 1, 2),
       (1, 2, 2),
       (1, 3, 2),
       (1, 4, 7),
       (1, 5, 11),
       (1, 6, 4),
       (1, 7, 2),
       (1, 8, 2),
       (1, 9, 7),
       (1, 10, 7),
       (1, 11, 7),
       (1, 12, 2),
       (1, 13, 2),
       (1, 14, 7),
       (1, 15, 2),
       (1, 16, 7),
       (1, 17, 7),
       (1, 18, 4),
       (1, 19, 2),
       (1, 20, 7),
       (1, 21, 8);

truncate year_categories cascade;
insert into year_categories (category, younger_than)
values ('Open', 150),
       ('U15', 15),
       ('U13', 13),
       ('U9', 9);

truncate results_abbreviations cascade;
insert into results_abbreviations (short_name, full_name)
values ('DNE', 'Disqualification Not Excludable under rule 90.3.'),
       ('DNF', 'Did not finish.'),
       ('DNS', 'Did not start.'),
       ('DSQ', 'Disqualified.'),
       ('NSC', 'Did not sail course.'),
       ('OCS', 'Over the line at the start.'),
       ('RET', 'Retired.'),
       ('RDG', 'Redress given.');

truncate races cascade;
insert into races (regatta_id, race_number)
values (1, 1),
       (1, 2),
       (1, 3),
       (1, 4),
       (1, 5),
       (1, 6);

truncate penalties cascade;
insert into penalties (regatta_id, race_number, sail_number, abbreviation)
values (1, 1, '7547', 'DNS'),
       (1, 2, '7547', 'DNS'),
       (1, 3, '7547', 'DNS'),
       (1, 4, '7547', 'DNS'),
       (1, 4, '9809', 'OCS');

truncate races_finish_line_list cascade;
insert into races_finish_line_list (regatta_id, race_number, place, sail_number)
values (1, 1, 1, '9425'),
       (1, 1, 2, '7482'),
       (1, 1, 3, '9922'),
       (1, 1, 4, '8134'),
       (1, 1, 5, '11139'),
       (1, 1, 6, '2'),
       (1, 1, 7, '10067'),
       (1, 1, 8, '8188'),
       (1, 1, 9, '8035'),
       (1, 1, 10, '10092'),
       (1, 1, 11, '10649'),
       (1, 1, 12, '9809'),
       (1, 1, 13, '10684'),
       (1, 1, 14, '11135'),
       (1, 1, 15, '10366'),
       (1, 1, 16, '11869'),
       (1, 1, 17, '9182'),
       (1, 1, 18, '9476'),
       (1, 1, 19, '8030'),
       (1, 1, 20, '9850');

insert into races_finish_line_list (regatta_id, race_number, place, sail_number)
values (1, 2, 1, '9425'),
       (1, 2, 2, '8035'),
       (1, 2, 3, '9922'),
       (1, 2, 4, '11139'),
       (1, 2, 5, '7482'),
       (1, 2, 6, '10067'),
       (1, 2, 7, '10092'),
       (1, 2, 8, '8188'),
       (1, 2, 9, '8134'),
       (1, 2, 10, '10649'),
       (1, 2, 11, '10366'),
       (1, 2, 12, '2'),
       (1, 2, 13, '9182'),
       (1, 2, 14, '10684'),
       (1, 2, 15, '11135'),
       (1, 2, 16, '8030'),
       (1, 2, 17, '11869'),
       (1, 2, 18, '9809'),
       (1, 2, 19, '9476'),
       (1, 2, 20, '9850');

insert into races_finish_line_list (regatta_id, race_number, place, sail_number)
values (1, 3, 1, '9425'),
       (1, 3, 2, '10067'),
       (1, 3, 3, '9922'),
       (1, 3, 4, '8134'),
       (1, 3, 5, '8188'),
       (1, 3, 6, '7482'),
       (1, 3, 7, '11139'),
       (1, 3, 8, '11135'),
       (1, 3, 9, '8035'),
       (1, 3, 10, '10092'),
       (1, 3, 11, '2'),
       (1, 3, 12, '10366'),
       (1, 3, 13, '9182'),
       (1, 3, 14, '10649'),
       (1, 3, 15, '8030'),
       (1, 3, 16, '9809'),
       (1, 3, 17, '9850'),
       (1, 3, 18, '10684'),
       (1, 3, 19, '11869'),
       (1, 3, 20, '9476');

insert into races_finish_line_list (regatta_id, race_number, place, sail_number)
values (1, 4, 1, '9425'),
       (1, 4, 2, '10067'),
       (1, 4, 3, '7482'),
       (1, 4, 4, '10092'),
       (1, 4, 5, '8134'),
       (1, 4, 6, '8188'),
       (1, 4, 7, '9182'),
       (1, 4, 8, '10366'),
       (1, 4, 9, '8035'),
       (1, 4, 10, '9809'),
       (1, 4, 11, '11139'),
       (1, 4, 12, '10649'),
       (1, 4, 13, '11869'),
       (1, 4, 14, '9922'),
       (1, 4, 15, '11135'),
       (1, 4, 16, '9850'),
       (1, 4, 17, '2'),
       (1, 4, 18, '8030'),
       (1, 4, 19, '10684'),
       (1, 4, 20, '9476');

insert into races_finish_line_list (regatta_id, race_number, place, sail_number)
values (1, 5, 1, '9425'),
       (1, 5, 2, '9922'),
       (1, 5, 3, '10067'),
       (1, 5, 4, '8035'),
       (1, 5, 5, '7482'),
       (1, 5, 6, '8188'),
       (1, 5, 7, '10092'),
       (1, 5, 8, '2'),
       (1, 5, 9, '8134'),
       (1, 5, 10, '9809'),
       (1, 5, 11, '8030'),
       (1, 5, 12, '10366'),
       (1, 5, 13, '10649'),
       (1, 5, 14, '10684'),
       (1, 5, 15, '11135'),
       (1, 5, 16, '11139'),
       (1, 5, 17, '9476'),
       (1, 5, 18, '9850'),
       (1, 5, 19, '11869'),
       (1, 5, 20, '7547');

insert into races_finish_line_list (regatta_id, race_number, place, sail_number)
values (1, 6, 1, '9425'),
       (1, 6, 2, '7482'),
       (1, 6, 3, '9922'),
       (1, 6, 4, '22'),
       (1, 6, 5, '9476'),
       (1, 6, 6, '8188'),
       (1, 6, 7, '10067'),
       (1, 6, 8, '10366'),
       (1, 6, 9, '8134'),
       (1, 6, 10, '8035'),
       (1, 6, 11, '10092'),
       (1, 6, 12, '11139'),
       (1, 6, 13, '10684'),
       (1, 6, 14, '7547'),
       (1, 6, 15, '11135'),
       (1, 6, 16, '10649'),
       (1, 6, 17, '11869'),
       (1, 6, 18, '9850'),
       (1, 6, 19, '9809'),
       (1, 6, 20, '9182'),
       (1, 6, 21, '8030');