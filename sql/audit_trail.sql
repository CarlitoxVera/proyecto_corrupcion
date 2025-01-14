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
-- Name: audit_trail; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.audit_trail (
    audit_id integer NOT NULL,
    fecha date NOT NULL,
    descripcion text NOT NULL,
    related_investigation_id integer NOT NULL,
    tipo character varying(50)
);


ALTER TABLE public.audit_trail OWNER TO postgres;

--
-- Name: audit_trail_audit_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.audit_trail_audit_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER SEQUENCE public.audit_trail_audit_id_seq OWNER TO postgres;

--
-- Name: audit_trail_audit_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.audit_trail_audit_id_seq OWNED BY public.audit_trail.audit_id;


--
-- Name: audit_trail audit_id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.audit_trail ALTER COLUMN audit_id SET DEFAULT nextval('public.audit_trail_audit_id_seq'::regclass);


--
-- Data for Name: audit_trail; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.audit_trail (audit_id, fecha, descripcion, related_investigation_id, tipo) FROM stdin;
1	2023-06-15	Inicio de la investigación sobre corrupción judicial.	4	\N
2	2023-06-20	Evidencias preliminares recopiladas en el caso judicial.	4	\N
3	2023-06-25	Testimonios clave presentados en el tribunal.	4	\N
4	2023-06-25	Renuncia del Director General de Factop debido a las investigaciones.	9	Daño colateral
5	2023-07-10	Pérdida de contratos significativos de STF Capital tras la exposición mediática.	9	Daño colateral
6	2023-06-25	Renuncia del Director General de Factop debido a las investigaciones.	14	Daño colateral
7	2023-07-10	Pérdida de contratos significativos de STF Capital tras la exposición mediática.	14	Daño colateral
\.


--
-- Name: audit_trail_audit_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.audit_trail_audit_id_seq', 7, true);


--
-- Name: audit_trail audit_trail_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.audit_trail
    ADD CONSTRAINT audit_trail_pkey PRIMARY KEY (audit_id);


--
-- Name: audit_trail audit_trail_related_investigation_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.audit_trail
    ADD CONSTRAINT audit_trail_related_investigation_id_fkey FOREIGN KEY (related_investigation_id) REFERENCES public.investigation(investigation_id);


--
-- Name: TABLE audit_trail; Type: ACL; Schema: public; Owner: postgres
--

GRANT SELECT ON TABLE public.audit_trail TO proyecto_user;


--
-- Name: SEQUENCE audit_trail_audit_id_seq; Type: ACL; Schema: public; Owner: postgres
--

GRANT SELECT,USAGE ON SEQUENCE public.audit_trail_audit_id_seq TO proyecto_user;


--
-- PostgreSQL database dump complete
--

