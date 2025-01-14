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
-- Name: company_person; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.company_person (
    company_person_id integer NOT NULL,
    company_id integer NOT NULL,
    person_id integer NOT NULL
);


ALTER TABLE public.company_person OWNER TO postgres;

--
-- Name: company_person_company_person_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.company_person_company_person_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER SEQUENCE public.company_person_company_person_id_seq OWNER TO postgres;

--
-- Name: company_person_company_person_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.company_person_company_person_id_seq OWNED BY public.company_person.company_person_id;


--
-- Name: company_person company_person_id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.company_person ALTER COLUMN company_person_id SET DEFAULT nextval('public.company_person_company_person_id_seq'::regclass);


--
-- Data for Name: company_person; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.company_person (company_person_id, company_id, person_id) FROM stdin;
1	1	1
2	2	2
\.


--
-- Name: company_person_company_person_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.company_person_company_person_id_seq', 2, true);


--
-- Name: company_person company_person_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.company_person
    ADD CONSTRAINT company_person_pkey PRIMARY KEY (company_person_id);


--
-- Name: company_person company_person_company_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.company_person
    ADD CONSTRAINT company_person_company_id_fkey FOREIGN KEY (company_id) REFERENCES public.company(company_id);


--
-- Name: company_person company_person_person_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.company_person
    ADD CONSTRAINT company_person_person_id_fkey FOREIGN KEY (person_id) REFERENCES public.person(person_id);


--
-- Name: TABLE company_person; Type: ACL; Schema: public; Owner: postgres
--

GRANT SELECT ON TABLE public.company_person TO proyecto_user;


--
-- Name: SEQUENCE company_person_company_person_id_seq; Type: ACL; Schema: public; Owner: postgres
--

GRANT SELECT,USAGE ON SEQUENCE public.company_person_company_person_id_seq TO proyecto_user;


--
-- PostgreSQL database dump complete
--

