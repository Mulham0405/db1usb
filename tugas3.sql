--
-- PostgreSQL database dump
--

-- Dumped from database version 15.0
-- Dumped by pg_dump version 15.0

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
-- Name: delete; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.delete (
    nama character varying,
    alamat character varying
);


ALTER TABLE public.delete OWNER TO postgres;

--
-- Data for Name: delete; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.delete (nama, alamat) FROM stdin;
mulham	tande
\.


--
-- PostgreSQL database dump complete
--

