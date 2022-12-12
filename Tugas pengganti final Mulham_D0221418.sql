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
-- Name: barang; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.barang (
    no_barang integer NOT NULL,
    nama_barang character varying,
    harga_satuan numeric
);


ALTER TABLE public.barang OWNER TO postgres;

--
-- Name: barang_no_barang_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.barang_no_barang_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.barang_no_barang_seq OWNER TO postgres;

--
-- Name: barang_no_barang_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.barang_no_barang_seq OWNED BY public.barang.no_barang;


--
-- Name: kasir; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.kasir (
    nomor integer NOT NULL,
    nama_kasir character varying
);


ALTER TABLE public.kasir OWNER TO postgres;

--
-- Name: kasir_nomor_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.kasir_nomor_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.kasir_nomor_seq OWNER TO postgres;

--
-- Name: kasir_nomor_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.kasir_nomor_seq OWNED BY public.kasir.nomor;


--
-- Name: member; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.member (
    namamember character varying,
    totalpoin integer
);


ALTER TABLE public.member OWNER TO postgres;

--
-- Name: barang no_barang; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.barang ALTER COLUMN no_barang SET DEFAULT nextval('public.barang_no_barang_seq'::regclass);


--
-- Name: kasir nomor; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.kasir ALTER COLUMN nomor SET DEFAULT nextval('public.kasir_nomor_seq'::regclass);


--
-- Data for Name: barang; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.barang (no_barang, nama_barang, harga_satuan) FROM stdin;
1	laptop asus	6999999
2	keyboard votre	50000
3	laptop asus	699999
4	keyboard votre	50000
5	motor vario 150	20000000
6	powerbank	150000
7	hp oppo a3s	1800000
8	hp vivo v21 5g	4500000
9	hp iphone 14 pro max	20000000
10	hp realme 9	3500000
11	hp realme 9i	2999999
12	hp realme c35	2499000
13	hp realme c30	1599000
14	hp realme 9 pro+	5499000
15	hp realme c33	1799000
16	hp realme gt neo 3t	5499000
17	hp realme c25y	1899000
18	hp realme 8i	2799000
\.


--
-- Data for Name: kasir; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.kasir (nomor, nama_kasir) FROM stdin;
1	Nina
2	Amel
3	Berlian
4	Nurmadina
5	Sophia
6	Fani
7	Fajra
8	Ratna
9	Nurul
10	Handayani
11	Anti
12	Anto
13	Maya
14	Mulan
15	Hesti
16	Enzy
\.


--
-- Data for Name: member; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.member (namamember, totalpoin) FROM stdin;
Ansar	100
Haikal	100
Edwin	90
Mulham	70
Yayat	89
Ryan	78
Frans	77
Efor	76
Fadhil	75
Syahrul	74
Bambang	73
Nopri	88
Mutiara	87
Nurfadhilah	86
Rahma	85
Fitri	98
\.


--
-- Name: barang_no_barang_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.barang_no_barang_seq', 18, true);


--
-- Name: kasir_nomor_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.kasir_nomor_seq', 16, true);


--
-- Name: barang barang_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.barang
    ADD CONSTRAINT barang_pkey PRIMARY KEY (no_barang);


--
-- Name: kasir kasir_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.kasir
    ADD CONSTRAINT kasir_pkey PRIMARY KEY (nomor);


--
-- PostgreSQL database dump complete
--

