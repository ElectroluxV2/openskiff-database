truncate table clubs cascade;
insert into clubs (club_id, short_name, full_name, website_url)
values (0, 'OSCA', 'Polskie Stowarzyszenie Klasy O''pen Skiff', 'https://openskiff.pl/'),
       (1, 'GKŻ', 'Gdański Klub Żeglarski', 'https://gkz.gda.pl/'),
       (2, 'MKŻ Arka', 'Miejski Klub Żeglarski Arka Gdynia', 'https://mkzarka.pl/'),
       (3, 'KŻ HORN', 'Klub Żeglarski HORN Kraków', 'https://www.hornkrakow.pl/'),
       (4, 'OKŻ Junga', 'Fundacja Yacht Klub Junga', 'https://www.okz.olsztyn.pl/'),
       (5, 'SKŻ', 'Sopocki Klub Żeglarski Ergo Hestia', 'https://skz.sopot.pl/'),
       (6, 'AŻ Prestige', 'Akademia Żeglarska Prestige', 'https://klubzeglarski.sopot.pl/'),
       (8, 'OPTI CWM', 'Klub Żeglarski OPTI CWM Gdynia', 'http://www.opticwm.pl/'),
       (9, 'KS Spójnia', 'Klub Sportowy Spójnia Warszawa', 'https://www.ksspojnia.pl/'),
       (10, 'S&S', 'Sail & Ski Klub Warszawa', 'https://www.facebook.com/SailSkiKlub/'),
       (11, 'AZS AWFiS', 'Klub Sportowy AZS AWFIS GDAŃSK', 'https://azsawfis.pl/'),
       (12, 'Legia', 'Sailing Legia - sekcja żeglarska Legia Warszawa', 'https://sailinglegia.pl/'),
       (13, 'AKŻ''90', 'Armatorski Klub Żeglarski Nakielno', 'https://www.akz90.pl/'),
       (14, 'YKP Kraków', 'Yacht Klub Polski Kraków', 'https://ykp.krakow.pl/');

