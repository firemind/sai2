ALTER TABLE ONLY actors
    ADD CONSTRAINT actors_pkey PRIMARY KEY (id);

ALTER TABLE ONLY episodes
    ADD CONSTRAINT episodes_pkey PRIMARY KEY (id);

ALTER TABLE ONLY movies
    ADD CONSTRAINT movies_pkey PRIMARY KEY (id);

ALTER TABLE ONLY series
    ADD CONSTRAINT series_pkey PRIMARY KEY (id);

ALTER TABLE ONLY torrents
    ADD CONSTRAINT torrents_pkey PRIMARY KEY (id);

ALTER TABLE ONLY watchables
    ADD CONSTRAINT watchables_pkey PRIMARY KEY (id);

ALTER TABLE ONLY actors_watchables
    ADD CONSTRAINT actors_watchables_actor_id_fk FOREIGN KEY (actor_id) REFERENCES actors(id);

ALTER TABLE ONLY actors_watchables
    ADD CONSTRAINT actors_watchables_watchable_id_fk FOREIGN KEY (watchable_id) REFERENCES watchables(id);

ALTER TABLE ONLY episodes
    ADD CONSTRAINT episodes_serie_id_fk FOREIGN KEY (serie_id) REFERENCES series(id);

ALTER TABLE ONLY episodes
    ADD CONSTRAINT episodes_watchable_id_fk FOREIGN KEY (watchable_id) REFERENCES watchables(id);

ALTER TABLE ONLY movies
    ADD CONSTRAINT movies_watchable_id_fk FOREIGN KEY (watchable_id) REFERENCES watchables(id);

ALTER TABLE ONLY torrents
    ADD CONSTRAINT torrents_watchable_id_fk FOREIGN KEY (watchable_id) REFERENCES watchables(id);


