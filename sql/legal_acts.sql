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
-- Name: legal_acts; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.legal_acts (
    act_id integer NOT NULL,
    descripcion text NOT NULL,
    tipo character varying(50) NOT NULL
);


ALTER TABLE public.legal_acts OWNER TO postgres;

--
-- Name: legal_acts_act_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.legal_acts_act_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER SEQUENCE public.legal_acts_act_id_seq OWNER TO postgres;

--
-- Name: legal_acts_act_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.legal_acts_act_id_seq OWNED BY public.legal_acts.act_id;


--
-- Name: legal_acts act_id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.legal_acts ALTER COLUMN act_id SET DEFAULT nextval('public.legal_acts_act_id_seq'::regclass);


--
-- Data for Name: legal_acts; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.legal_acts (act_id, descripcion, tipo) FROM stdin;
1	Soborno a funcionarios públicos del SII	Delito
2	Evasión fiscal mediante facturas falsas	Delito
3	Tráfico de influencias en la CMF	Delito
4	Omisión de información en trámites legales	Falta
5	Pagos no declarados a terceros	Falta
\.


--
-- Name: legal_acts_act_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.legal_acts_act_id_seq', 5, true);


--
-- Name: legal_acts legal_acts_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.legal_acts
    ADD CONSTRAINT legal_acts_pkey PRIMARY KEY (act_id);


--
-- Name: TABLE legal_acts; Type: ACL; Schema: public; Owner: postgres
--

GRANT SELECT ON TABLE public.legal_acts TO proyecto_user;


--
-- Name: SEQUENCE legal_acts_act_id_seq; Type: ACL; Schema: public; Owner: postgres
--

GRANT SELECT,USAGE ON SEQUENCE public.legal_acts_act_id_seq TO proyecto_user;


--
-- PostgreSQL database dump complete
--

