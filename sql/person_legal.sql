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
-- Name: person_legal; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.person_legal (
    person_id integer NOT NULL,
    legal_act_id integer NOT NULL
);


ALTER TABLE public.person_legal OWNER TO postgres;

--
-- Data for Name: person_legal; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.person_legal (person_id, legal_act_id) FROM stdin;
1	1
1	2
1	3
2	4
3	5
\.


--
-- Name: person_legal person_legal_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.person_legal
    ADD CONSTRAINT person_legal_pkey PRIMARY KEY (person_id, legal_act_id);


--
-- Name: person_legal person_legal_legal_act_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.person_legal
    ADD CONSTRAINT person_legal_legal_act_id_fkey FOREIGN KEY (legal_act_id) REFERENCES public.legal_acts(act_id);


--
-- Name: person_legal person_legal_person_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.person_legal
    ADD CONSTRAINT person_legal_person_id_fkey FOREIGN KEY (person_id) REFERENCES public.person(person_id);


--
-- Name: TABLE person_legal; Type: ACL; Schema: public; Owner: postgres
--

GRANT SELECT ON TABLE public.person_legal TO proyecto_user;


--
-- PostgreSQL database dump complete
--

