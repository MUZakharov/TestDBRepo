SET SCHEMA "config";

CREATE TABLE tab_db_login (
    id_database integer NOT NULL,
    db_login_name character varying NOT NULL,
    db_login_pass character varying NOT NULL,
    db_login_active integer DEFAULT 1 NOT NULL
);


ALTER TABLE config.tab_db_login OWNER TO postgres;

--
-- Name: pk_tabdblogin_iddatabase_dbloginname; Type: CONSTRAINT; Schema: config; Owner: postgres; Tablespace: 
--

ALTER TABLE ONLY tab_db_login
    ADD CONSTRAINT pk_tabdblogin_iddatabase_dbloginname PRIMARY KEY (id_database, db_login_name);

