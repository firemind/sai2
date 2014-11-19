/*
	Names: Michael Gerber, Ariana Arcos Blanco
*/
create type gender as enum('f','m');

CREATE TABLE actors (
    id serial,
    name character varying(255) NOT NULL,
    gender gender NOT NULL,
    popularity integer check (popularity > 0)
);
ALTER SEQUENCE actors_id_seq RESTART WITH 1;

CREATE TABLE actors_watchables (
    watchable_id integer NOT NULL,
    actor_id integer NOT NULL
);

CREATE TABLE episodes (
    id serial,
    season_nr integer,
    watchable_id integer NOT NULL,
    serie_id integer NOT NULL
);
ALTER SEQUENCE episodes_id_seq RESTART WITH 1;

CREATE TABLE movies (
    id serial,
    rottentomatoesrating integer,
    watchable_id integer
);
ALTER SEQUENCE movies_id_seq RESTART WITH 1;

CREATE TABLE series (
    id serial,
    name character varying(255) NOT NULL,
    language character varying(255) DEFAULT 'english'::character varying
);
ALTER SEQUENCE series_id_seq RESTART WITH 1;

CREATE TABLE torrents (
    id serial,
    enclosure_url character varying(255) NOT NULL,
    files integer DEFAULT 1 NOT NULL,
    job_id integer,
    name character varying(255) NOT NULL,
    pub_date timestamp without time zone,
    rating integer,
    size character varying(255),
    watchable_id integer
);
ALTER SEQUENCE torrents_id_seq RESTART WITH 1;

CREATE TABLE watchables (
    id serial,
    dl_finished boolean DEFAULT false NOT NULL,
    firstaired date,
    name character varying(255) NOT NULL,
    watched boolean DEFAULT false NOT NULL,
    length integer
);
ALTER SEQUENCE watchables_id_seq RESTART WITH 1;

/*create view*/
create view actors_in_watchables_view as 
	SELECT actors.name as actorname, watchables.name as watchablename FROM actors_watchables 
	INNER JOIN actors
	ON actors.id=actors_watchables.actor_id
	INNER JOIN watchables
	ON watchables.id = actors_watchables.watchable_id;
	
create view popularity_view as
	select id, popularity from actors;