--
-- PostgreSQL database dump
--

-- Dumped from database version 17.2 (Debian 17.2-1.pgdg120+1)
-- Dumped by pg_dump version 17.2 (Debian 17.2-1.pgdg120+1)

SET statement_timeout = 0;
SET lock_timeout = 0;
SET idle_in_transaction_session_timeout = 0;
SET transaction_timeout = 0;
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
-- Name: collections; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.collections (
    collectionid integer NOT NULL,
    name character varying(255),
    creationdate timestamp without time zone DEFAULT CURRENT_TIMESTAMP,
    markfordelete integer DEFAULT 0
);


ALTER TABLE public.collections OWNER TO postgres;

--
-- Name: collections_collectionid_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.collections_collectionid_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER SEQUENCE public.collections_collectionid_seq OWNER TO postgres;

--
-- Name: collections_collectionid_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.collections_collectionid_seq OWNED BY public.collections.collectionid;


--
-- Name: collections_movie; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.collections_movie (
    collection_movie_id integer NOT NULL,
    movieid integer,
    collectionid integer,
    creationdate timestamp without time zone DEFAULT CURRENT_TIMESTAMP,
    markfordelete integer DEFAULT 0
);


ALTER TABLE public.collections_movie OWNER TO postgres;

--
-- Name: collections_movie_collection_movie_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.collections_movie_collection_movie_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER SEQUENCE public.collections_movie_collection_movie_id_seq OWNER TO postgres;

--
-- Name: collections_movie_collection_movie_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.collections_movie_collection_movie_id_seq OWNED BY public.collections_movie.collection_movie_id;


--
-- Name: genre_movie; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.genre_movie (
    genre_movie_id integer NOT NULL,
    movieid integer,
    genreid integer,
    creationdate timestamp without time zone DEFAULT CURRENT_TIMESTAMP,
    markfordelete integer DEFAULT 0
);


ALTER TABLE public.genre_movie OWNER TO postgres;

--
-- Name: genre_movie_genre_movie_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.genre_movie_genre_movie_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER SEQUENCE public.genre_movie_genre_movie_id_seq OWNER TO postgres;

--
-- Name: genre_movie_genre_movie_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.genre_movie_genre_movie_id_seq OWNED BY public.genre_movie.genre_movie_id;


--
-- Name: genres; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.genres (
    genreid integer NOT NULL,
    name character varying(255),
    creationdate timestamp without time zone DEFAULT CURRENT_TIMESTAMP,
    markfordelete integer DEFAULT 0
);


ALTER TABLE public.genres OWNER TO postgres;

--
-- Name: genres_genreid_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.genres_genreid_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER SEQUENCE public.genres_genreid_seq OWNER TO postgres;

--
-- Name: genres_genreid_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.genres_genreid_seq OWNED BY public.genres.genreid;


--
-- Name: language_movie; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.language_movie (
    language_movie_id integer NOT NULL,
    movieid integer,
    languageid integer,
    creationdate timestamp without time zone DEFAULT CURRENT_TIMESTAMP,
    markfordelete integer DEFAULT 0
);


ALTER TABLE public.language_movie OWNER TO postgres;

--
-- Name: language_movie_language_movie_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.language_movie_language_movie_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER SEQUENCE public.language_movie_language_movie_id_seq OWNER TO postgres;

--
-- Name: language_movie_language_movie_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.language_movie_language_movie_id_seq OWNED BY public.language_movie.language_movie_id;


--
-- Name: languages; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.languages (
    languageid integer NOT NULL,
    name character varying(255),
    creationdate timestamp without time zone DEFAULT CURRENT_TIMESTAMP,
    markfordelete integer DEFAULT 0
);


ALTER TABLE public.languages OWNER TO postgres;

--
-- Name: languages_languageid_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.languages_languageid_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER SEQUENCE public.languages_languageid_seq OWNER TO postgres;

--
-- Name: languages_languageid_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.languages_languageid_seq OWNED BY public.languages.languageid;


--
-- Name: links; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.links (
    linkid integer NOT NULL,
    movieid integer,
    name character varying(200),
    url text,
    creationdate timestamp without time zone DEFAULT CURRENT_TIMESTAMP,
    markfordelete integer DEFAULT 0
);


ALTER TABLE public.links OWNER TO postgres;

--
-- Name: links_linkid_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.links_linkid_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER SEQUENCE public.links_linkid_seq OWNER TO postgres;

--
-- Name: links_linkid_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.links_linkid_seq OWNED BY public.links.linkid;


--
-- Name: movie; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.movie (
    movieid integer NOT NULL,
    title character varying(500),
    keywords character varying(500),
    downloadname character varying(500),
    slug character varying(200),
    imageurl character varying(300),
    smalldescription character varying(500),
    duration character varying(300),
    releasedate character varying(200),
    bigdescription text,
    downloadcount integer DEFAULT 0,
    casts character varying(500),
    creationdate timestamp without time zone DEFAULT CURRENT_TIMESTAMP,
    markfordelete integer DEFAULT 0
);


ALTER TABLE public.movie OWNER TO postgres;

--
-- Name: movie_movieid_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.movie_movieid_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER SEQUENCE public.movie_movieid_seq OWNER TO postgres;

--
-- Name: movie_movieid_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.movie_movieid_seq OWNED BY public.movie.movieid;


--
-- Name: movierequest; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.movierequest (
    movierequstid integer NOT NULL,
    email character varying(200),
    message character varying(500),
    creationdate timestamp without time zone DEFAULT CURRENT_TIMESTAMP,
    markfordelete integer DEFAULT 0
);


ALTER TABLE public.movierequest OWNER TO postgres;

--
-- Name: movierequest_movierequstid_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.movierequest_movierequstid_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER SEQUENCE public.movierequest_movierequstid_seq OWNER TO postgres;

--
-- Name: movierequest_movierequstid_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.movierequest_movierequstid_seq OWNED BY public.movierequest.movierequstid;


--
-- Name: user; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public."user" (
    u_id integer,
    name character varying(255),
    bio text,
    age integer,
    password character varying(255),
    email character varying(255),
    role character varying(255)
);


ALTER TABLE public."user" OWNER TO postgres;

--
-- Name: year_movie; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.year_movie (
    year_movie_id integer NOT NULL,
    movieid integer,
    yearid integer,
    creationdate timestamp without time zone DEFAULT CURRENT_TIMESTAMP,
    markfordelete integer DEFAULT 0
);


ALTER TABLE public.year_movie OWNER TO postgres;

--
-- Name: year_movie_year_movie_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.year_movie_year_movie_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER SEQUENCE public.year_movie_year_movie_id_seq OWNER TO postgres;

--
-- Name: year_movie_year_movie_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.year_movie_year_movie_id_seq OWNED BY public.year_movie.year_movie_id;


--
-- Name: years; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.years (
    yearid integer NOT NULL,
    name character varying(255),
    creationdate timestamp without time zone DEFAULT CURRENT_TIMESTAMP,
    markfordelete integer DEFAULT 0
);


ALTER TABLE public.years OWNER TO postgres;

--
-- Name: years_yearid_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.years_yearid_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER SEQUENCE public.years_yearid_seq OWNER TO postgres;

--
-- Name: years_yearid_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.years_yearid_seq OWNED BY public.years.yearid;


--
-- Name: collections collectionid; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.collections ALTER COLUMN collectionid SET DEFAULT nextval('public.collections_collectionid_seq'::regclass);


--
-- Name: collections_movie collection_movie_id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.collections_movie ALTER COLUMN collection_movie_id SET DEFAULT nextval('public.collections_movie_collection_movie_id_seq'::regclass);


--
-- Name: genre_movie genre_movie_id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.genre_movie ALTER COLUMN genre_movie_id SET DEFAULT nextval('public.genre_movie_genre_movie_id_seq'::regclass);


--
-- Name: genres genreid; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.genres ALTER COLUMN genreid SET DEFAULT nextval('public.genres_genreid_seq'::regclass);


--
-- Name: language_movie language_movie_id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.language_movie ALTER COLUMN language_movie_id SET DEFAULT nextval('public.language_movie_language_movie_id_seq'::regclass);


--
-- Name: languages languageid; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.languages ALTER COLUMN languageid SET DEFAULT nextval('public.languages_languageid_seq'::regclass);


--
-- Name: links linkid; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.links ALTER COLUMN linkid SET DEFAULT nextval('public.links_linkid_seq'::regclass);


--
-- Name: movie movieid; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.movie ALTER COLUMN movieid SET DEFAULT nextval('public.movie_movieid_seq'::regclass);


--
-- Name: movierequest movierequstid; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.movierequest ALTER COLUMN movierequstid SET DEFAULT nextval('public.movierequest_movierequstid_seq'::regclass);


--
-- Name: year_movie year_movie_id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.year_movie ALTER COLUMN year_movie_id SET DEFAULT nextval('public.year_movie_year_movie_id_seq'::regclass);


--
-- Name: years yearid; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.years ALTER COLUMN yearid SET DEFAULT nextval('public.years_yearid_seq'::regclass);


--
-- Data for Name: collections; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.collections (collectionid, name, creationdate, markfordelete) FROM stdin;
1	Bollywood	2025-01-24 10:03:58.077714	0
2	Hollywood	2025-01-24 13:13:29.446443	0
3	South Indian	2025-01-26 07:58:12.523906	0
4	Punjabi	2025-01-26 07:58:21.051936	0
5	Korean 	2025-01-31 09:59:08.027141	0
6	Web Series 	2025-01-31 11:51:17.40608	0
\.


--
-- Data for Name: collections_movie; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.collections_movie (collection_movie_id, movieid, collectionid, creationdate, markfordelete) FROM stdin;
2	2	1	2025-01-24 13:24:11.619864	0
5	1	1	2025-01-25 06:31:24.5711	0
6	3	1	2025-01-25 06:37:15.113953	0
7	4	1	2025-01-25 06:50:46.050585	0
8	5	1	2025-01-25 07:08:04.299389	0
10	6	1	2025-01-25 07:38:16.380865	0
12	8	1	2025-01-25 08:16:09.372893	0
18	9	1	2025-01-26 07:36:48.989716	0
28	14	2	2025-01-26 08:48:58.961731	0
30	16	4	2025-01-26 09:04:04.410544	0
31	10	3	2025-01-26 09:04:25.160489	0
33	7	1	2025-01-26 09:05:03.94027	0
35	17	4	2025-01-26 09:05:39.189022	0
36	12	4	2025-01-26 09:06:06.427746	0
37	11	4	2025-01-26 09:07:05.720457	0
39	15	4	2025-01-26 09:08:09.446883	0
40	13	3	2025-01-26 09:08:47.115868	0
41	18	1	2025-01-26 09:10:39.272012	0
42	19	1	2025-01-26 09:16:10.585445	0
43	20	1	2025-01-26 09:24:14.883136	0
44	21	3	2025-01-26 09:32:18.490694	0
45	22	3	2025-01-26 09:37:51.990825	0
46	23	2	2025-01-26 09:41:56.881111	0
47	24	1	2025-01-26 09:44:38.836794	0
48	25	1	2025-01-26 09:48:07.006098	0
49	26	1	2025-01-26 09:56:01.812026	0
50	27	1	2025-01-26 09:59:08.133437	0
51	28	4	2025-01-26 10:16:34.447042	0
52	29	1	2025-01-26 10:20:19.788402	0
53	30	1	2025-01-26 10:25:01.828478	0
54	31	1	2025-01-26 10:29:25.366808	0
55	32	1	2025-01-26 10:32:40.79399	0
56	33	4	2025-01-26 10:39:32.613664	0
57	34	4	2025-01-26 10:43:18.655139	0
58	35	3	2025-01-26 10:47:57.770215	0
59	36	4	2025-01-26 10:53:39.129081	0
60	37	4	2025-01-26 10:58:56.267314	0
61	38	4	2025-01-26 11:02:12.346352	0
62	39	4	2025-01-26 11:05:10.041387	0
63	40	4	2025-01-26 11:09:53.170036	0
65	41	4	2025-01-28 10:09:54.020086	0
66	42	1	2025-01-28 10:19:22.125765	0
68	43	1	2025-01-28 10:21:34.555644	0
69	44	4	2025-01-28 10:25:25.108766	0
70	45	4	2025-01-28 10:31:08.635944	0
71	46	4	2025-01-28 10:34:44.46435	0
72	47	4	2025-01-28 10:39:20.032767	0
73	48	4	2025-01-28 10:43:36.490555	0
74	49	4	2025-01-28 10:49:53.75958	0
75	50	4	2025-01-28 10:49:53.923048	0
76	51	4	2025-01-28 10:57:41.18609	0
77	52	2	2025-01-28 11:22:21.469859	0
79	53	2	2025-01-28 11:28:24.606872	0
80	54	2	2025-01-28 11:33:52.336998	0
81	55	1	2025-01-28 11:38:15.398903	0
82	56	4	2025-01-31 07:46:53.355777	0
83	57	3	2025-01-31 07:54:52.404924	0
84	58	1	2025-01-31 08:02:46.710923	0
85	59	1	2025-01-31 08:07:29.902616	0
86	60	1	2025-01-31 08:14:42.089794	0
87	61	3	2025-01-31 08:21:33.83238	0
88	62	1	2025-01-31 08:28:17.930043	0
89	63	3	2025-01-31 08:36:26.232623	0
90	64	3	2025-01-31 08:41:29.841747	0
91	65	1	2025-01-31 08:47:11.172266	0
92	66	1	2025-01-31 09:32:12.375383	0
93	67	3	2025-01-31 09:36:41.131367	0
94	68	3	2025-01-31 09:40:35.527553	0
95	69	1	2025-01-31 09:46:49.020913	0
96	69	3	2025-01-31 09:46:49.024039	0
97	70	3	2025-01-31 09:52:42.417887	0
98	71	3	2025-01-31 09:56:32.580583	0
99	73	2	2025-01-31 10:08:31.879901	0
100	74	1	2025-01-31 10:12:09.30306	0
101	75	1	2025-01-31 10:20:05.059491	0
104	77	2	2025-01-31 12:10:54.5156	0
105	77	6	2025-01-31 12:10:54.517995	0
106	76	2	2025-01-31 12:11:32.684055	0
107	76	6	2025-01-31 12:11:32.686211	0
108	78	2	2025-01-31 12:16:31.132567	0
109	78	6	2025-01-31 12:16:31.135373	0
110	79	2	2025-01-31 12:26:38.937903	0
111	79	6	2025-01-31 12:26:38.940006	0
112	80	2	2025-01-31 12:33:09.90175	0
113	80	6	2025-01-31 12:33:09.905065	0
116	81	2	2025-01-31 12:38:13.34132	0
117	81	6	2025-01-31 12:38:13.342993	0
118	82	1	2025-02-02 08:54:59.993236	0
\.


