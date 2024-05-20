--
-- PostgreSQL database dump
--

-- Dumped from database version 12.17 (Ubuntu 12.17-1.pgdg22.04+1)
-- Dumped by pg_dump version 12.17 (Ubuntu 12.17-1.pgdg22.04+1)

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
    name character varying(60),
    description text,
    has_life boolean NOT NULL,
    is_spherical boolean NOT NULL,
    age_in_millions_of_years numeric(4,1),
    planet_types character varying(30),
    galaxy_types character varying(30),
    distance_from_earth integer
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
    name character varying(60),
    description text,
    has_life boolean NOT NULL,
    is_spherical boolean NOT NULL,
    age_in_millions_of_years numeric(4,1),
    planet_types character varying(30),
    distance_from_earth integer,
    planet_id integer
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
    name character varying(60),
    description text,
    is_spherical boolean NOT NULL,
    galaxy_types character varying(30),
    planet_types character varying(30),
    age_in_millions_of_years numeric(4,1),
    distance_from_earth integer,
    has_life boolean NOT NULL,
    star_id integer
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
-- Name: rotacion; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.rotacion (
    time_round integer,
    rotacion_id integer NOT NULL,
    distance_sun integer NOT NULL,
    age integer,
    name character varying(30) NOT NULL
);


ALTER TABLE public.rotacion OWNER TO freecodecamp;

--
-- Name: rotacion_rotacion_id_seq; Type: SEQUENCE; Schema: public; Owner: freecodecamp
--

CREATE SEQUENCE public.rotacion_rotacion_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.rotacion_rotacion_id_seq OWNER TO freecodecamp;

--
-- Name: rotacion_rotacion_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: freecodecamp
--

ALTER SEQUENCE public.rotacion_rotacion_id_seq OWNED BY public.rotacion.rotacion_id;


