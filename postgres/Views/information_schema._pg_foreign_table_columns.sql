SET SCHEMA "information_schema";

CREATE VIEW _pg_foreign_table_columns AS
 SELECT n.nspname,
    c.relname,
    a.attname,
    a.attfdwoptions
   FROM pg_foreign_table t,
    pg_authid u,
    pg_namespace n,
    pg_class c,
    pg_attribute a
  WHERE (((((((u.oid = c.relowner) AND (pg_has_role(c.relowner, 'USAGE'::text) OR has_column_privilege(c.oid, a.attnum, 'SELECT, INSERT, UPDATE, REFERENCES'::text))) AND (n.oid = c.relnamespace)) AND (c.oid = t.ftrelid)) AND (c.relkind = 'f'::"char")) AND (a.attrelid = c.oid)) AND (a.attnum > 0));


ALTER TABLE information_schema._pg_foreign_table_columns OWNER TO postgres;