--
-- Data for Name: genre_movie; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.genre_movie (genre_movie_id, movieid, genreid, creationdate, markfordelete) FROM stdin;
4	2	4	2025-01-24 13:24:11.630006	0
5	2	5	2025-01-24 13:24:11.635051	0
12	1	1	2025-01-25 06:31:24.576699	0
13	1	2	2025-01-25 06:31:24.57862	0
14	1	3	2025-01-25 06:31:24.580554	0
15	3	1	2025-01-25 06:37:15.120604	0
16	3	5	2025-01-25 06:37:15.123012	0
17	3	4	2025-01-25 06:37:15.125771	0
18	4	1	2025-01-25 06:50:46.059325	0
19	4	2	2025-01-25 06:50:46.062806	0
20	5	3	2025-01-25 07:08:04.304561	0
21	5	4	2025-01-25 07:08:04.306654	0
22	5	5	2025-01-25 07:08:04.308155	0
24	6	6	2025-01-25 07:38:16.386521	0
27	8	8	2025-01-25 08:16:09.380609	0
28	8	14	2025-01-25 08:16:09.384074	0
29	8	2	2025-01-25 08:16:09.387814	0
37	9	1	2025-01-26 07:36:48.996984	0
38	9	3	2025-01-26 07:36:48.999174	0
39	9	5	2025-01-26 07:36:49.000638	0
62	14	1	2025-01-26 08:48:58.967486	0
63	14	4	2025-01-26 08:48:58.969313	0
64	14	8	2025-01-26 08:48:58.970845	0
67	16	2	2025-01-26 09:04:04.416601	0
68	16	14	2025-01-26 09:04:04.418567	0
69	10	2	2025-01-26 09:04:25.165596	0
70	10	1	2025-01-26 09:04:25.167168	0
71	10	3	2025-01-26 09:04:25.168756	0
73	7	3	2025-01-26 09:05:03.950102	0
74	7	5	2025-01-26 09:05:03.95235	0
78	17	14	2025-01-26 09:05:39.195677	0
79	17	6	2025-01-26 09:05:39.197369	0
80	12	1	2025-01-26 09:06:06.433605	0
81	12	3	2025-01-26 09:06:06.435464	0
82	12	5	2025-01-26 09:06:06.437197	0
83	11	2	2025-01-26 09:07:05.725796	0
86	15	2	2025-01-26 09:08:09.451299	0
87	15	14	2025-01-26 09:08:09.45283	0
88	13	1	2025-01-26 09:08:47.121156	0
89	13	2	2025-01-26 09:08:47.12279	0
90	13	3	2025-01-26 09:08:47.124807	0
91	13	4	2025-01-26 09:08:47.126591	0
92	13	5	2025-01-26 09:08:47.12832	0
93	18	3	2025-01-26 09:10:39.276696	0
94	18	1	2025-01-26 09:10:39.27867	0
95	19	7	2025-01-26 09:16:10.594442	0
96	19	4	2025-01-26 09:16:10.596743	0
97	19	9	2025-01-26 09:16:10.598512	0
98	20	12	2025-01-26 09:24:14.890666	0
99	20	2	2025-01-26 09:24:14.893133	0
100	20	1	2025-01-26 09:24:14.894934	0
101	21	1	2025-01-26 09:32:18.497094	0
102	21	3	2025-01-26 09:32:18.499185	0
103	21	4	2025-01-26 09:32:18.500796	0
104	22	1	2025-01-26 09:37:51.997255	0
105	22	3	2025-01-26 09:37:51.99955	0
106	22	4	2025-01-26 09:37:52.001887	0
107	22	5	2025-01-26 09:37:52.003815	0
108	23	1	2025-01-26 09:41:56.88764	0
109	23	11	2025-01-26 09:41:56.890467	0
110	23	2	2025-01-26 09:41:56.892154	0
111	23	5	2025-01-26 09:41:56.894181	0
112	24	2	2025-01-26 09:44:38.845254	0
113	24	14	2025-01-26 09:44:38.848482	0
114	25	4	2025-01-26 09:48:07.012142	0
115	25	5	2025-01-26 09:48:07.01421	0
116	25	6	2025-01-26 09:48:07.016216	0
117	25	7	2025-01-26 09:48:07.01809	0
118	25	9	2025-01-26 09:48:07.020013	0
119	26	1	2025-01-26 09:56:01.818261	0
120	26	5	2025-01-26 09:56:01.820612	0
121	26	11	2025-01-26 09:56:01.822491	0
122	26	12	2025-01-26 09:56:01.824229	0
123	27	1	2025-01-26 09:59:08.141983	0
124	27	2	2025-01-26 09:59:08.144486	0
125	27	3	2025-01-26 09:59:08.146956	0
126	27	4	2025-01-26 09:59:08.14895	0
127	27	5	2025-01-26 09:59:08.150636	0
128	28	1	2025-01-26 10:16:34.457449	0
129	28	2	2025-01-26 10:16:34.460954	0
130	28	4	2025-01-26 10:16:34.46387	0
131	28	5	2025-01-26 10:16:34.46598	0
132	29	2	2025-01-26 10:20:19.795846	0
133	29	6	2025-01-26 10:20:19.798584	0
134	30	1	2025-01-26 10:25:01.835944	0
135	30	5	2025-01-26 10:25:01.838071	0
136	31	1	2025-01-26 10:29:25.372534	0
137	31	12	2025-01-26 10:29:25.374894	0
138	31	2	2025-01-26 10:29:25.376824	0
139	32	2	2025-01-26 10:32:40.800586	0
140	33	2	2025-01-26 10:39:32.620019	0
141	34	1	2025-01-26 10:43:18.660857	0
142	34	5	2025-01-26 10:43:18.664221	0
143	35	1	2025-01-26 10:47:57.775966	0
144	35	2	2025-01-26 10:47:57.777955	0
145	36	6	2025-01-26 10:53:39.135573	0
146	37	2	2025-01-26 10:58:56.275237	0
147	38	2	2025-01-26 11:02:12.353697	0
148	39	2	2025-01-26 11:05:10.046771	0
149	39	5	2025-01-26 11:05:10.049033	0
150	40	6	2025-01-26 11:09:53.178059	0
153	41	1	2025-01-28 10:09:54.029014	0
154	41	2	2025-01-28 10:09:54.030971	0
155	42	14	2025-01-28 10:19:22.133021	0
156	42	2	2025-01-28 10:19:22.135217	0
159	43	14	2025-01-28 10:21:34.564713	0
160	43	2	2025-01-28 10:21:34.566723	0
161	44	1	2025-01-28 10:25:25.114949	0
162	44	2	2025-01-28 10:25:25.117014	0
163	45	1	2025-01-28 10:31:08.643342	0
164	45	14	2025-01-28 10:31:08.646185	0
165	46	6	2025-01-28 10:34:44.471538	0
166	47	1	2025-01-28 10:39:20.038351	0
167	47	4	2025-01-28 10:39:20.040148	0
168	47	3	2025-01-28 10:39:20.04279	0
169	48	2	2025-01-28 10:43:36.496984	0
170	48	14	2025-01-28 10:43:36.499126	0
171	49	2	2025-01-28 10:49:53.766167	0
172	49	14	2025-01-28 10:49:53.76877	0
173	49	6	2025-01-28 10:49:53.770579	0
174	50	2	2025-01-28 10:49:53.927779	0
175	50	14	2025-01-28 10:49:53.929258	0
176	50	6	2025-01-28 10:49:53.931199	0
177	51	2	2025-01-28 10:57:41.192486	0
178	52	1	2025-01-28 11:22:21.477848	0
179	52	16	2025-01-28 11:22:21.48009	0
182	53	1	2025-01-28 11:28:24.613164	0
183	53	5	2025-01-28 11:28:24.61499	0
184	53	2	2025-01-28 11:28:24.616778	0
185	54	1	2025-01-28 11:33:52.347199	0
186	54	2	2025-01-28 11:33:52.349768	0
187	54	8	2025-01-28 11:33:52.352008	0
188	55	2	2025-01-28 11:38:15.405546	0
189	55	3	2025-01-28 11:38:15.408543	0
190	55	1	2025-01-28 11:38:15.41029	0
191	55	5	2025-01-28 11:38:15.411703	0
192	56	2	2025-01-31 07:46:53.364896	0
193	56	14	2025-01-31 07:46:53.367551	0
194	57	1	2025-01-31 07:54:52.411598	0
195	57	2	2025-01-31 07:54:52.413323	0
196	57	5	2025-01-31 07:54:52.415148	0
197	58	5	2025-01-31 08:02:46.717686	0
198	58	1	2025-01-31 08:02:46.71938	0
199	58	3	2025-01-31 08:02:46.721192	0
200	59	5	2025-01-31 08:07:29.910499	0
201	59	7	2025-01-31 08:07:29.912855	0
202	59	4	2025-01-31 08:07:29.914869	0
203	60	1	2025-01-31 08:14:42.095744	0
204	60	4	2025-01-31 08:14:42.097576	0
205	60	5	2025-01-31 08:14:42.099537	0
206	61	1	2025-01-31 08:21:33.838328	0
207	61	5	2025-01-31 08:21:33.840743	0
208	62	1	2025-01-31 08:28:17.934794	0
209	62	2	2025-01-31 08:28:17.936203	0
210	62	5	2025-01-31 08:28:17.937494	0
211	63	1	2025-01-31 08:36:26.240698	0
212	63	2	2025-01-31 08:36:26.243125	0
213	63	5	2025-01-31 08:36:26.245502	0
214	64	1	2025-01-31 08:41:29.849295	0
215	64	4	2025-01-31 08:41:29.853852	0
216	64	5	2025-01-31 08:41:29.855759	0
217	65	3	2025-01-31 08:47:11.180872	0
218	65	1	2025-01-31 08:47:11.183062	0
219	65	2	2025-01-31 08:47:11.185495	0
220	66	14	2025-01-31 09:32:12.384521	0
221	66	2	2025-01-31 09:32:12.388242	0
222	67	1	2025-01-31 09:36:41.137012	0
223	67	5	2025-01-31 09:36:41.139277	0
224	68	1	2025-01-31 09:40:35.536609	0
225	68	4	2025-01-31 09:40:35.538247	0
226	68	5	2025-01-31 09:40:35.539831	0
227	69	1	2025-01-31 09:46:49.030922	0
228	69	2	2025-01-31 09:46:49.032757	0
229	70	1	2025-01-31 09:52:42.426522	0
230	70	6	2025-01-31 09:52:42.430127	0
231	71	1	2025-01-31 09:56:32.591618	0
232	71	6	2025-01-31 09:56:32.594201	0
233	71	14	2025-01-31 09:56:32.596846	0
234	72	1	2025-01-31 10:02:56.758154	0
235	72	3	2025-01-31 10:02:56.761143	0
236	72	2	2025-01-31 10:02:56.762995	0
237	73	1	2025-01-31 10:08:31.886827	0
238	73	16	2025-01-31 10:08:31.889946	0
239	74	1	2025-01-31 10:12:09.310357	0
240	74	3	2025-01-31 10:12:09.312651	0
241	74	5	2025-01-31 10:12:09.314465	0
242	75	1	2025-01-31 10:20:05.066493	0
243	75	3	2025-01-31 10:20:05.068879	0
244	75	5	2025-01-31 10:20:05.071428	0
245	75	4	2025-01-31 10:20:05.073873	0
254	77	1	2025-01-31 12:10:54.527023	0
255	77	2	2025-01-31 12:10:54.529188	0
256	77	4	2025-01-31 12:10:54.531626	0
257	77	5	2025-01-31 12:10:54.533307	0
258	77	8	2025-01-31 12:10:54.53514	0
259	77	11	2025-01-31 12:10:54.537011	0
260	77	9	2025-01-31 12:10:54.538758	0
261	76	1	2025-01-31 12:11:32.693168	0
262	76	2	2025-01-31 12:11:32.695096	0
263	76	4	2025-01-31 12:11:32.696418	0
264	76	5	2025-01-31 12:11:32.69799	0
265	76	8	2025-01-31 12:11:32.699747	0
266	76	9	2025-01-31 12:11:32.701256	0
267	76	11	2025-01-31 12:11:32.702847	0
268	76	15	2025-01-31 12:11:32.704353	0
269	78	1	2025-01-31 12:16:31.143518	0
270	78	2	2025-01-31 12:16:31.145705	0
271	78	5	2025-01-31 12:16:31.147164	0
272	78	4	2025-01-31 12:16:31.148693	0
273	78	9	2025-01-31 12:16:31.150098	0
274	78	8	2025-01-31 12:16:31.151499	0
275	78	11	2025-01-31 12:16:31.152991	0
276	78	15	2025-01-31 12:16:31.155342	0
277	79	1	2025-01-31 12:26:38.948352	0
278	79	2	2025-01-31 12:26:38.950065	0
279	79	4	2025-01-31 12:26:38.951553	0
280	79	5	2025-01-31 12:26:38.953009	0
281	79	9	2025-01-31 12:26:38.954332	0
282	79	11	2025-01-31 12:26:38.955525	0
283	79	8	2025-01-31 12:26:38.957068	0
284	79	15	2025-01-31 12:26:38.958531	0
285	80	1	2025-01-31 12:33:09.914195	0
286	80	2	2025-01-31 12:33:09.916618	0
287	80	4	2025-01-31 12:33:09.918787	0
288	80	5	2025-01-31 12:33:09.920632	0
289	80	8	2025-01-31 12:33:09.922685	0
290	80	9	2025-01-31 12:33:09.924486	0
291	80	11	2025-01-31 12:33:09.92619	0
292	80	15	2025-01-31 12:33:09.927817	0
301	81	1	2025-01-31 12:38:13.351486	0
302	81	2	2025-01-31 12:38:13.353273	0
303	81	4	2025-01-31 12:38:13.355505	0
304	81	5	2025-01-31 12:38:13.358078	0
305	81	8	2025-01-31 12:38:13.361173	0
306	81	9	2025-01-31 12:38:13.363428	0
307	81	11	2025-01-31 12:38:13.366238	0
308	81	15	2025-01-31 12:38:13.368136	0
309	82	1	2025-02-02 08:55:00.002419	0
310	82	3	2025-02-02 08:55:00.005197	0
311	82	4	2025-02-02 08:55:00.00745	0
\.


--
-- Data for Name: genres; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.genres (genreid, name, creationdate, markfordelete) FROM stdin;
1	Action	2025-01-24 10:02:48.232284	0
2	Drama	2025-01-24 10:03:03.292071	0
3	Crime-Fiction	2025-01-24 10:03:30.937845	0
4	Suspense	2025-01-24 13:13:03.545323	0
5	Thriller	2025-01-24 13:13:17.165377	0
6	comedy	2025-01-25 07:12:30.395311	0
7	horror	2025-01-25 08:05:45.181441	0
8	Fantasy	2025-01-25 08:06:11.736925	0
9	Mystery	2025-01-25 08:06:43.502687	0
10	War	2025-01-25 08:06:56.674113	0
11	Sci Fiction	2025-01-25 08:07:14.71629	0
12	History	2025-01-25 08:07:44.860499	0
13	Rommance	2025-01-25 08:08:17.556267	1
14	Romance	2025-01-25 08:09:07.668873	0
15	family	2025-01-28 10:58:39.655986	0
16	anime	2025-01-28 10:58:48.11185	0
\.


--
-- Data for Name: language_movie; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.language_movie (language_movie_id, movieid, languageid, creationdate, markfordelete) FROM stdin;
2	2	1	2025-01-24 13:24:11.623562	0
5	1	1	2025-01-25 06:31:24.572933	0
6	3	1	2025-01-25 06:37:15.116226	0
7	4	1	2025-01-25 06:50:46.053837	0
8	5	1	2025-01-25 07:08:04.301003	0
10	6	1	2025-01-25 07:38:16.382787	0
12	8	1	2025-01-25 08:16:09.375611	0
17	9	1	2025-01-26 07:36:48.992137	0
27	14	2	2025-01-26 08:48:58.963755	0
29	16	3	2025-01-26 09:04:04.412738	0
30	10	1	2025-01-26 09:04:25.162525	0
32	7	1	2025-01-26 09:05:03.943041	0
34	17	3	2025-01-26 09:05:39.191422	0
35	12	3	2025-01-26 09:06:06.429779	0
36	11	3	2025-01-26 09:07:05.722096	0
38	15	3	2025-01-26 09:08:09.448382	0
39	13	2	2025-01-26 09:08:47.11762	0
40	19	1	2025-01-26 09:16:10.587682	0
41	20	1	2025-01-26 09:24:14.886017	0
42	21	1	2025-01-26 09:32:18.492958	0
43	22	1	2025-01-26 09:37:51.993132	0
44	23	2	2025-01-26 09:41:56.883483	0
45	24	1	2025-01-26 09:44:38.83962	0
46	25	1	2025-01-26 09:48:07.008165	0
47	26	1	2025-01-26 09:56:01.814162	0
48	27	1	2025-01-26 09:59:08.135707	0
49	28	3	2025-01-26 10:16:34.449246	0
50	28	1	2025-01-26 10:16:34.451679	0
51	29	1	2025-01-26 10:20:19.790718	0
52	30	1	2025-01-26 10:25:01.831036	0
53	31	1	2025-01-26 10:29:25.369035	0
54	32	1	2025-01-26 10:32:40.796345	0
55	33	3	2025-01-26 10:39:32.615938	0
56	34	3	2025-01-26 10:43:18.657215	0
57	35	1	2025-01-26 10:47:57.772087	0
58	36	3	2025-01-26 10:53:39.131315	0
59	37	3	2025-01-26 10:58:56.269882	0
60	38	3	2025-01-26 11:02:12.348924	0
61	39	3	2025-01-26 11:05:10.04319	0
62	40	3	2025-01-26 11:09:53.173784	0
64	41	3	2025-01-28 10:09:54.023729	0
65	42	1	2025-01-28 10:19:22.128152	0
67	43	1	2025-01-28 10:21:34.557097	0
68	44	3	2025-01-28 10:25:25.110833	0
69	45	3	2025-01-28 10:31:08.638045	0
70	46	3	2025-01-28 10:34:44.466523	0
71	47	3	2025-01-28 10:39:20.034757	0
72	48	3	2025-01-28 10:43:36.492773	0
73	49	3	2025-01-28 10:49:53.761862	0
74	50	3	2025-01-28 10:49:53.924781	0
75	51	3	2025-01-28 10:57:41.188627	0
76	52	2	2025-01-28 11:22:21.473097	0
78	53	2	2025-01-28 11:28:24.608781	0
79	54	2	2025-01-28 11:33:52.340356	0
80	55	1	2025-01-28 11:38:15.401306	0
81	56	3	2025-01-31 07:46:53.358561	0
82	57	2	2025-01-31 07:54:52.407449	0
83	58	1	2025-01-31 08:02:46.713238	0
84	59	1	2025-01-31 08:07:29.905161	0
85	60	1	2025-01-31 08:14:42.091903	0
86	61	2	2025-01-31 08:21:33.834391	0
87	62	1	2025-01-31 08:28:17.93144	0
88	63	2	2025-01-31 08:36:26.235913	0
89	64	2	2025-01-31 08:41:29.84383	0
90	65	1	2025-01-31 08:47:11.175311	0
91	66	1	2025-01-31 09:32:12.378064	0
92	67	2	2025-01-31 09:36:41.133466	0
93	68	1	2025-01-31 09:40:35.530524	0
94	68	2	2025-01-31 09:40:35.532627	0
95	69	1	2025-01-31 09:46:49.026122	0
96	70	2	2025-01-31 09:52:42.421908	0
97	71	2	2025-01-31 09:56:32.583455	0
98	73	2	2025-01-31 10:08:31.882347	0
99	74	1	2025-01-31 10:12:09.305484	0
100	75	1	2025-01-31 10:20:05.062153	0
103	77	2	2025-01-31 12:10:54.519871	0
104	77	5	2025-01-31 12:10:54.521964	0
105	76	2	2025-01-31 12:11:32.688	0
106	76	5	2025-01-31 12:11:32.68963	0
107	78	2	2025-01-31 12:16:31.137411	0
108	78	5	2025-01-31 12:16:31.139392	0
109	79	2	2025-01-31 12:26:38.941776	0
110	79	5	2025-01-31 12:26:38.943729	0
111	80	1	2025-01-31 12:33:09.907307	0
112	80	5	2025-01-31 12:33:09.909975	0
115	81	1	2025-01-31 12:38:13.344398	0
116	81	5	2025-01-31 12:38:13.346565	0
117	82	1	2025-02-02 08:54:59.996152	0
\.


--
-- Data for Name: languages; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.languages (languageid, name, creationdate, markfordelete) FROM stdin;
1	Hindi	2025-01-24 10:04:12.771625	0
2	Hindi-Dubbed	2025-01-24 13:13:55.18288	0
3	Punjabi	2025-01-26 07:59:08.997423	0
4	Korean 	2025-01-31 09:59:22.227785	0
5	English 	2025-01-31 11:50:59.376726	0
\.


