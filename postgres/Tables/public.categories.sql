SET SCHEMA "public";

CREATE TABLE categories (
    category integer NOT NULL,
    categoryname character varying(50) NOT NULL
);


ALTER TABLE public.categories OWNER TO postgres;

--
-- Name: categories_category_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE categories_category_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.categories_category_seq OWNER TO postgres;

--
-- Name: categories_category_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE categories_category_seq OWNED BY categories.category;


--
-- Name: category; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY categories ALTER COLUMN category SET DEFAULT nextval('categories_category_seq'::regclass);

