SET SCHEMA "appconfig";

CREATE TABLE tab_config (
    id_configuration integer NOT NULL,
    id_variable integer NOT NULL,
    variable_value character varying
);


ALTER TABLE appconfig.tab_config OWNER TO postgres;

--
-- Name: tab_config_pkey; Type: CONSTRAINT; Schema: appconfig; Owner: postgres; Tablespace: 
--

ALTER TABLE ONLY tab_config
    ADD CONSTRAINT tab_config_pkey PRIMARY KEY (id_configuration, id_variable);

