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
       (7, 'F', '1000-01-01', 'Gita', 'Van Der Voort'),
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
       (91, 'M', '2008-01-01', 'Wojciech', 'Henryk Komenda'),
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
       (107, 'F', '2009-01-01', 'Lena', 'Maria Adamska'),
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
       (124, 'M', '2010-01-01', 'Mikołaj Grzegorz', 'Nędza'),
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
values (1, '(54.518890, 18.530541)', 'Gdynia'),
       (2, '(54.367551, 18.777231)', 'Górki Zachodnie'),
       (3, '(54.432575, 18.583595)', 'Sopot'),
       (4, '(50.033026, 19.995386)', 'Kraków'),
       (5, '(54.722181, 18.416997)', 'Puck'),
       (6, '(54.274993, 18.097937)', 'Kartuzy'),
       (7, '(52.437346, 21.044740)', 'Nieporęt'),
       (8, '(54.274855, 18.098357)', 'Złota Góra, Kartuzy County'),
       (9, '(54.586641, 16.850530)', 'Ustka'),
       (10, '(53.677781, 17.408881)', 'Człuchów'),
       (11, '(54.274830, 18.098207)', 'Złota Góra'),
       (12, '(41.410554, 2.228299)', 'Barcelona, Hiszpania'),
       (13, '(53.736622, 17.507783)', 'Charzykowy'),
       (14, '(54.797911, 18.419392)', 'Władysławowo'),
       (15, '(45.883000, 10.844583)', 'Arco, Lago di Garda, Włochy'),
       (16, '(53.779164, 20.425543)', 'Olsztyn'),
       (17, '(42.284915, 8.5858997)', 'Corsica, Francja'),
       (18, '(-36.628077, 174.758973)', 'Auckland, Nowa Zelandia'),
       (19, '(38.197057, 13.335811)', 'Palermo, Włochy'),
       (20, '(53.969678, 10.882133)', 'Travemünde, Niemcy'),
       (21, '(43.534111, 6.951507)', 'Saint Tropez, Francja');


