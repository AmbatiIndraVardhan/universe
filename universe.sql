--
-- PostgreSQL database dump
--

-- Dumped from database version 12.9 (Ubuntu 12.9-2.pgdg20.04+1)
-- Dumped by pg_dump version 12.9 (Ubuntu 12.9-2.pgdg20.04+1)

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

DROP DATABASE universe;
--
-- Name: universe; Type: DATABASE; Schema: -; Owner: freecodecamp
--

CREATE DATABASE universe WITH TEMPLATE = template0 ENCODING = 'UTF8' LC_COLLATE = 'C.UTF-8' LC_CTYPE = 'C.UTF-8';


ALTER DATABASE universe OWNER TO freecodecamp;

\connect universe

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
-- Name: earth; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.earth (
    earth_id integer NOT NULL,
    name character varying(50) NOT NULL,
    city character varying(30),
    metro boolean,
    village boolean,
    "int" integer
);


ALTER TABLE public.earth OWNER TO freecodecamp;

--
-- Name: earth_earth_id_seq; Type: SEQUENCE; Schema: public; Owner: freecodecamp
--

CREATE SEQUENCE public.earth_earth_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.earth_earth_id_seq OWNER TO freecodecamp;

--
-- Name: earth_earth_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: freecodecamp
--

ALTER SEQUENCE public.earth_earth_id_seq OWNED BY public.earth.earth_id;


--
-- Name: galaxy; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.galaxy (
    galaxy_id integer NOT NULL,
    name1 character varying(50) NOT NULL,
    year integer,
    distance_mly numeric,
    text text,
    name character varying(50)
);


ALTER TABLE public.galaxy OWNER TO freecodecamp;

--
-- Name: galaxy_galaxy_id_seq; Type: SEQUENCE; Schema: public; Owner: freecodecamp
--

CREATE SEQUENCE public.galaxy_galaxy_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.galaxy_galaxy_id_seq OWNER TO freecodecamp;

--
-- Name: galaxy_galaxy_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: freecodecamp
--

ALTER SEQUENCE public.galaxy_galaxy_id_seq OWNED BY public.galaxy.galaxy_id;


--
-- Name: moon; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.moon (
    moon_id integer NOT NULL,
    name character varying(50) NOT NULL,
    planet character varying(30),
    dia_wrt_earth numeric,
    atmosphere text,
    "int" integer
);


ALTER TABLE public.moon OWNER TO freecodecamp;

--
-- Name: moon_moon_id_seq; Type: SEQUENCE; Schema: public; Owner: freecodecamp
--

CREATE SEQUENCE public.moon_moon_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.moon_moon_id_seq OWNER TO freecodecamp;

--
-- Name: moon_moon_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: freecodecamp
--

ALTER SEQUENCE public.moon_moon_id_seq OWNED BY public.moon.moon_id;


--
-- Name: planet; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.planet (
    planet_id integer NOT NULL,
    name character varying(50) NOT NULL,
    no_of_moons integer,
    dia_wrt_earth numeric,
    rotation_period_days numeric,
    star character varying(30),
    "int" integer
);


ALTER TABLE public.planet OWNER TO freecodecamp;

--
-- Name: planet_planet_id_seq; Type: SEQUENCE; Schema: public; Owner: freecodecamp
--

CREATE SEQUENCE public.planet_planet_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.planet_planet_id_seq OWNER TO freecodecamp;

--
-- Name: planet_planet_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: freecodecamp
--

ALTER SEQUENCE public.planet_planet_id_seq OWNED BY public.planet.planet_id;


--
-- Name: star; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.star (
    star_id integer NOT NULL,
    name character varying(50) NOT NULL,
    age numeric,
    distance_ly numeric,
    name1 character varying(30)
);


ALTER TABLE public.star OWNER TO freecodecamp;

--
-- Name: star_star_id_seq; Type: SEQUENCE; Schema: public; Owner: freecodecamp
--

CREATE SEQUENCE public.star_star_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.star_star_id_seq OWNER TO freecodecamp;

--
-- Name: star_star_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: freecodecamp
--

ALTER SEQUENCE public.star_star_id_seq OWNED BY public.star.star_id;


--
-- Name: earth earth_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.earth ALTER COLUMN earth_id SET DEFAULT nextval('public.earth_earth_id_seq'::regclass);


--
-- Name: galaxy galaxy_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.galaxy ALTER COLUMN galaxy_id SET DEFAULT nextval('public.galaxy_galaxy_id_seq'::regclass);


