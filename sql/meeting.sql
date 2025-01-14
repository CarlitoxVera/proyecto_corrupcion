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
-- Name: meeting; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.meeting (
    meeting_id integer NOT NULL,
    fecha date,
    lugar character varying(100),
    descripcion text
);


ALTER TABLE public.meeting OWNER TO postgres;

--
-- Name: meeting_meeting_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.meeting_meeting_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER SEQUENCE public.meeting_meeting_id_seq OWNER TO postgres;

--
-- Name: meeting_meeting_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.meeting_meeting_id_seq OWNED BY public.meeting.meeting_id;


--
-- Name: meeting meeting_id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.meeting ALTER COLUMN meeting_id SET DEFAULT nextval('public.meeting_meeting_id_seq'::regclass);


--
-- Data for Name: meeting; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.meeting (meeting_id, fecha, lugar, descripcion) FROM stdin;
1	2023-06-15	Vitacura	Reunión grabada en el edificio del Grupo Patio sobre evasión fiscal
2	2023-05-31	CMF	Reunión con Andrés Montes para coordinar información del caso
3	2023-05-10	Oficina de Hermosilla	Reunión entre Luis Hermosilla y Sergio Muñoz para discutir estrategias legales
\.


--
-- Name: meeting_meeting_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.meeting_meeting_id_seq', 3, true);


--
-- Name: meeting meeting_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.meeting
    ADD CONSTRAINT meeting_pkey PRIMARY KEY (meeting_id);


--
-- Name: TABLE meeting; Type: ACL; Schema: public; Owner: postgres
--

GRANT SELECT ON TABLE public.meeting TO proyecto_user;


--
-- Name: SEQUENCE meeting_meeting_id_seq; Type: ACL; Schema: public; Owner: postgres
--

GRANT SELECT,USAGE ON SEQUENCE public.meeting_meeting_id_seq TO proyecto_user;


--
-- PostgreSQL database dump complete
--

