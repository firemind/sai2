
ALTER TABLE public.actors OWNER TO sai_dev;
ALTER TABLE public.actors_id_seq OWNER TO sai_dev;
ALTER SEQUENCE actors_id_seq OWNED BY actors.id;

ALTER TABLE public.actors_watchables OWNER TO sai_dev;
ALTER TABLE public.episodes OWNER TO sai_dev;

ALTER TABLE public.episodes_id_seq OWNER TO sai_dev;
ALTER SEQUENCE episodes_id_seq OWNED BY episodes.id;
ALTER TABLE public.movies OWNER TO sai_dev;
ALTER TABLE public.movies_id_seq OWNER TO sai_dev;
ALTER SEQUENCE movies_id_seq OWNED BY movies.id;


ALTER TABLE public.series OWNER TO sai_dev;
ALTER TABLE public.series_id_seq OWNER TO sai_dev;
ALTER SEQUENCE series_id_seq OWNED BY series.id;

ALTER TABLE public.torrents OWNER TO sai_dev;
ALTER TABLE public.torrents_id_seq OWNER TO sai_dev;
ALTER SEQUENCE torrents_id_seq OWNED BY torrents.id;
ALTER TABLE public.watchables OWNER TO sai_dev;
ALTER TABLE public.watchables_id_seq OWNER TO sai_dev;
ALTER SEQUENCE watchables_id_seq OWNED BY watchables.id;
ALTER TABLE ONLY actors ALTER COLUMN id SET DEFAULT nextval('actors_id_seq'::regclass);
ALTER TABLE ONLY episodes ALTER COLUMN id SET DEFAULT nextval('episodes_id_seq'::regclass);
ALTER TABLE ONLY movies ALTER COLUMN id SET DEFAULT nextval('movies_id_seq'::regclass);
ALTER TABLE ONLY series ALTER COLUMN id SET DEFAULT nextval('series_id_seq'::regclass);
ALTER TABLE ONLY torrents ALTER COLUMN id SET DEFAULT nextval('torrents_id_seq'::regclass);
ALTER TABLE ONLY watchables ALTER COLUMN id SET DEFAULT nextval('watchables_id_seq'::regclass);


REVOKE ALL ON SCHEMA public FROM PUBLIC;
REVOKE ALL ON SCHEMA public FROM postgres;
GRANT ALL ON SCHEMA public TO postgres;
GRANT ALL ON SCHEMA public TO PUBLIC;

