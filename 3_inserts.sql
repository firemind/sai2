/*
	Names: Michael Gerber, Ariana Arcos Blanco
*/
INSERT INTO actors (name,gender,popularity) VALUES ('kristen bell', 'f', 23);
INSERT INTO actors (name,gender,popularity) VALUES ('james spader', 'm', 56);
INSERT INTO actors (name,gender,popularity) VALUES ('homer simpsons', 'm', 32);
INSERT INTO actors (name,gender,popularity) VALUES ('tom cruise', 'm', 76);
INSERT INTO actors (name,gender,popularity) VALUES ('scarlet johanson', 'f', 9);
INSERT INTO actors (name,gender,popularity) VALUES ('brad pitt', 'm', 1);
INSERT INTO actors (name,gender,popularity) VALUES ('angelina jolie', 'f', 87);

INSERT INTO episodes (season_nr,watchable_id,serie_id) VALUES (1, 1, 2);
INSERT INTO episodes (season_nr,watchable_id,serie_id) VALUES (2, 4, 3);
INSERT INTO episodes (season_nr,watchable_id,serie_id) VALUES (3, 2, 5);
INSERT INTO episodes (season_nr,watchable_id,serie_id) VALUES (4, 6, 6);
INSERT INTO episodes (season_nr,watchable_id,serie_id) VALUES (5, 5, 7);
INSERT INTO episodes (season_nr,watchable_id,serie_id) VALUES (6, 5, 1);
INSERT INTO episodes (season_nr,watchable_id,serie_id) VALUES (7, 7, 4);

INSERT INTO series (name, language) VALUES ('the walking dead', 'english');
INSERT INTO series (name, language) VALUES ('simpsons', 'english');
INSERT INTO series (name, language) VALUES ('the black list', 'english');
INSERT INTO series (name, language) VALUES ('firefly', 'english');
INSERT INTO series (name, language) VALUES ('Dexter', 'english');
INSERT INTO series (name, language) VALUES ('2 Broke Girls', 'english');
INSERT INTO series (name, language) VALUES ('Gotham', 'english');

INSERT INTO torrents (enclosure_url,files,job_id,name,pub_date,rating,size,watchable_id) VALUES ('0.9330340393783243', 1, NULL, 'test_torrent', NULL, NULL, NULL, 5);
INSERT INTO torrents (enclosure_url,files,job_id,name,pub_date,rating,size,watchable_id) VALUES ('0.9330340393783243', 1, NULL, 'test_torrent1', NULL, NULL, NULL, 4);
INSERT INTO torrents (enclosure_url,files,job_id,name,pub_date,rating,size,watchable_id) VALUES ('0.9330340393783243', 1, NULL, 'test_torrent2', NULL, NULL, NULL, 6);
INSERT INTO torrents (enclosure_url,files,job_id,name,pub_date,rating,size,watchable_id) VALUES ('0.9330340393783243', 1, NULL, 'test_torrent3', NULL, NULL, NULL, 4);
INSERT INTO torrents (enclosure_url,files,job_id,name,pub_date,rating,size,watchable_id) VALUES ('0.9330340393783243', 1, NULL, 'test_torrent4', NULL, NULL, NULL, 3);
INSERT INTO torrents (enclosure_url,files,job_id,name,pub_date,rating,size,watchable_id) VALUES ('0.9330340393783243', 1, NULL, 'test_torrent5', NULL, NULL, NULL, 2);
INSERT INTO torrents (enclosure_url,files,job_id,name,pub_date,rating,size,watchable_id) VALUES ('0.9330340393783243', 1, NULL, 'test_torrent6', NULL, NULL, NULL, 1);

INSERT INTO watchables (dl_finished,firstaired,name,watched,length) VALUES (false, '2014-09-29', 'Selina Kyle', true, NULL);
INSERT INTO watchables (dl_finished,firstaired,name,watched,length) VALUES (false, '2014-10-06', 'The Balloonman', false, NULL);
INSERT INTO watchables (dl_finished,firstaired,name,watched,length) VALUES (false, '2014-10-13', 'Arkham', false, NULL);
INSERT INTO watchables (dl_finished,firstaired,name,watched,length) VALUES (false, '2014-10-20', 'Viper', true, NULL);
INSERT INTO watchables (dl_finished,firstaired,name,watched,length) VALUES (false, '2014-10-27', 'Spirit of the Goat', false, NULL);
INSERT INTO watchables (dl_finished,firstaired,name,watched,length) VALUES (false, '2014-11-03', 'Penguin''s Umbrella', false, NULL);
INSERT INTO watchables (dl_finished,firstaired,name,watched,length) VALUES (false, '2014-11-10', 'The Mask', true, NULL);

INSERT INTO actors_watchables (watchable_id,actor_id) VALUES (2, 1);
INSERT INTO actors_watchables (watchable_id,actor_id) VALUES (4, 2);
INSERT INTO actors_watchables (watchable_id,actor_id) VALUES (6, 3);
INSERT INTO actors_watchables (watchable_id,actor_id) VALUES (5, 4);
INSERT INTO actors_watchables (watchable_id,actor_id) VALUES (3, 5);
INSERT INTO actors_watchables (watchable_id,actor_id) VALUES (1, 6);
INSERT INTO actors_watchables (watchable_id,actor_id) VALUES (7, 7);

BEGIN;
	INSERT INTO actors (name,gender,popularity) VALUES ('conchita wurst', 't', NULL);
COMMIT;
BEGIN;
	INSERT INTO actors (name,gender,popularity) VALUES ('angelina jolie', 'f', -2);
COMMIT;