--
-- Data for Name: links; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.links (linkid, movieid, name, url, creationdate, markfordelete) FROM stdin;
4	2	480 Quality (350Mb)	https://mega.nz/file/Jco3iBoC#R9ynFA2NBncIouGcYJoKqPvbRgM_wAYrtwl40rvroHc	2025-01-24 13:24:11.610543	0
5	2	720P Quality (750MB)	https://mega.nz/file/sBgE3S5Z#UwxLN68gTmKRfewcJvFdo5WN8ekOuU772y0PbmLOl5A	2025-01-24 13:24:11.6141	0
6	2	HD Quality (1.8GB)	https://mega.nz/file/IBpWCZBC#iE3q2uIiteB2wrMyQ4AchHHSavIeo7kQmOAsnzxiDWE	2025-01-24 13:24:11.616775	0
13	1	480p Quality (400MB)	https://mega.nz/file/lQZzAaRK#79dSUBADvGwQsijbnJMAjJtcS77ChQC2BGU1uy7Bv6k	2025-01-25 06:31:24.564818	0
14	1	720p Quality (999MB)	https://mega.nz/file/tVZn3BiK#X_dWgNgY5wcer-dNin7tK8qrctbDHb6qAHOBGhSBWlg	2025-01-25 06:31:24.567182	0
15	1	Full Hd (1.8GB)	https://mega.nz/file/VABHTD4J#rxuzDHu4JVQ7XpM6dG0VCqeMT4SzVjXNB-22LkGPOm4	2025-01-25 06:31:24.569042	0
16	3	480p Quality (374mb)	https://mega.nz/file/d8JR0DiD#vQCTpvF7rZsfquhXq8BDzYUJ8vs7kQh2LUCpIboOtzo	2025-01-25 06:37:15.107574	0
17	3	720p Quality (825mb)	https://mega.nz/file/4sxChQIZ#UnCenrfzbqWgMIhFS4NMY7waByDZ4cXHacAP56bWwIU	2025-01-25 06:37:15.109891	0
18	3	1080p Quality (1.32gb)	https://mega.nz/file/h85WxQZa#yRJpGFqchAXEPmx4L3gD53ZBtasYQGyatEeaWz5Drdo	2025-01-25 06:37:15.111952	0
19	4	480p Quality (550mb)	https://mega.nz/file/xhYwmLYL#5Og_sFbOYi1lLhas5BQjnsY6KHDik3_bJPqzNB5WlFs	2025-01-25 06:50:46.04086	0
20	4	720p Quality (1gb)	https://mega.nz/file/11JVnC7K#H7GzgrejpcjPxqvCP8njhVPat28klQwZI43BU2ba2FA	2025-01-25 06:50:46.044611	0
21	4	1080p Quality (2gb)	https://mega.nz/file/EpASFZ4C#4qH8XowJZqQuRyKZ6_C5yCzTKsCdIB2gUuFBRcTMk6Y	2025-01-25 06:50:46.047465	0
22	5	480p Quality (325mb)	https://mega.nz/file/clgWHCLB#z6slxs_Debb0vINfJZKMCrxx2a09jtRmfX_dHuJSbAM	2025-01-25 07:08:04.293507	0
23	5	720p Quality (720mb)	https://mega.nz/file/clgWHCLB#z6slxs_Debb0vINfJZKMCrxx2a09jtRmfX_dHuJSbAM	2025-01-25 07:08:04.295859	0
24	5	1080p Quality (1.3gb)	https://mega.nz/file/tk5ACDoL#A2B0InKbimlUFM_SK5xxAFBOGV2SHDfC1StTVVVAevw	2025-01-25 07:08:04.297601	0
28	6	480p Quality (400mb)	https://mega.nz/file/QkwxHaLY#-RA0QayExyw-cuiUQDgJFzegW1F2M_srjOF6Mf7sZSo	2025-01-25 07:38:16.37439	0
29	6	720p Quality (1gb)	https://mega.nz/file/swQnVbjQ#sK8UwdWnAuRG1EOfdpbEGGnlS71VutKbrGEVpdOqCA0	2025-01-25 07:38:16.376629	0
30	6	1080p Quality (1.8gb)	https://mega.nz/file/l5ZTAKwS#q3XrxlCIcVujq06LyI9Txr7hdtatYytKR7tDfMNrKWQ	2025-01-25 07:38:16.378342	0
33	8	480p Quality (374mb)	https://mega.nz/file/IgRhkQTB#3TYqv7htDP88rocCionGQxEMx90f7vWoW3mrEj-mmVI	2025-01-25 08:16:09.362456	0
34	8	720p Quality (788mb)	https://mega.nz/file/c85VlQ7b#HBtjuZqftCb61DTyJTzaW_HwjE0Z6hwb_iARpeepBAk	2025-01-25 08:16:09.365376	0
35	8	1080p Quality (1.4gb)	https://mega.nz/file/UlBA1CTS#_Im9aJkALrcxZbAmtIUIijCCum5LZYOB5tYdtFA7Ix8	2025-01-25 08:16:09.369313	0
47	9	480p Quality (374mb)	https://mega.nz/file/loZD0SaA#BUJJYl9OlNkpjMbAlWhnZTsDOIkI-WfaJ7srwo8nWgI	2025-01-26 07:36:48.980902	0
48	9	720p Quality (880mb)	https://mega.nz/file/8pBWASDI#DSVqRSUir6AEw7nNhz4o4dvAzxX_BXmDR7jbdu77u1M	2025-01-26 07:36:48.984956	0
49	9	1080p Quality (1.4gb)	https://mega.nz/file/VxhXGZqJ#C__YILQv9VoDeInvl4dTdVb9g5Ngk3rcwb93hRXfhAY	2025-01-26 07:36:48.987059	0
67	14	480p Quality (550mb)	https://mega.nz/file/qcVHQQDJ#KRc0_2Fz5_wvmsEw77SC9P5MvfAAPyxFJeVRZjpNzMQ	2025-01-26 08:48:58.955784	0
68	14	720p Quality (8000mb)	https://mega.nz/file/XQ1mmKgJ#KiOBTDBoOr4Pqwz2F8AUIXj7mr6v-ES8aZeQojITWXw	2025-01-26 08:48:58.957918	0
69	14	1080p Quality (2.1gb)	https://mega.nz/file/OB8VEB5Y#lkHxTYfQFUJGBvniNi1wf2p8wHb8izm2h45esD0UiDc	2025-01-26 08:48:58.960136	0
71	16	720p Quality (1.2gb)	https://shrs.link/8d8nfV	2025-01-26 09:04:04.40867	0
72	10	720p Quality (8000mb)	https://mega.nz/file/XIkBVBID#nUWn9ofLbqqmh3X4x7LmpdHJ8HyteBGYt2QJW9_bjkI	2025-01-26 09:04:25.15866	0
76	7	480p Quality (400mb)	https://mega.nz/file/U9pjxBRC#mXSnHeCUorpNJvHRFMjZBarZXZ2rmIvElZrBoZACk6k	2025-01-26 09:05:03.934932	0
77	7	720p Quality (1gb)	https://mega.nz/file/59QiQZjY#XyI5tI9R7XyBzALT6Ik2Gln-RlH1c2IAhEozOcdMT54	2025-01-26 09:05:03.937011	0
79	17	480p Quality (550mb)	https://shrs.link/EK0HUb	2025-01-26 09:05:39.186577	0
80	12	720p Quality (8000mb)	https://mega.nz/file/bAMQ3CYa#KiOkGSswNJ_JrVCRVVLVOkoKep356p6EwA5LAfzoEv0	2025-01-26 09:06:06.424084	0
81	11	480p Quality (400mb)	https://mega.nz/file/Hc00XBCQ#FzzGL4J-9OKjdX4TPZMPRe_EOQANn-2QfJxT69TaZgc	2025-01-26 09:07:05.715725	0
82	11	720p Quality (1gb)	https://mega.nz/file/XRFhGaqK#8yDvIKN3tICW6XKddJIeaQgykG97u4z-IizPE0Hw5JE	2025-01-26 09:07:05.717339	0
83	11	1080p Quality (2.14gb)	https://mega.nz/file/WAdkEJqD#EbJToNOKWy1QSPEDAjNImu-rlGWZxHYgxdbBXG_-uLQ	2025-01-26 09:07:05.718656	0
85	15	720p Quality (1.2gb)	https://mega.nz/file/CY1WTYIB#I2Qmt0EphepqmYDulLHhSnoqCdEQWPU0MANeQCnrroQ	2025-01-26 09:08:09.444874	0
86	13	720p Quality (1.2mb)	https://mega.nz/file/HddjTICT#Gs6QkLKQTwTddgKSWJPMihuL2tHiPFjdRuTbPOqNxso	2025-01-26 09:08:47.114076	0
87	18	480p Quality (1.2gb)	https://shrs.link/V2oO4z	2025-01-26 09:10:39.045503	0
88	18	720p Quality (3.2gb)	https://shrs.link/mkUO8D	2025-01-26 09:10:39.269965	0
89	19	1080p Quality (1.4gb)	https://shrs.link/AMrcNL	2025-01-26 09:16:10.582894	0
90	20	480p Quality (400mb)	https://shrs.link/0y17An	2025-01-26 09:24:14.349939	0
91	20	720p Quality (800mb)	https://shrs.link/BKxKT7	2025-01-26 09:24:14.624717	0
92	20	1080p Quality (1.8gb)	https://shrs.link/6wuZ4y	2025-01-26 09:24:14.880742	0
93	21	1080p (2.2gb)	https://shrs.link/0a31DR	2025-01-26 09:32:18.172866	0
94	21	720p Quality (1.2gb)	https://shrs.link/3MFMs3	2025-01-26 09:32:18.488308	0
95	22	480p Quality (550mb)	https://shrs.link/IteRGR	2025-01-26 09:37:51.447908	0
96	22	720p Quality (1.5gb)	https://shrs.link/Y8KBAP	2025-01-26 09:37:51.697718	0
97	22	1080p (3.2gb)	https://shrs.link/59lKpM	2025-01-26 09:37:51.988468	0
98	23	1080p (1.2gb)	https://shrs.link/004VhZ	2025-01-26 09:41:56.877964	0
99	24	720p Quality (1.2gb)	https://shrs.link/JYJ8tx	2025-01-26 09:44:38.833471	0
100	25	720p Quality (1.2gb)	https://shrs.link/hZNe9z	2025-01-26 09:48:07.003804	0
101	26	1080p (2.2gb)	https://shrs.link/l5anC8	2025-01-26 09:56:01.809597	0
102	27	720p Quality (1.2gb)	https://shrs.link/NSE8i3	2025-01-26 09:59:08.130638	0
103	28	480p Quality (400mb)	https://shrs.link/XX80Va	2025-01-26 10:16:33.980778	0
104	28	720p Quality (800mb)	https://shrs.link/BFrP65	2025-01-26 10:16:34.218265	0
105	28	1080p (1.8gb)	https://shrs.link/udhSLQ	2025-01-26 10:16:34.443785	0
106	29	480p Quality (374mb)	https://shrs.link/OtbydB	2025-01-26 10:20:18.951885	0
107	29	1080p (1.2gb)	https://shrs.link/OWIL1R	2025-01-26 10:20:19.785989	0
108	30	480p Quality (400mb)	https://shrs.link/on9JNo	2025-01-26 10:25:01.310307	0
109	30	720p Quality (1.2gb)	https://shrs.link/O5TW6g	2025-01-26 10:25:01.563594	0
110	30	1080p (1.8gb)	https://shrs.link/epaQzp	2025-01-26 10:25:01.825853	0
111	31	480p Quality (400mb)	https://shrs.link/euXIG6	2025-01-26 10:29:24.855399	0
112	31	720p Quality (1gb)	https://shrs.link/vBx6dx	2025-01-26 10:29:25.116216	0
113	31	1080p (2gb)	https://shrs.link/s1Iue7	2025-01-26 10:29:25.364816	0
114	32	480p Quality (400mb)	https://shrs.link/dRamet	2025-01-26 10:32:40.540197	0
115	32	720p Quality (1.2gb)	https://shrs.link/izEsf6	2025-01-26 10:32:40.79162	0
116	33	720p Quality (700mb)	https://shrs.link/X3wPMp	2025-01-26 10:39:31.485309	0
117	33	1080p (1.2gb)	https://shrs.link/PBVPod	2025-01-26 10:39:32.359646	0
118	33	480p Quality (374mb)	https://shrs.link/Vx9wm2	2025-01-26 10:39:32.610937	0
119	34	720p Quality (800mb)	https://shrs.link/ocuHmt	2025-01-26 10:43:18.105096	0
120	34	480p Quality (374mb)	https://shrs.link/wEGAXM	2025-01-26 10:43:18.365982	0
121	34	1080p (1.5gb)	https://shrs.link/GMOdGx	2025-01-26 10:43:18.652688	0
122	35	480p Quality (400mb)	https://shrs.link/wx78Tq	2025-01-26 10:47:57.211612	0
123	35	720p Quality (1.2gb)	https://shrs.link/n49NWp	2025-01-26 10:47:57.501153	0
124	35	1080p (1.8gb)	https://shrs.link/Aw01rW	2025-01-26 10:47:57.768228	0
125	36	1080p (1.2gb)	https://shrs.link/nv5eL1	2025-01-26 10:53:38.626084	0
126	36	480p Quality (400mb)	https://shrs.link/09UiZQ	2025-01-26 10:53:38.881907	0
127	36	720p Quality (800mb)	https://shrs.link/Vvr1Cd	2025-01-26 10:53:39.126817	0
128	37	480p Quality (374mb)	https://shrs.link/oEhpf5	2025-01-26 10:58:55.779411	0
129	37	1080p (1.2gb)	https://shrs.link/9CrJmC	2025-01-26 10:58:56.026154	0
130	37	720p Quality (800mb)	https://shrs.link/b6mmuJ	2025-01-26 10:58:56.264395	0
131	38	720p Quality (800mb)	https://shrs.link/bRyKXM	2025-01-26 11:02:11.784233	0
132	38	1080p (1.2gb)	https://shrs.link/PUHJPr	2025-01-26 11:02:12.097905	0
133	38	480p Quality (400mb)	https://shrs.link/QJV2lB	2025-01-26 11:02:12.34385	0
134	39	480p Quality (374mb)	https://shrs.link/1oYmLS	2025-01-26 11:05:09.55297	0
135	39	1080p (1.6gb)	https://shrs.link/jpgouo	2025-01-26 11:05:09.78809	0
136	39	720p Quality (800mb)	https://shrs.link/2UtP0Q	2025-01-26 11:05:10.039078	0
137	40	1080p (1.2gb)	https://shrs.link/d0rCs8	2025-01-26 11:09:52.631132	0
138	40	480p Quality (400mb)	https://shrs.link/ZJG30x	2025-01-26 11:09:52.927132	0
139	40	720p Quality (800mb)	https://shrs.link/jxhfk3	2025-01-26 11:09:53.167843	0
141	41	480p Quality (400mb)	https://www.mediafire.com/file/d47kjreczhjtjxh/Sector_17_2024__HDTC_Punjabi_480p_450MB.mkv/file	2025-01-28 10:09:54.007118	0
142	41	720p Quality (1.2gb)	https://www.mediafire.com/file/bz0cysz1br9yix3/Sector_17_2024__HDTC_Punjabi_720p_1GB.mkv/file	2025-01-28 10:09:54.0146	0
143	41	1080p (2.2gb)	https://www.mediafire.com/file/bz0cysz1br9yix3/Sector_17_2024__HDTC_Punjabi_720p_1GB.mkv/file	2025-01-28 10:09:54.016929	0
144	42	480p Quality (400mb)	https://shrs.link/ICcoaP	2025-01-28 10:19:21.530765	0
145	42	720p Quality (1.2gb)	https://shrs.link/xg3q5j	2025-01-28 10:19:21.86503	0
146	42	1080p (2gb)	https://shrs.link/M97XPj	2025-01-28 10:19:22.123626	0
150	43	480p Quality (400mb)	https://shrs.link/ICcoaP	2025-01-28 10:21:34.550204	0
151	43	720p Quality (1.2gb)	https://shrs.link/xg3q5j	2025-01-28 10:21:34.55271	0
152	43	1080p (2gb)	https://shrs.link/M97XPj	2025-01-28 10:21:34.554154	0
153	44	480p Quality (400mb)	https://shrs.link/mwB6aO	2025-01-28 10:25:24.572053	0
154	44	1080p (2.2gb)	https://shrs.link/UzuDVY	2025-01-28 10:25:24.84815	0
155	44	720p Quality (800mb)	https://shrs.link/hholNW	2025-01-28 10:25:25.106667	0
156	45	480p Quality (400mb)	https://shrs.link/dIJ3N7	2025-01-28 10:31:07.943	0
157	45	720p Quality (700mb)	https://shrs.link/XRtjUh	2025-01-28 10:31:08.355229	0
158	45	1080p (1.2gb)	https://shrs.link/QFQdlN	2025-01-28 10:31:08.633543	0
159	46	480p Quality (400mb)	https://shrs.link/v2AaOy	2025-01-28 10:34:44.230064	0
160	46	720p Quality (800mb)	https://shrs.link/ZenCEW	2025-01-28 10:34:44.461824	0
161	47	480p Quality (400mb)	https://shrs.link/vZzg7h	2025-01-28 10:39:19.525841	0
162	47	720p Quality (800mb)	https://shrs.link/Y2XeFX	2025-01-28 10:39:19.765948	0
163	47	1080p (1.8gb)	https://shrs.link/NmHJU8	2025-01-28 10:39:20.030498	0
164	48	720p Quality (800mb)	https://shrs.link/zioMyf	2025-01-28 10:43:35.954486	0
165	48	1080p (1.2gb)	https://shrs.link/TPDpXu	2025-01-28 10:43:36.199783	0
166	48	480p Quality (400mb)	https://shrs.link/9V71JS	2025-01-28 10:43:36.48826	0
167	49	480p Quality (400mb)	https://shrs.link/9eBQwZ	2025-01-28 10:49:52.833995	0
168	50	480p Quality (400mb)	https://shrs.link/9eBQwZ	2025-01-28 10:49:53.004495	0
169	49	720p Quality (800mb)	https://shrs.link/TNK7Ve	2025-01-28 10:49:53.452087	0
170	50	720p Quality (800mb)	https://shrs.link/TNK7Ve	2025-01-28 10:49:53.606121	0
171	49	1080p (1.8gb)	https://shrs.link/R3Yftx	2025-01-28 10:49:53.757542	0
172	50	1080p (1.8gb)	https://shrs.link/R3Yftx	2025-01-28 10:49:53.921407	0
173	51	480p Quality (400mb)	https://shrs.link/v6O5JR	2025-01-28 10:57:40.622165	0
174	51	720p Quality (800mb)	https://shrs.link/FSvbgg	2025-01-28 10:57:40.912554	0
175	51	1080p (1.5gb)	https://shrs.link/Zxr74X	2025-01-28 10:57:41.184224	0
176	52	480p Quailty (400mb)	https://shrs.link/xfpSfh	2025-01-28 11:22:19.845045	0
177	52	720p Quality (700mb)	https://shrs.link/GmXrYD	2025-01-28 11:22:20.386124	0
178	52	1080p quality (1.6gb)	https://shrs.link/FGI9bb	2025-01-28 11:22:21.467398	0
182	53	1080p quality (2.4gb)	https://mega.nz/file/j74TTAhb#2NqSFs-rmr1-LyZfbHcvpI6Iq6miFWiGITh2TfPUEQ0	2025-01-28 11:28:24.604492	0
183	54	1080p quality (1.4gb)	https://shrs.link/Mwf8qM	2025-01-28 11:33:52.223279	0
184	54		invalid fields	2025-01-28 11:33:52.333453	0
185	55	480p Quailty (400mb)	https://shrs.link/4AsCYU	2025-01-28 11:38:15.118816	0
186	55	720p Quailty (1gb)	https://shrs.link/2dD6St	2025-01-28 11:38:15.396576	0
187	56	480p Quailty (400mb)	https://shrs.link/9eBQwZ	2025-01-31 07:46:52.942143	0
188	56	720p Quality (900mb)	https://shrs.link/TNK7Ve	2025-01-31 07:46:53.158597	0
189	56	1080p quality (1.8gb)	https://shrs.link/R3Yftx	2025-01-31 07:46:53.353141	0
190	57	480p Quailty (400mb)	https://shrs.link/qDTns4	2025-01-31 07:54:51.90008	0
191	57	720p Quality (1.5gb)	https://shrs.link/09ceyh	2025-01-31 07:54:52.153522	0
192	57	1080p quality (2.9gb)	https://shrs.link/P82yta	2025-01-31 07:54:52.40267	0
193	58	480p Quailty (400mb)	https://shrs.link/32ibdU	2025-01-31 08:02:46.174706	0
194	58	720 Quality (1.1gb)	https://shrs.link/Bt6KA8	2025-01-31 08:02:46.451726	0
195	58	1080p quality (2.4gb)	https://shrs.link/y2aPxo	2025-01-31 08:02:46.70863	0
196	59	480p Quailty (400mb)	https://shrs.link/HgpWuB	2025-01-31 08:07:29.256302	0
197	59	720 quality (1.1gb)	https://shrs.link/CXv6Ja	2025-01-31 08:07:29.598991	0
198	59	1080p quality (2.4gb)	https://shrs.link/t9Nt18	2025-01-31 08:07:29.898914	0
199	60	480p Quailty (400mb)	https://shrs.link/LODPuy	2025-01-31 08:14:41.24317	0
200	60	720p Quality(1.1gb)	https://shrs.link/GdJqDo	2025-01-31 08:14:41.808495	0
201	60	1080p quality (1.9gb)	https://shrs.link/b1gUVR	2025-01-31 08:14:42.087347	0
202	61	480p Quailty (600mb)	https://shrs.link/jr08MQ	2025-01-31 08:21:33.260247	0
203	61	720p Quality (1.5gb)	https://shrs.link/1TvfMJ	2025-01-31 08:21:33.531904	0
204	61	1080p quality (3.4gb)	https://shrs.link/VEuQaP	2025-01-31 08:21:33.829858	0
205	62	480p Quailty (400mb)	https://shrs.link/qZTQtx	2025-01-31 08:28:17.389693	0
206	62	720p Quality (1.2gb)	https://shrs.link/5qADrf	2025-01-31 08:28:17.645456	0
207	62	1080p quality (2.4gb)	https://shrs.link/rVEHcr	2025-01-31 08:28:17.927955	0
208	63	480p Quailty (400mb)	https://shrs.link/uD1vY3	2025-01-31 08:36:25.588996	0
209	63	720p Quality (1.3gb)	https://shrs.link/H85eqQ	2025-01-31 08:36:25.975962	0
210	63	1080p quality (2.8gb)	https://shrs.link/9Xyw0V	2025-01-31 08:36:26.228981	0
211	64	480p Quailty (400mb)	https://shrs.link/1fvtNT	2025-01-31 08:41:29.226612	0
212	64	720p Quality (1.3gb)	https://shrs.link/diPKny	2025-01-31 08:41:29.584362	0
213	64	1080p quality (2.9gb)	https://shrs.link/ykTnLR	2025-01-31 08:41:29.839321	0
214	65	480p Quailty (400mb)	https://shrs.link/HNf9u1	2025-01-31 08:47:10.618194	0
215	65	720p Quality (900mb)	https://shrs.link/xSRehP	2025-01-31 08:47:10.890258	0
216	65	1080p quality (1.8gb)	https://shrs.link/P50F5t	2025-01-31 08:47:11.169881	0
217	66	480p Quailty (400mb)	https://shrs.link/7Nchgz	2025-01-31 09:32:11.769954	0
218	66	720p Quality (900mb)	https://shrs.link/ltAtNz	2025-01-31 09:32:12.078951	0
219	66	1080p quality (1.8gb)	https://shrs.link/ywZXxd	2025-01-31 09:32:12.372692	0
220	67	480p Quailty (400mb)	https://shrs.link/TFg93O	2025-01-31 09:36:40.609826	0
221	67	720p Quality (1.1gb)	https://shrs.link/LCfucw	2025-01-31 09:36:40.866259	0
222	67	1080p quality (2.8gb)	https://shrs.link/qr4Uif	2025-01-31 09:36:41.129643	0
223	68	480p Quailty (400mb)	https://shrs.link/akO0WN	2025-01-31 09:40:34.979849	0
224	68	720p Quality (1.4gb)	https://shrs.link/VNAlFL	2025-01-31 09:40:35.260805	0
225	68	1080p quality (2.9gb)	https://shrs.link/gfkCZq	2025-01-31 09:40:35.524404	0
226	69	480p Quailty (400mb)	https://shrs.link/HOyyms	2025-01-31 09:46:48.755671	0
227	69	720p Quality (900mb)	https://shrs.link/oq1Uvi	2025-01-31 09:46:49.017716	0
228	70	480p Quailty (400mb)	https://shrs.link/6Pdd8i	2025-01-31 09:52:41.87721	0
229	70	720p Quality (1.1gb)	https://shrs.link/ewqd6I	2025-01-31 09:52:42.160785	0
230	70	1080p quality (2.4gb)	https://shrs.link/FsYP1p	2025-01-31 09:52:42.415518	0
231	71	480p Quailty (400mb)	https://shrs.link/GokowM	2025-01-31 09:56:31.974606	0
232	71	720p Quality (1gb)	https://shrs.link/sir6rj	2025-01-31 09:56:32.256523	0
233	71	1080p quality (2.3gb)	https://shrs.link/F9vtOw	2025-01-31 09:56:32.577352	0
234	72	480p Quailty (400mb)	https://shrs.link/GHi3Y3	2025-01-31 10:02:56.183932	0
235	72	720p Quality (1gb)	https://shrs.link/dkqEJK	2025-01-31 10:02:56.484341	0
236	72	1080p quality (1.8gb)	https://shrs.link/72XF7A	2025-01-31 10:02:56.75125	0
237	73	480p Quailty (400mb)	https://shrs.link/9sWx9v	2025-01-31 10:08:31.373779	0
238	73	720p Quality (1.1gb)	https://shrs.link/xotuui	2025-01-31 10:08:31.609569	0
239	73	1080p quality (2.4gb)	https://shrs.link/uvKhiQ	2025-01-31 10:08:31.877777	0
240	74	480p Quailty (400mb)	https://shrs.link/alea58	2025-01-31 10:12:07.678969	0
241	74	720p Quality (1.1gb)	https://shrs.link/wjIleq	2025-01-31 10:12:08.783077	0
242	74	1080p quality (2.4gb)	https://shrs.link/tJsvUd	2025-01-31 10:12:09.300641	0
243	75	480p Quailty (400mb)	https://shrs.link/zVBfBX	2025-01-31 10:20:04.527515	0
244	75	720p Quality (1.3gb)	https://shrs.link/WAbXSV	2025-01-31 10:20:04.797295	0
245	75	1080p quality (6.47gb)	https://shrs.link/bLmJlA	2025-01-31 10:20:05.057071	0
254	77	Episode (1) 720p Quailty (300mb)	https://shrs.link/UhwPrO	2025-01-31 12:10:52.257059	0
255	77	Episode (2) 720p Quailty (300mb)	https://shrs.link/nQGx11	2025-01-31 12:10:52.562472	0
256	77	Episode (3) 720p Quailty (300mb)	https://shrs.link/dMhMEn	2025-01-31 12:10:52.823855	0
257	77	Episode (4) 720p Quailty (300mb)	https://shrs.link/JHCJQY	2025-01-31 12:10:53.11014	0
258	77	Episode (5) 720p Quailty (300mb)	https://shrs.link/rnOpBq	2025-01-31 12:10:53.666967	0
259	77	Episode (6) 720p Quailty (300mb)	https://shrs.link/rPP2Jw	2025-01-31 12:10:53.949769	0
260	77	Episode (7) 720p Quailty (300mb)	https://shrs.link/tmhDgu	2025-01-31 12:10:54.245572	0
261	77	Episode (8) 720p Quailty (300mb)	https://shrs.link/lUBAhH	2025-01-31 12:10:54.513531	0
262	76	Episode [1] 480p Quailty (200mb) 	https://shrs.link/Etzfjr	2025-01-31 12:11:32.672522	0
263	76	Episode [2] 480p Quailty (200mb) 	https://shrs.link/ZOWfIQ	2025-01-31 12:11:32.67439	0
264	76	Episode [3] 480p Quailty (200mb) 	https://shrs.link/j38ZYJ	2025-01-31 12:11:32.675903	0
265	76	Episode [4] 480p Quailty (200mb) 	https://shrs.link/Zdo7U5	2025-01-31 12:11:32.677294	0
266	76	Episode [5] 480p Quailty (200mb) 	https://shrs.link/iakBQU	2025-01-31 12:11:32.678519	0
267	76	Episode [6] 480p Quailty (200mb) 	https://shrs.link/HkBE3V	2025-01-31 12:11:32.679737	0
268	76	Episode [7] 480p Quailty (200mb) 	https://shrs.link/um1fuR	2025-01-31 12:11:32.681241	0
269	76	Episode [8] 480p Quailty (200mb) 	https://shrs.link/NsyUUl	2025-01-31 12:11:32.682364	0
270	78	Episode (1) 1080p quality (1gb)	https://shrs.link/IunS8c	2025-01-31 12:16:28.926823	0
271	78	Episode (2) 1080p quality (1gb)	https://shrs.link/nI6OZp	2025-01-31 12:16:29.22779	0
272	78	Episode (3) 1080p quality (1gb)	https://shrs.link/3KaPvh	2025-01-31 12:16:29.523581	0
273	78	Episode (4) 1080p quality (1gb)	https://shrs.link/fUr1hs	2025-01-31 12:16:29.833699	0
274	78	Episode (5) 1080p quality (1gb)	https://shrs.link/SNeCru	2025-01-31 12:16:30.134184	0
275	78	Episode (6) 1080p quality (1gb)	https://shrs.link/tFeTLp	2025-01-31 12:16:30.506349	0
276	78	Episode (7) 1080p quality (1gb)	https://shrs.link/vypKlw	2025-01-31 12:16:30.820745	0
277	78	Episode (8) 1080p quality (1gb)	https://shrs.link/SBuRhd	2025-01-31 12:16:31.129056	0
278	79	Episode (1) 480p Quailty (200mb)	https://shrs.link/JLwmmV	2025-01-31 12:26:36.638583	0
279	79	Episode (2) 480p Quailty (200mb)	https://shrs.link/qwfHVU	2025-01-31 12:26:36.915848	0
280	79	Episode (3) 480p Quailty (200mb)	https://shrs.link/VFavMh	2025-01-31 12:26:37.216011	0
281	79	Episode (4) 480p Quailty (200mb)	https://shrs.link/AjdimU	2025-01-31 12:26:37.540843	0
282	79	Episode (5) 480p Quailty (200mb)	https://shrs.link/lU7Y3z	2025-01-31 12:26:37.805504	0
283	79	Episode (6) 480p Quailty (200mb)	https://shrs.link/LLOzg2	2025-01-31 12:26:38.070329	0
284	79	Episode (7) 480p Quailty (200mb)	https://shrs.link/nOWQK9	2025-01-31 12:26:38.355868	0
285	79	Episode (8) 480p Quailty (200mb)	https://shrs.link/kZUuSN	2025-01-31 12:26:38.648104	0
286	79	Episode (9) 480p Quailty (200mb)	https://shrs.link/JOG1MG	2025-01-31 12:26:38.935996	0
287	80	Episode(1) 720p Quailty (400mb)	https://shrs.link/w6lO8z	2025-01-31 12:33:06.306074	0
289	80	Episode(2) 720p Quailty (400mb)	https://shrs.link/topXA3	2025-01-31 12:33:06.754986	0
291	80	Episode(3) 720p Quailty (400mb)	https://shrs.link/NeIl9g	2025-01-31 12:33:07.245644	0
293	80	Episode(4) 720p Quailty (400mb)	https://shrs.link/aRip1q	2025-01-31 12:33:07.733288	0
295	80	Episode(5) 720p Quailty (400mb)	https://shrs.link/9jr9zM	2025-01-31 12:33:08.239581	0
297	80	Episode(6) 720p Quailty (400mb)	https://shrs.link/MyGJju	2025-01-31 12:33:08.747712	0
299	80	Episode(7) 720p Quailty (400mb)	https://shrs.link/Bocp3I	2025-01-31 12:33:09.165831	0
301	80	Episode(8) 720p Quailty (400mb)	https://shrs.link/pVT8nw	2025-01-31 12:33:09.533451	0
303	80	Episode(9) 720p Quailty (400mb)	https://shrs.link/S7ly1Q	2025-01-31 12:33:09.898337	0
305	81	Episode (1) 1080p quality (800mb)		2025-01-31 12:38:13.325593	0
306	81	Episode (2) 1080p quality (800mb)		2025-01-31 12:38:13.327384	0
307	81	Episode (3) 1080p quality (800mb)	https://mega.nz/file/XEZz3TwD#bYLJ_H7S_fh4NjXIsCcosezQeFmagV07qbzHUG1yydU	2025-01-31 12:38:13.329236	0
308	81	Episode (4) 1080p quality (800mb)	https://mega.nz/file/iIpH0KCZ#15NnxA499swBAW7BJmkbpgHuqtef1ZrjXW_QllrwbRY	2025-01-31 12:38:13.330744	0
309	81	Episode (5) 1080p quality (800mb)	https://mega.nz/file/fARQ0LAS#Y9zwpCzistS9w0mR97DQrlEWrqaLZgFkG95iKcgVq7U	2025-01-31 12:38:13.332274	0
310	81	Episode (6) 1080p quality (800mb)	https://mega.nz/file/TRxgnTJL#ceSZpuE8dh5sETGmPKvoGNw2nIGJlG3QoT5h2GK0ZXQ	2025-01-31 12:38:13.333916	0
311	81	Episode (7) 1080p quality (800mb)	https://mega.nz/file/GMoUFTCT#nH63iufFkwAFWAm7ip58QH77OfOW7HNkBrR37IQ_wdo	2025-01-31 12:38:13.33588	0
312	81	Episode (8) 1080p quality (800mb)	https://mega.nz/file/uYYzkJQS#RoKnuoLa3fjDjvG2CJhsIcDhGWvnx3Zw-rPO56ovrA8	2025-01-31 12:38:13.33796	0
313	81	Episode (9) 1080p quality (800mb)		2025-01-31 12:38:13.339643	0
314	82	480p Quailty (400mb)	https://shrs.link/orIqWW	2025-02-02 08:54:59.763577	0
315	82	1080p quality (2.7gb)	https://shrs.link/JUJCsS	2025-02-02 08:54:59.990505	0
\.


