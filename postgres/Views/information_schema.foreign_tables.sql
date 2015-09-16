CREATE VIEW "information_schema"."foreign_tables" AS
 SELECT _pg_foreign_tables.foreign_table_catalog,
    _pg_foreign_tables.foreign_table_schema,
    _pg_foreign_tables.foreign_table_name,
    _pg_foreign_tables.foreign_server_catalog,
    _pg_foreign_tables.foreign_server_name
   FROM information_schema._pg_foreign_tables;