--
-- PostgreSQL database dump
--

-- Dumped from database version 16.1
-- Dumped by pg_dump version 16.1

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
-- Name: customer; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.customer (
    customerid integer NOT NULL,
    firstname character varying(255),
    lastname character varying(255)
);


ALTER TABLE public.customer OWNER TO postgres;

--
-- Name: customer_customerid_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.customer_customerid_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER SEQUENCE public.customer_customerid_seq OWNER TO postgres;

--
-- Name: customer_customerid_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.customer_customerid_seq OWNED BY public.customer.customerid;


--
-- Name: pizza; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.pizza (
    pizzaid integer NOT NULL,
    pizzasize integer,
    pizzatype text
);


ALTER TABLE public.pizza OWNER TO postgres;

--
-- Name: pizza_pizzaid_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.pizza_pizzaid_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER SEQUENCE public.pizza_pizzaid_seq OWNER TO postgres;

--
-- Name: pizza_pizzaid_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.pizza_pizzaid_seq OWNED BY public.pizza.pizzaid;


--
-- Name: pizzaorder; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.pizzaorder (
    customerid integer NOT NULL,
    pizzaid integer NOT NULL,
    orderid integer NOT NULL
);


ALTER TABLE public.pizzaorder OWNER TO postgres;

--
-- Name: pizzaorder_customerid_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.pizzaorder_customerid_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER SEQUENCE public.pizzaorder_customerid_seq OWNER TO postgres;

--
-- Name: pizzaorder_customerid_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.pizzaorder_customerid_seq OWNED BY public.pizzaorder.customerid;


--
-- Name: pizzaorder_orderid_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.pizzaorder_orderid_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER SEQUENCE public.pizzaorder_orderid_seq OWNER TO postgres;

--
-- Name: pizzaorder_orderid_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.pizzaorder_orderid_seq OWNED BY public.pizzaorder.orderid;


--
-- Name: pizzaorder_pizzaid_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.pizzaorder_pizzaid_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER SEQUENCE public.pizzaorder_pizzaid_seq OWNER TO postgres;

--
-- Name: pizzaorder_pizzaid_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.pizzaorder_pizzaid_seq OWNED BY public.pizzaorder.pizzaid;


--
-- Name: customer customerid; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.customer ALTER COLUMN customerid SET DEFAULT nextval('public.customer_customerid_seq'::regclass);


--
-- Name: pizza pizzaid; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.pizza ALTER COLUMN pizzaid SET DEFAULT nextval('public.pizza_pizzaid_seq'::regclass);


--
-- Name: pizzaorder customerid; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.pizzaorder ALTER COLUMN customerid SET DEFAULT nextval('public.pizzaorder_customerid_seq'::regclass);


--
-- Name: pizzaorder pizzaid; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.pizzaorder ALTER COLUMN pizzaid SET DEFAULT nextval('public.pizzaorder_pizzaid_seq'::regclass);


--
-- Name: pizzaorder orderid; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.pizzaorder ALTER COLUMN orderid SET DEFAULT nextval('public.pizzaorder_orderid_seq'::regclass);


--
-- Data for Name: customer; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.customer (customerid, firstname, lastname) FROM stdin;
1	John	Smith
2	Sally	Brown
\.


--
-- Data for Name: pizza; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.pizza (pizzaid, pizzasize, pizzatype) FROM stdin;
1	10	pepperoni
2	14	sausage
\.


--
-- Data for Name: pizzaorder; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.pizzaorder (customerid, pizzaid, orderid) FROM stdin;
1	1	1
2	2	2
\.


--
-- Name: customer_customerid_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.customer_customerid_seq', 2, true);


--
-- Name: pizza_pizzaid_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.pizza_pizzaid_seq', 2, true);


--
-- Name: pizzaorder_customerid_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.pizzaorder_customerid_seq', 1, false);


--
-- Name: pizzaorder_orderid_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.pizzaorder_orderid_seq', 2, true);


--
-- Name: pizzaorder_pizzaid_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.pizzaorder_pizzaid_seq', 1, false);


--
-- Name: customer customer_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.customer
    ADD CONSTRAINT customer_pkey PRIMARY KEY (customerid);


--
-- Name: pizza pizza_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.pizza
    ADD CONSTRAINT pizza_pkey PRIMARY KEY (pizzaid);


--
-- Name: pizzaorder pizzaorder_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.pizzaorder
    ADD CONSTRAINT pizzaorder_pkey PRIMARY KEY (customerid, pizzaid);


--
-- Name: pizzaorder fkixbs6jrm3biu55lo8bedit77g; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.pizzaorder
    ADD CONSTRAINT fkixbs6jrm3biu55lo8bedit77g FOREIGN KEY (pizzaid) REFERENCES public.pizza(pizzaid);


--
-- Name: pizzaorder fkl3gipkjd929s5c9ln3vc72bje; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.pizzaorder
    ADD CONSTRAINT fkl3gipkjd929s5c9ln3vc72bje FOREIGN KEY (customerid) REFERENCES public.customer(customerid);


--
-- Name: pizzaorder pizzaorder_customerid_fkey; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.pizzaorder
    ADD CONSTRAINT pizzaorder_customerid_fkey FOREIGN KEY (customerid) REFERENCES public.pizza(pizzaid);


--
-- Name: pizzaorder pizzaorder_pizzaid_fkey; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.pizzaorder
    ADD CONSTRAINT pizzaorder_pizzaid_fkey FOREIGN KEY (pizzaid) REFERENCES public.customer(customerid);


--
-- PostgreSQL database dump complete
--