--
-- Data for Name: movie; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.movie (movieid, title, keywords, downloadname, slug, imageurl, smalldescription, duration, releasedate, bigdescription, downloadcount, casts, creationdate, markfordelete) FROM stdin;
81	Stranger Things Season 2 (1080p)	Stranger Things Netflix, Stranger Things Season 2 Episodes, Stranger Things Season 2 Cast, Stranger Things Season 2 Summary, Stranger Things Season 2 Download, Stranger Things Season 2 Watch Online, Stranger Things 2nd Season, Stranger Things 2 Online Free, Stranger Things 2 Download Free,Watch Stranger Things Season 2 Online, Stranger Things Season 2 Full Season Download, Best TV Series, Top Rated Shows	Stranger Things Season 2 2017 (1080p) Complete 9 Episodes Download	stranger-things-season-2-2017-1080p-complete-9-epi	stranger-things-season-2-2017-720p-complete-9-epis.jpeg	The thrilling second season of the hit Netflix series "Stranger Things," delving deeper into the mysteries of the Upside Down, introducing new characters and threats, and further exploring the bond between the Hawkins, Indiana, residents as they face supernatural forces.	Episodes: 9	October 27, 2017	One year after the events of the first season, the residents of Hawkins, Indiana, are still grappling with the aftermath of the Demogorgon attack and Will's time in the Upside Down.  As they try to return to normalcy, a new, larger threat emerges from the Upside Down – the monstrous Mind Flayer.  Eleven returns, and the group of friends, now joined by new members Max and Billy, must once again confront the supernatural forces threatening their town and their loved ones.  The season explores themes of trauma, friendship, family, and the struggle against overwhelming odds.	9	Winona Ryder, David Harbour, Millie Bobby Brown, Finn Wolfhard, Gaten Matarazzo, Caleb McLaughlin, Noah Schnapp, Sadie Sink, Dacre Montgomery, Joe Keer	2025-01-31 12:33:05.993379	0
52	Moana 2	Moana 2, Moana 2 Movie, Disney Movie, Animated Movie, Kids Movies, Family Movie, Adventure Movie, Musical Movie, Download Moana 2, Watch Moana 2 Online, Moana 2 Full Movie Download, Best Animated Movies, Top Rated Movies,	Moana 2 2024 1080p BluRay Animated Movie Download	moana-2-2024-1080p-bluray-animated-movie-download	moana-2-2024-1080p-bluray-animated-movie-download.jpeg	Moana embarks on a new adventure across the vast Pacific Ocean, facing new challenges and discovering hidden wonders while honoring her ancestors and preserving the legacy of wayfinding.	1 hour 40 minutes	November 27, 2024	Following her successful voyage to restore the heart of Te Fiti, Moana continues her journey as a wayfinder, exploring the vast Pacific Ocean and encountering new cultures, mythical creatures, and unforeseen challenges. She must learn to navigate uncharted waters, overcome her fears, and embrace her destiny as a leader of her people.	6	Auli'i Cravalho (voice of Moana), Dwayne Johnson (voice of Maui), Nicole Scherzinger (voice of Gramma Tala),	2025-01-28 11:22:19.271178	0
9	 Zabt	Crime, Thriller, Action, Police Procedural, Pursuit, Justice, Corruption, Zabt Movie, Zabt Movie 2024, Watch Zabt Movie Online, Download Zabt Movie, Zabt Movie Review, Zabt Movie Crime, Zabt Movie Thriller, Zabt Movie Police Investigation, Zabt Movie Cast, Zabt Movie Eijaz Khan, Zabt Movie Rahul Dev, WheretowatchZabtMoviewelinefree, ZabtMoviedownload720p, BestscenesfromZabtMovie, ZabtMoviestoryexplained	Zabt.2024. free download	zabt2024-free-download	zabt2024-free-download.jpeg	A gripping crime thriller that follows a determined police officer on a relentless pursuit of a ruthless criminal mastermind.	2 hours	September 12, 2024	When a string of brutal murders rocks the city, Inspector Rana vows to bring the killer to justice. His investigation leads him down a dark and dangerous path, where he uncovers a web of corruption and deceit that threatens to consume him.	14	Eijaz Khan, Rahul Dev, Manoj Joshi	2025-01-25 08:21:50.511737	0
79	Stranger Things Season 2 (480p)	Stranger Things Season 2, Stranger Things Netflix, Stranger Things Season 2 Episodes, Stranger Things Season 2 Cast Summary, Stranger Things Season 2 Download, Stranger Things Season 2 Watch Online, Stranger Things 2nd Season, Stranger Things 2 Online Free, Stranger Things 2 Download Free, Netflix Series,Download Stranger Things Season 2, Watch Stranger Things Season 2 Online, Stranger Things Season 2 Full Season Download, Best TV Series, Top Rated Shows,	Stranger Things Season 2 2017 (480p) BluRay Complete 9 Episodes Download	stranger-things-season-2-2017-480p-bluray-complete	stranger-things-season-2-2017-480p-bluray-complete.jpeg	The thrilling second season of the hit Netflix series "Stranger Things," delving deeper into the mysteries of the Upside Down, introducing new characters and threats, and further exploring the bond between the Hawkins, Indiana, residents as they face supernatural forces.	Episodes:9	October 27, 2017	One year after the events of the first season, the residents of Hawkins, Indiana, are still grappling with the aftermath of the Demogorgon attack and Will's time in the Upside Down.  As they try to return to normalcy, a new, larger threat emerges from the Upside Down – the monstrous Mind Flayer.  Eleven returns, and the group of friends, now joined by new members Max and Billy, must once again confront the supernatural forces threatening their town and their loved ones.  The season explores themes of trauma, friendship, family, and the struggle against overwhelming odds.	5	Winona Ryder, David Harbour, Millie Bobby Brown, Finn Wolfhard, Gaten Matarazzo, Caleb McLaughlin, Noah Schnapp, Sadie Sink, Dacre Montgomery, Joe Keery	2025-01-31 12:26:36.07381	0
7	 Match Fixing Hindi Movie	Match Fixing, Sports Drama, Corruption, Crime, Thriller, Betrayal, Investigation	 Match Fixing 2024	-match-fixing-2024	-matchfixing2024.jpeg	A gripping thriller that exposes the dark underbelly of professional sports, where greed and corruption threaten the integrity of the game.	2 hours 15 minutes	November 15, 2024	 When a star athlete is implicated in a high-stakes match-fixing scandal, a determined detective must navigate a web of deceit and danger to uncover the truth and bring down a powerful criminal network.	12	 Vineet Kumar Singh, Anuja Sathe, Manoj Joshi, Raj Arjun	2025-01-25 07:49:36.227666	0
77	Stranger Things Season 1 (720p)	Stranger Things Season 1, Stranger Things, Netflix Series, Science Fiction, Horror, 1980s, Nostalgia, Winona Ryder, David Harbour, Millie Bobby Brown, Download Stranger Things, Watch Stranger Things Online, Stranger Things Full Season Download, Best TV Series, Top Rated Shows,	Stranger Things Season 1 (2016) 720p Quality Complete 8 Episodes Download	stranger-things-season-1-2016-720p-quality-complet	stranger-things-season-1-2016-720p-quality-complet.jpeg	A nostalgic and suspenseful science fiction horror series set in the 1980s, following a group of young friends in a small town as they investigate the mysterious disappearance of their friend and encounter supernatural forces.	Episodes: 8	July 15, 2016	In the small town of Hawkins, Indiana, in 1983, a young boy named Will Byers vanishes mysteriously. His close-knit group of friends, Mike, Dustin, and Lucas, embark on a quest to find him, encountering a strange girl named Eleven with psychokinetic abilities along the way. As they delve deeper into the mystery, they uncover a government conspiracy, a terrifying parallel dimension known as the "Upside Down," and the sinister creatures that inhabit it.	4	Winona Ryder, David Harbour, Millie Bobby Brown, Finn Wolfhard, Gaten Matarazzo, Caleb McLaughlin, Noah Schnapp	2025-01-31 12:10:51.669516	0
76	Stranger Things Season 1 (480p)	 Stranger Things Season 1, Stranger Things, Netflix Series, Science Fiction, Horror, 1980s, Nostalgia, Winona Ryder, David Harbour, Millie Bobby Brown, Download Stranger Things, Watch Stranger Things Online, Stranger Things Full Season Download, Best TV Series, Top Rated Shows,stranger things netflix	Stranger Things Season 1 (2016) Complete 8 Episodes Download 480p 	stranger-things-season-1-2016-complete-8-episodes-	stranger-things-season-1-2016-complete-8-episodes-.jpeg	A nostalgic and suspenseful science fiction horror series set in the 1980s, following a group of young friends in a small town as they investigate the mysterious disappearance of their friend and encounter supernatural forces.	Episodes: 8	July 15, 2016	In the small town of Hawkins, Indiana, in 1983, a young boy named Will Byers vanishes mysteriously. His close-knit group of friends, Mike, Dustin, and Lucas, embark on a quest to find him, encountering a strange girl named Eleven with psychokinetic abilities along the way. As they delve deeper into the mystery, they uncover a government conspiracy, a terrifying parallel dimension known as the "Upside Down," and the sinister creatures that inhabit it.	5	Winona Ryder, David Harbour, Millie Bobby Brown, Finn Wolfhard, Gaten Matarazzo, Caleb McLaughlin, Noah Schnapp	2025-01-31 12:02:11.279351	0
63	Matka	Matka Movie, Matka 2024, Telugu Movies, Indian Movies, Action Movies, Bollywood Action, Varun Tej Movies, Download Matka Movie, Watch Matka Online, Matka Full Movie Download, Best Telugu Movies, Top Rated Movies,	Matka 2024 1080p BluRay  Movie Download	matka-2024-1080p-bluray--movie-download	matka-2024-1080p-bluray--movie-download.jpeg	A period action thriller based on the life of Ratan Khetri, the "Matka" gambler, set in the 1980s.	2 hours 30 minutes	November 14, 2024	The film depicts the rise and fall of Ratan Khetri, a legendary figure in the world of gambling, showcasing his rise to power, the challenges he faced, and the consequences of his actions.	4	Varun Tej, Meenakshi Chaudhary, Nora Fatehi	2025-01-31 08:36:24.204542	0
80	Stranger Things Season 2 (720p)	Stranger Things Netflix, Stranger Things Season 2 Episodes, Stranger Things Season 2 Cast, Stranger Things Season 2 Summary, Stranger Things Season 2 Download, Stranger Things Season 2 Watch Online, Stranger Things 2nd Season, Stranger Things 2 Online Free, Stranger Things 2 Download Free,Watch Stranger Things Season 2 Online, Stranger Things Season 2 Full Season Download, Best TV Series, Top Rated Shows	Stranger Things Season 2 2017 (720p) Complete 9 Episodes Download	stranger-things-season-2-2017-720p-complete-9-epis	stranger-things-season-2-2017-720p-complete-9-epis.jpeg	The thrilling second season of the hit Netflix series "Stranger Things," delving deeper into the mysteries of the Upside Down, introducing new characters and threats, and further exploring the bond between the Hawkins, Indiana, residents as they face supernatural forces.	Episodes: 9	October 27, 2017	One year after the events of the first season, the residents of Hawkins, Indiana, are still grappling with the aftermath of the Demogorgon attack and Will's time in the Upside Down.  As they try to return to normalcy, a new, larger threat emerges from the Upside Down – the monstrous Mind Flayer.  Eleven returns, and the group of friends, now joined by new members Max and Billy, must once again confront the supernatural forces threatening their town and their loved ones.  The season explores themes of trauma, friendship, family, and the struggle against overwhelming odds.	7	Winona Ryder, David Harbour, Millie Bobby Brown, Finn Wolfhard, Gaten Matarazzo, Caleb McLaughlin, Noah Schnapp, Sadie Sink, Dacre Montgomery, Joe Keer	2025-01-31 12:33:05.764261	0
20	Emergency	 Emergency Movie, Emergency 2024, Kangana Ranaut Movies, Bollywood Movies, Indian History, Political Drama, Indira Gandhi, Emergency India,	Emergency 2024 Hindi Movie Download	emergency-2024-hindi-movie-download	emergency-2024-hindi-movie-download.jpeg	 A historical drama film that depicts the tumultuous period of the Emergency in India, focusing on the life and political decisions of former Prime Minister Indira Gandhi.     	 146 minutes     	 January 17, 2025   	 The film explores the key events and political maneuvers that led to the declaration of the Emergency in 1975, examining the impact of these decisions on the nation and its citizens.\r\n\r\n   	5	Kangana Ranaut, Anupam Kher, Shreyas Talpade, Mahima Chaudhry, Milind Soman     	2025-01-26 09:24:13.845204	0
1	Azaad Movie 2025 free download  in hindi	free download azaad movie in hindi , azaad moive hd quality , azaad movie 480p quality download , azaad movie download for free	free download Azaad Movie 2025 480p 720p or hd quality all language	free-download-azaad-movie-2025-480p-720p-or-hd-quality-all-language	free-download-azaad-movie-2025-480p-720p-or-hd-quality-all-language.jpg	A young stable boy discovers a kindred spirit in a spirited horse named Azaad. As their lives intertwine against the backdrop of rebellion and tyranny.	2 hours and 27 minutes 	17 January 2025	Chandrashekhar Azad was a brave freedom fighter in India. He was born on 23rd July 1906 in a village called Bhabra. His real name was Chandra Shekhar Tiwari. Azad wanted India to be free from British rule, so he joined the fight for independence when he was very young. He was known for his courage and clever plans.	60	Directed by Abhishek Kapoor, the film stars Ajay Devgn, Aaman Devgan, Rasha Thadani, Diana Penty, Mohit Malik, and Piyush Mishra.	2025-01-24 10:16:14.465688	0
4	Baby John (2024) Hindi ORG. WEB-DL Full Movie 480p | 720p | 1080p	free download, 480p & 720p & 1080p , Baby John (2024) , bollywood , new , trending, 	Baby John (2024) Hindi Full Movie and available in 480p & 720p & 1080p. This movie is based on Action , Drama , Thriller and available in Hindi.	baby-john-2024-hindi-full-movie-and-available-in-480p--720p--1080p-this-movie-is-based-on-action--drama--thriller-and-available-in-hindi	baby-john-2024-hindi-full-movie-and-available-in-480p--720p--1080p-this-movie-is-based-on-action--drama--thriller-and-available-in-hindi.jpeg	A typical story of a mouse who was once a tiger and is biding his time to roar again	2 hrs 39 mins	25 December 2024	Revolve around a DCP who transforms and travels to different place in order to safeguard his family.	12	Varun Dhawan , Keerthy Suresh, Wamiqa Gabbi , Zara Zyanna , Jackie Shroff	2025-01-25 06:50:46.03715	0
8	Sweet Dreams	 Dream Sharing, Romance, Comedy, Fantasy, Surreal, Love, Chance Encounters	Sweet.Dreams.2025, all quality free downlod	sweetdreams2025-all-quality-free-downlod	sweetdreams2025-all-quality-free-downlod.jpeg	A whimsical romantic comedy about two strangers who begin to experience each other's dreams, leading to a series of hilarious and heartwarming encounters.	 1 hour 45 minutes	January 24, 2025	 When aspiring artist Mia and cynical architect Ethan start having dreams about each other, they embark on a surreal and unpredictable journey. Their lives become intertwined in fantastical ways, forcing them to confront their fears and embrace the unexpected.	14	Mithila Palkar, Meiyang Chang	2025-01-25 08:16:09.358202	0
6	Kya Masti Kya Dhoom 	Kya Masti Kya Dhoom, 480p, 720p, 1080p	Kya Masti Kya Dhoom 480p, 720p, 1080p	kya-masti-kya-dhoom-480p-720p-1080p	kya-masti-kya-dhoom-480p-720p-1080p.jpeg	The story takes you through the chaos that ensues when a group of eccentric characters finds themselves caught in a web of misunderstandings. With comedic legends at the helm, the narrative is packed with punchlines, outrageous situations, and plenty of unexpected twists.	1hr 41min	17 December 2024 	Kya Masti Kya Dhoom is a Hindi comedy directed by Chandrakant Singh. Featuring an ensemble cast led by Musskan Sethi, Johnny Lever, Anant Vidhaat, and Vijay Raaz, the film dives into a whirlwind of hilarious misadventures. The perfectly timed humor and quirky character interactions make it a must-watch for all comedy lovers.	11	Musskan Sethi, Johnny Lever, Anant Vidhaat, Vijay Raaz, Sanjay Mishra, Eshanya Maheshwari, Hemant Pandey, Vineet Sharma, Aakash Dabhade	2025-01-25 07:20:57.022008	0
2	mission grey house full Movie	Free mission grey house full Movie download , grey misson download free , moviepub movie downlaods	Free mission grey house full Movie download in hindi hd quality	free-mission-grey-house-full-movie-download-in-hindi-hd-quality	free-mission-grey-house-full-movie-download-in-hindi-hd-quality.jpg	Mission Grey House is a suspense thriller. A boy wants to become a police officer by any means, and to suffice his hunger he wears a police uniform on his own.	1h 58m	17 January 2025	Mission Grey House follows Kabir Rathod, a young man determined to become a police officer. To achieve his goal, he dons a police uniform and confronts criminals. His actions attract the attention of Kiara's father, an Inspector General, who warns him about the consequences.	44	Abeer Khan , Puja Sharma ,Rajesh Sharma , Kiran Kumar.	2025-01-24 13:24:11.60354	0
82	Deva	Deva Movie, Deva 2025, Hindi Movies, Bollywood Movies, Action Movies, Thriller Movies, Spy Movie, Indian Cinema, Download Deva Movie, Watch Deva Online, Deva Full Movie Download, Best Bollywood Movies, Top Rated Movies, new release, Shahid Kapoor movie, new bollywood Movies 	Deva 2025 1080p BluRay Hindi Movie Download	deva-2025-1080p-bluray-hindi-movie-download	deva-2025-1080p-bluray-hindi-movie-download.jpeg	A high-octane action thriller that follows Deva, a skilled and ruthless operative, as he embarks on a dangerous mission to take down a powerful and elusive criminal organization.	2 hours 25 minutes	31 January, 2025	Deva, a highly trained and enigmatic operative with a mysterious past, is thrust into a world of danger and intrigue when he is tasked with dismantling a notorious criminal syndicate known as "The Shadow Cartel."  His mission takes him across the globe, where he faces deadly assassins, treacherous betrayals, and moral dilemmas that test his limits.  As Deva gets closer to the truth, he uncovers a conspiracy that reaches the highest levels of power.	13	Shahid Kapoor, Pooja Hegde, Pavail,  Pravesh Rana	2025-02-02 08:54:58.470176	0
3	Sky Force 2025 Pre-HD Hindi Full Movie Download 1080p 720p 480p	Skyforce , free download Sky Force 2025  Pre-HD , 480p , 720p , 1080p , latest bollywood	free download Sky Force 2025 Movie 2025 480p 720p or hd quality	free-download-sky-force-2025-movie-2025-480p-720p-or-hd-quality	free-download-sky-force-2025-movie-2025-480p-720p-or-hd-quality.jpeg	Skyforce unravels a gripping tale inspired by true events from one of the deadliest air strikes between India and Pakistan. A hero lost, a comrade’s quest for truth-an epic tribute to bravery, sacrifice, and unbreakable courage.	2h 30m	24 JAN 2025	Sky Force 2025 Pre-HD Hindi Full Movie Download 1080p, 720p & 480p. Sky Force 2025 This is a Bollywood Movie and available in Hindi 1080p, 720p & 480p qualities. This is one of the best movies based on Action, Thriller. Sky Force 2025 HDTS Hindi Movie 	31	 Akshay Kumar, Nimrat Kaur, Sara Ali Khan	2025-01-25 06:37:15.099152	0
13	KGF: Chapter 2	KGF Chapter 2, KGF 2, Yash Movie, Kannada Movie, Indian Movie, Action Movie, Bollywood Action, KGF 2022, Watch KGF 2 Online, Download KGF 2 Movie, KGF 2 Cast, Yash, Sanjay Dutt, Srinidhi Shetty, Raveena Tandon, Rocky Bhai, Kolar Gold Fields, Action Scenes, Mass Movie, South Indian Movies, KGF Chapter 2 Download, KGF 2 Movie Download, Watch KGF 2 Online Free, Yash Movies, Best Indian Movies, Top Rated Action Movies, Download Kannada Movies, Sanjay Dutt Movies, Raveena Tandon Movies	 KGF Chapter 2 2022 free download	-kgf-chapter-2-2022-free-download	-kgfchapter22022-free-download.jpeg	 The highly anticipated sequel to KGF: Chapter 1, where Rocky Bhai returns to face new challenges and enemies while continuing his reign over the Kolar Gold Fields. 	2 hours 49 minutes	2 hours 49 minutes	 Rocky Bhai, now the undisputed king of KGF, faces new threats from powerful adversaries, including Adheera, a formidable warrior, and Ramika Sen, a powerful politician. He must use his strength, cunning, and loyalty to his people to overcome these challenges and protect his empire	10	 Yash, Sanjay Dutt, Srinidhi Shetty, Raveena Tandon, Prakash Raj 	2025-01-25 11:52:36.198097	0
5	Hisaab Barabar (2024) Zee5 	Download Hisaab Barabar (2024) , 480p ,720p , 1080p, moviepub free download, trending movies, latest, bollywood	Download Hisaab Barabar (2024) Hindi Full Movie 480p 720p & 1080p	download-hisaab-barabar-2024-hindi-full-movie-480p-720p--1080p	download-hisaab-barabar-2024-hindi-full-movie-480p-720p--1080p.jpeg	Radhe Mohan, an honest TC working for Indian Railways, sets out to uncover a massive financial fraud by banker Mickey Mehta. As Mickey puts the entire system against Radhe, what lies next for him?	1h 51min	26 November 2024 	The film follows Radhe Mohan Sharma, a railway ticket examiner who notices a minor discrepancy in his bank account. His attempt to resolve the issue uncovers a large financial fraud linked to an influential banker, Micky Mehta. The story depicts Radhe's efforts to navigate corruption and bureaucracy while facing personal and moral challenges.	10	 R. Madhavan, Neil Nitin Mukesh, Kirti Kulhari, Rashami Desai, Faisal Rashid, Rajesh Jais, Imran Hasnee	2025-01-25 07:08:04.290085	0
14	joker folie à deux	Joker Folie a Deux, Joker 2, Joker Movie 2024, Watch Joker Folie a Deux Online, Download Joker Folie a Deux, Joker Folie a Deux Cast, Joaquin Phoenix, Lady Gaga, Harley Quinn, Joker Movie, DC Comics, Superhero Movies, Psychological Thriller, Musical Film, Joker Folie a Deux Download, Joker 2 Download, Watch Joker Folie a Deux Online Free, Joker Movie 2024 Download, Joaquin Phoenix Movies, Lady Gaga Movies, DC Comics Movies, Best Superhero Movies, Top Rated Movies 2024	Joker: Folie à Deux 2024 free download	joker-folie-a-deux-2024-free-download	jokerfolieadeux2024-free-download.jpeg	A dark and twisted sequel to the 2019 hit, exploring the descent into madness for both the Joker and Harley Quinn.	 2 hours 18 minutes	October 4, 2024	 Arthur Fleck, now incarcerated at Arkham State Hospital, develops a romantic relationship with fellow inmate Harley Quinn. Their shared descent into madness leads to a chaotic and unpredictable series of events	12	Joaquin Phoenix, Lady Gaga, Brendan Gleeson, Catherine Keener, Zazie Beetz,	2025-01-25 12:04:16.751235	0
10	 KGF: Chapter 1	KGF Chapter 1, KGF Movie, Yash Movie, Kannada Movie, Indian Movie, Action Movie, Bollywood Action, KGF 2018, Watch KGF Online, Download KGF Movie, KGF Cast, Yash, Srinidhi Shetty, Rocky Bhai, Kolar Gold Fields, Action Scenes, Mass Movie, South Indian Movies, KGF Chapter 1 Download, KGF Movie Download, Watch KGF Online Free, Yash Movies, Best Indian Movies, Top Rated Action Movies, Download Kannada Movies	KGF Chapter 1 2018 full download free	kgf-chapter-1-2018-full-download-free	kgfchapter12018-full-download-free.jpeg	A powerful and visually stunning action film that tells the rise of Rocky, a ruthless killer who takes control of the Kolar Gold Fields.	 2 hours 34 minutes	December 21, 2018	Rocky, a ruthless killer, is sent to the Kolar Gold Fields on a deadly mission. He quickly rises through the ranks, eliminating rivals and establishing himself as the undisputed king of the gold mines.	12	Yash, Srinidhi Shetty, Ramachandra Raju, Anant Nag	2025-01-25 11:52:35.032394	0
11	Ardaas 2016 Pubjabi Movie	Ardaas Movie, Ardaas 2016, Punjabi Movie Ardaas, Watch Ardaas Online, Download Ardaas Movie, Ardaas Cast, Ammy Virk, Gurpreet Ghuggi, Rana Ranbir, Punjabi Movies, Sikhism, Family Drama, Social Issues, Ardaas Movie Download, Punjabi Movie Download, Ardaas Full Movie Download, Ardaas 720p Download, Ardaas HDRip Download, Watch Ardaas Movie Online Free, Ardaas Movie Story, Ardaas Movie Review, Best Punjabi Movies, Top Rated Punjabi Movies, Ammy Virk Movies, Gurpreet Ghuggi Movies	Ardaas 2016 Punjabi Movie Download	ardaas-2016-punjabi-movie-download	ardaas2016punjabimoviedownload.webp	A heartwarming Punjabi drama that explores themes of faith, family, and social issues within a rural setting.	2 hours 30 minutes	March 11, 2016	Ardaas tells the story of a village and the lives of its inhabitants, focusing on the challenges they face and how they seek solace and guidance through faith and community.	8	Ammy Virk, Gurpreet Ghuggi, Rana Ranbir	2025-01-25 11:52:35.867499	0
16	Qismat 2	Qismat 2, Download Qismat 2 Movie, Qismat 2 Cast, Ammy Virk, Sargun Mehta, Punjabi Movies, Punjabi Romance, Love Story, Sad Movies, Romantic Drama, Bollywood Movies, Indian Movies, Best Punjabi Movies, Qismat 2 Movie Download, Punjabi Movie Download, Watch Qismat 2 Online Free, Ammy Virk Movies, Sargun Mehta Movies, Best Punjabi Love Stories, Download Punjabi Movies, Qismat 2 Full Movie Download, Qismat 2 1080p Download, Qismat 2 HD Download	 Qismat 2 2021 Punjabi Movie Free Download	-qismat-2-2021-punjabi-movie-free-download	-qismat22021punjabimoviefreedownload.jpeg	 Qismat 2 explores the complexities of love and fate as Shivjit and Bani navigate new challenges and unexpected twists in their lives.     	2 hours 35 minutes	 September 23, 2021	Years after the events of the first film, Shivjit and Bani find themselves facing new challenges and unexpected turns in their lives.\r\n\r\n As they navigate the complexities of love, loss, and destiny, they must confront their past and decide what the future holds.   \r\n	5	Ammy Virk, Sargun Mehta, Tania	2025-01-26 08:58:09.917252	0
21	Game Changer	Game Changer 2025 Movie Download, Watch Game Changer Movie Online, Game Changer Full Movie Download, Game Changer Movie Online Free, Bollywood Movie Download,  Movies Bollywood,  Download Bollywood Movies Free, Game Changer Movie Cast, Game Changer Movie Trailer, Game Changer Movie Review	Game Changer 2025 Hindi Movie Download	game-changer-2025-hindi-movie-download	game-changer-2025-hindi-movie-download.jpeg	 A sports drama that tells the inspiring story of an underdog team's journey to overcome adversity and achieve sporting glory.	150 minutes	10 January 2025	An honest IAS officer's fight against a corrupt political system through fair and transparent elections.	3	Ram Charan, Kiara Advani, Jayaram,  Anjali, Sunil (telugu Actor) 	2025-01-26 09:32:17.695118	0
12	Gandhi 3	Gandhi 3 Movie, Gandhi 3 2024, Watch Gandhi 3 Online, Download Gandhi 3 Movie, Gandhi 3 Cast, Action Movie, Bollywood Action, Dev Kharoud, Action Scenes, Stunt Sequences, Revenge Story, Bollywood Movies 2024, Gandhi 3 Full Movie Download, Gandhi 3 1080p Download, Watch Gandhi 3 Online Free, Gandhi 3 Movie Review, Best Action Movies 2024, Top Bollywood Action Movies, Dev Kharoud Movies	Gandhi 3 2024 free download	gandhi-3-2024-free-download	gandhi32024-free-download.jpeg	The thrilling conclusion to the popular "Gandhi" action franchise, featuring high-octane stunts and a gripping story of revenge	2 hours 10 minutes	July 5, 2024	In this explosive finale, Gandhi faces his most formidable adversary yet, a ruthless crime lord who threatens to destroy everything he holds dear. Driven by a thirst for vengeance, Gandhi unleashes his full arsenal of skills in a breathtaking display of martial arts and daring escapes.	8	Dev Kharoud	2025-01-25 11:52:36.087889	0
19	Tumbbad	Tumbbad Movie, Tumbbad 2018, Hindi Horror Movie, Indian Horror Movies, Watch Tumbbad Online, Download Tumbbad Movie, Tumbbad Cast,  Horror Films, Mythological Horror, Psychological Thriller, Indian Cinema,	Tumbbad 2018 1080p BluRay Hindi Movie Download	tumbbad-2018-1080p-bluray-hindi-movie-download	tumbbad-2018-1080p-bluray-hindi-movie-download.jpeg	A visually stunning and atmospheric horror film that blends mythology, folklore.	2 hours 14 minutes	 October 12, 2018	Set in pre-independent India, Tumbbad tells the story of a young boy who embarks on a perilous journey to an ancient and forgotten village in search of hidden gold.	7	Sohum Shah, Rahul Bhat, Deepak Dobriyal, Aditi Rao Hydari	2025-01-26 09:16:10.086291	0
17	Rose Rosy Te Gulab	 Rose Rosy Te Gulab, Rose Rosy Te Gulab Movie, Punjabi Movie Rose Rosy Te Gulab, Gurnam Bhullar Movies, Punjabi Movies 2024, Punjabi Comedy Movies, Watch Rose Rosy Te Gulab Online, Download Rose Rosy Te Gulab Movie, Rose Rosy Te Gulab Full Movie Download, Punjabi Movie Download, Best Punjabi Comedy Movies, Funny Punjabi Movies, Watch Rose Rosy Te Gulab Online Free, Download Punjabi Movies Free,	Rose Rosy Te Gulab 2024  Punjabi Movie Free Download	rose-rosy-te-gulab-2024--punjabi-movie-free-downlo	rose-rosy-te-gulab-2024--punjabi-movie-free-downlo.jpeg	A hilarious Punjabi romantic comedy that follows the chaotic and comical journey of Gulab, a man caught in a love triangle between two women named Rose and Rosy.	2 hours 15 minutes	August 9, 2024	: Gulab, a carefree bachelor, finds himself unexpectedly entangled in a comical love triangle when he encounters two beautiful women, both named Rose and Rosy. His life takes a hilarious turn as he navigates the complexities of his romantic entanglements, leading to a series of unexpected and amusing situations.	4	Gurnam Bhullar, Maahi Sharma, Pranjal Dahiya	2025-01-26 09:05:38.637359	0
18	Tanaav Season 2	Tanaav Season 2, Tanaav Web Series, Amazon Prime Video Series, Indian Web Series, Crime Drama, Terrorism, Kashmir, Arshad Warsi, free download Tanaav Season 1	 Tanaav Season 2 2022Amazon Prime Video WEB-DL	-tanaav-season-2-2022amazon-prime-video-web-dl	-tanaav-season-2-2022amazon-prime-video-web-dl.jpeg	An intense and gripping Indian crime drama series that follows the lives of a group of counter-terrorism officers as they grapple with the challenges of fighting terrorism in Kashmir.	8 Episodes	January 21, 2022	 The series delves into the complexities of the conflict in Kashmir, exploring the personal and professional lives of the officers as they face moral dilemmas, internal conflicts, and the constant threat of violence	5	 Arshad Warsi, Manav Vij, Sumit Kaul, Rajeev Parakh	2025-01-26 09:10:38.572666	0
23	 Deadpool and Wolverine	 Deadpool and Wolverine, Deadpool Wolverine Movie, Marvel Movies, Superhero Movies, Action Movies, Ryan Reynolds, Hugh Jackman, Deadpool, Wolverine, X-Men, Marvel Cinematic Universe, Watch Deadpool and Wolverine Online, Download Deadpool and Wolverine Movie, Deadpool and Wolverine Full Movie Download, Best Superhero Movies, Top Rated Movies,	Deadpool and Wolverine 2024 1080p BluRay Marvel Movie Download	deadpool-and-wolverine-2024-1080p-bluray-marvel-mo	deadpool-and-wolverine-2024-1080p-bluray-marvel-mo.jpeg	 An action-packed superhero team-up film featuring the irreverent Deadpool and the brooding Wolverine, as they join forces to combat a deadly new threat.	120 minutes	 May 17, 2024	When a mysterious and powerful enemy emerges, threatening the world with chaos, the unlikely duo of Deadpool, the wise-cracking mercenary, and Wolverine, the brooding mutant with retractable claws, must put aside their differences and work together to save the day. Expect plenty of witty banter, explosive action sequences, and unexpected twists and turns.	3	 Ryan Reynolds, Hugh Jackman	2025-01-26 09:41:56.402924	0
22	Pushpa 2 reload version	 Pushpa 2, Pushpa The Rule, Pushpa 2 Movie, Allu Arjun Movies, Telugu Movies, South Indian Movies, Action Movies, Bollywood Action, Indian Cinema, Pushpa 2 Download, Watch Pushpa 2 Online, Pushpa 2 Full Movie Download, Pushpa 2 1080p Download, Download Telugu Movies, Best Telugu Movies, Top Rated South Indian Movies, Pushpa Raj, Fahadh Faasil,	Pushpa 2 reload version free Movie Download	pushpa-2-reload-version-free-movie-download	pushpa-2-reload-version-free-movie-download.jpeg	The highly anticipated sequel to the blockbuster "Pushpa: The Rise," continuing the saga of Pushpa Raj, a fearless red sandalwood smuggler who battles against powerful forces to protect his empire and his love.	20min	January 17 2025	 Following the events of "Pushpa: The Rise," Pushpa Raj finds himself entangled in a fierce battle for power against his rivals, including the ruthless Bhanwar Singh Shekhawat. He must navigate treacherous alliances, outsmart his enemies, aAllu Arjun, Rashmika Mandanna, Fahadh Faasil, Sunilnd protect his loved ones while maintaining his control over the red sandalwood trade.   \r\n	3	Allu Arjun, Rashmika Mandanna, Fahadh Faasil, Sunil	2025-01-26 09:37:50.91129	0
27	Vedaa	Vedaa Movie, Vedaa 2024, John Abraham Movies, Sharvari Movies, Bollywood Movies, Indian Movies, Action Movies, Social Drama, Caste System, Women Empowerment, Hindi Movies, Download Vedaa Movie, Watch Vedaa Online, Vedaa Full Movie Download, Best Bollywood Movies, Top Rated Movies	 Vedaa 2024 720p BluRay Hindi Movie Download	-vedaa-2024-720p-bluray-hindi-movie-download	-vedaa-2024-720p-bluray-hindi-movie-download.jpeg	 An action drama film that tells the inspiring story of Vedaa, a young Dalit woman who fights against caste-based violence and societal oppression	 151 minutes	August 15, 2024	Vedaa, a courageous young woman from the Dalit community, faces numerous challenges and injustices due to her caste. With the support of a boxing coach, she embarks on a journey of self-discovery and empowerment, fighting for her rights and challenging the deeply ingrained societal prejudices.	5	John Abraham, Sharvari, Abhishek Banerjee, Ashish Vidyarthi, Kumud Mishra	2025-01-26 09:59:07.686212	0
26	 Kalki 2898 AD	Kalki 2898 AD, Kalki 2898 AD Movie, Prabhas Movies, Deepika Padukone Movies, Amitabh Bachchan Movies, Kamal Haasan Movies, Telugu Movies, Indian Movies, Science Fiction Movies, Indian Sci-Fi, Action Movies, Fantasy Movies, Download Kalki 2898 AD, Watch Kalki 2898 AD Online, Kalki 2898 AD Full Movie Download, Best Indian Movies, Top Rated Movies,	 Kalki 2898 AD 2024 1080p BluRay free Movie Download	-kalki-2898-ad-2024-1080p-bluray-free-movie-downlo	-kalki-2898-ad-2024-1080p-bluray-free-movie-downlo.jpeg	 An epic science fiction film set in the year 2898 AD, exploring themes of mythology, technology, and the fate of humanity.	 180 minutes	 June 27, 2024	Set in a dystopian future, Kalki 2898 AD follows a diverse group of characters on a perilous journey to save humanity from an impending threat. Drawing inspiration from Hindu mythology, the film blends ancient prophecies with cutting-edge technology, creating a visually stunning and thought-provoking cinematic experience.	5	Prabhas, Deepika Padukone, Amitabh Bachchan, Kamal Haasan, Disha Patani,	2025-01-26 09:56:01.397215	0
25	munjya movie	Munjya Movie, Munjya 2024, Hindi Horror Comedy, Indian Horror Movies, Watch Munjya Online, Download Munjya Movie, Munjya Cast, Sharvari, Abhay Verma, Sathyaraj, Mona Singh, Horror Comedy Movies, Indian Cinema, Download Hindi Movies, Best Horror Comedy Movies, Watch Munjya Online Free, Munjya Full Movie Download,	Munjya 2024 720p BluRay Hindi Movie Download	munjya-2024-720p-bluray-hindi-movie-download	munjya-2024-720p-bluray-hindi-movie-download.jpeg	 A chilling horror-comedy that follows a young man who returns to his ancestral village and uncovers a terrifying family secret involving a vengeful spirit known as Munjya.	 123 minutes	June 7, 2024	 When a young man returns to his ancestral village, he unwittingly awakens an ancient evil - Munjya, a vengeful spirit with a terrifying agenda. As the villagers grapple with the supernatural threat, a series of bizarre and humorous events unfold, leading to a chaotic and unpredictable climax.	6	 Sharvari, Abhay Verma, Sathyaraj, Mona Singh	2025-01-26 09:48:06.697444	0
29	I Want to Talk	I Want to Talk Movie, I Want to Talk 2024, Abhishek Bachchan Movies, Bollywood Movies, Family Drama, Emotional Movies, Father Daughter Relationship, Indian Cinema, Download I Want to Talk Movie, Watch I Want to Talk Online, I Want to Talk Full Movie Download, Best Bollywood Movies, Top Rated Movies,	I Want to Talk 2024 1080p BluRay Hindi Movie Download	i-want-to-talk-2024-1080p-bluray-hindi-movie-downl	i-want-to-talk-2024-1080p-bluray-hindi-movie-downl.jpeg	 A poignant and heartwarming drama that explores the evolving relationship between a father and daughter as they navigate life's challenges and confront their unspoken emotions.	135 minutes	November 22, 2024	 Arjun, a successful businessman, struggles to connect with his teenage daughter, Reya. As he faces a life-altering medical diagnosis, he realizes the importance of communication and the need to mend their strained relationship. The film follows their journey of self-discovery and emotional healing as they learn to open up and truly understand each other.	5	Abhishek Bachchan, Ahilya Bamroo, Johnny Lever,	2025-01-26 10:20:18.440984	0
33	Bapu Ni Manda Mera	 Bapu Ni Manda Mera, Bapu Ni Manda Mera Movie, Punjabi Movie Bapu Ni Manda Mera, Punjabi Movies 2024, Punjabi Family Drama, Watch Bapu Ni Manda Mera Online, Download Bapu Ni Manda Mera Movie, Bapu Ni Manda Mera Full Movie Download, Punjabi Movie Download, Best Punjabi Movies, Watch Bapu Ni Manda Mera Online Free, Download Punjabi Movies Free,	Bapu Ni Manda Mera 2024  HDRip Punjabi Movie Download	bapu-ni-manda-mera-2024--hdrip-punjabi-movie-downl	bapu-ni-manda-mera-2024--hdrip-punjabi-movie-downl.jpeg	A heartwarming Punjabi family drama that explores the complexities of family relationships, superstitions, and the power of love and hope	2 hours 15 minutes	July 12, 2024	 Sukhdev Singh, a superstitious farmer, believes his family is cursed, leading to a series of unfortunate events. However, when his son marries Raunak, a strong-willed woman, they must challenge these superstitions and fight for their happiness and the future of their family.	3	Gurpreet Bhangu, Karamjit Anmol, Sardar Sohi, Sanju Solanki, Malkit Rauni, Deedar Gill, Anita Sabdeesh, Rimson Kaur, Sruishty Mann	2025-01-26 10:39:30.665885	0
28	Fateh	 Fateh Movie, Fateh 2024, Punjabi Movies, Action Movies, Bollywood Action, Diljit Dosanjh Movies, Punjabi Movie Download, Watch Fateh Online, Download Fateh Movie, Fateh Full Movie Download, Best Punjabi Movies, Top Rated Movies, Action Scenes, Police Action, Crime Thriller,	Fateh 2024 1080p BluRay Punjabi Movie Download	fateh-2024-1080p-bluray-punjabi-movie-download	fateh-2024-1080p-bluray-punjabi-movie-download.jpeg	A high-octane action thriller that follows the journey of Fateh, a fearless police officer who takes on a dangerous criminal syndicate operating in Punjab.	145 minutes	 September 28, 2024	 Fateh, an upright and determined police officer, is assigned to dismantle a powerful and ruthless criminal organization that has infiltrated the heart of Punjab. He faces numerous challenges and dangers as he navigates a web of deceit and corruption to bring the criminals to justice.	5	Diljit Dosanjh, Sonam Bajwa, Zareen Khan	2025-01-26 10:16:33.377954	0
31	Sabarmati Report	 Sabarmati Report Movie, Sabarmati Report 2024, Hindi Movies, Bollywood Movies, Crime Thriller, Terrorism, Investigative Drama, Social Issues, Indian Cinema, Download Sabarmati Report Movie, Watch Sabarmati Report Online, Sabarmati Report Full Movie Download, Best Bollywood Movies, Top Rated Movies,	Sabarmati Report 2024 1080p BluRay Hindi Movie Download	sabarmati-report-2024-1080p-bluray-hindi-movie-dow	sabarmati-report-2024-1080p-bluray-hindi-movie-dow.jpeg	 A hard-hitting investigative thriller that delves into the aftermath of a devastating terrorist attack in Ahmedabad, exploring the lives of those affected and the relentless pursuit of justice	148 minutes	 September 5, 2024	The film follows a team of dedicated investigators as they delve into the aftermath of a devastating terrorist attack in Ahmedabad, piecing together the events and uncovering a web of conspiracies. The story explores the personal and emotional impact of the tragedy on the victims, their families, and the investigators themselves.	8	Kay Kay Menon, Konkona Sen Sharma, Rajkummar Rao,	2025-01-26 10:29:24.352318	0
30	Marco	 Marco Movie, Marco 2024, Malayalam Movies, Indian Movies, Action Movies, Unni Mukundan Movies, Malayalam Movie Download, Watch Marco Online, Download Marco Movie, Marco Full Movie Download, Best Malayalam Movies, Top Rated Movies, Action Scenes, Thriller Movies,	Marco 2024 1080p BluRay Malayalam Movie Download	marco-2024-1080p-bluray-malayalam-movie-download	marco-2024-1080p-bluray-malayalam-movie-download.jpeg	 A high-octane action thriller that follows Marco, a powerful and enigmatic figure who embarks on a dangerous mission to uncover a dark conspiracy.     	 2 hours 25 minutes	December 20, 2024     	Marco, a charismatic and enigmatic figure with a mysterious past, finds himself embroiled in a dangerous conspiracy that threatens to unravel the secrets of a powerful and influential family. He embarks on a thrilling and action-packed journey to uncover the truth and bring the perpetrators to justice, while facing numerous challenges and unexpected twists along the way.	11	Unni Mukundan, Siddique, Jagadish, Kabir Duhan Singh, Yukti Thareja	2025-01-26 10:25:00.818727	0
37	Jatti 15 Murrabean Wali	Jatti 15 Murrabean Wali, Jatti 15 Murrabean Wali Movie, Punjabi Movies 2024, Punjabi Drama, Women Empowerment, Social Issues, Gugni Gill, Aarya Babbar, Nirmal Rishi, Punjabi Movie Download, Watch Jatti 15 Murrabean Wali Online, Jatti 15 Murrabean Wali Full Movie Download, Best Punjabi Movies, Top Rated Movies,	Jatti 15 Murrabean Wali 2024  Punjabi Movie Download	jatti-15-murrabean-wali-2024--punjabi-movie-downlo	jatti-15-murrabean-wali-2024--punjabi-movie-downlo.jpeg	A powerful drama that explores the journey of a strong and independent woman who defies societal norms and challenges traditional gender roles in rural Punjab.	2 hours 20 minutes	July 19, 2024	Jatti 15 Murrabean Wali" tells the story of a woman who breaks free from societal expectations and challenges the patriarchal norms prevalent in her village. She embarks on a journey of self-discovery and empowerment, inspiring others to question traditional gender roles and fight for equality	3	Gugni Gill, Aarya Babbar, Nirmal Rishi, Gurpreet Bhangu	2025-01-26 10:58:55.276712	0
34	 Badla	Badla Movie, Badla 2024, Punjabi Movies, Action Movies, Thriller Movies, Crime Drama, Punjabi Movie Download, Watch Badla Online, Download Badla Movie, Badla Full Movie Download, Best Punjabi Movies, Top Rated Movies	Badla 2024 1080p BluRay Punjabi Movie Download	badla-2024-1080p-bluray-punjabi-movie-download	badla-2024-1080p-bluray-punjabi-movie-download.jpeg	A gripping crime thriller that follows a determined police officer on a relentless pursuit to uncover the truth behind a series of mysterious murders.	130 minutes	October 18, 2024	Inspector Amardeep Singh is assigned to investigate a series of bizarre murders that seem to be connected by a mysterious code. As he delves deeper into the investigation, he uncovers a web of deceit, corruption, and hidden agendas, leading him down a dangerous path.	8	Gippy Grewal, Wamiqa Gabbi, Karamjit Anmol	2025-01-26 10:43:17.626427	0
36	Haye Bibiye Kithe Fas Gaye	Haye Bibiye Kithe Fas Gaye, Haye Bibiye Kithe Fas Gaye Movie, Punjabi Movies, Punjabi Comedy Movies, Watch Haye Bibiye Kithe Fas Gaye Online, Download Haye Bibiye Kithe Fas Gaye Movie, Haye Bibiye Kithe Fas Gaye Full Movie Download, Punjabi Movie Download, Best Punjabi Comedy Movies, Funny Punjabi Movies, Watch Haye Bibiye Kithe Fas Gaye Online Free, Download Punjabi Movies Free	 Haye Bibiye Kithe Fas Gaye 2024  Punjabi Movie Download	-haye-bibiye-kithe-fas-gaye-2024--punjabi-movie-do	-haye-bibiye-kithe-fas-gaye-2024--punjabi-movie-do.jpeg	 A hilarious Punjabi comedy that follows the misadventures of a group of friends as they embark on a chaotic road trip, leading to a series of unexpected and side-splitting situations	2 hours 10 minutes	Aug 23, 2024	 A group of friends sets off on a road trip, hoping for a fun and relaxing getaway. However, their plans quickly go awry as they encounter a series of unexpected obstacles, including car troubles, miscommunications, and hilarious encounters with eccentric characters.	3	Malvi Malhotra, Dhira Gill\t	2025-01-26 10:53:38.046275	0
38	Shukrana	Shukrana Movie, Shukrana 2024, Punjabi Movies, Neeru Bajwa Movies, Jass Bajwa Movies, Amrit Maan Movies, Punjabi Drama, Family Drama, Emotional Movies, Watch Shukrana Online, Download Shukrana Movie, Shukrana Full Movie Download, Best Punjabi Movies, Top Rated Movies, Punjabi Movie Download,	Shukrana 2024 Punjabi Movie Download	shukrana-2024-punjabi-movie-download	shukrana-2024-punjabi-movie-download.jpeg	A heartwarming Punjabi drama that explores themes of gratitude, single motherhood, societal judgment, family bonds, and the strength to rebuild a life after loss.1	2 hours 18 minutes	 August 15, 2024	Shukrana" tells the story of a single mother who faces societal challenges and personal struggles while raising her child. The film explores her journey of resilience, self-discovery, and finding happiness amidst adversity.	3	Neeru Bajwa, Jass Bajwa, Amrit Maan	2025-01-26 11:02:11.157543	0
15	Qismat 2018 Punjabi Movie	Qismat Movie, Qismat 2018, Punjabi Movie Qismat, Watch Qismat Online, Download Qismat Movie, Qismat Cast, Ammy Virk, Sargun Mehta, Punjabi Movies, Punjabi Romance, Love Story, Sad Movies, Romantic Drama, Bollywood Movies, Indian Movies, Best Punjabi Movies, Qismat Movie Download, Punjabi Movie Download, Watch Qismat Online Free, Ammy Virk Movies, Sargun Mehta Movies, Best Punjabi Love Stories, Download Punjabi Movies	Qismat 2018 720p HDRip Punjabi Movie Free Download	qismat-2018-720p-hdrip-punjabi-movie-free-download	qismat2018720phdrippunjabimoviefreedownloadx264.jpeg	A heart-wrenching Punjabi romantic drama that explores the complexities of love, loss, and destiny.	2 hours 15 minutes	September 21, 2018	Qismat tells the story of Shivjit, a young man who falls deeply in love with Bani while studying in Chandigarh. However, his arranged marriage to another woman threatens to shatter his dreams.	13	 Ammy Virk, Sargun Mehta, Guggu Gill	2025-01-25 13:00:08.728266	0
39	Sucha Soorma	 Sucha Soorma Movie, Sucha Soorma 2024, Punjabi Movies, Sports Movie, Inspirational Movies, Underdog Story, Punjabi Movie Download, Watch Sucha Soorma Online, Sucha Soorma Full Movie Download, Best Punjabi Movies, Top Rated Movies,	Sucha Soorma 2024 1080p BluRay Punjabi Movie Download	sucha-soorma-2024-1080p-bluray-punjabi-movie-downl	sucha-soorma-2024-1080p-bluray-punjabi-movie-downl.jpeg	 A sports drama that tells the inspiring story of a young athlete who overcomes adversity and societal pressures to achieve sporting excellence	 2 hours 10 minutes	 September 6, 2024	"Sucha Soorma" follows the journey of a talented young athlete who faces numerous challenges, including financial constraints, societal pressures, and personal setbacks. However, with unwavering determination and the support of his loved ones, he strives to overcome all obstacles and achieve his sporting dreams.	4	Diljit Dosanjh, Sonam Bajwa, Karamjit Anmol	2025-01-26 11:05:09.048475	0
24	Laila Majnu	Laila Majnu 2018, Laila Majnu Movie, Avinash Tiwary Movies, Tripti Dimri Movies, Bollywood Movies, Hindi Movies, Romantic Movies, Love Story, Tragic Love, Kashmir, Indian Cinema, Download Laila Majnu Movie, Watch Laila Majnu Online, Laila Majnu Full Movie Download, Best Bollywood Movies, Top Rated Movies,	 Laila Majnu 2018 720p BluRay Hindi Movie Download	-laila-majnu-2018-720p-bluray-hindi-movie-download	-laila-majnu-2018-720p-bluray-hindi-movie-download.jpeg	A modern reimagining of the classic tragic love story of Laila and Majnu, set against the backdrop of contemporary Kashmir.	135 minutes	September 7, 2018	 This adaptation explores the passionate and forbidden love between Laila and Majnu, two young individuals from different backgrounds, set amidst the breathtaking landscapes of Kashmir. Their love faces numerous obstacles, including societal pressures and family feuds, leading to a heart-wrenching and unforgettable journey.	5	Avinash Tiwary, Tripti Dimri, Manav Kaul	2025-01-26 09:44:38.397	0
40	 Ni Main Sass Kuttni 2	Ni Main Sass Kuttni 2, Ni Main Sass Kuttni 2 Movie, Punjabi Movies, Punjabi Comedy Movies, Watch Ni Main Sass Kuttni 2 Online, Download Ni Main Sass Kuttni 2 Movie, Ni Main Sass Kuttni 2 Full Movie Download, Punjabi Movie Download, Best Punjabi Comedy Movies, Funny Punjabi Movies, Watch Ni Main Sass Kuttni 2 Online Free, Download Punjabi Movies Free	 Ni Main Sass Kuttni 2 2024 Punjabi Movie Download	-ni-main-sass-kuttni-2-2024-punjabi-movie-download	-ni-main-sass-kuttni-2-2024-punjabi-movie-download.jpeg	The hilarious sequel to the hit Punjabi comedy "Ni Main Sass Kuttni," featuring more outrageous antics, family drama, and side-splitting humor.	 2 hours 12 minutes	October 12, 2024	The sequel picks up where the first film left off, with even more chaos and hilarity as the family navigates new challenges and encounters unexpected situations. Expect plenty of witty banter, outrageous situations, and side-splitting humor that will leave you in stitches.	6	 Samarth Kaimliya, Nirmal Rishi,  Dilnoor Kaur Anita, Devgan , Mehtab Virk , Gurpreet Ghuggi,  Karamjit Anmol	2025-01-26 11:09:52.195837	0
35	 Daaku Maharaaj	Daaku Maharaaj, Daaku Maharaaj Movie, Nandamuri Balakrishna Movies, Telugu Movies, Indian Movies, Action Movies, Bollywood Action, Download Daaku Maharaaj, Watch Daaku Maharaaj Online, Daaku Maharaaj Full Movie Download, Best Telugu Movies, Top Rated Movies, Action Scenes, Mass Movie,	 Daaku Maharaaj 2024 1080p BluRay Movie Download	-daaku-maharaaj-2024-1080p-bluray-movie-download	-daaku-maharaaj-2024-1080p-bluray-movie-download.jpeg	An action-packed Telugu film that tells the story of a daring robber who strives for survival and establishes his own territory amid conflicts with powerful adversaries.	2 hours 30 minutes    	January 12, 2024	The film follows the journey of a charismatic and rebellious figure who takes on the role of a "dacoit" (robber) to challenge the established order and fight for justice in a corrupt and exploitative system	5	Nandamuri Balakrishna, Urvashi Rautela, Bobby De	2025-01-26 10:47:56.717389	0
32	 Vanvaas	 Vanvaas Movie, Vanvaas 2024, Nana Patekar Movies, Utkarsh Sharma Movies, Hindi Movies, Bollywood Movies, Family Drama, Emotional Movies, Dementia, Family Relationships, Indian Cinema, Download Vanvaas Movie, Watch Vanvaas Online, Vanvaas Full Movie Download, Best Bollywood Movies, Top Rated Movies,	 Vanvaas 2024 720p Hindi Movie Download	-vanvaas-2024-720p-hindi-movie-download	-vanvaas-2024-720p-hindi-movie-download.jpeg	An emotional family drama that explores the complexities of familial relationships, focusing on the dynamics between an elderly father grappling with dementia and his estranged family.	2 hours 40 minutes	 December 20, 2024	 Vanvaas tells the poignant story of Deepak Tyagi, an elderly man suffering from dementia, who is abandoned by his own sons in Varanasi. The film explores the emotional turmoil of Deepak and the challenges faced by his family as they grapple with guilt, regret, and the complexities of their estranged relationships.	5	Nana Patekar, Utkarsh Sharma, Simrat Kaur, Rajpal Yadav	2025-01-26 10:32:40.100538	0
46	Shinda Shinda No Papa	 Shinda Shinda No Papa, Shinda Shinda No Papa Movie, Punjabi Movies, Punjabi Comedy Movies, Gippy Grewal Movies, Watch Shinda Shinda No Papa Online, Download Shinda Shinda No Papa Movie, Shinda Shinda No Papa Full Movie Download, Punjabi Movie Download, Best Punjabi Comedy Movies, Funny Punjabi Movies, Watch Shinda Shinda No Papa Online Free, Download Punjabi Movies Free,	Shinda Shinda No Papa 2024 7200p Punjabi Movie Download	shinda-shinda-no-papa-2024-7200p-punjabi-movie-dow	shinda-shinda-no-papa-2024-7200p-punjabi-movie-dow.jpeg	 A hilarious Punjabi family comedy that revolves around the chaotic and often amusing relationship between a mischievous son and his exasperated father.	2 hours 15 minutes	May 10, 2024	"Shinda Shinda No Papa" follows the comedic adventures of a mischievous son who constantly pushes his father's buttons, leading to a series of hilarious and chaotic situations that test their patience and ultimately strengthen their bond.	2	 Gippy Grewal, Hina Khan, Shinda Grewal	2025-01-28 10:34:43.746716	0
41	sector 17 	 Sector 17 Movie, Sector 17 2024, Punjabi Movies, Action Movies, Revenge Drama, Punjabi Movie Download, Watch Sector 17 Online, Download Sector 17 Movie, Sector 17 Full Movie Download, Best Punjabi Movies, Top Rated Movies, Action Scenes, Prince Kanwaljit Singh, Yashpal Sharma,	 Sector 17 2024 1080p BluRay Punjabi Movie Download	-sector-17-2024-1080p-bluray-punjabi-movie-downloa	-sector-17-2024-1080p-bluray-punjabi-movie-downloa.jpeg	An action-packed Punjabi film that follows Pargat Singh, a young man seeking revenge against Tundilaat, who murdered his father and stole their land	2 hours 21 minutes	November 15, 2024	Pargat, fueled by a burning desire for justice, embarks on a perilous journey to bring down Tundilaat's empire and reclaim his family's honor. The film features high-octane action sequences, intense drama, and explores themes of revenge, justice, and family.	6	Prince Kanwaljit Singh, Yashpal Sharma, Hobby Dhaliwal, Bhumika Sharma, Virat Kapur, Sukhwinder Chahal	2025-01-26 11:13:01.363672	0
42	The Dirty Picture 2011 	The Dirty Picture, The Dirty Picture Movie, Vidya Balan Movies, Bollywood Movies, Indian Cinema, Biopic, Silk Smitha, South Indian Cinema, Controversial Films,	The Dirty Picture 2011 1080p BluRay Hindi Movie Download	the-dirty-picture-2011-1080p-bluray-hindi-movie-do	the-dirty-picture-2011-1080p-bluray-hindi-movie-do.jpeg	A biographical drama film that tells the story of Silk Smitha, a controversial South Indian actress who rose to fame in the 1970s and 1980s.	 143 minutes	 December 2, 2011	The film follows a team of dedicated investigators as they delve into the aftermath of a devastating terrorist attack in Ahmedabad, piecing together the events and uncovering a web of conspiracies. The story explores the personal and emotional impact of the tragedy on the victims, their families, and the investigators themselves	11	Kay Kay Menon, Konkona Sen Sharma, Rajkummar Rao,	2025-01-28 10:19:20.348364	0
45	Saade Aala	Saade Aala Movie, Saade Aala 2024, Punjabi Movies, Punjabi Family Drama, Watch Saade Aala Online, Download Saade Aala Movie, Saade Aala Full Movie Download, Punjabi Movie Download, Best Punjabi Movies, Top Rated Movies, 	Saade Aala 2024 1080p HDRip Punjabi Movie Download	saade-aala-2024-1080p-hdrip-punjabi-movie-download	saade-aala-2024-1080p-hdrip-punjabi-movie-download.jpeg	A heartwarming family drama that explores the joys and challenges of family life in a small Punjabi village, focusing on the bonds between generations and the importance of family values.	2 hours 15 minute	March 8, 2024	Saade Aala" tells the heartwarming story of a close-knit Punjabi family residing in a small village. The film explores the joys and challenges of family life, showcasing the importance of traditions, values, and the enduring bonds between generations.	4	Deep Sidhu,  Sukhdeep Sukh, Amrit Aulakh	2025-01-28 10:31:07.335953	0
47	Shonk Sardari Da	Shonk Sardari Da, Shonk Sardari Da Movie, Punjabi Movies, Punjabi Comedy Movies, Watch Shonk Sardari Da Online, Download Shonk Sardari Da Movie, Shonk Sardari Da Full Movie Download, Punjabi Movie Download, Best Punjabi Comedy Movies, Funny Punjabi Movies, Watch Shonk Sardari Da Online Free, Download Punjabi Movies Free,	 Shonk Sardari Da 2023  HD Punjabi Movie Download	-shonk-sardari-da-2023--hd-punjabi-movie-download	-shonk-sardari-da-2023--hd-punjabi-movie-download.jpeg	A hilarious Punjabi comedy that revolves around the eccentric antics of a village sardar (headman) and the comical situations that arise from his unique personality and quirky ideas.	 2 hours 10 minutes	July 7, 2023	"Shonk Sardari Da" follows the humorous escapades of a village sardar, a colorful and eccentric character known for his unusual ideas and quirky behavior. His eccentric plans and unpredictable actions often lead to hilarious and chaotic situations for himself and the villagers, creating a series of side-splitting comedic moments.	4	Kamal Grewal, Mama Baddowalia, Manni Boparai, Parminder Gill.	2025-01-28 10:39:19.083052	0
48	 Television	Television Movie, Television 2022, Punjabi Movies, Punjabi Family Drama, Nostalgic Movies, Indian Cinema, Watch Television Online, Download Television Movie, Television Full Movie Download, Best Punjabi Movies, Top Rated Movies,	Television 2022 1080p BluRay Punjabi Movie Download	television-2022-1080p-bluray-punjabi-movie-downloa	television-2022-1080p-bluray-punjabi-movie-downloa.jpeg	 A heartwarming and nostalgic Punjabi film that explores the impact of television on the lives of a rural Punjabi family in the 1980s.	2 hours 18 minutes	 November 11, 2022	Television" depicts the arrival of television in a small Punjabi village and its profound impact on the lives of its inhabitants. The film captures the excitement, curiosity, and social changes that accompany the introduction of this new technology, while also exploring the enduring values of family, community, and tradition.	3	 Kulwinder Billa, Mandy Takhar, Gurpreet Ghuggi	2025-01-28 10:43:35.452959	0
49	 Chor Dil	Chor Dil Movie, Chor Dil 2023, Punjabi Movies, Punjabi Romance, Love Story, Romantic Drama, Ammy Virk Movies, Sonam Bajwa Movies, Watch Chor Dil Online, Download Chor Dil Movie, Chor Dil Full Movie Download, Best Punjabi Movies, Top Rated Movies,	 Chor Dil 2023 1080p BluRay Punjabi Movie Download	-chor-dil-2023-1080p-bluray-punjabi-movie-download	-chor-dil-2023-1080p-bluray-punjabi-movie-download.jpeg	A captivating Punjabi romantic drama that explores the complexities of love, loss, and second chances.	 2 hours 20 minutes	August 11, 2023	"Chor Dil" tells the story of two individuals who navigate the complexities of love, heartbreak, and finding happiness again after experiencing loss. The film explores themes of second chances, forgiveness, and the enduring power of love.	2	Ammy Virk, Sonam Bajwa	2025-01-28 10:49:52.379649	0
50	 Chor Dil	Chor Dil Movie, Chor Dil 2023, Punjabi Movies, Punjabi Romance, Love Story, Romantic Drama, Ammy Virk Movies, Sonam Bajwa Movies, Watch Chor Dil Online, Download Chor Dil Movie, Chor Dil Full Movie Download, Best Punjabi Movies, Top Rated Movies,	 Chor Dil 2023 1080p BluRay Punjabi Movie Download	-chor-dil-2023-1080p-bluray-punjabi-movie-download	-chor-dil-2023-1080p-bluray-punjabi-movie-download.jpeg	A captivating Punjabi romantic drama that explores the complexities of love, loss, and second chances.	 2 hours 20 minutes	August 11, 2023	"Chor Dil" tells the story of two individuals who navigate the complexities of love, heartbreak, and finding happiness again after experiencing loss. The film explores themes of second chances, forgiveness, and the enduring power of love.	2	Ammy Virk, Sonam Bajwa	2025-01-28 10:49:52.740307	0
51	ucha dar babe nanak da punjabi movie	 Ucha Dar Babe Nanak Da, Ucha Dar Babe Nanak Da Movie, Punjabi Movies, Sikhism, Religious Movie, Spiritual Movie, Gurpurab, Watch Ucha Dar Babe Nanak Da Online, Download Ucha Dar Babe Nanak Da Movie, Ucha Dar Babe Nanak Da Full Movie Download, Best Punjabi Movies, Top Rated Movies,	Ucha Dar Babe Nanak Da 2023 1080p BluRay Punjabi Movie Download	ucha-dar-babe-nanak-da-2023-1080p-bluray-punjabi-m	ucha-dar-babe-nanak-da-2023-1080p-bluray-punjabi-m.jpeg	: A spiritually uplifting and inspiring Punjabi film that explores the life and teachings of Guru Nanak Dev Ji, the founder of Sikhism.	 2 hours 30 minutes	 November 12, 2023	 This film depicts the life, teachings, and message of Guru Nanak Dev Ji, emphasizing his profound wisdom, compassion, and commitment to equality and humanity.	4	Harj Nagra, Deepika Aggarwal , Baljinder Singh Atwal, Karm Bath	2025-01-28 10:57:40.115632	0
54	Dear Santa	Dear Santa Movie, Dear Santa 2024, Jack Black Movies, Christmas Comedy, Family Comedy, Funny Movies, Download Dear Santa, Watch Dear Santa Online, Dear Santa Full Movie Download, Best Comedy Movies,	Dear Santa 2024 1080p BluRay Comedy Movie Download	dear-santa-2024-1080p-bluray-comedy-movie-download	dear-santa-2024-1080p-bluray-comedy-movie-download.jpeg	A hilarious Christmas comedy that follows a young boy whose accidental misspelling in his letter to Santa Claus leads to a series of unexpected and chaotic events.	1 hour 43 minutes	November 25, 2024	When a young boy accidentally misspells "Santa" in his Christmas wish list, he unwittingly summons Satan instead. The ensuing chaos and hilarious consequences create a wild and unforgettable holiday experience.	4	Jack Black, Keegan-Michael Key, Robert Timothy Smith, Brianne Howey, Hayes MacArthur, Post Malone	2025-01-28 11:33:51.637926	0
55	Despatch	Despatch Movie, Despatch 2024, Manoj Bajpayee Movies, Shahana Goswami Movies, Hindi Movies, Bollywood Movies, Crime Drama, Thriller, Journalism, Indian Cinema, Download Despatch Movie, Watch Despatch Online, Despatch Full Movie Download, Best Bollywood Movies, Top Rated Movies,	Despatch 2024 1080p BluRay Hindi Movie Download	despatch-2024-1080p-bluray-hindi-movie-download	despatch-2024-1080p-bluray-hindi-movie-download.jpeg	A gripping crime drama that follows Joy, a veteran crime reporter, as he investigates a series of murders while grappling with the changing landscape of journalism and the complexities of his personal life.	2 hours 31 minutes	October 19, 2024	Despatch delves into the world of investigative journalism, exploring the challenges faced by reporters in the digital age. Joy, a seasoned crime reporter, finds himself drawn into a dangerous and complex murder investigation that forces him to confront his own past and question his values.	4	Manoj Bajpayee, Shahana Goswami, Rituparna Sen	2025-01-28 11:38:14.547093	0
53	Fight Club	Fight Club Movie, Fight Club 1999, Brad Pitt Movies, Edward Norton Movies, David Fincher Movies, Cult Classic Movies, Action Movies, Psychological Thriller, Download Fight Club, Watch Fight Club Online, Fight Club Full Movie Download, Best Movies, Top Rated Movies,	Fight Club 1999 1080p BluRay Movie Download	fight-club-1999-1080p-bluray-movie-download	fight-club-1999-1080p-bluray-movie-download.jpeg	A cult classic film that explores themes of consumerism, masculinity, and rebellion. It follows an insomniac office worker who forms an underground fight club with a charismatic soap salesman.	2 hours 19 minutes	October 15, 1999	The film tells the story of an unnamed insomniac office worker who forms an underground fight club with Tyler Durden, a charismatic soap salesman. As the fight club evolves into a dangerous and destructive movement, the narrator grapples with the blurred lines between reality and fantasy.	7	Edward Norton, Brad Pitt, Helena Bonham Carter	2025-01-28 11:22:21.385603	0
56	Chor Dil	Chor Dil Movie, Chor Dil 2023, Punjabi Movies, Punjabi Romance, Love Story, Romantic Drama, Ammy Virk Movies, Sonam Bajwa Movies, Watch Chor Dil Online, Download Chor Dil Movie, Chor Dil Full Movie Download, Best Punjabi Movies, Top Rated Movies	Chor Dil 2023 1080p BluRay Punjabi Movie Download	chor-dil-2023-1080p-bluray-punjabi-movie-download	chor-dil-2023-1080p-bluray-punjabi-movie-download.jpeg	A captivating Punjabi romantic drama that explores the complexities of love, loss, and second chances.	 2 hours 20 minutes	August 11, 2023	Chor Dil" tells the story of two individuals who navigate the complexities of love, heartbreak, and finding happiness again after experiencing loss. The film explores themes of second chances, forgiveness, and the enduring power of love.	4	Jagjeet Sandu , Ravinder mand	2025-01-31 07:46:52.578108	0
59	Welcome Home	Welcome Home Movie, Welcome Home 2020, Hindi Horror Movies, Indian Horror Movies, Watch Welcome Home Online, Download Welcome Home Movie, Welcome Home Full Movie Download, Best Horror Movies, Top Rated Movies,	Welcome Home 2020 1080p BluRay Hindi Movie Download	welcome-home-2020-1080p-bluray-hindi-movie-downloa	welcome-home-2020-1080p-bluray-hindi-movie-downloa.jpeg	A chilling horror thriller that follows three female census workers who encounter a terrifying and unsettling family while conducting their duties in a remote and isolated village.	 2 hours 5 minutes	November 6, 2020	The film tells the story of three female census workers who are assigned to a remote and isolated village. Upon arriving at a seemingly ordinary house, they encounter a disturbing and unsettling family with a dark and sinister secret, leading to a terrifying and suspenseful ordeal.	4	Kashmira Irani, Swarda Thigale, Tina Bhatia, Boloram Das, Shashi Bhushan	2025-01-31 08:07:27.650427	0
57	Devara	Devara Movie, Devara 2024, Jr NTR Movies, Telugu Movies, Indian Movies, Action Movies, Bollywood Action, Download Devara Movie, Watch Devara Online, Devara Full Movie Download, Best Telugu Movies, Top Rated Movies, Action Scenes, Mass Movie,	Devara 2024 1080p BluRay Telugu Movie Download	devara-2024-1080p-bluray-telugu-movie-download	devara-2024-1080p-bluray-telugu-movie-download.jpeg	A high-octane action drama featuring Jr. NTR in a powerful role, exploring themes of heroism, loyalty, and social justice.	2 hours 35 minute	July 5, 2024	Devara tells the story of a charismatic and powerful figure who fights for the rights of the oppressed and challenges the established order. The film features high-octane action sequences, powerful dialogues, and a strong emotional core.	4	Jr. NTR, Janhvi Kapoor, Saif Ali Khan	2025-01-31 07:54:51.421019	0
43	The Dirty Picture 2011 	The Dirty Picture, The Dirty Picture Movie, Vidya Balan Movies, Bollywood Movies, Indian Cinema, Biopic, Silk Smitha, South Indian Cinema, Controversial Films,	The Dirty Picture 2011 1080p BluRay Hindi Movie Download	the-dirty-picture-2011-1080p-bluray-hindi-movie-do	the-dirty-picture-2011-1080p-bluray-hindi-movie-do.jpeg	A biographical drama film that tells the story of Silk Smitha, a controversial South Indian actress who rose to fame in the 1970s and 1980s.	 143 minutes	 December 2, 2011	The film follows a team of dedicated investigators as they delve into the aftermath of a devastating terrorist attack in Ahmedabad, piecing together the events and uncovering a web of conspiracies. The story explores the personal and emotional impact of the tragedy on the victims, their families, and the investigators themselves	11	Kay Kay Menon, Konkona Sen Sharma, Rajkummar Rao,	2025-01-28 10:19:21.949623	0
61	Bagheera 2024	Bagheera Movie, Bagheera 2024, Telugu Movies, Indian Movies, Action Movies, Bollywood Action, Prabhas Movies, Download Bagheera Movie, Watch Bagheera Online, Bagheera Full Movie Download, Best Telugu Movies, Top Rated Movies, Action Scenes,	Bagheera 2024 1080p BluRay Movie Download	bagheera-2024-1080p-bluray-movie-download	bagheera-2024-1080p-bluray-movie-download.jpeg	An action-packed Telugu film that follows the journey of Bagheera, a fearless and skilled police officer who takes on a powerful criminal syndicate operating in the city.	 2 hours 25 minutes	September 20, 2024	The film follows Bagheera, a dedicated and courageous police officer, as he embarks on a dangerous mission to dismantle a powerful criminal syndicate that has infiltrated the city. He faces numerous challenges and dangers as he navigates a web of deceit and corruption to bring the criminals to justice.	4	Prabhas, Shruti Haasan, Prithviraj Sukumaran	2025-01-31 08:21:32.820343	0
60	Agni	Agni Movie, Agni 2024, Hindi Movies, Bollywood Movies, Action Movies, Thriller Movies, Spy Movie, Indian Cinema, Download Agni Movie, Watch Agni Online, Agni Full Movie Download, Best Bollywood Movies, Top Rated Movies,	Agni 2024 1080p BluRay Hindi Movie Download	agni-2024-1080p-bluray-hindi-movie-download	agni-2024-1080p-bluray-hindi-movie-download.jpeg	An action-packed thriller that follows the journey of Agni, a skilled and fearless agent who is tasked with infiltrating a dangerous terrorist organization	 2 hours 15 minutes	August 9, 2024	Agni, a highly trained and skilled agent, is assigned a perilous mission to infiltrate a dangerous terrorist organization and dismantle their plans. He must navigate a web of deceit, danger, and unexpected betrayals while maintaining his cover and completing his mission	4	Vidyut Jammwal, Richa Chadha, Angad Bedi	2025-01-31 08:14:40.122697	0
69	Vijay 69	Vijay 69 Movie, Vijay 69 2024, Anupam Kher Movies, Hindi Movies, Bollywood Movies, Sports Drama, Inspirational Movies, Age Defying, Download Vijay 69 Movie, Watch Vijay 69 Online, Vijay 69 Full Movie Download, Best Bollywood Movies, Top Rated Movies,	Vijay 69 2024 1080p BluRay Hindi Movie Download	vijay-69-2024-1080p-bluray-hindi-movie-download	vijay-69-2024-1080p-bluray-hindi-movie-download.jpeg	A heartwarming and inspiring sports drama that follows Vijay Mathew, a 69-year-old former athlete, as he embarks on an extraordinary journey to overcome his physical and mental limitations and achieve a seemingly impossible goal: completing a triathlon.	2 hours 17 minutes	November 8, 2024	The film tells the inspiring story of Vijay Mathew, a former athlete who sacrificed his dreams for his family. Now in his late 60s, he decides to challenge himself by attempting a triathlon, pushing his physical and mental limits to the extreme. Along the way, he confronts his past regrets, rediscovers his passion, and inspires those around him with his unwavering determination.	4	Anupam Kher, Mihir Ahuja, Chunky Pandey	2025-01-31 09:46:48.274641	0
67	Martin 2024	Martin Movie, Martin 2024, Malayalam Movies, Indian Movies, Action Movies, Bollywood Action, Mohanlal Movies, Download Martin Movie, Watch Martin Online, Martin Full Movie Download, Best Malayalam Movies, Top Rated Movies, Action Scenes,	Martin 2024 1080p BluRay Malayalam Movie Download	martin-2024-1080p-bluray-malayalam-movie-download	martin-2024-1080p-bluray-malayalam-movie-download.jpeg	An action-packed Malayalam film that tells the story of Martin, a fearless and skilled police officer who takes on a powerful drug cartel operating in the city.	 2 hours 32 minutes	December 25, 2024	The film follows Martin, a dedicated and courageous police officer, as he embarks on a dangerous mission to dismantle a powerful drug cartel that has infiltrated the city. He faces numerous challenges and dangers as he navigates a web of deceit and corruption to bring the criminals to justice.	4	Mohanlal, Prithviraj Sukumaran, Keerthy Suresh	2025-01-31 09:36:40.125334	0
64	Thangalaan	Thangalaan Movie, Thangalaan 2024, Tamil Movies, Indian Movies, Action Movies, Historical Drama, Vikram Movies, Download Thangalaan Movie, Watch Thangalaan Online, Thangalaan Full Movie Download, Best Tamil Movies, Top Rated Movies,	Thangalaan 2024 1080p BluRay Tamil Movie Download	thangalaan-2024-1080p-bluray-tamil-movie-download	thangalaan-2024-1080p-bluray-tamil-movie-download.jpeg	An epic action-adventure film set during the British Raj, following a fierce tribal leader who confronts a British general in a quest for gold, leading to a clash of cultures and a supernatural encounter.	 2 hours 36 minutes	August 14, 2024	Thangalaan tells the story of a powerful tribal leader who assists a British general in locating gold mines in his region. However, this collaboration unleashes ancient legends and supernatural forces, leading to a conflict that challenges his beliefs and forces him to confront his own morality	7	Vikram, Parvathy Thiruvothu, Malavika Mohanan, Pasupathy, Daniel Caltagirone	2025-01-31 08:41:28.74279	0
68	Vettaiyan	Vettaiyan Movie, Vettaiyan 2024, Rajinikanth Movies, Amitabh Bachchan Movies, Tamil Movies, Indian Movies, Action Drama, Social Issues, Download Vettaiyan Movie, Watch Vettaiyan Online, Vettaiyan Full Movie Download, Best Tamil Movies, Top Rated Movies,	Vettaiyan 2024 1080p BluRay Tamil Movie Download	vettaiyan-2024-1080p-bluray-tamil-movie-download	vettaiyan-2024-1080p-bluray-tamil-movie-download.jpeg	An action-packed Tamil drama that explores the complexities of justice and the human cost of violence, following the journey of Athiyan, a senior police officer who grapples with the consequences of his actions after an accidental shooting during an encounter.	2 hours 43 minutes	October 10, 2024	The film follows Athiyan, a renowned police officer known for his ruthless methods, who faces a moral dilemma after accidentally killing an innocent person during an encounter. Haunted by his actions, he embarks on a journey of self-reflection and redemption, confronting the complexities of justice and the human cost of violence.	5	Rajinikanth, Amitabh Bachchan, Fahadh Faasil, Manju Warrier, Rana Daggubati, Dushara Vijayan	2025-01-31 09:40:34.489232	0
65	The Buckingham Murders	The Buckingham Murders Movie, The Buckingham Murders 2023, Kareena Kapoor Khan Movies, Hindi Movies, Bollywood Movies, Crime Thriller, Mystery, Indian Cinema, Download The Buckingham Murders Movie, Watch The Buckingham Murders Online, The Buckingham Murders Full Movie Download, Best Bollywood Movies, Top Rated Movies,	The Buckingham Murders 2023 1080p BluRay Hindi Movie Download	the-buckingham-murders-2023-1080p-bluray-hindi-mov	the-buckingham-murders-2023-1080p-bluray-hindi-mov.jpeg	A gripping crime thriller that follows a grieving British-Indian detective who investigates the disappearance of a missing child in Buckinghamshire, leading her down a dark and dangerous path.	1 hour 47 minutes	September 13, 2024	Detective Jaspreet Bhamra, still reeling from the loss of her own son, is assigned to investigate the disappearance of a young child in Buckinghamshire. As she delves deeper into the case, she uncovers a web of secrets, lies, and hidden agendas, leading her down a dangerous and emotionally charged path.	4	Kareena Kapoor Khan, Ranveer Brar, Rukku Nahar	2025-01-31 08:47:09.894565	0
70	Ginna	Ginna Movie, Ginna 2022, Telugu Movies, Indian Movies, Action Comedy, Vishwak Sen Movies, Download Ginna Movie, Watch Ginna Online, Ginna Full Movie Download, Best Telugu Movies, Top Rated Movies,	Ginna 2022 1080p BluRay Telugu Movie Download	ginna-2022-1080p-bluray-telugu-movie-download	ginna-2022-1080p-bluray-telugu-movie-download.jpeg	A high-octane action-comedy film featuring Vishwak Sen in a dual role, showcasing his versatility as an actor and delivering a unique blend of action, humor, and drama.	2 hours 15 minutes	October 21, 2022	The film follows the story of two identical twins, Ginna and Shiva, who lead vastly different lives. When their paths unexpectedly intertwine, a series of hilarious and action-packed events unfold, leading to unexpected consequences and a thrilling climax.	5	Vishwak Sen (dual role), Payal Rajput, Chandini Chowdary, Ravi Shankar	2025-01-31 09:52:41.189171	0
74	Yudra	Yudra Movie, Yudra 2024, Hindi Movies, Bollywood Movies, War Drama, Patriotic Movies, Indian Army, Download Yudra Movie, Watch Yudra Online, Yudra Full Movie Download, Best Bollywood Movies, Top Rated Movies,	 Yudra 2024 1080p BluRay Hindi Movie Download	-yudra-2024-1080p-bluray-hindi-movie-download	-yudra-2024-1080p-bluray-hindi-movie-download.jpeg	A hard-hitting war drama that explores the sacrifices and struggles of Indian soldiers on the frontlines, depicting the physical and emotional toll of combat and the unwavering spirit of patriotism.	2 hours 28 minutes	August 15, 2024	Yudra" delves into the realities of life in the Indian Army, showcasing the courage, resilience, and sacrifices of soldiers stationed at the border. The film explores the physical and emotional challenges they face, the impact of war on their lives and families, and their unwavering commitment to their duty and their nation.	4	Sidharth Malhotra, Rakul Preet Singh, Sanjay Dutt	2025-01-31 10:12:07.135784	0
72	The Wild	The Wild Movie, The Wild 2023, Korean Movies, Action Movies, Crime Drama, Thriller, Download The Wild Movie, Watch The Wild Online, The Wild Full Movie Download, Best Korean Movies,	The Wild 2023 1080p BluRay Korean Movie Download	the-wild-2023-1080p-bluray-korean-movie-download	the-wild-2023-1080p-bluray-korean-movie-download.jpeg	A gritty action-crime drama that follows a former boxer, recently released from prison, as he becomes entangled in a dangerous conflict between his old friend, a corrupt cop, and a ruthless drug smuggler.	1 hour 50 minutes	April 28, 2023	After serving time for killing his opponent in a boxing match, Song Woo-chul returns home determined to leave his violent past behind. However, his plans are quickly derailed when he becomes entangled in a dangerous conflict between his old friend, a corrupt cop, and a ruthless drug smuggler.	4	Seo Ji-hye, Hwang Se-in, Park Sung-woong	2025-01-31 10:02:55.645803	0
71	Rangabali	Rangabali Movie, Rangabali 2023, Telugu Movies, Indian Movies, Action Comedy, Romance, Naga Shourya Movies, Download Rangabali Movie, Watch Rangabali Online, Rangabali Full Movie Download, Best Telugu Movies, Top Rated Movies,	Rangabali 2023 1080p BluRay Telugu Movie Download	rangabali-2023-1080p-bluray-telugu-movie-download	rangabali-2023-1080p-bluray-telugu-movie-download.jpeg	A romantic action-comedy film that follows the journey of a carefree young man who gets caught up in a local conflict after falling for a medical student.	2 hours 14 minutes	July 7, 2023	Rangabali" tells the story of a laid-back individual who deeply loves his hometown and is reluctant to leave. He falls in love with a medical student, which unexpectedly draws him into a local conflict. The film blends romance, action, and humor with a backdrop of local culture and traditions.	4	Naga Shourya, Yukti Thareja, Shine Tom Chacko, Brahmaji, Satya, Murali Sharma	2025-01-31 09:56:31.516831	0
78	Stranger Things Season 1 (1080p)	Stranger Things Season 1, Stranger Things, Netflix Series, Science Fiction, Horror, 1980s, Nostalgia, Winona Ryder, David Harbour, Millie Bobby Brown, Download Stranger Things, Watch Stranger Things Online, Stranger Things Full Season Download, Best TV Series, Top Rated Shows,	Stranger Things Season 1 2016 1080p BluRay Complete 8 Episodes Download	stranger-things-season-1-2016-1080p-bluray-complet	stranger-things-season-1-2016-1080p-bluray-complet.jpeg	A nostalgic and suspenseful science fiction horror series set in the 1980s, following a group of young friends in a small town as they investigate the mysterious disappearance of their friend and encounter supernatural forces.	Episodes: 8	July 15, 2016	In the small town of Hawkins, Indiana, in 1983, a young boy named Will Byers vanishes mysteriously. His close-knit group of friends, Mike, Dustin, and Lucas, embark on a quest to find him, encountering a strange girl named Eleven with psychokinetic abilities along the way. As they delve deeper into the mystery, they uncover a government conspiracy, a terrifying parallel dimension known as the "Upside Down," and the sinister creatures that inhabit it.	4	Winona Ryder, David Harbour, Millie Bobby Brown, Finn Wolfhard, Gaten Matarazzo, Caleb McLaughlin, Noah Schnapp	2025-01-31 12:16:28.363121	0
75	Lucky Baskhar	Lucky Baskhar Movie, Lucky Baskhar 2024, Telugu Movies, Indian Movies, Crime Drama, Thriller, Dulquer Salmaan Movies, Download Lucky Baskhar Movie, Watch Lucky Baskhar Online, Lucky Baskhar Full Movie Download, Best Telugu Movies, Top Rated Movies,	Lucky Baskhar 2024 1080p BluRay Telugu Movie Download	lucky-baskhar-2024-1080p-bluray-telugu-movie-downl	lucky-baskhar-2024-1080p-bluray-telugu-movie-downl.jpeg	A gripping crime drama that follows a lower-middle-class bank cashier who, driven by financial desperation and a desire to escape poverty, embarks on a risky path of financial scams, leading to unexpected and life-altering consequences.	2 hours 31 minutes	October 31, 2024	The film tells the story of a cash-strapped bank employee who, facing financial hardship and humiliation, resorts to engaging in financial scams to improve his family's circumstances. His actions, however, have unforeseen	6	Dulquer Salmaan, Meenakshi Chaudhary, Surya Srinivas	2025-01-31 10:20:03.945238	0
73	Transformers One	Transformers One Movie, Transformers One 2024, Animated Movie, Science Fiction, Action, Chris Hemsworth, Brian Tyree Henry, Download Transformers One, Watch Transformers One Online, Transformers One Full Movie Download, Best Animated Movies	Transformers One 2024 1080p BluRay Animated Movie Download	transformers-one-2024-1080p-bluray-animated-movie-	transformers-one-2024-1080p-bluray-animated-movie-.jpeg	The untold origin story of Optimus Prime and Megatron, exploring their early relationship as friends and comrades before their fateful transformation into bitter enemies.	1 hour 44 minutes	September 20, 2024	This computer-animated film delves into the past of Cybertron, depicting the lives of Orion Pax (future Optimus Prime) and Megatron before they became sworn enemies. It explores their friendship, their shared ideals, and the events that ultimately led to their tragic conflict.	7	Chris Hemsworth (voice of Orion Pax/Optimus Prime), Brian Tyree Henry (voice of Megatron), Scarlett Johansson, Keegan-Michael Key, Steve Buscemi, Laurence Fishburne, Jon Hamm	2025-01-31 10:08:30.845511	0
62	Jigra	Jigra Movie, Jigra 2024, Alia Bhatt Movies, Hindi Movies, Bollywood Movies, Action Thriller, Sister Brother Bond, Rescue Mission, Download Jigra Movie, Watch Jigra Online, Jigra Full Movie Download, Best Bollywood Movies, Top Rated Movies,	Jigra 2024 1080p BluRay Hindi Movie Download	jigra-2024-1080p-bluray-hindi-movie-download	jigra-2024-1080p-bluray-hindi-movie-download.jpeg	An action-packed thriller that follows Satya, a devoted sister, on a dangerous mission to rescue her brother from a foreign prison after he is wrongfully incarcerated.	2 hours 18 minutes	October 11, 2024	When Satya's brother is wrongfully imprisoned and sentenced to death in a foreign country, she embarks on a perilous and emotionally charged journey to break him out. Facing numerous obstacles and dangerous adversaries, Satya must rely on her courage, resourcefulness, and unwavering love for her brother to succeed in her daring rescue mission.	4	Alia Bhatt, Vedang Raina, Manoj Pahwa, Vivek Gomber	2025-01-31 08:28:16.948372	0
58	Sikandar Ka Muqaddar	Sikandar Ka Muqaddar Movie, Sikandar Ka Muqaddar 2024, Jimmy Sheirgill Movies, Avinash Tiwary Movies, Tamannaah Bhatia Movies, Bollywood Movies, Hindi Movies, Crime Thriller, Heist Movie, Indian Cinema, Download Sikandar Ka Muqaddar Movie, Watch Sikandar Ka Muqaddar Online, Sikandar Ka Muqaddar Full Movie Download, Best Bollywood Movies, Top Rated Movies,	Sikandar Ka Muqaddar 2024 1080p BluRay Hindi Movie Download	sikandar-ka-muqaddar-2024-1080p-bluray-hindi-movie	sikandar-ka-muqaddar-2024-1080p-bluray-hindi-movie.jpeg	 A gripping heist thriller that follows a dedicated police officer's relentless pursuit of a key suspect in an unsolved diamond robbery, leading to an obsession that blurs the lines between guilt and innocence.	2 hours 23 minutes	November 29, 2024	The film revolves around an investigating officer, Jaswinder Singh, who becomes obsessed with tracking down the culprits behind a daring diamond heist. His relentless pursuit leads him down a dangerous path, forcing him to confront the ethical dilemmas and personal sacrifices that come with his unwavering pursuit of justice.	4	Jimmy Sheirgill, Avinash Tiwary, Tamannaah Bhatia, Rajeev Mehta, Divya Dutta	2025-01-31 08:02:45.684075	0
66	khwabon ka jhamela	Khwaabon Ka Jhamela Movie, Khwaabon Ka Jhamela 2024, Prateik Babbar Movies, Sayani Gupta Movies, Kubbra Sait Movies, Bollywood Movies, Hindi Movies, Romantic Comedy, Intimacy, Self-Discovery, Download Khwaabon Ka Jhamela Movie, Watch Khwaabon Ka Jhamela Online, Khwaabon Ka Jhamela Full Movie Download, Best Bollywood Movies, Top Rated Movies,	Khwaabon Ka Jhamela 2024 1080p BluRay Hindi Movie Download	khwaabon-ka-jhamela-2024-1080p-bluray-hindi-movie-	khwaabon-ka-jhamela-2024-1080p-bluray-hindi-movie-.jpeg	A quirky romantic comedy that follows Zubin, a man struggling with intimacy issues, who embarks on an unconventional journey of self-discovery with the help of Ruby, an intimacy coordinator.	 1 hour 53 minutes	November 8, 2024	The film follows Zubin, a man facing challenges in his romantic life due to intimacy issues. He unexpectedly crosses paths with Ruby, an intimacy coordinator, and an unconventional friendship develops. Together, they embark on a humorous and insightful journey of self-discovery, exploring intimacy, relationships, and the complexities of human connection.	4	Prateik Babbar, Sayani Gupta, Kubbra Sait	2025-01-31 09:32:11.231816	0
44	Je Jatt Vigad Gaya	Je Jatt Vigad Gaya, Je Jatt Vigad Gaya Movie, Punjabi Movies, Punjabi Comedy Movies, Watch Je Jatt Vigad Gaya Online, Download Je Jatt Vigad Gaya Movie, Je Jatt Vigad Gaya Full Movie Download, Punjabi Movie Download, Best Punjabi Comedy Movies, Funny Punjabi Movies, Watch Je Jatt Vigad Gaya Online Free, Download Punjabi Movies Free	Je Jatt Vigad Gaya 2024 720p HDRip Punjabi Movie Download	je-jatt-vigad-gaya-2024-720p-hdrip-punjabi-movie-d	je-jatt-vigad-gaya-2024-720p-hdrip-punjabi-movie-d.jpeg	 A hilarious Punjabi comedy that follows the misadventures of a young man who gets into a series of comical and chaotic situations after falling in love.	 2 hours 10 minutes	 February 14, 2024	 The film follows the comical escapades of a young man who falls head over heels in love and finds himself in a series of hilarious and unexpected situations as he tries to navigate the complexities of love and relationships.	4	Jayy Randhawa,  Deep Sehgal,  Pavan Malhotra	2025-01-28 10:25:24.159964	0
\.