truncate table sailors cascade;
insert into sailors (sailor_id, sex, birth_date, given_name, family_name)
values (1, 'M', '1000-01-01', 'Tymon', 'Gajdziński'),
       (2, 'M', '1000-01-01', 'Gracjan', 'Karczmarczyk'),
       (3, 'F', '1000-01-01', 'Alessia', 'Tiano'),
       (4, 'M', '1000-01-01', 'Szymon', 'Grochowski'),
       (5, 'M', '1000-01-01', 'Jakub', 'Kuraś'),
       (6, 'M', '1000-01-01', 'Bartłomiej', 'Wrzosek'),
       (7, 'F', '1000-01-01', 'Gita', 'Van'),
       (8, 'M', '1000-01-01', 'Kacper', 'Bąk'),
       (9, 'M', '1000-01-01', 'Kacper', 'Płozaj'),
       (10, 'M', '1000-01-01', 'Max', 'Betlejewski'),
       (11, 'F', '1000-01-01', 'Alicja', 'Maciąg'),
       (12, 'F', '1000-01-01', 'Janka', 'Dmochowska'),
       (13, 'M', '1000-01-01', 'Jan', 'Pacheco'),
       (14, 'F', '1000-01-01', 'Katarzyna', 'Wajdowska'),
       (15, 'M', '1000-01-01', 'Maciej', 'Obarski'),
       (16, 'F', '1000-01-01', 'Emilka', 'Maksymowicz'),
       (17, 'F', '1000-01-01', 'Maryna', 'Paszkiewicz'),
       (18, 'F', '1000-01-01', 'Magdalena', 'Łysik'),
       (19, 'M', '1000-01-01', 'Patryk', 'Glinka'),
       (20, 'M', '1000-01-01', 'Franciszek', 'Kamola'),
       (21, 'F', '2003-01-01', 'Natalia', 'Kwiatkowska'),
       (22, 'F', '2003-01-01', 'Zuzanna', 'Rodzeń'),
       (23, 'M', '2005-01-01', 'Tymon', 'Gajdzinski'),
       (24, 'F', '2005-01-01', 'Zuzanna', 'Reszka'),
       (25, 'M', '2005-01-01', 'Jakub', 'Trojnar'),
       (26, 'M', '2005-01-01', 'Krzysztof', 'Rogulski'),
       (27, 'F', '2006-01-01', 'Janina', 'Dmochowska'),
       (28, 'M', '2006-01-01', 'Eryk', 'Rózga'),
       (29, 'M', '2006-01-01', 'Patryk', 'Staluszka'),
       (30, 'F', '2006-01-01', 'Maria', 'Suchocka'),
       (31, 'M', '2006-01-01', 'Igor', 'Rudek'),
       (32, 'M', '2006-01-01', 'Millan', 'Utschik'),
       (33, 'M', '2006-01-01', 'Konstanty', 'Skwało'),
       (34, 'M', '2006-01-01', 'Jacek', 'Rogulski'),
       (35, 'M', '2006-01-01', 'Witold', 'Woźnicki'),
       (36, 'F', '2006-01-01', 'Maja', 'Woźnicka'),
       (37, 'M', '2006-01-01', 'Konstanty', 'Skwarło'),
       (38, 'M', '2006-01-01', 'Milan', 'Utschik'),
       (39, 'M', '2006-01-01', 'Krzysztof', 'Królik'),
       (40, 'M', '2006-01-01', 'Konstanty', 'Skwarlo'),
       (41, 'M', '2006-01-01', 'Wiktor', 'Welenc'),
       (42, 'M', '2006-01-01', 'Maksym', 'Kowalewski'),
       (43, 'M', '2006-01-01', 'Jakub', 'Rozwadowski'),
       (44, 'M', '2006-01-01', 'Max', 'Berliński'),
       (45, 'F', '2007-01-01', 'Maja', 'Reszka'),
       (46, 'M', '2007-01-01', 'Max', 'Betlejewski'),
       (47, 'M', '2007-01-01', 'Franciszek', 'Słomczewski'),
       (48, 'F', '2007-01-01', 'Julka', 'Biernacka'),
       (49, 'F', '2007-01-01', 'Teresa', 'Milbaler'),
       (50, 'M', '2007-01-01', 'Bernard', 'Marecki'),
       (51, 'M', '2007-01-01', 'Jan', 'Szerling'),
       (52, 'F', '2007-01-01', 'Gabriela', 'Fajdasz'),
       (53, 'F', '2007-01-01', 'Emilia', 'Kubica'),
       (54, 'M', '2007-01-01', 'Nicole', 'Lietzau'),
       (55, 'M', '2007-01-01', 'Maksymilian', 'Betlejewski'),
       (56, 'M', '2007-01-01', 'Jan', 'Muszynski'),
       (57, 'F', '2007-01-01', 'Liwia', 'Liszkiewicz'),
       (58, 'M', '2007-01-01', 'Jan', 'Muszyński'),
       (59, 'F', '2007-01-01', 'Julia', 'Biernacka'),
       (60, 'M', '2007-01-01', 'Stanisław', 'Filipczyk'),
       (61, 'M', '2007-01-01', 'Bernard', 'Narecki'),
       (62, 'M', '2007-01-01', 'Kajetan', 'Poziemski'),
       (63, 'M', '2007-01-01', 'Jan', 'Suchocki'),
       (64, 'M', '2007-01-01', 'Wiktor', 'Sebastiański'),
       (65, 'F', '2007-01-01', 'Dominika', 'Godlewska'),
       (66, 'F', '2007-01-01', 'Teresa', 'Milbałer'),
       (67, 'M', '2007-01-01', 'Krzysztof', 'Łucyk'),
       (68, 'F', '2007-01-01', 'Nicol', 'Lietzau'),
       (69, 'F', '2007-01-01', 'Kornelia', 'Soćko'),
       (70, 'M', '2007-01-01', 'Fryderyk', 'Julke'),
       (71, 'M', '2007-01-01', 'Kacper', 'Płoszaj'),
       (72, 'M', '2007-01-01', 'Piotr', 'Kuźniarski'),
       (73, 'F', '2008-01-01', 'Marika', 'Zielińska'),
       (74, 'M', '2008-01-01', 'Jan', 'Włudyka'),
       (75, 'M', '2008-01-01', 'Siwiec', 'Aleksander'),
       (76, 'F', '2008-01-01', 'Małgorzata', 'Zielińska'),
       (77, 'F', '2008-01-01', 'Gosia', 'Zielińska'),
       (78, 'M', '2008-01-01', 'Adam', 'Fengler'),
       (79, 'M', '2008-01-01', 'Bartłomiej', 'Jasiński'),
       (80, 'F', '2008-01-01', 'Małgosia', 'Zielinska'),
       (81, 'M', '2008-01-01', 'Szymon', 'Ostaszewski'),
       (82, 'F', '2008-01-01', 'Martyna', 'Paszkiewicz'),
       (83, 'F', '2008-01-01', 'Małgosia', 'Zielińska'),
       (84, 'M', '2008-01-01', 'Piotr', 'Trella'),
       (85, 'F', '2008-01-01', 'Julia', 'Jędrzejczyk'),
       (86, 'M', '2008-01-01', 'Aleksander', 'Siwiec'),
       (87, 'F', '2008-01-01', 'Hanna', 'Kusztejko'),
       (88, 'M', '2008-01-01', 'Szymon', 'Łysik'),
       (89, 'M', '2008-01-01', 'Hubert', 'Staroń'),
       (90, 'M', '2008-01-01', 'Aleksander', 'Paczos'),
       (91, 'M', '2008-01-01', 'Wojciech', 'Henryk'),
       (92, 'M', '2008-01-01', 'Franciszek', 'Imielski'),
       (93, 'F', '2008-01-01', 'Maria', 'Fornalczyk'),
       (94, 'F', '2008-01-01', 'Zuzanna', 'Gałecka'),
       (95, 'F', '2008-01-01', 'Natasza', 'Tarnawska'),
       (96, 'M', '2008-01-01', 'Kacper', 'Sprengler'),
       (97, 'F', '2008-01-01', 'Julianna', 'Ponto'),
       (98, 'M', '2008-01-01', 'Patryk', 'Glinka'),
       (99, 'M', '2008-01-01', 'Nikodem', 'Gibała'),
       (100, 'F', '2008-01-01', 'Antonina', 'Liro'),
       (101, 'F', '2008-01-01', 'Aniela', 'Frąckowiak'),
       (102, 'M', '2008-01-01', 'Wiktor', 'Weselak'),
       (103, 'M', '2009-01-01', 'Marcel', 'Tyczyński'),
       (104, 'M', '2009-01-01', 'Igor', 'Rózga'),
       (105, 'F', '2009-01-01', 'Jagoda', 'Wiśniewska'),
       (106, 'M', '2009-01-01', 'Aleksander', 'Szczepara'),
       (107, 'F', '2009-01-01', 'Lena', 'Maria'),
       (108, 'M', '2009-01-01', 'Kacper', 'Musialski'),
       (109, 'F', '2009-01-01', 'Katarzyna', 'Białek'),
       (110, 'M', '2009-01-01', 'Antoni', 'Brzozowski'),
       (111, 'F', '2009-01-01', 'Daria', 'Pedowska'),
       (112, 'F', '2009-01-01', 'Laura', 'Kowalska'),
       (113, 'M', '2009-01-01', 'Karol', 'Stachowski'),
       (114, 'M', '2009-01-01', 'Józef', 'Krasowski'),
       (115, 'M', '2009-01-01', 'Mikołaj', 'Ankiewicz'),
       (116, 'M', '2009-01-01', 'Maciej', 'Barć'),
       (117, 'M', '2009-01-01', 'Ksawery', 'Soćko'),
       (118, 'F', '2009-01-01', 'Laura', 'Przybyłowicz'),
       (119, 'M', '2009-01-01', 'Tymoteusz', 'Siutkowski'),
       (120, 'F', '2009-01-01', 'Jagna', 'Smolińska'),
       (121, 'F', '2009-01-01', 'Lena', 'Adamska'),
       (122, 'F', '2009-01-01', 'Laura', 'Kwiatkowska'),
       (123, 'F', '2010-01-01', 'Barbara', 'Reimer'),
       (124, 'M', '2010-01-01', 'Mikołaj', 'Grzegorz'),
       (125, 'F', '2010-01-01', 'Róża', 'Boons'),
       (126, 'F', '2010-01-01', 'Barbara', 'Riemer'),
       (127, 'M', '2010-01-01', 'Mikołaj', 'Głowa'),
       (128, 'F', '2010-01-01', 'Zofia', 'Manecka'),
       (129, 'F', '2010-01-01', 'Nina', 'Zajdel'),
       (130, 'F', '2010-01-01', 'Paulina', 'Szczepa'),
       (131, 'M', '2010-01-01', 'Tymoteusz', 'Gołyszny'),
       (132, 'M', '2010-01-01', 'Jacek', 'Paczos'),
       (133, 'M', '2010-01-01', 'Wojciech', 'Wilczyński'),
       (134, 'M', '2010-01-01', 'Tadeusz', 'Długosz-Górecki'),
       (135, 'M', '2010-01-01', 'Franciszek', 'Kucharski'),
       (136, 'M', '2010-01-01', 'Wojciech', 'Wiczyński'),
       (137, 'M', '2010-01-01', 'Mikołaj', 'Nędza'),
       (138, 'M', '2010-01-01', 'Aleks', 'Kowalewski'),
       (139, 'F', '2010-01-01', 'Hanna', 'Smolińska'),
       (140, 'F', '2010-01-01', 'Ola', 'Szuba'),
       (141, 'F', '2010-01-01', 'Pola', 'Sobolew'),
       (142, 'M', '2010-01-01', 'Mikołaj', 'Łoboda'),
       (143, 'M', '2011-01-01', 'Mikołaj', 'Korek'),
       (144, 'F', '2011-01-01', 'Magdalena', 'Łysik'),
       (145, 'F', '2011-01-01', 'Weronika', 'Piskor'),
       (146, 'F', '2011-01-01', 'Mila', 'Faust');


truncate table places cascade;
insert into places (place_id, location, name)
values (1, '(54.517930, 18.551069)', 'Gdynia, Polska'),
       (2, '(54.367410, 18.777035)', 'Gorki Zachodnie, Gdańsk, Polska'),
       (4, '(50.032630, 19.994765)', 'Kraków, Polska'),
       (5, '(54.274804, 18.097708)', 'Kartuzy, Polska'),
       (6, '(52.436472, 21.040848)', 'Nieporęt, Polska');

truncate table regattas cascade;
insert into regattas (regatta_id, place_id, exclusions, begin_date, end_date, name)
values (1, 1, 1, '2020-11-07', '2020-11-08', 'Finał Super Pucharu Arki');

truncate table sailing_numbers_associated_to_sailors cascade ;
insert into sailing_numbers_associated_to_sailors (regatta_id, sailor_id, sail_number)
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
       (1, 5, 20, '7547'),
       (1, 5, 21, '9182');

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