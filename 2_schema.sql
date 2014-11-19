CREATE TABLE actors (
    id serial,
    name character varying(255) NOT NULL,
    gender smallint DEFAULT 0 NOT NULL,
    popularity integer,
    created_at timestamp without time zone,
    updated_at timestamp without time zone
);

CREATE TABLE actors_watchables (
    watchable_id integer NOT NULL,
    actor_id integer NOT NULL,
    created_at timestamp without time zone,
    updated_at timestamp without time zone
);

CREATE TABLE episodes (
    id serial,
    season_nr integer,
    watchable_id integer NOT NULL,
    serie_id integer NOT NULL,
    created_at timestamp without time zone,
    updated_at timestamp without time zone
);

CREATE TABLE movies (
    id serial,
    rottentomatoesrating integer,
    watchable_id integer,
    created_at timestamp without time zone,
    updated_at timestamp without time zone
);

CREATE TABLE series (
    id serial,
    name character varying(255) NOT NULL,
    language character varying(255) DEFAULT 'english'::character varying,
    created_at timestamp without time zone,
    updated_at timestamp without time zone
);

CREATE TABLE torrents (
    id serial,
    enclosure_url character varying(255) NOT NULL,
    files integer DEFAULT 1 NOT NULL,
    job_id integer,
    name character varying(255) NOT NULL,
    pub_date timestamp without time zone,
    rating integer,
    size character varying(255),
    watchable_id integer,
    created_at timestamp without time zone,
    updated_at timestamp without time zone
);

CREATE TABLE watchables (
    id serial,
    dl_finished boolean DEFAULT false NOT NULL,
    firstaired date,
    name character varying(255) NOT NULL,
    watched boolean DEFAULT false NOT NULL,
    length integer,
    created_at timestamp without time zone,
    updated_at timestamp without time zone
);


SELECT pg_catalog.setval('actors_id_seq', 40, true);
SELECT pg_catalog.setval('episodes_id_seq', 623, true);
SELECT pg_catalog.setval('movies_id_seq', 1, false);
SELECT pg_catalog.setval('series_id_seq', 47, true);
SELECT pg_catalog.setval('torrents_id_seq', 60, true);
SELECT pg_catalog.setval('watchables_id_seq', 624, true);
