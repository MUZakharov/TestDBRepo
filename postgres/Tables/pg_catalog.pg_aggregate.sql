SET SCHEMA "pg_catalog";

CREATE TABLE pg_aggregate (
    aggfnoid regproc NOT NULL,
    aggtransfn regproc NOT NULL,
    aggfinalfn regproc NOT NULL,
    aggsortop oid NOT NULL,
    aggtranstype oid NOT NULL,
    agginitval text
);


ALTER TABLE pg_catalog.pg_aggregate OWNER TO postgres;

--
-- Name: pg_aggregate_fnoid_index; Type: INDEX; Schema: pg_catalog; Owner: postgres; Tablespace: 
--

CREATE UNIQUE INDEX pg_aggregate_fnoid_index ON pg_aggregate USING btree (aggfnoid);


--
-- Name: pg_aggregate; Type: ACL; Schema: pg_catalog; Owner: postgres
--

REVOKE ALL ON TABLE pg_aggregate FROM PUBLIC;
REVOKE ALL ON TABLE pg_aggregate FROM postgres;
GRANT SELECT ON TABLE pg_aggregate TO PUBLIC;