--
-- Data for Name: movierequest; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.movierequest (movierequstid, email, message, creationdate, markfordelete) FROM stdin;
1	naveensaini94667@gmail.com	Please Upload Full Hd MMS	2025-01-24 13:26:14.219266	0
2	xyz@gamil.com	test 1	2025-01-24 13:27:59.149045	0
3	Chirag@y.com	Hello	2025-01-24 13:28:08.040471	0
4	hello	just testing	2025-01-31 14:57:48.920231	0
\.


--
-- Data for Name: user; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public."user" (u_id, name, bio, age, password, email, role) FROM stdin;
1	naveenSaini1	hello this is me because id ont care	18	$2a$10$lctwU6zlP8gPGX674KqJH.yaZ8fQxQzg1MaxFL7e8P1YCVVm73HuK	moviepubus@gmail.com	ROLE_ADMIN
\.


--
-- Data for Name: year_movie; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.year_movie (year_movie_id, movieid, yearid, creationdate, markfordelete) FROM stdin;
2	2	1	2025-01-24 13:24:11.626892	0
5	1	1	2025-01-25 06:31:24.574878	0
6	3	1	2025-01-25 06:37:15.118502	0
7	4	2	2025-01-25 06:50:46.056719	0
8	5	2	2025-01-25 07:08:04.302798	0
10	6	2	2025-01-25 07:38:16.384856	0
12	8	1	2025-01-25 08:16:09.378115	0
22	9	2	2025-01-26 07:36:48.994647	0
32	14	2	2025-01-26 08:48:58.965672	0
34	16	5	2025-01-26 09:04:04.414699	0
35	10	8	2025-01-26 09:04:25.163965	0
37	7	2	2025-01-26 09:05:03.946271	0
39	17	2	2025-01-26 09:05:39.193714	0
40	12	2	2025-01-26 09:06:06.431815	0
41	11	2	2025-01-26 09:07:05.724127	0
43	15	8	2025-01-26 09:08:09.449911	0
44	13	4	2025-01-26 09:08:47.119412	0
45	18	4	2025-01-26 09:10:39.274272	0
46	19	8	2025-01-26 09:16:10.591945	0
47	20	2	2025-01-26 09:24:14.888169	0
48	21	1	2025-01-26 09:32:18.49501	0
49	22	2	2025-01-26 09:37:51.995473	0
50	23	2	2025-01-26 09:41:56.88533	0
51	24	8	2025-01-26 09:44:38.842246	0
52	25	2	2025-01-26 09:48:07.010321	0
53	26	2	2025-01-26 09:56:01.816389	0
54	27	2	2025-01-26 09:59:08.139273	0
55	28	1	2025-01-26 10:16:34.454219	0
56	29	2	2025-01-26 10:20:19.792796	0
57	30	2	2025-01-26 10:25:01.833438	0
58	31	2	2025-01-26 10:29:25.370895	0
59	32	2	2025-01-26 10:32:40.798586	0
60	33	2	2025-01-26 10:39:32.618134	0
61	34	1	2025-01-26 10:43:18.659115	0
62	35	2	2025-01-26 10:47:57.774021	0
63	36	2	2025-01-26 10:53:39.133455	0
64	37	2	2025-01-26 10:58:56.272584	0
65	38	2	2025-01-26 11:02:12.351461	0
66	39	2	2025-01-26 11:05:10.045063	0
67	40	2	2025-01-26 11:09:53.176074	0
69	41	2	2025-01-28 10:09:54.026077	0
70	42	12	2025-01-28 10:19:22.130524	0
72	43	15	2025-01-28 10:21:34.562067	0
73	44	2	2025-01-28 10:25:25.112833	0
74	45	2	2025-01-28 10:31:08.640984	0
75	46	2	2025-01-28 10:34:44.469196	0
76	47	3	2025-01-28 10:39:20.036505	0
77	48	4	2025-01-28 10:43:36.494999	0
78	49	3	2025-01-28 10:49:53.763944	0
79	50	3	2025-01-28 10:49:53.926377	0
80	51	3	2025-01-28 10:57:41.19069	0
81	52	2	2025-01-28 11:22:21.475354	0
83	53	26	2025-01-28 11:28:24.610507	0
84	54	2	2025-01-28 11:33:52.344488	0
85	55	2	2025-01-28 11:38:15.403348	0
86	56	3	2025-01-31 07:46:53.361327	0
87	57	2	2025-01-31 07:54:52.409633	0
88	58	2	2025-01-31 08:02:46.715589	0
89	59	6	2025-01-31 08:07:29.907495	0
90	60	2	2025-01-31 08:14:42.093832	0
91	61	2	2025-01-31 08:21:33.836175	0
92	62	2	2025-01-31 08:28:17.933237	0
93	63	2	2025-01-31 08:36:26.238507	0
94	64	2	2025-01-31 08:41:29.84588	0
95	65	2	2025-01-31 08:47:11.17787	0
96	66	2	2025-01-31 09:32:12.381044	0
97	67	2	2025-01-31 09:36:41.13516	0
98	68	2	2025-01-31 09:40:35.534626	0
99	69	2	2025-01-31 09:46:49.028477	0
100	70	4	2025-01-31 09:52:42.424032	0
101	71	3	2025-01-31 09:56:32.588415	0
102	72	3	2025-01-31 10:02:56.754204	0
103	73	2	2025-01-31 10:08:31.884492	0
104	74	2	2025-01-31 10:12:09.30796	0
105	75	2	2025-01-31 10:20:05.064263	0
107	77	10	2025-01-31 12:10:54.524017	0
108	76	10	2025-01-31 12:11:32.691567	0
109	78	10	2025-01-31 12:16:31.141356	0
110	79	9	2025-01-31 12:26:38.946408	0
111	80	9	2025-01-31 12:33:09.911717	0
113	81	9	2025-01-31 12:38:13.349022	0
114	82	1	2025-02-02 08:54:59.999126	0
\.


