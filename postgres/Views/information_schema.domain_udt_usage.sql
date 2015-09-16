SET SCHEMA "information_schema";

CREATE VIEW domain_udt_usage AS
 SELECT (current_database())::sql_identifier AS udt_catalog,
    (nbt.nspname)::sql_identifier AS udt_schema,
    (bt.typname)::sql_identifier AS udt_name,
    (current_database())::sql_identifier AS domain_catalog,
    (nt.nspname)::sql_identifier AS domain_schema,
    (t.typname)::sql_identifier AS domain_name
   FROM pg_type t,
    pg_namespace nt,
    pg_type bt,
    pg_namespace nbt
  WHERE (((((t.typnamespace = nt.oid) AND (t.typbasetype = bt.oid)) AND (bt.typnamespace = nbt.oid)) AND (t.typtype = 'd'::"char")) AND pg_has_role(bt.typowner, 'USAGE'::text));


ALTER TABLE information_schema.domain_udt_usage OWNER TO postgres;

--
-- Name: domain_udt_usage; Type: ACL; Schema: information_schema; Owner: postgres
--

REVOKE ALL ON TABLE domain_udt_usage FROM PUBLIC;
REVOKE ALL ON TABLE domain_udt_usage FROM postgres;
GRANT ALL ON TABLE domain_udt_usage TO postgres;
GRANT SELECT ON TABLE domain_udt_usage TO PUBLIC;