--
-- Name: star; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.star (
    star_id integer NOT NULL,
    name character varying(60),
    description text,
    is_spherical boolean NOT NULL,
    has_life boolean NOT NULL,
    planet_types character varying(30),
    galaxy_types character varying(30),
    distance_from_earth integer,
    age_in_millions_of_years numeric(4,1),
    galaxy_id integer
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
-- Name: system_solar; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.system_solar (
    name character varying(30) NOT NULL,
    distance_sun integer NOT NULL,
    age integer,
    system_solar_id integer NOT NULL
);


ALTER TABLE public.system_solar OWNER TO freecodecamp;

--
-- Name: system_solar_solar_id_seq; Type: SEQUENCE; Schema: public; Owner: freecodecamp
--

CREATE SEQUENCE public.system_solar_solar_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.system_solar_solar_id_seq OWNER TO freecodecamp;

--
-- Name: system_solar_solar_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: freecodecamp
--

ALTER SEQUENCE public.system_solar_solar_id_seq OWNED BY public.system_solar.system_solar_id;


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
-- Name: rotacion rotacion_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.rotacion ALTER COLUMN rotacion_id SET DEFAULT nextval('public.rotacion_rotacion_id_seq'::regclass);


--
-- Name: star star_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.star ALTER COLUMN star_id SET DEFAULT nextval('public.star_star_id_seq'::regclass);


--
-- Name: system_solar system_solar_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.system_solar ALTER COLUMN system_solar_id SET DEFAULT nextval('public.system_solar_solar_id_seq'::regclass);


--
-- Data for Name: galaxy; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.galaxy VALUES (1, 'Vía Láctea', 'money', false, true, NULL, NULL, 'numerica', 9);
INSERT INTO public.galaxy VALUES (3, 'navy', 'money', false, false, 100.0, 'type', 'type', 100);
INSERT INTO public.galaxy VALUES (4, 'navo\', 'money', false, false, 100.0, 'type', 'type', 100);
INSERT INTO public.galaxy VALUES (7, 'navy-1', 'money', false, true, 100.0, 'type', 'type', 10);
INSERT INTO public.galaxy VALUES (8, 'navy-2', 'money', false, true, 100.0, 'type', 'type', 10);
INSERT INTO public.galaxy VALUES (9, 'navy-3', 'money', false, true, 100.0, 'type', 'type', 10);


--
-- Data for Name: moon; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.moon VALUES (1, 'luna', 'none', false, false, 0.0, 'none', 0, 1);
INSERT INTO public.moon VALUES (2, 'luna-1', 'none', false, false, 0.0, 'none', 0, 2);
INSERT INTO public.moon VALUES (3, 'luna-2', 'none', false, false, 0.0, 'none', 0, 3);
INSERT INTO public.moon VALUES (4, 'moon-4', 'none', false, false, 0.0, 'none', 0, 1);
INSERT INTO public.moon VALUES (5, 'moon-5', 'none', false, false, 0.0, 'none', 0, 1);
INSERT INTO public.moon VALUES (6, 'moon-6', 'none', false, false, 0.0, 'none', 0, 1);
INSERT INTO public.moon VALUES (7, 'moon-7', 'none', false, false, 0.0, 'none', 0, 1);
INSERT INTO public.moon VALUES (8, 'moon-8', 'none', false, false, 0.0, 'none', 0, 1);
INSERT INTO public.moon VALUES (9, 'moon-9', 'none', false, false, 0.0, 'none', 0, 1);
INSERT INTO public.moon VALUES (10, 'moon-10', 'none', false, false, 0.0, 'none', 0, 1);
INSERT INTO public.moon VALUES (11, 'moon-11', 'none', false, false, 0.0, 'none', 0, 1);
INSERT INTO public.moon VALUES (12, 'moon-12', 'none', false, false, 0.0, 'none', 0, 1);
INSERT INTO public.moon VALUES (13, 'moon-13', 'none', false, false, 0.0, 'none', 0, 1);
INSERT INTO public.moon VALUES (14, 'moon-14', 'none', false, false, 0.0, 'none', 0, 1);
INSERT INTO public.moon VALUES (15, 'moon-15', 'none', false, false, 0.0, 'none', 0, 1);
INSERT INTO public.moon VALUES (16, 'moon-16', 'none', false, false, 0.0, 'none', 0, 1);
INSERT INTO public.moon VALUES (17, 'moon-17', 'none', false, false, 0.0, 'none', 0, 1);
INSERT INTO public.moon VALUES (18, 'moon-18', 'none', false, false, 0.0, 'none', 0, 1);
INSERT INTO public.moon VALUES (19, 'moon-19', 'none', false, false, 0.0, 'none', 0, 1);
INSERT INTO public.moon VALUES (20, 'moon-20', 'none', false, false, 0.0, 'none', 0, 1);


--
-- Data for Name: planet; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.planet VALUES (1, 'earth', 'none', true, 'none', 'none', 0.0, 0, true, 1);
INSERT INTO public.planet VALUES (2, 'earth-1', 'none', true, 'none', 'none', 0.0, 0, true, 3);
INSERT INTO public.planet VALUES (3, 'earth-2', 'none', true, 'none', 'none', 0.0, 0, true, 4);
INSERT INTO public.planet VALUES (6, 'earth-2', 'none', false, 'none', 'none', 0.0, 0, true, 1);
INSERT INTO public.planet VALUES (7, 'earth-2', 'none', false, 'none', 'none', 0.0, 0, true, 1);
INSERT INTO public.planet VALUES (8, 'earth-2', 'none', false, 'none', 'none', 0.0, 0, true, 1);
INSERT INTO public.planet VALUES (9, 'earth-2', 'none', false, 'none', 'none', 0.0, 0, true, 1);
INSERT INTO public.planet VALUES (10, 'earth-2', 'none', false, 'none', 'none', 0.0, 0, true, 1);
INSERT INTO public.planet VALUES (11, 'earth-2', 'none', false, 'none', 'none', 0.0, 0, true, 1);
INSERT INTO public.planet VALUES (12, 'earth-2', 'none', false, 'none', 'none', 0.0, 0, true, 1);
INSERT INTO public.planet VALUES (13, 'earth-2', 'none', false, 'none', 'none', 0.0, 0, true, 1);
INSERT INTO public.planet VALUES (14, 'earth-2', 'none', false, 'none', 'none', 0.0, 0, true, 1);
INSERT INTO public.planet VALUES (15, 'earth-2', 'none', false, 'none', 'none', 0.0, 0, true, 1);
INSERT INTO public.planet VALUES (16, 'earth-2', 'none', false, 'none', 'none', 0.0, 0, true, 1);
INSERT INTO public.planet VALUES (17, 'earth-2', 'none', false, 'none', 'none', 0.0, 0, true, 1);


--
-- Data for Name: rotacion; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.rotacion VALUES (0, 1, 0, 0, 'none');
INSERT INTO public.rotacion VALUES (0, 2, 0, 0, 'none-1');
INSERT INTO public.rotacion VALUES (0, 3, 0, 0, 'none-2');


--
-- Data for Name: star; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.star VALUES (1, 'enana', 'none', false, false, 'none', 'none', 0, 0.0, 1);
INSERT INTO public.star VALUES (3, 'enana-1', 'none', false, false, 'none', 'none', 0, 0.0, 3);
INSERT INTO public.star VALUES (4, 'enana-2', 'none', false, false, 'none', 'none', 0, 0.0, 4);
INSERT INTO public.star VALUES (6, 'star-2', 'none', false, false, 'none', 'none', 0, 0.0, 7);
INSERT INTO public.star VALUES (7, 'star-3', 'none', false, false, 'none', 'none', 0, 0.0, 8);
INSERT INTO public.star VALUES (8, 'star-4', 'none', false, false, 'none', 'none', 0, 0.0, 9);


--
-- Data for Name: system_solar; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.system_solar VALUES ('sun', 0, 0, 1);
INSERT INTO public.system_solar VALUES ('sun-1', 0, 0, 2);
INSERT INTO public.system_solar VALUES ('sun-2', 0, 0, 3);


--
-- Name: galaxy_galaxy_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.galaxy_galaxy_id_seq', 9, true);


--
-- Name: moon_moon_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.moon_moon_id_seq', 20, true);


--
-- Name: planet_planet_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.planet_planet_id_seq', 17, true);


--
-- Name: rotacion_rotacion_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.rotacion_rotacion_id_seq', 3, true);


--
-- Name: star_star_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.star_star_id_seq', 8, true);


--
-- Name: system_solar_solar_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.system_solar_solar_id_seq', 3, true);


--
-- Name: galaxy galaxy_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.galaxy
    ADD CONSTRAINT galaxy_pkey PRIMARY KEY (galaxy_id);


--
-- Name: moon moon_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.moon
    ADD CONSTRAINT moon_pkey PRIMARY KEY (moon_id);


--
-- Name: moon name_unique; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.moon
    ADD CONSTRAINT name_unique UNIQUE (name);


--
-- Name: rotacion pk_rotacion; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.rotacion
    ADD CONSTRAINT pk_rotacion PRIMARY KEY (rotacion_id);


--
-- Name: planet planet_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.planet
    ADD CONSTRAINT planet_pkey PRIMARY KEY (planet_id);


--
-- Name: rotacion rotacion_name_key; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.rotacion
    ADD CONSTRAINT rotacion_name_key UNIQUE (name);


--
-- Name: rotacion rotacion_rotacion_id_key; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.rotacion
    ADD CONSTRAINT rotacion_rotacion_id_key UNIQUE (rotacion_id);


--
-- Name: star star_galaxy_id_key; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.star
    ADD CONSTRAINT star_galaxy_id_key UNIQUE (galaxy_id);


--
-- Name: star star_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.star
    ADD CONSTRAINT star_pkey PRIMARY KEY (star_id);


--
-- Name: system_solar system_solar_name_key; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.system_solar
    ADD CONSTRAINT system_solar_name_key UNIQUE (name);


--
-- Name: system_solar system_solar_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.system_solar
    ADD CONSTRAINT system_solar_pkey PRIMARY KEY (system_solar_id);


--
-- Name: moon uniqe_moon; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.moon
    ADD CONSTRAINT uniqe_moon UNIQUE (moon_id);


--
-- Name: galaxy unique_name_galaxy; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.galaxy
    ADD CONSTRAINT unique_name_galaxy UNIQUE (name);


--
-- Name: planet unique_planet; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.planet
    ADD CONSTRAINT unique_planet UNIQUE (planet_id);


--
-- Name: star fk_galaxy_id; Type: FK CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.star
    ADD CONSTRAINT fk_galaxy_id FOREIGN KEY (galaxy_id) REFERENCES public.galaxy(galaxy_id);


--
-- Name: moon fk_planet_id; Type: FK CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.moon
    ADD CONSTRAINT fk_planet_id FOREIGN KEY (planet_id) REFERENCES public.planet(planet_id);


--
-- Name: planet pk_star_id; Type: FK CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.planet
    ADD CONSTRAINT pk_star_id FOREIGN KEY (star_id) REFERENCES public.star(star_id);


--
-- PostgreSQL database dump complete
--

