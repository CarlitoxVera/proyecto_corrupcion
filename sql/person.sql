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
-- Name: person; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.person (
    person_id integer NOT NULL,
    nombre character varying(100),
    rol character varying(50),
    universidad character varying(100),
    afiliacion character varying(100)
);


ALTER TABLE public.person OWNER TO postgres;

--
-- Name: person_person_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.person_person_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER SEQUENCE public.person_person_id_seq OWNER TO postgres;

--
-- Name: person_person_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.person_person_id_seq OWNED BY public.person.person_id;


--
-- Name: person person_id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.person ALTER COLUMN person_id SET DEFAULT nextval('public.person_person_id_seq'::regclass);


--
-- Data for Name: person; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.person (person_id, nombre, rol, universidad, afiliacion) FROM stdin;
4	Sergio Muñoz Yáñez	Exdirector de la PDI	Universidad de Chile	Policía de Investigaciones
5	Ángela Vivanco	Exministra de la Corte Suprema	Pontificia Universidad Católica de Chile	Corte Suprema de Chile
6	Andrés Chadwick	Exministro del Interior	Pontificia Universidad Católica de Chile	Gobierno de Chile
7	Jean Pierre Matus	Ministro de la Corte Suprema	Universidad de Chile	Corte Suprema de Chile
8	Felipe Ward	Exministro	Universidad Finis Terrae	Gobierno de Chile
9	Manuel Guerra	Fiscal Metropolitano Oriente	Universidad de Chile	Ministerio Público
10	Andrés Chadwick	Político	Pontificia Universidad Católica	UDI
11	Exequiel Silva Ortiz	Exdiputado y lobista	Universidad de Chile	Partido Demócrata Cristiano
12	Jonathan Herzfeld	Empresario	Universidad Adolfo Ibáñez	Independiente
13	Eduardo Elberg	Empresario	Universidad de Chile	Independiente
14	Paola Luksic	Empresaria	Universidad Adolfo Ibáñez	Grupo Luksic
15	Gabriela Luksic	Empresaria	Universidad de Chile	Grupo Luksic
1	Luis Hermosilla	Abogado	Universidad de Chile	Independiente
2	Leonarda Villalobos	Abogada	Pontificia Universidad Católica de Chile	Partido Socialista
3	Daniel Sauer	Empresario	Universidad Adolfo Ibáñez	Factop
16	Andrés Chadwick	Exministro del Interior	Pontificia Universidad Católica de Chile	Independiente
17	Felipe Ward	Exministro de Bienes Nacionales	Universidad Católica del Norte	Unión Demócrata Independiente (UDI)
18	Ángela Vivanco	Exministra de la Corte Suprema	Pontificia Universidad Católica de Chile	\N
19	Jean Pierre Matus	Ministro de la Corte Suprema	Universidad de Chile	\N
20	Sergio Muñoz	Ministro de la Corte Suprema	Universidad de Chile	\N
21	Luis Angulo	Empresario	Universidad Adolfo Ibáñez	Commercia
22	Ariel Sauer	Empresario	Universidad de Chile	Factop
23	Juan Pablo Hermosilla	Abogado	Pontificia Universidad Católica de Chile	Independiente
\.


--
-- Name: person_person_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.person_person_id_seq', 23, true);


--
-- Name: person person_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.person
    ADD CONSTRAINT person_pkey PRIMARY KEY (person_id);


--
-- Name: TABLE person; Type: ACL; Schema: public; Owner: postgres
--

GRANT SELECT ON TABLE public.person TO proyecto_user;


--
-- Name: SEQUENCE person_person_id_seq; Type: ACL; Schema: public; Owner: postgres
--

GRANT SELECT,USAGE ON SEQUENCE public.person_person_id_seq TO proyecto_user;


--
-- PostgreSQL database dump complete
--

