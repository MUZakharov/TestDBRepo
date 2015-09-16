SET SCHEMA "public";

CREATE TABLE reorder (
    prod_id integer NOT NULL,
    date_low date NOT NULL,
    quan_low integer NOT NULL,
    date_reordered date,
    quan_reordered integer,
    date_expected date
);


ALTER TABLE public.reorder OWNER TO postgres;
