CREATE TABLE actors (
    id integer NOT NULL,
    name character varying(255) NOT NULL,
    gender smallint DEFAULT 0 NOT NULL,
    popularity integer,
    created_at timestamp without time zone,
    updated_at timestamp without time zone
);

CREATE SEQUENCE actors_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;

CREATE TABLE actors_watchables (
    watchable_id integer NOT NULL,
    actor_id integer NOT NULL,
    created_at timestamp without time zone,
    updated_at timestamp without time zone
);

CREATE TABLE episodes (
    id integer NOT NULL,
    season_nr integer,
    watchable_id integer NOT NULL,
    serie_id integer NOT NULL,
    created_at timestamp without time zone,
    updated_at timestamp without time zone
);

CREATE SEQUENCE episodes_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;

CREATE TABLE movies (
    id integer NOT NULL,
    rottentomatoesrating integer,
    watchable_id integer,
    created_at timestamp without time zone,
    updated_at timestamp without time zone
);

CREATE SEQUENCE movies_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


CREATE TABLE series (
    id integer NOT NULL,
    name character varying(255) NOT NULL,
    language character varying(255) DEFAULT 'english'::character varying,
    created_at timestamp without time zone,
    updated_at timestamp without time zone
);

CREATE SEQUENCE series_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;

CREATE TABLE torrents (
    id integer NOT NULL,
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

CREATE SEQUENCE torrents_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;

CREATE TABLE watchables (
    id integer NOT NULL,
    dl_finished boolean DEFAULT false NOT NULL,
    firstaired date,
    name character varying(255) NOT NULL,
    watched boolean DEFAULT false NOT NULL,
    length integer,
    created_at timestamp without time zone,
    updated_at timestamp without time zone
);

CREATE SEQUENCE watchables_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


SELECT pg_catalog.setval('actors_id_seq', 40, true);
SELECT pg_catalog.setval('episodes_id_seq', 623, true);
SELECT pg_catalog.setval('movies_id_seq', 1, false);
SELECT pg_catalog.setval('series_id_seq', 47, true);
SELECT pg_catalog.setval('torrents_id_seq', 60, true);
SELECT pg_catalog.setval('watchables_id_seq', 624, true);
