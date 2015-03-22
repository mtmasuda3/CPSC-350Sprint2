--
-- PostgreSQL database dump
--

SET statement_timeout = 0;
SET lock_timeout = 0;
SET client_encoding = 'SQL_ASCII';
SET standard_conforming_strings = on;
SET check_function_bodies = false;
SET client_min_messages = warning;

--
-- Name: plpgsql; Type: EXTENSION; Schema: -; Owner: 
--

CREATE EXTENSION IF NOT EXISTS plpgsql WITH SCHEMA pg_catalog;


--
-- Name: EXTENSION plpgsql; Type: COMMENT; Schema: -; Owner: 
--

COMMENT ON EXTENSION plpgsql IS 'PL/pgSQL procedural language';


SET search_path = public, pg_catalog;

SET default_tablespace = '';

SET default_with_oids = false;

--
-- Name: aquaroom; Type: TABLE; Schema: public; Owner: postgres; Tablespace: 
--

CREATE TABLE aquaroom (
    message character varying(255),
    username character varying(30)
);


ALTER TABLE public.aquaroom OWNER TO postgres;

--
-- Name: blackroom; Type: TABLE; Schema: public; Owner: postgres; Tablespace: 
--

CREATE TABLE blackroom (
    message character varying(255),
    username character varying(30)
);


ALTER TABLE public.blackroom OWNER TO postgres;

--
-- Name: redroom; Type: TABLE; Schema: public; Owner: postgres; Tablespace: 
--

CREATE TABLE redroom (
    message character varying(255),
    username character varying(30)
);


ALTER TABLE public.redroom OWNER TO postgres;

--
-- Name: users; Type: TABLE; Schema: public; Owner: postgres; Tablespace: 
--

CREATE TABLE users (
    id integer NOT NULL,
    username character varying(30),
    password character varying(30),
    redroomsub character varying(10),
    aquaroomsub character varying(10),
    blackroomsub character varying(10)
);


ALTER TABLE public.users OWNER TO postgres;

--
-- Name: users_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE users_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.users_id_seq OWNER TO postgres;

--
-- Name: users_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE users_id_seq OWNED BY users.id;


--
-- Name: id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY users ALTER COLUMN id SET DEFAULT nextval('users_id_seq'::regclass);


--
-- Data for Name: aquaroom; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY aquaroom (message, username) FROM stdin;
lazy in the aqua room.	lazy
First message	lazy
Second message	lazy
Third message	lazy
i have access to the aqua room	taka
taka in the aqua room	taka
discussing all things aqua related	taka
Test Aqua	taka
\.


--
-- Data for Name: blackroom; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY blackroom (message, username) FROM stdin;
I am the only user subscribed to the black room	taka
No one else is in the black room	taka
Why is this a chat room just for me?	taka
In the black room	taka
Test Black	taka
\.


--
-- Data for Name: redroom; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY redroom (message, username) FROM stdin;
Inside the red room.	tmasuda
I can only post in the red room.	tmasuda
First message.	tmasuda
Second message.	tmasuda
Third message.	tmasuda
lazy in the red room.	lazy
lazy also has access to the aqua room.	lazy
aqua room is the best.	lazy
I have access to the red room	taka
inside the red room	taka
Test Red	taka
\.


--
-- Data for Name: users; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY users (id, username, password, redroomsub, aquaroomsub, blackroomsub) FROM stdin;
39	taka	masuda	True	True	True
38	lazy	qwerty	True	True	False
37	tmasuda	matsutaka	True	False	False
\.


--
-- Name: users_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('users_id_seq', 41, true);


--
-- Name: public; Type: ACL; Schema: -; Owner: postgres
--

REVOKE ALL ON SCHEMA public FROM PUBLIC;
REVOKE ALL ON SCHEMA public FROM postgres;
GRANT ALL ON SCHEMA public TO postgres;
GRANT ALL ON SCHEMA public TO PUBLIC;


--
-- PostgreSQL database dump complete
--