--
-- Data for Name: years; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.years (yearid, name, creationdate, markfordelete) FROM stdin;
1	2025	2025-01-24 10:04:06.767529	0
2	2024	2025-01-24 13:11:05.878924	0
3	2023	2025-01-26 07:56:45.982418	0
4	2022	2025-01-26 07:56:54.054963	0
5	2021	2025-01-26 07:56:59.601616	0
6	2020	2025-01-26 07:57:07.568469	0
7	2019	2025-01-26 07:57:23.790814	0
8	2018	2025-01-26 07:57:33.696216	0
9	2017	2025-01-26 07:57:38.823217	0
10	2016	2025-01-26 07:57:43.660862	0
11	2015	2025-01-26 07:57:48.738618	0
12	2014	2025-01-26 07:57:54.865674	0
13	2013	2025-01-28 10:20:29.263947	0
14	2012	2025-01-28 10:20:35.846835	0
15	2011	2025-01-28 10:20:39.742149	0
16	2010	2025-01-28 10:20:42.593692	0
17	2009	2025-01-28 10:20:45.693564	0
18	2008	2025-01-28 10:20:50.603956	0
19	2007	2025-01-28 10:20:53.984838	0
20	2006	2025-01-28 10:20:57.044239	0
21	2005	2025-01-28 10:21:00.759931	0
22	2004	2025-01-28 10:21:05.419926	0
23	2003	2025-01-28 10:21:10.193412	0
24	2002	2025-01-28 10:21:12.556463	0
25	2001	2025-01-28 10:21:15.831823	0
26	2000	2025-01-28 10:21:18.634699	0
\.