--
-- Name: moon moon_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.moon ALTER COLUMN moon_id SET DEFAULT nextval('public.moon_moon_id_seq'::regclass);


--
-- Name: planet planet_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.planet ALTER COLUMN planet_id SET DEFAULT nextval('public.planet_planet_id_seq'::regclass);


--
-- Name: star star_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.star ALTER COLUMN star_id SET DEFAULT nextval('public.star_star_id_seq'::regclass);


--
-- Data for Name: earth; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.earth VALUES (1, 'RK Valley', 'Idupulapaya', false, true, NULL);
INSERT INTO public.earth VALUES (2, 'Kadapa', 'Kadapa', false, true, NULL);
INSERT INTO public.earth VALUES (3, 'Karakambadi', 'Tirupathi', true, false, NULL);


--
-- Data for Name: galaxy; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.galaxy VALUES (1, 'Milky way', 0, 0, 'The appearance from earth of the galaxy - a band of light', NULL);
INSERT INTO public.galaxy VALUES (2, 'Canis Major Dwarf', 2003, 0.025, 'The absolute closest galaxy', NULL);
INSERT INTO public.galaxy VALUES (3, 'CVirgo Stellar Stream', NULL, 0.030, NULL, NULL);
INSERT INTO public.galaxy VALUES (4, 'Sagittarius Dwarf Elliptical Galaxy', 1994, 0.081, NULL, NULL);
INSERT INTO public.galaxy VALUES (6, 'mall Magellanic cloud', 1914, 0.197, NULL, NULL);
INSERT INTO public.galaxy VALUES (5, 'SaLarge Magellanic cloud', 1994, 0.163, 'Largest satellite galaxy of the Milky way', NULL);


--
-- Data for Name: moon; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.moon VALUES (1, 'Mahalaya', 'RKV', 0.5, 'Yoga', NULL);
INSERT INTO public.moon VALUES (2, 'lo', 'Jupiter', 0.285, 'minimal', NULL);
INSERT INTO public.moon VALUES (3, 'Europa', 'Jupiter', 0.246, 'minimal', NULL);
INSERT INTO public.moon VALUES (4, 'ganymede', 'Jupiter', 0.413, 'minimal', NULL);
INSERT INTO public.moon VALUES (5, 'Callisto', 'Jupiter', 0.378, 'minimal', NULL);
INSERT INTO public.moon VALUES (6, 'Mimas', 'Saturn', 0.031, 'minimal', NULL);
INSERT INTO public.moon VALUES (7, 'Encelodus', 'Saturn', 0.04, 'minimal', NULL);
INSERT INTO public.moon VALUES (8, 'Tethys', 'Saturn', 0.084, NULL, NULL);
INSERT INTO public.moon VALUES (9, 'Dione', 'Saturn', 0.088, 'minimal', NULL);
INSERT INTO public.moon VALUES (10, 'Rhea', 'Saturn', 0.12, 'minimal', NULL);
INSERT INTO public.moon VALUES (11, 'Titan', 'Saturn', 0.404, 'N2, CH4', NULL);
INSERT INTO public.moon VALUES (43, 'Lapetus', 'Saturn', 0.115, NULL, NULL);
INSERT INTO public.moon VALUES (44, 'Miranda', 'Uranus', 0.037, NULL, NULL);
INSERT INTO public.moon VALUES (45, 'Ariel', 'Uranus', 0.091, NULL, NULL);
INSERT INTO public.moon VALUES (46, 'Umberiel', 'Uranus', 0.092, NULL, NULL);
INSERT INTO public.moon VALUES (47, 'Titania', 'Uranus', 0.124, NULL, NULL);
INSERT INTO public.moon VALUES (48, 'Oberon', 'Uranus', 0.119, NULL, NULL);
INSERT INTO public.moon VALUES (49, 'Triton', 'Neptune', 0.212, 'N2, CH4', NULL);
INSERT INTO public.moon VALUES (50, 'Charon', 'Pluto', 0.095, NULL, NULL);
INSERT INTO public.moon VALUES (51, 'Moon', 'Earth', 0.272, 'minimal', NULL);


