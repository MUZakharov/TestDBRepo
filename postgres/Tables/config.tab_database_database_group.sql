SET SCHEMA "config";

CREATE TABLE tab_database_database_group (
    id_database integer NOT NULL,
    id_database_group integer NOT NULL
);


ALTER TABLE config.tab_database_database_group OWNER TO postgres;

--
-- Name: pk_db2groups; Type: CONSTRAINT; Schema: config; Owner: postgres; Tablespace: 
--

ALTER TABLE ONLY tab_database_database_group
    ADD CONSTRAINT pk_db2groups PRIMARY KEY (id_database, id_database_group);

