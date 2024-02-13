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
    name character varying(20) NOT NULL,
    description text,
    galaxy_types_id integer,
    is_deleted boolean DEFAULT false,
    status integer DEFAULT 1
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
-- Name: galaxy_types; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.galaxy_types (
    galaxy_types_id integer NOT NULL,
    name character varying(20),
    description text,
    is_deleted boolean DEFAULT false NOT NULL,
    status integer DEFAULT 1
);


ALTER TABLE public.galaxy_types OWNER TO freecodecamp;

--
-- Name: galaxy_types_galaxy_type_id_seq; Type: SEQUENCE; Schema: public; Owner: freecodecamp
--

CREATE SEQUENCE public.galaxy_types_galaxy_type_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.galaxy_types_galaxy_type_id_seq OWNER TO freecodecamp;

--
-- Name: galaxy_types_galaxy_type_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: freecodecamp
--

ALTER SEQUENCE public.galaxy_types_galaxy_type_id_seq OWNED BY public.galaxy_types.galaxy_types_id;


--
-- Name: moon; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.moon (
    moon_id integer NOT NULL,
    name character varying(20) NOT NULL,
    description text,
    planet_id integer,
    is_deleted boolean DEFAULT false,
    status integer DEFAULT 1
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
    name character varying(20) NOT NULL,
    star_id integer,
    description text,
    age_in_millions_of_years integer,
    has_life boolean,
    distance_from_earth numeric,
    is_spherical boolean,
    planet_types_id integer,
    is_deleted boolean DEFAULT false,
    status integer DEFAULT 1
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
-- Name: planet_types; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.planet_types (
    planet_types_id integer NOT NULL,
    name character varying(20),
    description text,
    is_deleted boolean DEFAULT false NOT NULL,
    status integer DEFAULT 1
);


ALTER TABLE public.planet_types OWNER TO freecodecamp;

--
-- Name: planet_types_planet_type_id_seq; Type: SEQUENCE; Schema: public; Owner: freecodecamp
--

CREATE SEQUENCE public.planet_types_planet_type_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.planet_types_planet_type_id_seq OWNER TO freecodecamp;

--
-- Name: planet_types_planet_type_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: freecodecamp
--

ALTER SEQUENCE public.planet_types_planet_type_id_seq OWNED BY public.planet_types.planet_types_id;


--
-- Name: star; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.star (
    star_id integer NOT NULL,
    name character varying(20) NOT NULL,
    galaxy_id integer,
    description text,
    is_deleted boolean DEFAULT false,
    status integer DEFAULT 1
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
-- Name: galaxy galaxy_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.galaxy ALTER COLUMN galaxy_id SET DEFAULT nextval('public.galaxy_galaxy_id_seq'::regclass);


--
-- Name: galaxy_types galaxy_types_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.galaxy_types ALTER COLUMN galaxy_types_id SET DEFAULT nextval('public.galaxy_types_galaxy_type_id_seq'::regclass);


--
-- Name: moon moon_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.moon ALTER COLUMN moon_id SET DEFAULT nextval('public.moon_moon_id_seq'::regclass);


--
-- Name: planet planet_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.planet ALTER COLUMN planet_id SET DEFAULT nextval('public.planet_planet_id_seq'::regclass);


--
-- Name: planet_types planet_types_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.planet_types ALTER COLUMN planet_types_id SET DEFAULT nextval('public.planet_types_planet_type_id_seq'::regclass);


--
-- Name: star star_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.star ALTER COLUMN star_id SET DEFAULT nextval('public.star_star_id_seq'::regclass);


--
-- Data for Name: galaxy; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.galaxy VALUES (1, 'Galaxy 01', 'Hello World 01', 1, true, 1);
INSERT INTO public.galaxy VALUES (2, 'Galaxy 02', 'Hello World 02', 2, true, 1);
INSERT INTO public.galaxy VALUES (3, 'Galaxy 03', 'Hello World 03', 3, true, 1);
INSERT INTO public.galaxy VALUES (4, 'Galaxy 04', 'Hello World 04', 3, true, 1);
INSERT INTO public.galaxy VALUES (5, 'Galaxy 05', 'Hello World 05', 3, true, 1);
INSERT INTO public.galaxy VALUES (6, 'Galaxy 06', 'Hello World 06', 3, true, 1);
INSERT INTO public.galaxy VALUES (7, 'Galaxy 07', NULL, 2, false, 1);
INSERT INTO public.galaxy VALUES (8, 'Galaxy 08', NULL, 2, false, 1);
INSERT INTO public.galaxy VALUES (9, 'Galaxy 09', NULL, 2, false, 1);
INSERT INTO public.galaxy VALUES (10, 'Galaxy 10', NULL, 2, false, 1);
INSERT INTO public.galaxy VALUES (11, 'Galaxy 11', NULL, 2, false, 1);
INSERT INTO public.galaxy VALUES (12, 'Galaxy 12', NULL, 2, false, 1);
INSERT INTO public.galaxy VALUES (13, 'Galaxy 13', NULL, 2, false, 1);
INSERT INTO public.galaxy VALUES (14, 'Galaxy 14', NULL, 2, false, 1);
INSERT INTO public.galaxy VALUES (15, 'Galaxy 15', NULL, 2, false, 1);
INSERT INTO public.galaxy VALUES (16, 'Galaxy 16', NULL, 2, false, 1);
INSERT INTO public.galaxy VALUES (17, 'Galaxy 17', NULL, 2, false, 1);
INSERT INTO public.galaxy VALUES (18, 'Galaxy 18', NULL, 2, false, 1);
INSERT INTO public.galaxy VALUES (19, 'Galaxy 19', NULL, 2, false, 1);
INSERT INTO public.galaxy VALUES (20, 'Galaxy 20', NULL, 2, false, 1);


--
-- Data for Name: galaxy_types; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.galaxy_types VALUES (2, 'Galaxy type 02', NULL, false, 1);
INSERT INTO public.galaxy_types VALUES (3, 'Galaxy type 03', NULL, false, 1);
INSERT INTO public.galaxy_types VALUES (1, 'Galaxy type 01', NULL, false, 1);


--
-- Data for Name: moon; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.moon VALUES (1, 'Moon 01', NULL, 1, true, 1);
INSERT INTO public.moon VALUES (2, 'Moon 02', NULL, 1, true, 1);
INSERT INTO public.moon VALUES (3, 'Moon 03', NULL, 1, true, 1);
INSERT INTO public.moon VALUES (4, 'Moon 04', NULL, 1, true, 1);
INSERT INTO public.moon VALUES (5, 'Moon 05', NULL, 1, true, 1);
INSERT INTO public.moon VALUES (6, 'Moon 06', NULL, 1, true, 1);
INSERT INTO public.moon VALUES (7, 'Moon 07', NULL, 1, false, 1);
INSERT INTO public.moon VALUES (8, 'Moon 08', NULL, 1, false, 1);
INSERT INTO public.moon VALUES (9, 'Moon 09', NULL, 1, false, 1);
INSERT INTO public.moon VALUES (10, 'Moon 10', NULL, 1, false, 1);
INSERT INTO public.moon VALUES (11, 'Moon 11', NULL, 1, false, 1);
INSERT INTO public.moon VALUES (12, 'Moon 12', NULL, 1, false, 1);
INSERT INTO public.moon VALUES (13, 'Moon 13', NULL, 1, false, 1);
INSERT INTO public.moon VALUES (14, 'Moon 14', NULL, 1, false, 1);
INSERT INTO public.moon VALUES (15, 'Moon 15', NULL, 1, false, 1);
INSERT INTO public.moon VALUES (16, 'Moon 16', NULL, 1, false, 1);
INSERT INTO public.moon VALUES (17, 'Moon 17', NULL, 1, false, 1);
INSERT INTO public.moon VALUES (18, 'Moon 18', NULL, 1, false, 1);
INSERT INTO public.moon VALUES (19, 'Moon 19', NULL, 1, false, 1);
INSERT INTO public.moon VALUES (20, 'Moon 20', NULL, 1, false, 1);


--
-- Data for Name: planet; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.planet VALUES (1, 'Planet 01', 1, NULL, NULL, NULL, NULL, NULL, 5, true, 1);
INSERT INTO public.planet VALUES (3, 'Planet 02', 2, NULL, NULL, NULL, NULL, NULL, 5, true, 1);
INSERT INTO public.planet VALUES (4, 'Planet 03', 3, NULL, NULL, NULL, NULL, NULL, 6, true, 1);
INSERT INTO public.planet VALUES (5, 'Planet 04', 4, NULL, NULL, NULL, NULL, NULL, 7, true, 1);
INSERT INTO public.planet VALUES (6, 'Planet 05', 5, NULL, NULL, NULL, NULL, NULL, 7, true, 1);
INSERT INTO public.planet VALUES (7, 'Planet 06', 6, NULL, NULL, NULL, NULL, NULL, 5, true, 1);
INSERT INTO public.planet VALUES (8, 'Planet 06', 6, NULL, NULL, NULL, NULL, NULL, 6, false, 1);
INSERT INTO public.planet VALUES (9, 'Planet 07', 6, NULL, NULL, NULL, NULL, NULL, 6, false, 1);
INSERT INTO public.planet VALUES (10, 'Planet 08', 6, NULL, NULL, NULL, NULL, NULL, 6, false, 1);
INSERT INTO public.planet VALUES (11, 'Planet 09', 6, NULL, NULL, NULL, NULL, NULL, 6, false, 1);
INSERT INTO public.planet VALUES (12, 'Planet 10', 6, NULL, NULL, NULL, NULL, NULL, 6, false, 1);
INSERT INTO public.planet VALUES (13, 'Planet 11', 6, NULL, NULL, NULL, NULL, NULL, 6, false, 1);
INSERT INTO public.planet VALUES (14, 'Planet 12', 6, NULL, NULL, NULL, NULL, NULL, 6, false, 1);
INSERT INTO public.planet VALUES (15, 'Planet 13', 6, NULL, NULL, NULL, NULL, NULL, 6, false, 1);
INSERT INTO public.planet VALUES (16, 'Planet 14', 6, NULL, NULL, NULL, NULL, NULL, 6, false, 1);
INSERT INTO public.planet VALUES (17, 'Planet 15', 6, NULL, NULL, NULL, NULL, NULL, 6, false, 1);
INSERT INTO public.planet VALUES (18, 'Planet 16', 6, NULL, NULL, NULL, NULL, NULL, 6, false, 1);
INSERT INTO public.planet VALUES (19, 'Planet 17', 6, NULL, NULL, NULL, NULL, NULL, 6, false, 1);
INSERT INTO public.planet VALUES (20, 'Planet 18', 6, NULL, NULL, NULL, NULL, NULL, 6, false, 1);
INSERT INTO public.planet VALUES (21, 'Planet 19', 6, NULL, NULL, NULL, NULL, NULL, 6, false, 1);
INSERT INTO public.planet VALUES (22, 'Planet 20', 6, NULL, NULL, NULL, NULL, NULL, 6, false, 1);


--
-- Data for Name: planet_types; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.planet_types VALUES (5, 'Planet type 01', NULL, false, 1);
INSERT INTO public.planet_types VALUES (6, 'Planet type 02', NULL, false, 1);
INSERT INTO public.planet_types VALUES (7, 'Planet type 03', NULL, false, 1);


--
-- Data for Name: star; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.star VALUES (1, 'Star 01', 1, NULL, true, 1);
INSERT INTO public.star VALUES (2, 'Star 02', 2, NULL, true, 1);
INSERT INTO public.star VALUES (3, 'Star 03', 2, NULL, true, 1);
INSERT INTO public.star VALUES (4, 'Star 04', 2, NULL, true, 1);
INSERT INTO public.star VALUES (5, 'Star 05', 2, NULL, true, 1);
INSERT INTO public.star VALUES (6, 'Star 06', 3, NULL, true, 1);


--
-- Name: galaxy_galaxy_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.galaxy_galaxy_id_seq', 20, true);


--
-- Name: galaxy_types_galaxy_type_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.galaxy_types_galaxy_type_id_seq', 3, true);


--
-- Name: moon_moon_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.moon_moon_id_seq', 20, true);


--
-- Name: planet_planet_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.planet_planet_id_seq', 22, true);


--
-- Name: planet_types_planet_type_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.planet_types_planet_type_id_seq', 7, true);


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
-- Name: galaxy_types galaxy_types_galaxy_type_id_key; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.galaxy_types
    ADD CONSTRAINT galaxy_types_galaxy_type_id_key UNIQUE (galaxy_types_id);


--
-- Name: galaxy_types galaxy_types_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.galaxy_types
    ADD CONSTRAINT galaxy_types_pkey PRIMARY KEY (galaxy_types_id);


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
-- Name: planet_types planet_types_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.planet_types
    ADD CONSTRAINT planet_types_pkey PRIMARY KEY (planet_types_id);


--
-- Name: planet_types planet_types_planet_type_id_key; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.planet_types
    ADD CONSTRAINT planet_types_planet_type_id_key UNIQUE (planet_types_id);


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
-- Name: galaxy galaxy_galaxy_type_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.galaxy
    ADD CONSTRAINT galaxy_galaxy_type_id_fkey FOREIGN KEY (galaxy_types_id) REFERENCES public.galaxy_types(galaxy_types_id);


--
-- Name: moon moon_planet_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.moon
    ADD CONSTRAINT moon_planet_id_fkey FOREIGN KEY (planet_id) REFERENCES public.planet(planet_id);


--
-- Name: planet planet_planet_type_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.planet
    ADD CONSTRAINT planet_planet_type_id_fkey FOREIGN KEY (planet_types_id) REFERENCES public.planet_types(planet_types_id);


--
-- Name: planet planet_star_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.planet
    ADD CONSTRAINT planet_star_id_fkey FOREIGN KEY (star_id) REFERENCES public.star(star_id);


--
-- Name: star star_galaxy_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.star
    ADD CONSTRAINT star_galaxy_id_fkey FOREIGN KEY (galaxy_id) REFERENCES public.galaxy(galaxy_id);


--
-- PostgreSQL database dump complete
--

