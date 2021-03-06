SET SCHEMA "information_schema";

CREATE VIEW _pg_foreign_tables AS
 SELECT (current_database())::sql_identifier AS foreign_table_catalog,
    n.nspname AS foreign_table_schema,
    c.relname AS foreign_table_name,
    t.ftoptions,
    (current_database())::sql_identifier AS foreign_server_catalog,
    (s.srvname)::sql_identifier AS foreign_server_name,
    (u.rolname)::sql_identifier AS authorization_identifier
   FROM pg_foreign_table t,
    pg_foreign_server s,
    pg_foreign_data_wrapper w,
    pg_authid u,
    pg_namespace n,
    pg_class c
  WHERE (((((((w.oid = s.srvfdw) AND (u.oid = c.relowner)) AND ((pg_has_role(c.relowner, 'USAGE'::text) OR has_table_privilege(c.oid, 'SELECT, INSERT, UPDATE, DELETE, TRUNCATE, REFERENCES, TRIGGER'::text)) OR has_any_column_privilege(c.oid, 'SELECT, INSERT, UPDATE, REFERENCES'::text))) AND (n.oid = c.relnamespace)) AND (c.oid = t.ftrelid)) AND (c.relkind = 'f'::"char")) AND (s.oid = t.ftserver));


ALTER TABLE information_schema._pg_foreign_tables OWNER TO postgres;
