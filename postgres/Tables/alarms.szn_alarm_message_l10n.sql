SET SCHEMA "alarms";

CREATE TABLE szn_alarm_message_l10n (
    id_alarm_message integer NOT NULL,
    lang character(2) NOT NULL,
    message_text character varying
);


ALTER TABLE alarms.szn_alarm_message_l10n OWNER TO postgres;

--
-- Name: szn_alarm_message_l10n_pkey; Type: CONSTRAINT; Schema: alarms; Owner: postgres; Tablespace: 
--

ALTER TABLE ONLY szn_alarm_message_l10n
    ADD CONSTRAINT szn_alarm_message_l10n_pkey PRIMARY KEY (id_alarm_message, lang);