--
-- Name: collections_collectionid_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.collections_collectionid_seq', 6, true);


--
-- Name: collections_movie_collection_movie_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.collections_movie_collection_movie_id_seq', 118, true);


--
-- Name: genre_movie_genre_movie_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.genre_movie_genre_movie_id_seq', 311, true);


--
-- Name: genres_genreid_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.genres_genreid_seq', 16, true);


--
-- Name: language_movie_language_movie_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.language_movie_language_movie_id_seq', 117, true);


--
-- Name: languages_languageid_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.languages_languageid_seq', 5, true);


--
-- Name: links_linkid_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.links_linkid_seq', 315, true);


--
-- Name: movie_movieid_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.movie_movieid_seq', 82, true);


--
-- Name: movierequest_movierequstid_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.movierequest_movierequstid_seq', 4, true);


--
-- Name: year_movie_year_movie_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.year_movie_year_movie_id_seq', 114, true);


--
-- Name: years_yearid_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.years_yearid_seq', 26, true);


--
-- Name: collections_movie collections_movie_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.collections_movie
    ADD CONSTRAINT collections_movie_pkey PRIMARY KEY (collection_movie_id);


--
-- Name: collections collections_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.collections
    ADD CONSTRAINT collections_pkey PRIMARY KEY (collectionid);


--
-- Name: genre_movie genre_movie_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.genre_movie
    ADD CONSTRAINT genre_movie_pkey PRIMARY KEY (genre_movie_id);


--
-- Name: genres genres_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.genres
    ADD CONSTRAINT genres_pkey PRIMARY KEY (genreid);


--
-- Name: language_movie language_movie_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.language_movie
    ADD CONSTRAINT language_movie_pkey PRIMARY KEY (language_movie_id);


--
-- Name: languages languages_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.languages
    ADD CONSTRAINT languages_pkey PRIMARY KEY (languageid);


--
-- Name: links links_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.links
    ADD CONSTRAINT links_pkey PRIMARY KEY (linkid);


--
-- Name: movie movie_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.movie
    ADD CONSTRAINT movie_pkey PRIMARY KEY (movieid);


--
-- Name: movierequest movierequest_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.movierequest
    ADD CONSTRAINT movierequest_pkey PRIMARY KEY (movierequstid);


--
-- Name: year_movie year_movie_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.year_movie
    ADD CONSTRAINT year_movie_pkey PRIMARY KEY (year_movie_id);


--
-- Name: years years_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.years
    ADD CONSTRAINT years_pkey PRIMARY KEY (yearid);


--
-- PostgreSQL database dump complete
--

