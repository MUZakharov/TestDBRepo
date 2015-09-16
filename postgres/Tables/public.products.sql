SET SCHEMA "public";

CREATE TABLE products (
    prod_id integer NOT NULL,
    category integer NOT NULL,
    title character varying(50) NOT NULL,
    actor character varying(50) NOT NULL,
    price numeric(12,2) NOT NULL,
    special smallint,
    common_prod_id integer NOT NULL
);


ALTER TABLE public.products OWNER TO postgres;

--
-- Name: products_prod_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE products_prod_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.products_prod_id_seq OWNER TO postgres;

--
-- Name: products_prod_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE products_prod_id_seq OWNED BY products.prod_id;


--
-- Name: prod_id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY products ALTER COLUMN prod_id SET DEFAULT nextval('products_prod_id_seq'::regclass);


--
-- Name: products_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres; Tablespace: 
--

ALTER TABLE ONLY products
    ADD CONSTRAINT products_pkey PRIMARY KEY (prod_id);


--
-- Name: ix_prod_category; Type: INDEX; Schema: public; Owner: postgres; Tablespace: 
--

CREATE INDEX ix_prod_category ON products USING btree (category);


--
-- Name: ix_prod_special; Type: INDEX; Schema: public; Owner: postgres; Tablespace: 
--

CREATE INDEX ix_prod_special ON products USING btree (special);

