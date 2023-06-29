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
-- Name: galaxy; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.galaxy (
    galaxy_id integer NOT NULL,
    name character varying(40) NOT NULL,
    galaxy_description text,
    yl_from_earth integer,
    qty_planets integer
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
    name character varying(40) NOT NULL,
    moon_diameter integer NOT NULL,
    moon_perimeter numeric NOT NULL,
    moon_planet boolean NOT NULL,
    planet_id integer NOT NULL
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
    name character varying(40) NOT NULL,
    planet_diameter integer NOT NULL,
    planet_perimeter numeric NOT NULL,
    planet_have_moons boolean NOT NULL
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
    name character varying(40) NOT NULL,
    galaxy_id integer NOT NULL,
    type_of_star character varying(40),
    distance_from_sun integer
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
-- Name: universo; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.universo (
    name character varying(30) NOT NULL,
    num_planetas integer NOT NULL,
    universo_id integer NOT NULL
);


ALTER TABLE public.universo OWNER TO freecodecamp;

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
-- Data for Name: galaxy; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.galaxy VALUES (1, 'Via lactea', 'Es la galaxia donde se encuentra nuestro sistema solar', NULL, NULL);
INSERT INTO public.galaxy VALUES (2, 'Alpha Centaury', 'NGC5128', NULL, NULL);
INSERT INTO public.galaxy VALUES (3, 'Triangulo', 'M33', NULL, NULL);
INSERT INTO public.galaxy VALUES (4, 'Remolino', 'M33', NULL, NULL);
INSERT INTO public.galaxy VALUES (5, 'Sombrero', 'M104', NULL, NULL);
INSERT INTO public.galaxy VALUES (6, 'Andromeda', 'M31', NULL, NULL);


--
-- Data for Name: moon; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.moon VALUES (1, 'Luna', 32, 345, true, 3);
INSERT INTO public.moon VALUES (2, 'Io', 34, 567, true, 1);
INSERT INTO public.moon VALUES (3, 'Encelado', 22, 234, true, 2);
INSERT INTO public.moon VALUES (4, 'Titan', 43, 6787, true, 4);
INSERT INTO public.moon VALUES (5, 'Triton', 66, 789, true, 5);
INSERT INTO public.moon VALUES (6, 'Europa', 54, 456, true, 6);
INSERT INTO public.moon VALUES (7, 'Calisto', 56, 678, true, 1);
INSERT INTO public.moon VALUES (8, 'GaminEDES', 23, 434, true, 1);
INSERT INTO public.moon VALUES (9, 'Rea', 89, 789, true, 2);
INSERT INTO public.moon VALUES (10, 'Dione', 78, 987, true, 2);
INSERT INTO public.moon VALUES (11, 'Mimas', 45, 678, true, 3);
INSERT INTO public.moon VALUES (12, 'Caronte', 12, 345, false, 3);
INSERT INTO public.moon VALUES (13, 'Fobos', 56, 678, true, 1);
INSERT INTO public.moon VALUES (14, 'Deimos', 23, 434, true, 1);
INSERT INTO public.moon VALUES (15, 'Miranda', 89, 789, true, 2);
INSERT INTO public.moon VALUES (16, 'Oberon', 78, 987, true, 4);
INSERT INTO public.moon VALUES (17, 'Triton', 45, 678, true, 4);
INSERT INTO public.moon VALUES (18, 'Nayade', 12, 345, false, 7);
INSERT INTO public.moon VALUES (19, 'Tetis', 56, 678, true, 8);
INSERT INTO public.moon VALUES (20, 'Europa', 23, 434, true, 9);


--
-- Data for Name: planet; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.planet VALUES (1, 'Mercurio', 1234, 98765, true);
INSERT INTO public.planet VALUES (2, 'Venus', 2345, 12398, true);
INSERT INTO public.planet VALUES (3, 'Tierra', 4321, 87650, true);
INSERT INTO public.planet VALUES (4, 'Marte', 5465, 54377, true);
INSERT INTO public.planet VALUES (5, 'Jupiter', 7658, 34532, false);
INSERT INTO public.planet VALUES (6, 'Saturno', 3499, 76789, true);
INSERT INTO public.planet VALUES (7, 'Urano', 8765, 98531, true);
INSERT INTO public.planet VALUES (8, 'Pluton', 6978, 60949, true);
INSERT INTO public.planet VALUES (9, 'Serendo', 4876, 59890, false);
INSERT INTO public.planet VALUES (10, 'Kripton', 4321, 76309, false);
INSERT INTO public.planet VALUES (11, 'Malandrin', 7083, 56729, true);
INSERT INTO public.planet VALUES (12, 'Neptuno', 7900, 30495, true);


--
-- Data for Name: star; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.star VALUES (1, 'Antares', 1, NULL, NULL);
INSERT INTO public.star VALUES (2, 'Sol', 2, NULL, NULL);
INSERT INTO public.star VALUES (3, 'Sirio', 3, NULL, NULL);
INSERT INTO public.star VALUES (4, 'Betengeuse', 4, NULL, NULL);
INSERT INTO public.star VALUES (5, 'Vega', 5, NULL, NULL);
INSERT INTO public.star VALUES (6, 'Aldebaran', 6, NULL, NULL);


--
-- Data for Name: universo; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.universo VALUES ('Observable', 12, 1);
INSERT INTO public.universo VALUES ('Conocido', 10, 2);
INSERT INTO public.universo VALUES ('Fisico', 3, 3);


--
-- Name: galaxy_galaxy_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.galaxy_galaxy_id_seq', 6, true);


--
-- Name: moon_moon_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.moon_moon_id_seq', 20, true);


--
-- Name: planet_planet_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.planet_planet_id_seq', 12, true);


--
-- Name: star_star_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.star_star_id_seq', 6, true);


--
-- Name: galaxy galaxy_galaxy_id_key; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.galaxy
    ADD CONSTRAINT galaxy_galaxy_id_key UNIQUE (galaxy_id);


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
-- Name: moon moon_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.moon
    ADD CONSTRAINT moon_pkey PRIMARY KEY (moon_id);


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
-- Name: universo universo_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.universo
    ADD CONSTRAINT universo_pkey PRIMARY KEY (universo_id);


--
-- Name: universo universo_universo_id_key; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.universo
    ADD CONSTRAINT universo_universo_id_key UNIQUE (universo_id);


--
-- Name: moon moon_planet_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.moon
    ADD CONSTRAINT moon_planet_id_fkey FOREIGN KEY (planet_id) REFERENCES public.planet(planet_id);


--
-- Name: star star_galaxy_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.star
    ADD CONSTRAINT star_galaxy_id_fkey FOREIGN KEY (galaxy_id) REFERENCES public.galaxy(galaxy_id);


--
-- PostgreSQL database dump complete
--

