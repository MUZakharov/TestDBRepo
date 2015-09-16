SET SCHEMA "alarms";

CREATE TABLE tab_subsystem_sms (
    id_subsystem integer NOT NULL,
    id_cellphone integer NOT NULL
);


ALTER TABLE alarms.tab_subsystem_sms OWNER TO postgres;

--
-- Name: tab_subsystem_sms_pkey; Type: CONSTRAINT; Schema: alarms; Owner: postgres; Tablespace: 
--

ALTER TABLE ONLY tab_subsystem_sms
    ADD CONSTRAINT tab_subsystem_sms_pkey PRIMARY KEY (id_subsystem, id_cellphone);

