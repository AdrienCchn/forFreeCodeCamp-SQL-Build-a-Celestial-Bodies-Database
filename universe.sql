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
-- Name: area; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.area (
    area_id integer NOT NULL,
    name character varying(30) NOT NULL,
    name_fr character varying(30) NOT NULL,
    planet_id integer
);


ALTER TABLE public.area OWNER TO freecodecamp;

--
-- Name: area_area_id_seq; Type: SEQUENCE; Schema: public; Owner: freecodecamp
--

CREATE SEQUENCE public.area_area_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.area_area_id_seq OWNER TO freecodecamp;

--
-- Name: area_area_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: freecodecamp
--

ALTER SEQUENCE public.area_area_id_seq OWNED BY public.area.area_id;


--
-- Name: galaxy; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.galaxy (
    galaxy_id integer NOT NULL,
    name character varying(30) NOT NULL,
    name_fr text NOT NULL,
    nb_stars_milliard integer,
    galaxy_types character varying(30)
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
    name character varying(30) NOT NULL,
    name_fr character varying(30) NOT NULL,
    rayon_km numeric(5,1),
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
    name character varying(30) NOT NULL,
    name_fr character varying(30) NOT NULL,
    nb_moons integer,
    has_life boolean,
    has_water boolean,
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
-- Name: star; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.star (
    star_id integer NOT NULL,
    name character varying(30) NOT NULL,
    name_fr character varying(30) NOT NULL,
    nb_planets integer,
    star_type character varying(30),
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
-- Name: area area_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.area ALTER COLUMN area_id SET DEFAULT nextval('public.area_area_id_seq'::regclass);


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
-- Data for Name: area; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.area VALUES (1, 'America', 'Amérique', 11);
INSERT INTO public.area VALUES (2, 'Eurasia', 'Eurasie', 11);
INSERT INTO public.area VALUES (3, 'Africa', 'Afrique', 11);
INSERT INTO public.area VALUES (4, 'Australia', 'Australia', 11);
INSERT INTO public.area VALUES (5, 'Antartica', 'Antartique', 11);
INSERT INTO public.area VALUES (6, 'Vastitas Borealis', 'Vastitas Borealis', 12);
INSERT INTO public.area VALUES (7, 'Terra Sirenum', 'Terra Sirenum', 12);
INSERT INTO public.area VALUES (8, 'Meridiani Planum', 'Meridiani Planum', 12);
INSERT INTO public.area VALUES (9, 'Elysium Planitia', 'Elysium Planitia', 12);
INSERT INTO public.area VALUES (10, 'Issedon Paterae', 'Issedon Paterae', 12);


--
-- Data for Name: galaxy; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.galaxy VALUES (1, 'Milky Way', 'Voie lactée', 400, 'spiral');
INSERT INTO public.galaxy VALUES (2, 'Andromeda Galaxy', 'Galaxie de Andromède', 1000, 'ellipsoidal');
INSERT INTO public.galaxy VALUES (3, 'Cartwheel Galaxy', 'Galaxie de la Roue de chariot', 7, 'ellipsoidal');
INSERT INTO public.galaxy VALUES (4, 'Messier 82', 'Galaxie du cigare', NULL, 'spiral');
INSERT INTO public.galaxy VALUES (5, 'Large Magellanic Cloud', 'Grand Nuage de Magellan', 1, 'spiral');
INSERT INTO public.galaxy VALUES (6, 'Arp 148', 'Objet de Mayall', NULL, 'ring');
INSERT INTO public.galaxy VALUES (7, 'M51', 'Galaxie du Tourbillon', NULL, 'spiral');


--
-- Data for Name: moon; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.moon VALUES (1, 'Moon', 'Lune', 1737.4, 11);
INSERT INTO public.moon VALUES (2, 'Io', 'Io', 1821.6, 10);
INSERT INTO public.moon VALUES (3, 'Europa', 'Europe', 1560.8, 10);
INSERT INTO public.moon VALUES (4, 'Ganymede', 'Ganymède', 2634.1, 10);
INSERT INTO public.moon VALUES (5, 'Callisto', 'Callisto', 2410.3, 10);
INSERT INTO public.moon VALUES (6, 'Dione', 'Dione', 561.4, 10);
INSERT INTO public.moon VALUES (7, 'Enceladus', 'Enceladus', 252.1, 9);
INSERT INTO public.moon VALUES (8, 'Epimetheus', 'Epimetheus', 100.0, 9);
INSERT INTO public.moon VALUES (9, 'Prometheus', 'Prometheus', 119.0, 9);
INSERT INTO public.moon VALUES (10, 'Mimas', 'Mimas', 198.2, 9);
INSERT INTO public.moon VALUES (11, 'Rhea', 'Rhéa', 763.8, 9);
INSERT INTO public.moon VALUES (12, 'Janus', 'Janus', 194.0, 9);
INSERT INTO public.moon VALUES (13, 'Tethys', 'Tethys', 531.0, 9);
INSERT INTO public.moon VALUES (14, 'Titan', 'Titan', 2574.7, 9);
INSERT INTO public.moon VALUES (15, 'Titania', 'Titania', 788.4, 13);
INSERT INTO public.moon VALUES (16, 'Oberon', 'Obéron', 761.4, 13);
INSERT INTO public.moon VALUES (17, 'Ariel', 'Ariel', 1162.0, 13);
INSERT INTO public.moon VALUES (18, 'Umbriel', 'Umbriel', 584.5, 13);
INSERT INTO public.moon VALUES (19, 'Miranda', 'Miranda', 480.0, 13);
INSERT INTO public.moon VALUES (20, 'Triton', 'Triton', 1353.4, 14);


--
-- Data for Name: planet; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.planet VALUES (1, 'TRAPPIST-1 e', 'TRAPPIST-1 e', 0, false, true, 6);
INSERT INTO public.planet VALUES (2, 'TRAPPIST-1 f', 'TRAPPIST-1 f', 0, false, true, 6);
INSERT INTO public.planet VALUES (3, 'TRAPPIST-1 g', 'TRAPPIST-1 g', 0, false, true, 6);
INSERT INTO public.planet VALUES (4, 'Kepler-90 i', 'Kepler-90 i', 0, false, false, 5);
INSERT INTO public.planet VALUES (5, 'Kepler-90 c', 'Kepler-90 c', 0, false, false, 5);
INSERT INTO public.planet VALUES (6, '51 Pegasi b', 'Dimidium', 0, false, true, 4);
INSERT INTO public.planet VALUES (7, 'HD 10180 g', 'HD 10180 g', 1, false, false, 2);
INSERT INTO public.planet VALUES (8, 'Gliese 411 c', 'Gliese 411 c', 0, false, false, 3);
INSERT INTO public.planet VALUES (9, 'Saturn', 'Saturne', 82, false, true, 1);
INSERT INTO public.planet VALUES (10, 'Jupiter', 'Jupiter', 95, false, true, 1);
INSERT INTO public.planet VALUES (11, 'Earth', 'Terre', 1, true, true, 1);
INSERT INTO public.planet VALUES (12, 'Mars', 'Mars', 2, false, true, 1);
INSERT INTO public.planet VALUES (13, 'Uranus', 'Uranus', 28, false, true, 1);
INSERT INTO public.planet VALUES (14, 'Neptune', 'Neptune', 16, false, true, 1);


--
-- Data for Name: star; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.star VALUES (1, 'Sun', 'Soleil', 8, 'yellow dwarf', 1);
INSERT INTO public.star VALUES (2, 'HD 10180', 'HD 10180', 7, 'brown dwarf', 1);
INSERT INTO public.star VALUES (3, 'HD 95735', 'Lalande 21185', 4, 'red dwarf', 1);
INSERT INTO public.star VALUES (4, '51 Pegasi', '51 Pegasi', 1, 'yellow dwarf', 1);
INSERT INTO public.star VALUES (5, 'Kepler-90', 'Kepler-90', 8, 'yellow dwarf', 1);
INSERT INTO public.star VALUES (6, 'TRAPPIST-1', 'TRAPPIST-1', 7, 'red dwarf', 1);
INSERT INTO public.star VALUES (7, 'ULS-1', 'ULS-1', 1, '1X-ray binary', 7);


--
-- Name: area_area_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.area_area_id_seq', 10, true);


--
-- Name: galaxy_galaxy_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.galaxy_galaxy_id_seq', 7, true);


--
-- Name: moon_moon_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.moon_moon_id_seq', 20, true);


--
-- Name: planet_planet_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.planet_planet_id_seq', 14, true);


--
-- Name: star_star_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.star_star_id_seq', 7, true);


--
-- Name: area area_name_fr_key; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.area
    ADD CONSTRAINT area_name_fr_key UNIQUE (name_fr);


--
-- Name: area area_name_key; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.area
    ADD CONSTRAINT area_name_key UNIQUE (name);


--
-- Name: area area_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.area
    ADD CONSTRAINT area_pkey PRIMARY KEY (area_id);


--
-- Name: galaxy galaxy_name_fr_key; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.galaxy
    ADD CONSTRAINT galaxy_name_fr_key UNIQUE (name_fr);


--
-- Name: galaxy galaxy_name_key; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.galaxy
    ADD CONSTRAINT galaxy_name_key UNIQUE (name);


--
-- Name: galaxy galaxy_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.galaxy
    ADD CONSTRAINT galaxy_pkey PRIMARY KEY (galaxy_id);


--
-- Name: moon moon_name_fr_key; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.moon
    ADD CONSTRAINT moon_name_fr_key UNIQUE (name_fr);


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
-- Name: planet planet_name_fr_key; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.planet
    ADD CONSTRAINT planet_name_fr_key UNIQUE (name_fr);


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
-- Name: star star_name_fr_key; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.star
    ADD CONSTRAINT star_name_fr_key UNIQUE (name_fr);


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
-- Name: area area_planet_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.area
    ADD CONSTRAINT area_planet_id_fkey FOREIGN KEY (planet_id) REFERENCES public.planet(planet_id);


--
-- Name: moon moon_planet_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.moon
    ADD CONSTRAINT moon_planet_id_fkey FOREIGN KEY (planet_id) REFERENCES public.planet(planet_id);


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

