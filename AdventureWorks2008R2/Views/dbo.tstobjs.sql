/************************************************************
 * Code formatted by SoftTree SQL Assistant © v12.0.52
 * Time: 05.04.2021 14:08:14
 ************************************************************/

CREATE VIEW tstobjs AS 
SELECT s.id,
       s.xtype,
       s.uid,
       s.info,
       
       s.replinfo
FROM   sysobjects AS s
GO
-- comment