--
-- Data for Name: planet; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.planet VALUES (1, 'RKV', 1, 1, 0, 'Ravi', NULL);
INSERT INTO public.planet VALUES (2, 'Earth', 1, 1, 1, 'Sirius', NULL);
INSERT INTO public.planet VALUES (3, 'Mercury', 0, 158.65, 0, 'Canopus', NULL);
INSERT INTO public.planet VALUES (4, 'Mars', 1, 1.03, 2, 'Arcturus', NULL);
INSERT INTO public.planet VALUES (5, 'Venus', 1, 243.02, 0, 'Alpha Centaruri', NULL);
INSERT INTO public.planet VALUES (6, 'Neptune', 4, 0.67, 14, 'Alpha Centaruri', NULL);
INSERT INTO public.planet VALUES (7, 'Uranus', 4, 0.72, 27, 'Alpha Centaruri', NULL);
INSERT INTO public.planet VALUES (8, 'Saturn', 9, 0.44, 83, 'Vega', NULL);
INSERT INTO public.planet VALUES (9, 'Jupiter', 11, 0.41, 80, 'Rigel', NULL);
INSERT INTO public.planet VALUES (10, 'Eris', 0, 14.56, 1, 'Procyon', NULL);
INSERT INTO public.planet VALUES (11, 'Pluto', 0, 6.39, 5, 'Achernar', NULL);
INSERT INTO public.planet VALUES (12, 'Ceres', 0, 0.38, 0, 'Mimosa', NULL);
INSERT INTO public.planet VALUES (13, 'Sedna', 0, 0.43, 0, 'Capella', NULL);


--
-- Data for Name: star; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.star VALUES (7, 'Ravi', NULL, NULL, NULL);
INSERT INTO public.star VALUES (3, 'Rigel', 9, 864.3, 'Milky way');
INSERT INTO public.star VALUES (2, 'Vega', 450, 25.05, 'Milky way');
INSERT INTO public.star VALUES (1, 'Sirius', 230, 8.611, 'Milky way');
INSERT INTO public.star VALUES (4, 'Canopus', 25, 309.8, 'Milky way');
INSERT INTO public.star VALUES (5, 'Mimosa', 8.11, 277.2, 'Milky way');
INSERT INTO public.star VALUES (6, 'Agena', 14.11, 391.4, 'Milky way');


--
-- Name: earth_earth_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.earth_earth_id_seq', 3, true);


--
-- Name: galaxy_galaxy_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.galaxy_galaxy_id_seq', 8, true);


--
-- Name: moon_moon_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.moon_moon_id_seq', 51, true);


--
-- Name: planet_planet_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.planet_planet_id_seq', 13, true);


--
-- Name: star_star_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.star_star_id_seq', 7, true);


--
-- Name: earth earth_earth_id_key; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.earth
    ADD CONSTRAINT earth_earth_id_key UNIQUE (earth_id);


--
-- Name: earth earth_name_key; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.earth
    ADD CONSTRAINT earth_name_key UNIQUE (name);


--
-- Name: earth earth_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.earth
    ADD CONSTRAINT earth_pkey PRIMARY KEY (earth_id);


--
-- Name: galaxy galaxy_galaxy_id_key; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.galaxy
    ADD CONSTRAINT galaxy_galaxy_id_key UNIQUE (galaxy_id);


--
-- Name: galaxy galaxy_name_key; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.galaxy
    ADD CONSTRAINT galaxy_name_key UNIQUE (name1);


--
-- Name: galaxy galaxy_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.galaxy
    ADD CONSTRAINT galaxy_pkey PRIMARY KEY (galaxy_id);


--
-- Name: moon moon_moon_id_key; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.moon
    ADD CONSTRAINT moon_moon_id_key UNIQUE (moon_id);


--
-- Name: moon moon_name_key; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.moon
    ADD CONSTRAINT moon_name_key UNIQUE (name);


--
-- Name: moon moon_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.moon
    ADD CONSTRAINT moon_pkey PRIMARY KEY (moon_id);


--
-- Name: planet planet_name_key; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.planet
    ADD CONSTRAINT planet_name_key UNIQUE (name);


--
-- Name: planet planet_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.planet
    ADD CONSTRAINT planet_pkey PRIMARY KEY (planet_id);


--
-- Name: planet planet_planet_id_key; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.planet
    ADD CONSTRAINT planet_planet_id_key UNIQUE (planet_id);


--
-- Name: star star_name_key; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.star
    ADD CONSTRAINT star_name_key UNIQUE (name);


--
-- Name: star star_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.star
    ADD CONSTRAINT star_pkey PRIMARY KEY (star_id);


--
-- Name: star star_star_id_key; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.star
    ADD CONSTRAINT star_star_id_key UNIQUE (star_id);


--
-- Name: star star_name1_fkey; Type: FK CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.star
    ADD CONSTRAINT star_name1_fkey FOREIGN KEY (name1) REFERENCES public.galaxy(name1);


--
-- PostgreSQL database dump complete
--

