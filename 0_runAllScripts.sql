/*
	Names: Michael Gerber, Ariana Arcos Blanco
*/
drop database if exists sai_dev;
drop role if exists sai_dev;

SET statement_timeout = 0;
SET lock_timeout = 0;
SET client_encoding = 'UTF8';
SET standard_conforming_strings = on;
SET check_function_bodies = false;
SET client_min_messages = warning;

SET search_path = public, pg_catalog;

SET default_tablespace = '';

SET default_with_oids = false;

CREATE DATABASE sai_dev;
\c sai_dev;

\i 1_extensions.sql
\i 2_schema.sql
\i 3_inserts.sql
\i 4_constraints.sql
\i 5_permissions.sql
