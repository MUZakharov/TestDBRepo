SET SCHEMA "pg_catalog";

CREATE VIEW pg_stat_user_indexes AS
 SELECT pg_stat_all_indexes.relid,
    pg_stat_all_indexes.indexrelid,
    pg_stat_all_indexes.schemaname,
    pg_stat_all_indexes.relname,
    pg_stat_all_indexes.indexrelname,
    pg_stat_all_indexes.idx_scan,
    pg_stat_all_indexes.idx_tup_read,
    pg_stat_all_indexes.idx_tup_fetch
   FROM pg_stat_all_indexes
  WHERE ((pg_stat_all_indexes.schemaname <> ALL (ARRAY['pg_catalog'::name, 'information_schema'::name])) AND (pg_stat_all_indexes.schemaname !~ '^pg_toast'::text));


ALTER TABLE pg_catalog.pg_stat_user_indexes OWNER TO postgres;

--
-- Name: pg_stat_user_indexes; Type: ACL; Schema: pg_catalog; Owner: postgres
--

REVOKE ALL ON TABLE pg_stat_user_indexes FROM PUBLIC;
REVOKE ALL ON TABLE pg_stat_user_indexes FROM postgres;
GRANT SELECT ON TABLE pg_stat_user_indexes TO PUBLIC;

