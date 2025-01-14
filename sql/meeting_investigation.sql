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
-- Name: meeting_investigation; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.meeting_investigation (
    meeting_investigation_id integer NOT NULL,
    meeting_id integer NOT NULL,
    investigation_id integer NOT NULL
);


ALTER TABLE public.meeting_investigation OWNER TO postgres;

--
-- Name: meeting_investigation_meeting_investigation_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.meeting_investigation_meeting_investigation_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER SEQUENCE public.meeting_investigation_meeting_investigation_id_seq OWNER TO postgres;

--
-- Name: meeting_investigation_meeting_investigation_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.meeting_investigation_meeting_investigation_id_seq OWNED BY public.meeting_investigation.meeting_investigation_id;


--
-- Name: meeting_investigation meeting_investigation_id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.meeting_investigation ALTER COLUMN meeting_investigation_id SET DEFAULT nextval('public.meeting_investigation_meeting_investigation_id_seq'::regclass);


--
-- Data for Name: meeting_investigation; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.meeting_investigation (meeting_investigation_id, meeting_id, investigation_id) FROM stdin;
1	1	1
2	2	2
\.


--
-- Name: meeting_investigation_meeting_investigation_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.meeting_investigation_meeting_investigation_id_seq', 2, true);


--
-- Name: meeting_investigation meeting_investigation_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.meeting_investigation
    ADD CONSTRAINT meeting_investigation_pkey PRIMARY KEY (meeting_investigation_id);


--
-- Name: meeting_investigation meeting_investigation_investigation_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.meeting_investigation
    ADD CONSTRAINT meeting_investigation_investigation_id_fkey FOREIGN KEY (investigation_id) REFERENCES public.investigation(investigation_id);


--
-- Name: meeting_investigation meeting_investigation_meeting_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.meeting_investigation
    ADD CONSTRAINT meeting_investigation_meeting_id_fkey FOREIGN KEY (meeting_id) REFERENCES public.meeting(meeting_id);


--
-- Name: TABLE meeting_investigation; Type: ACL; Schema: public; Owner: postgres
--

GRANT SELECT ON TABLE public.meeting_investigation TO proyecto_user;


--
-- Name: SEQUENCE meeting_investigation_meeting_investigation_id_seq; Type: ACL; Schema: public; Owner: postgres
--

GRANT SELECT,USAGE ON SEQUENCE public.meeting_investigation_meeting_investigation_id_seq TO proyecto_user;


--
-- PostgreSQL database dump complete
--

