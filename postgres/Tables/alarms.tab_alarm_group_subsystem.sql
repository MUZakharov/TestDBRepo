SET SCHEMA "alarms";

CREATE TABLE tab_alarm_group_subsystem (
    id_alarm_group integer NOT NULL,
    id_subsystem integer NOT NULL
);


ALTER TABLE alarms.tab_alarm_group_subsystem OWNER TO postgres;

--
-- Name: tab_alarm_group_subsystem_pkey; Type: CONSTRAINT; Schema: alarms; Owner: postgres; Tablespace: 
--

ALTER TABLE ONLY tab_alarm_group_subsystem
    ADD CONSTRAINT tab_alarm_group_subsystem_pkey PRIMARY KEY (id_alarm_group, id_subsystem);