truncate table regattas cascade;
insert into regattas (regatta_id, place_id, exclusions, cup_multiplier, begin_date, end_date, name)
values (1, 13, 0, null, '2017-05-02', '2017-05-03', 'Regaty Konstytucyjne'),
       (2, 13, 0, null, '2017-05-12', '2017-05-14', 'Memoriał Ottona Wielanda'),
       (3, 14, 0, null, '2017-06-09', '2017-06-11', 'Puchar Arki'),
       (4, 1, 0, null, '2017-06-14', '2017-06-15', 'Wojewódzkie Igrzyska Młodzieży Szkolnej i Gimnazjalnej'),
       (5, 10, 0, null, '2017-06-17', '2017-06-18', 'Puchar Burmistrza Człuchowa'),
       (6, 2, 0, null, '2017-06-24', '2017-06-26', 'Nord Cup'),
       (7, 3, 0, null, '2017-07-01', '2017-07-02', 'Sopocki Puchar Akademii Prestige'),
       (8, 5, 0, null, '2017-07-07', '2017-07-09', 'Mistrzostwa Polski Młodzików'),
       (9, 15, 0, null, '2017-07-31', '2017-08-05', 'Mistrzostwa Świata'),
       (10, 10, 0, null, '2017-09-09', '2017-09-10', 'Puchar Wójta Gminy Człuchów'),
       (11, 1, 0, null, '2017-09-16', '2017-09-17', 'Błękitna Gwiazda'),
       (12, 10, 0, null, '2017-09-23', '2017-09-24', 'Żeglarski Puchar Gminy Człuchowa'),
       (13, 10, 0, null, '2017-09-30', '2017-10-01', 'Jesienny Puchar Gminy Człuchowa'),
       (14, 10, 0, null, '2017-10-14', '2017-10-15', 'Jesienny Puchar Vikinga'),

       (15, 13, 0, null, '2018-05-02', '2018-05-03', 'Regaty Konstytucyjne'),
       (16, 3, 0, 1.5, '2018-05-26', '2018-05-27', 'Sopocki Puchar Akademii Prestige'),
       (17, 5, 1, 1.5, '2018-06-08', '2018-06-10', 'Puchar Pucka'),
       (18, 5, 0, null, '2018-06-16', '2018-06-17', 'Wojewódzkie Igrzyska Młodzieży Szkolnej i Gimnazjalnej Puchar Burmistrza Człuchowa'),
       (19, 1, 0, 1.5, '2018-06-23', '2018-06-24', 'Puchar Arki'),
       (20, 5, 0, null, '2018-06-30', '2018-07-01', 'Pantaenius Nord Cup Gdańsk'),
       (21, 5, 0, 3.0, '2018-07-06', '2018-07-08', 'Mistrzostwa Polski Młodzików'),
       (22, 12, 0, null, '2018-07-28', '2018-07-29', 'I Euro Challenge O’pen Bic'),
       (23, 12, 0, null, '2018-07-30', '2018-08-04', 'Mistrzostwa Świata'),
       (24, 16, 0, 1.5, '2018-09-29', '2018-09-30', 'Marina Pluski Cup'),
       (25, 1, 0, null, '2018-09-01', '2018-09-02', 'Błękitna Gwiazda'),
       (26, 10, 0, 2.0, '2018-09-22', '2018-09-23', 'Żeglarski Puchar Gminy Człuchów Mistrzostwa Okręgu Pomorskiego'),
       (27, 15, 0, null, '2018-10-05', '2018-10-07', 'II Euro Challenge O’pen Bic'),
       (28, 10, 0, null, '2018-10-13', '2018-10-14', 'Jesienny Puchar Vikinga'),
       (29, 17, 0, null, '2018-11-01', '2018-11-03', 'III Euro Challenge O’pen Bic'),
       (30, 18, 0, null, '2018-12-30', '2019-01-05', 'Mistrzostwa Świata'),

       (31, 19, 0, null, '2019-03-31', '2019-04-01', 'I Euro Challenge O’pen Bic'),
       (32, 13, 0, 1.5, '2019-05-01', '2019-05-03', 'Regaty Konstytucyjne'),
       (33, 4, 0, null, '2019-05-18', '2019-05-19', 'Regaty ekologiczne'),
       (34, 3, 0, 1.5, '2019-05-18', '2019-05-19', 'Sopocki Puchar Akademii Prestige'),
       (35, 3, 0, null, '2019-05-23', '2019-05-26', 'II Euro Challenge O’pen Bic'),
       (36, 5, 1, 3.0, '2019-06-07', '2019-06-09', 'Mistrzostwa Polski Młodzików'),
       (37, 10, 0, null, '2019-06-15', '2019-06-16', 'Puchar Burmistrza Człuchowa'),
       (38, 1, 1, 1.5, '2019-06-19', '2019-06-20', 'Międzywojewódzkie Igrzyska Młodzieży Szkolnej i Gimnazjalnej'),
       (39, 2, 1, 1.5, '2019-06-29', '2019-06-30', 'Lotos Nord Cup Gdańsk'),
       (40, 4, 1, 2.0, '2019-06-01', '2019-06-02', 'Otwarte Mistrzostwa Okręgu Małopolskiego'),
       (41, 20, 0, null, '2019-07-22', '2019-07-28', 'Mistrzostwa Europy'),
       (42, 1, 0, null, '2019-08-30', '2019-09-01', 'Błękitna Gwiazda'),
       (43, 1, 0, null, '2019-09-07', '2019-09-08', 'Puchar OPTI'),
       (44, 3, 0, 2.0, '2019-09-13', '2019-09-15', 'Mistrzostwa Okręgu Pomorskiego'),
       (45, 10, 0, 1.5, '2019-09-20', '2019-09-22', 'Żeglarski Puchar Gminy Człuchów'),
       (46, 4, 0, null, '2019-09-28', '2019-09-29', 'Puchar Prezydenta Krakowa'),
       (47, 10, 0, null, '2019-10-12', '2019-10-13', 'Jesienny Puchar Vikinga'),
       (48, 1, 1, 1.5, '2019-10-19', '2019-10-20', 'Jesienny Puchar Arki'),
       (49, 21, 0, null, '2019-10-31', '2019-11-03', 'III Euro Challenge O’pen Bic'),

       (50, 1, 1, 0.5, '2020-05-23', '2020-05-24', 'Konsultacje Szkoleniowe w Gdyni'),
       (51, 16, 1, null, '2020-05-30', '2020-05-31', 'Konsultacje Szkoleniowe o Puchar Jungi OKŻ Olsztyn'),
       (52, 6, 0, 0.5, '2020-06-06', '2020-06-07', 'Regaty Konstytucyjne'),
       (53, 7, 1, 2.0, '2020-06-06', '2020-06-07', 'Puchar WOZŻ / Mistrzostwa Mazowsza'),
       (54, 4, 0, 2.0, '2020-06-06', '2020-06-07', 'Otwarte Mistrzostwa Małopolski i KOZŻ'),
       (55, 11, 1, 0.5, '2020-06-13', '2020-06-14', 'Złota Góra - Otwarcie sezonu'),
       (56, 1, 1, 1.0, '2020-06-20', '2020-06-21', 'LXV Puchar Arki'),
       (57, 2, 0, 1.0, '2020-06-27', '2020-06-28', 'Lotos Nord Cup'),
       (58, 10, 0, 0.5, '2020-07-11', '2020-07-12', 'Puchar Burmistrza Miasta Człuchów'),
       (59, 5, 0, 1.5, '2020-07-21', '2020-07-22', 'Puchar Burmistrza Pucka'),
       (60, 6, 0, 1.0, '2020-07-25', '2020-07-26', 'Chojnicki Złoty Konik Morski'),
       (61, 1, 1, 2.0, '2020-08-01', '2020-08-02', 'Mistrzostwa Pomorza'),
       (62, 9, 1, 0.5, '2020-08-05', '2020-08-06', 'Ustka Charlotta Sailing Days'),
       (63, 1, 1, 3.0, '2020-08-20', '2020-08-22', 'Mistrzostwa Polski (Gdynia Sailing Days)'),
       (64, 1, 0, 0.5, '2020-08-29', '2020-08-30', 'Błękitna Gwiazda'),
       (65, 10, 0, 1.0, '2020-09-05', '2020-09-06', 'Puchar Wójta Gminy Człuchów'),
       (66, 7, 1, 1.0, '2020-09-05', '2020-09-06', 'Warszawska Olimpiada Młodzieży'),
       (67, 1, 1, 1.0, '2020-09-12', '2020-09-13', 'Puchar OPTI'),
       (68, 3, 1, 1.5, '2020-09-19', '2020-09-20', 'Super O''pen Cup'),
       (69, 7, 0, null, '2020-09-26', '2020-09-27', 'Drużynowe Mistrzostwa Warszawy'),
       (70, 6, 0, 1.0, '2020-09-26', '2020-09-27', 'Puchar LKS'),
       (71, 10, 0, 1.5, '2020-10-03', '2020-10-04', 'Puchar VI-Kinga'),
       (72, 8, 1, 0.5, '2020-10-10', '2020-10-11', 'Błękitna Wstęga Jez. Brodno Wielkie'),
       (73, 7, 0, 1.5, '2020-10-10', '2020-10-11', 'Mistrzostwa Warszawy'),
       (74, 4, 0, 1.5, '2020-10-17', '2020-10-18', 'XXI Puchar Prezydenta Krakowa'),
       (75, 7, 0, 0.5, '2020-10-17', '2020-10-18', 'Regaty Zakończenia Sezonu'),
       (76, 1, 0, 1.5, '2020-11-07', '2020-11-08', 'Finał Super Pucharu Arki'),
       (77, 7, 0, 1.0, '2020-10-17', '2020-10-18', 'Jesienny Puchar Spójni'),

       (78, 4, 0, 0.5, '2021-03-27', '2021-03-28', 'Otwarcie Sezonu Żeglarskiego w Krakowskim OZŻ'),
       (79, 8, 1, 0.5, '2021-04-24', '2021-04-25', 'Regaty Otwarcia Sezonu - Złota Góra'),
       (80, 6, 0, 1.5, '2021-05-01', '2021-05-02', 'Regaty Konstytucyjne'),
       (81, 6, 0, 1.0, '2021-05-08', '2021-05-09', 'Puchar Starosty Chojnickiego'),
       (82, 5, 1, 1.5, '2021-05-15', '2021-05-16', 'Puchar Burmistrza Pucka (I El. do MPJM w Sprincie)'),
       (83, 4, 1, 2.0, '2021-05-22', '2021-05-23', 'XXVII Regaty Ekologiczne'),
       (84, 4, 0, 0.5, '2021-05-29', '2021-05-30', 'Żeglarski Dzień Dziecka'),
       (85, 3, 1, 1.5, '2021-06-05', '2021-06-06', 'Super O''pen Cup (II El. do MPJM w Sprincie)'),
       (86, 10, 0, 0.5, '2021-06-12', '2021-06-13', 'Puchar Burmistrza Człuchowa'),
       (87, 1, 1, 1.0, '2021-06-18', '2021-06-20', 'Puchar Arki U15'),
       (88, 1, 1, 3.0, '2021-06-18', '2021-06-20', 'Mistrzostwa Polski Młodzików U13'),
       (89, 2, 1, 1.5, '2021-06-26', '2021-06-27', 'Lotos Nord Cup Gdańsk 2021 (III El. do MPJM w Sprincie)'),
       (90, 1, 0, 1.0, '2021-07-02', '2021-07-04', 'Puchar Gdynia Sailing Days 2021'),
       (91, 1, 0, 3.0, '2021-07-02', '2021-07-04', 'Mistrzostwa Polski Juniorów Młodszych U15 (VGSD)'),
       (92, 1, 0, null, '2021-07-05', '2021-07-06', 'Mistrzostwa Polski Juniorów Młodszych w Sprincie U15 (VGSD)'),
       (93, 1, 0, null, '2021-07-10', '2021-07-18', 'Mistrzostwa Świata'),
       (94, 6, 0, 1.5, '2021-07-24', '2021-07-25', 'Chojnicki Złoty Konik Morski'),
       (95, 1, 0, 0.5, '2021-08-07', '2021-08-08', 'Ustka Charlotta Sailing Days'),
       (96, 1, 1, 0.0, '2021-08-21', '2021-08-22', 'Mistrzostwa Pomorza'),
       (97, 1, 0, 0.5, '2021-08-28', '2021-08-29', 'Błękitna Gwiazda'),
       (98, 10, 0, 1.0, '2021-09-04', '2021-09-05', 'Puchar Wójta Gminy Człuchów'),
       (99, 1, 0, 1.0, '2021-09-11', '2021-09-12', 'Puchar OPTI'),
       (100, 10, 0, 1.5, '2021-10-02', '2021-10-03', 'Puchar VI-Kinga'),
       (101, 8, 0, 1.0, '2021-10-09', '2021-10-10', 'Błękitna Wstęga Jeziora Brodno Wielkie'),
       (102, 4, 0, 1.0, '2021-10-16', '2021-10-17', 'XXII Regaty o Puchar Prezydenta Krakowa'),
       (103, 4, 0, 0.5, '2021-10-23', '2021-10-24', 'Zakończenie Sezonu w Krakowskim OZŻ'),
       (104, 1, 1, 1.5, '2021-10-30', '2021-10-31', 'Finał Super Pucharu Arki'),

       (105, 6, 0, 0.5, '2022-04-09', '2022-04-10', 'Regaty Otwarcia Sezonu'),
       (106, 6, 0, 1.0, '2022-04-30', '2022-05-01', 'Regaty Konstytucyjne'),
       (107, 5, 0, 1.5, '2022-05-07', '2022-05-08', 'Puchar Burmistrza Miasta Puck (I El. do MP Sprint)'),
       (108, 6, 0, 0.5, '2022-05-07', '2022-05-08', 'Puchar Starosty Chojnickiego'),
       (109, 16, 0, 1.0, '2022-05-14', '2022-05-15', 'Marina Pluski Cup'),
       (110, 4, 0, 1.0, '2022-05-21', '2022-05-22', 'XXVIII Regaty Ekologiczne'),
       (111, 4, 0, 2.0, '2022-05-28', '2022-05-29', 'Otwarte Mistrzostwa Małopolski i Krakowskiego OZŻ'),
       (112, 3, 0, 1.5, '2022-06-03', '2022-06-04', 'Super Open Cup 2022 (II El. do MP Sprint)'),
       (113, 10, 0, 1.0, '2022-06-18', '2022-06-19', 'Puchar Burmistrza Człuchowa'),
       (114, 11, 0, 0.5, '2022-06-25', '2022-06-26', 'Puchar Burmistrza Kartuz'),
       (115, 6, 0, 1.0, '2022-07-02', '2022-07-03', 'Puchar Burmistrza Chojnic'),
       (116, 2, 0, 1.5, '2022-07-08', '2022-07-09', 'Nord Cup (III El. do MP Sprint)'),
       (117, 2, 0, 3.0, '2022-07-08', '2022-07-09', 'Mistrzostwa Polski Młodzików U13'),
       (118, 1, 0, 3.0, '2022-07-11', '2022-07-13', 'Mistrzostwa Polski Juniorów Młodszych U15'),
       (119, 1, 0, 1.5, '2022-07-11', '2022-07-13', 'Gdynia Sailing Days'),
       (120, 1, 0, null, '2022-07-14', '2022-07-15', 'Mistrzostwa Polski w Sprincie w Klasie Open Skiff'),
       (121, 8, 0, null, '2022-07-18', '2022-07-23', 'Open Skiff World Championships'),
       (123, 6, 0, 1.0, '2022-07-23', '2022-07-24', 'Chojnicki Złoty Konik Morski'),
       (124, 9, 0, 1.5, '2022-08-05', '2022-08-07', 'Ustka Charlotta Sailing Days'),
       (125, 1, 0, 2.0, '2022-08-29', '2022-08-30', 'Puchar Arki - Otwarte Mistrzostwa Pomorza'),
       (126, 10, 0, 1.0, '2022-09-03', '2022-09-04', 'Puchar Wójta Gminy Człuchów'),
       (127, 4, 0, 1.0, '2022-09-03', '2022-09-04', 'XXIII Regaty o Puchar Prezydenta Krakowa'),
       (128, 6, 0, 0.5, '2022-10-08', '2022-10-09', 'Regaty o Puchar Wójta Gminy Chojnice'),
       (129, 4, 0, null, '2022-10-08', '2022-10-09', 'Meczowe Mistrzostwa Polskiego Stowarzyszenia Klasy Open Skiff'),
       (130, 1, 0, 1.5, '2022-10-22', '2022-10-23', 'Super Finał Pucharu Arki (Finał Pucharu Polski 2022)');

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
