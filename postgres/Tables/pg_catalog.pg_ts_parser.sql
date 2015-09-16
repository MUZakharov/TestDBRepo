SET SCHEMA "pg_catalog";

CREATE TABLE pg_ts_parser (
    prsname name NOT NULL,
    prsnamespace oid NOT NULL,
    prsstart regproc NOT NULL,
    prstoken regproc NOT NULL,
    prsend regproc NOT NULL,
    prsheadline regproc NOT NULL,
    prslextype regproc NOT NULL
);


ALTER TABLE pg_catalog.pg_ts_parser OWNER TO postgres;

--
-- Name: pg_ts_parser_oid_index; Type: INDEX; Schema: pg_catalog; Owner: postgres; Tablespace: 
--

CREATE UNIQUE INDEX pg_ts_parser_oid_index ON pg_ts_parser USING btree (oid);


--
-- Name: pg_ts_parser_prsname_index; Type: INDEX; Schema: pg_catalog; Owner: postgres; Tablespace: 
--

CREATE UNIQUE INDEX pg_ts_parser_prsname_index ON pg_ts_parser USING btree (prsname, prsnamespace);


--
-- Name: pg_ts_parser; Type: ACL; Schema: pg_catalog; Owner: postgres
--

REVOKE ALL ON TABLE pg_ts_parser FROM PUBLIC;
REVOKE ALL ON TABLE pg_ts_parser FROM postgres;
GRANT SELECT ON TABLE pg_ts_parser TO PUBLIC;

