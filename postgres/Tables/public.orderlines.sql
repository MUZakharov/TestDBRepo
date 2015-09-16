SET SCHEMA "public";

CREATE TABLE orderlines (
    orderlineid integer NOT NULL,
    orderid integer NOT NULL,
    prod_id integer NOT NULL,
    quantity smallint NOT NULL,
    orderdate date NOT NULL
);


ALTER TABLE public.orderlines OWNER TO postgres;

--
-- Name: ix_orderlines_orderid; Type: INDEX; Schema: public; Owner: postgres; Tablespace: 
--

CREATE UNIQUE INDEX ix_orderlines_orderid ON orderlines USING btree (orderid, orderlineid);


--
-- Name: fk_orderid; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY orderlines
    ADD CONSTRAINT fk_orderid FOREIGN KEY (orderid) REFERENCES orders(orderid) ON DELETE CASCADE;

