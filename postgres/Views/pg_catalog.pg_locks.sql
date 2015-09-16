SET SCHEMA "pg_catalog";

CREATE VIEW pg_locks AS
 SELECT l.locktype,
    l.database,
    l.relation,
    l.page,
    l.tuple,
    l.virtualxid,
    l.transactionid,
    l.classid,
    l.objid,
    l.objsubid,
    l.virtualtransaction,
    l.pid,
    l.mode,
    l.granted,
    l.fastpath
   FROM pg_lock_status() l(locktype, database, relation, page, tuple, virtualxid, transactionid, classid, objid, objsubid, virtualtransaction, pid, mode, granted, fastpath);


ALTER TABLE pg_catalog.pg_locks OWNER TO postgres;

--
-- Name: pg_locks; Type: ACL; Schema: pg_catalog; Owner: postgres
--

REVOKE ALL ON TABLE pg_locks FROM PUBLIC;
REVOKE ALL ON TABLE pg_locks FROM postgres;
GRANT SELECT ON TABLE pg_locks TO PUBLIC;

