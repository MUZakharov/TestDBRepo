SET SCHEMA "public";

CREATE TABLE cust_hist (
    customerid integer NOT NULL,
    orderid integer NOT NULL,
    prod_id integer NOT NULL
);


ALTER TABLE public.cust_hist OWNER TO postgres;

--
-- Name: ix_cust_hist_customerid; Type: INDEX; Schema: public; Owner: postgres; Tablespace: 
--

CREATE INDEX ix_cust_hist_customerid ON cust_hist USING btree (customerid);


--
-- Name: fk_cust_hist_customerid; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY cust_hist
    ADD CONSTRAINT fk_cust_hist_customerid FOREIGN KEY (customerid) REFERENCES customers(customerid) ON DELETE CASCADE;

