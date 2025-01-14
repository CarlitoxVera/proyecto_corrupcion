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
-- Name: investigation; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.investigation (
    investigation_id integer NOT NULL,
    institucion integer,
    estado character varying(50),
    enfoque text
);


ALTER TABLE public.investigation OWNER TO postgres;

--
-- Name: investigation_investigation_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.investigation_investigation_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER SEQUENCE public.investigation_investigation_id_seq OWNER TO postgres;

--
-- Name: investigation_investigation_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.investigation_investigation_id_seq OWNED BY public.investigation.investigation_id;


--
-- Name: investigation investigation_id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.investigation ALTER COLUMN investigation_id SET DEFAULT nextval('public.investigation_investigation_id_seq'::regclass);


--
-- Data for Name: investigation; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.investigation (investigation_id, institucion, estado, enfoque) FROM stdin;
1	1	En progreso	Investigación sobre facturas falsas y corrupción en el SII
2	2	Cerrada	Revisión de operaciones de la CMF relacionadas con STF
3	1	En progreso	Análisis de triangulación de pagos en Factop
4	6	En progreso	Investigación sobre tráfico de influencias y corrupción en el ámbito judicial y gubernamental
5	1	En progreso	Investigación sobre el rol de Hacienda en supervisión tributaria
6	2	En progreso	Análisis de irregularidades en triangulación de pagos
7	4	En progreso	Corrupción y sobornos en regulaciones del mercado financiero
8	5	Cerrada	Caso de tráfico de influencias en proyectos fiscales
9	6	En progreso	Investigación sobre pagos ilícitos liderados por Luis Hermosilla
10	6	En progreso	Caso audios y tráfico de influencias
11	6	En progreso	Caso Parque Capital
12	6	En progreso	Caso de corrupción judicial y favores políticos
13	6	En progreso	Caso tráfico de influencias
14	6	En progreso	Caso Hermosilla y posible corrupción judicial
15	6	En progreso	Caso tráfico de influencias judiciales
\.


--
-- Name: investigation_investigation_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.investigation_investigation_id_seq', 16, true);


--
-- Name: investigation investigation_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.investigation
    ADD CONSTRAINT investigation_pkey PRIMARY KEY (investigation_id);


--
-- Name: investigation fk_institucion; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.investigation
    ADD CONSTRAINT fk_institucion FOREIGN KEY (institucion) REFERENCES public.institution(institution_id);


--
-- Name: TABLE investigation; Type: ACL; Schema: public; Owner: postgres
--

GRANT SELECT ON TABLE public.investigation TO proyecto_user;


--
-- Name: SEQUENCE investigation_investigation_id_seq; Type: ACL; Schema: public; Owner: postgres
--

GRANT SELECT,USAGE ON SEQUENCE public.investigation_investigation_id_seq TO proyecto_user;


--
-- PostgreSQL database dump complete
--

