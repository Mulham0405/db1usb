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
-- Name: pelanggan; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.pelanggan (
    no integer NOT NULL,
    namapelanggan character varying,
    alamat character varying
);


ALTER TABLE public.pelanggan OWNER TO postgres;

--
-- Name: pelanggan_no_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.pelanggan_no_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.pelanggan_no_seq OWNER TO postgres;

--
-- Name: pelanggan_no_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.pelanggan_no_seq OWNED BY public.pelanggan.no;


--
-- Name: pesanan; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.pesanan (
    no integer NOT NULL,
    kodepesanan integer,
    tujuanpengiriman character varying
);


ALTER TABLE public.pesanan OWNER TO postgres;

--
-- Name: pesanan_no_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.pesanan_no_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.pesanan_no_seq OWNER TO postgres;

--
-- Name: pesanan_no_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.pesanan_no_seq OWNED BY public.pesanan.no;


--
-- Name: produk; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.produk (
    no integer NOT NULL,
    namaproduk character varying,
    hargaproduk integer
);


ALTER TABLE public.produk OWNER TO postgres;

--
-- Name: produk_no_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.produk_no_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.produk_no_seq OWNER TO postgres;

--
-- Name: produk_no_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.produk_no_seq OWNED BY public.produk.no;


--
-- Name: pelanggan no; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.pelanggan ALTER COLUMN no SET DEFAULT nextval('public.pelanggan_no_seq'::regclass);


--
-- Name: pesanan no; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.pesanan ALTER COLUMN no SET DEFAULT nextval('public.pesanan_no_seq'::regclass);


--
-- Name: produk no; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.produk ALTER COLUMN no SET DEFAULT nextval('public.produk_no_seq'::regclass);


--
-- Data for Name: pelanggan; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.pelanggan (no, namapelanggan, alamat) FROM stdin;
1	ansar	campalagian
2	rahma	tangang baru
3	handayani	kalukku
4	haikal	tubo
\.


--
-- Data for Name: pesanan; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.pesanan (no, kodepesanan, tujuanpengiriman) FROM stdin;
1	1212	tubo
2	1213	campalagian
3	1214	kalukku
4	1215	tangang baru
\.


--
-- Data for Name: produk; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.produk (no, namaproduk, hargaproduk) FROM stdin;
1	kartu telkomsel	35000
2	kartu im3	50000
3	kartu indosat	30000
4	kartu xl	15000
\.


--
-- Name: pelanggan_no_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.pelanggan_no_seq', 4, true);


--
-- Name: pesanan_no_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.pesanan_no_seq', 4, true);


--
-- Name: produk_no_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.produk_no_seq', 4, true);


--
-- Name: pelanggan pelanggan_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.pelanggan
    ADD CONSTRAINT pelanggan_pkey PRIMARY KEY (no);


--
-- Name: pesanan pesanan_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.pesanan
    ADD CONSTRAINT pesanan_pkey PRIMARY KEY (no);


--
-- Name: produk produk_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.produk
    ADD CONSTRAINT produk_pkey PRIMARY KEY (no);


--
-- PostgreSQL database dump complete
--

