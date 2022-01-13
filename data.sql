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

truncate table sailing_numbers_associated_to_sailors;
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

truncate table starting_list;
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

insert into year_categories (category, younger_than)
values ('Open', 150),
       ('U15', 15),
       ('U13', 13),
       ('U9', 9);

insert into results_abbreviations (short_name, full_name)
values ('DNE', 'Disqualification Not Excludable under rule 90.3.'),
       ('DNF', 'Did not finish.'),
       ('DNS', 'Did not start.'),
       ('DSQ', 'Disqualified.'),
       ('NSC', 'Did not sail course.'),
       ('OCS', 'Over the line at the start.'),
       ('RET', 'Retired.'),
       ('RDG', 'Redress given.')