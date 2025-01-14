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
-- Name: person_meeting; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.person_meeting (
    person_id integer NOT NULL,
    meeting_id integer NOT NULL
);


ALTER TABLE public.person_meeting OWNER TO postgres;

--
-- Data for Name: person_meeting; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.person_meeting (person_id, meeting_id) FROM stdin;
1	1
2	1
3	2
\.


--
-- Name: person_meeting person_meeting_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.person_meeting
    ADD CONSTRAINT person_meeting_pkey PRIMARY KEY (person_id, meeting_id);


--
-- Name: person_meeting person_meeting_meeting_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.person_meeting
    ADD CONSTRAINT person_meeting_meeting_id_fkey FOREIGN KEY (meeting_id) REFERENCES public.meeting(meeting_id);


--
-- Name: person_meeting person_meeting_person_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.person_meeting
    ADD CONSTRAINT person_meeting_person_id_fkey FOREIGN KEY (person_id) REFERENCES public.person(person_id);


--
-- Name: TABLE person_meeting; Type: ACL; Schema: public; Owner: postgres
--

GRANT SELECT ON TABLE public.person_meeting TO proyecto_user;


--
-- PostgreSQL database dump complete
--

