--
-- PostgreSQL database dump
--

-- Dumped from database version 16.6 (Ubuntu 16.6-0ubuntu0.24.10.1)
-- Dumped by pg_dump version 16.6 (Ubuntu 16.6-0ubuntu0.24.10.1)

SET statement_timeout = 0;
SET lock_timeout = 0;
SET idle_in_transaction_session_timeout = 0;
SET client_encoding = 'UTF8';
SET standard_conforming_strings = on;
SELECT pg_catalog.set_config('search_path', '', false);
SET check_function_bodies = false;
SET xmloption = content;
SET client_min_messages = warning;
SET row_security = off;

SET default_tablespace = '';

SET default_table_access_method = heap;

--
-- Name: institution; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.institution (
    institution_id integer NOT NULL,
    nombre character varying(100),
    tipo character varying(50)
);


ALTER TABLE public.institution OWNER TO postgres;

--
-- Name: institution_institution_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.institution_institution_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER SEQUENCE public.institution_institution_id_seq OWNER TO postgres;

--
-- Name: institution_institution_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.institution_institution_id_seq OWNED BY public.institution.institution_id;


--
-- Name: institution institution_id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.institution ALTER COLUMN institution_id SET DEFAULT nextval('public.institution_institution_id_seq'::regclass);


--
-- Data for Name: institution; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.institution (institution_id, nombre, tipo) FROM stdin;
1	SII	Gubernamental
2	CMF	Reguladora
3	Policía de Investigaciones	Gubernamental
4	Corte Suprema de Chile	Gubernamental
5	Ministerio del Interior	Gubernamental
6	Ministerio Público	Gubernamental
7	Ministerio de Hacienda	Ministerio
8	Ministerio de Justicia y Derechos Humanos	Ministerio
9	Servicio de Impuestos Internos	Organismo Público
10	Comisión para el Mercado Financiero	Organismo Público
\.


--
-- Name: institution_institution_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.institution_institution_id_seq', 11, true);


--
-- Name: institution institution_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.institution
    ADD CONSTRAINT institution_pkey PRIMARY KEY (institution_id);


--
-- Name: TABLE institution; Type: ACL; Schema: public; Owner: postgres
--

GRANT SELECT ON TABLE public.institution TO proyecto_user;


--
-- Name: SEQUENCE institution_institution_id_seq; Type: ACL; Schema: public; Owner: postgres
--

GRANT SELECT,USAGE ON SEQUENCE public.institution_institution_id_seq TO proyecto_user;


--
-- PostgreSQL database dump complete
--

