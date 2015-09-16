SET SCHEMA "pg_catalog";

CREATE VIEW pg_available_extension_versions AS
 SELECT e.name,
    e.version,
    (x.extname IS NOT NULL) AS installed,
    e.superuser,
    e.relocatable,
    e.schema,
    e.requires,
    e.comment
   FROM (pg_available_extension_versions() e(name, version, superuser, relocatable, schema, requires, comment)
     LEFT JOIN pg_extension x ON (((e.name = x.extname) AND (e.version = x.extversion))));


ALTER TABLE pg_catalog.pg_available_extension_versions OWNER TO postgres;

--
-- Name: pg_available_extension_versions; Type: ACL; Schema: pg_catalog; Owner: postgres
--

REVOKE ALL ON TABLE pg_available_extension_versions FROM PUBLIC;
REVOKE ALL ON TABLE pg_available_extension_versions FROM postgres;
GRANT SELECT ON TABLE pg_available_extension_versions TO PUBLIC;

