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
-- Name: country; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.country (
    country_id integer NOT NULL,
    country_name character varying(30) NOT NULL,
    planet_name character varying(30)
);


ALTER TABLE public.country OWNER TO freecodecamp;

--
-- Name: galaxy; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.galaxy (
    galaxy_id integer NOT NULL,
    galaxy_name character varying(30) NOT NULL,
    galaxy_types character varying(30),
    no_of_stars integer,
    visibility_from_earth boolean
);


ALTER TABLE public.galaxy OWNER TO freecodecamp;

--
-- Name: moon; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.moon (
    moon_id integer NOT NULL,
    moon_name character varying(30) NOT NULL,
    equatorial_diameter integer,
    orbital_period_in_days integer,
    planet_name character varying(30),
    predominantly_icy boolean
);


ALTER TABLE public.moon OWNER TO freecodecamp;

--
-- Name: planet; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.planet (
    planet_id integer NOT NULL,
    planet_name character varying(30) NOT NULL,
    planet_type character varying(30),
    planet_size integer,
    star_name character varying(30)
);


ALTER TABLE public.planet OWNER TO freecodecamp;

--
-- Name: star; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.star (
    star_id integer NOT NULL,
    star_types character varying(30),
    distance_from_earth integer,
    star_name character varying(30) NOT NULL,
    age_in_millions_of_years integer,
    galaxy_name character varying(30)
);


ALTER TABLE public.star OWNER TO freecodecamp;

--
-- Data for Name: country; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.country VALUES (1, 'Singapore', 'Earth');
INSERT INTO public.country VALUES (2, 'United States of America', 'Earth');
INSERT INTO public.country VALUES (3, 'Canada', 'Earth');


--
-- Data for Name: galaxy; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.galaxy VALUES (1, 'Milky Way', 'Spiral', 250, true);
INSERT INTO public.galaxy VALUES (2, 'Andromeda', 'Spiral', 100000, true);
INSERT INTO public.galaxy VALUES (3, 'Condor', 'Spiral', NULL, false);
INSERT INTO public.galaxy VALUES (4, 'Triangulum', 'Spiral', 40, false);
INSERT INTO public.galaxy VALUES (5, 'Black Eye', 'Spiral', 100, false);
INSERT INTO public.galaxy VALUES (6, 'Large Magellanic Cloud', 'Ring', 20, true);


--
-- Data for Name: moon; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.moon VALUES (1, 'Moon', 0, 27, 'Earth', false);
INSERT INTO public.moon VALUES (2, 'Io', 0, 2, 'Jupiter', false);
INSERT INTO public.moon VALUES (3, 'Europa', 0, 4, 'Jupiter', false);
INSERT INTO public.moon VALUES (4, 'Ganymede', 0, 7, 'Jupiter', true);
INSERT INTO public.moon VALUES (5, 'Callisto', 0, 17, 'Saturn', true);
INSERT INTO public.moon VALUES (6, 'Mimas', 0, 1, 'Saturn', true);
INSERT INTO public.moon VALUES (7, 'Enceladus', 0, 1, 'Saturn', true);
INSERT INTO public.moon VALUES (8, 'Tethys', 0, 1, 'Saturn', true);
INSERT INTO public.moon VALUES (9, 'Dione', 0, 2, 'Saturn', true);
INSERT INTO public.moon VALUES (10, 'Rhea', 0, 5, 'Saturn', true);
INSERT INTO public.moon VALUES (11, 'Titan', 0, 16, 'Saturn', true);
INSERT INTO public.moon VALUES (12, 'Iapetus', 0, 79, 'Saturn', true);
INSERT INTO public.moon VALUES (13, 'Miranda', 0, 1, 'Uranus', true);
INSERT INTO public.moon VALUES (14, 'Ariel', 0, 3, 'Uranus', true);
INSERT INTO public.moon VALUES (15, 'Umbriel', 0, 4, 'Uranus', true);
INSERT INTO public.moon VALUES (16, 'Titania', 0, 9, 'Uranus', true);
INSERT INTO public.moon VALUES (17, 'Oberon', 0, 14, 'Uranus', true);
INSERT INTO public.moon VALUES (18, 'Triton', 0, 6, 'Neptune', true);
INSERT INTO public.moon VALUES (19, 'Charon', 0, 6, 'Pluto', true);
INSERT INTO public.moon VALUES (20, 'Hydra', NULL, NULL, 'Pluto', true);


--
-- Data for Name: planet; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.planet VALUES (4, 'Haumea', 'Dwarf', 780, 'Sun');
INSERT INTO public.planet VALUES (5, 'Orcus', 'Dwarf', 450, 'Sun');
INSERT INTO public.planet VALUES (6, 'Eris', 'Dwarf', 1163, 'Sun');
INSERT INTO public.planet VALUES (1, 'Earth', 'Terrestrial', 6371, 'Sun');
INSERT INTO public.planet VALUES (2, 'Saturn', 'Gas Giant', 58232, 'Sun');
INSERT INTO public.planet VALUES (3, 'Neptune', 'Ice Giant', 24622, 'Sun');
INSERT INTO public.planet VALUES (7, 'Mercury', 'Terrestrial', 2439, 'Sun');
INSERT INTO public.planet VALUES (8, 'Venus', 'Terrestrial', 6051, 'Sun');
INSERT INTO public.planet VALUES (9, 'Mars', 'Terrestrial', 3390, 'Sun');
INSERT INTO public.planet VALUES (10, 'Jupiter', 'Gas Giant', 69911, 'Sun');
INSERT INTO public.planet VALUES (11, 'Uranus', 'Ice Giant', 25632, 'Sun');
INSERT INTO public.planet VALUES (12, 'Ceres', 'Dwarf', 470, 'Sun');
INSERT INTO public.planet VALUES (13, 'Pluto', 'Dwarf', 1188, 'Sun');
INSERT INTO public.planet VALUES (14, 'Quaoar', 'Dwarf', 543, 'Sun');
INSERT INTO public.planet VALUES (15, 'Makemake', 'Dwarf', 715, 'Sun');
INSERT INTO public.planet VALUES (16, 'Gonggong', 'Dwarf', 615, 'Sun');
INSERT INTO public.planet VALUES (17, 'Sedna', 'Dwarf', 500, 'Sun');
INSERT INTO public.planet VALUES (18, 'Proxima Centauri d', 'Exoplanet', 5000, 'Sagittarius');
INSERT INTO public.planet VALUES (19, 'Lalande 21185 c', 'Exoplanet', NULL, 'Ursa Major');
INSERT INTO public.planet VALUES (20, 'Lalande 21185 d', 'Exoplanet', NULL, 'Draco');


--
-- Data for Name: star; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.star VALUES (3, 'Circumpolar', 143, 'Sagittarius', 232, 'Milky Way');
INSERT INTO public.star VALUES (4, 'Variable Hypergiant', 83, 'Ursa Major', 300, 'Milky Way');
INSERT INTO public.star VALUES (5, 'Evolved Giant', 154, 'Draco', NULL, 'Milky Way');
INSERT INTO public.star VALUES (6, 'Blue-White Main-Sequence', 863, 'Orion', 8, 'Milky Way');
INSERT INTO public.star VALUES (1, 'Yellow Dwarf', 1, 'Sun', 4600, 'Milky Way');
INSERT INTO public.star VALUES (2, 'Supernova', 228, 'Cassiopeia', 220, 'Milky Way');


--
-- Name: country country_country_id_key; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.country
    ADD CONSTRAINT country_country_id_key UNIQUE (country_id);


--
-- Name: country country_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.country
    ADD CONSTRAINT country_pkey PRIMARY KEY (country_id);


--
-- Name: galaxy galaxy_name_key; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.galaxy
    ADD CONSTRAINT galaxy_name_key UNIQUE (galaxy_name);


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
-- Name: planet planet_planet_name_key; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.planet
    ADD CONSTRAINT planet_planet_name_key UNIQUE (planet_name);


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
-- Name: star star_star_name_key; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.star
    ADD CONSTRAINT star_star_name_key UNIQUE (star_name);


--
-- Name: country country_planet_name_fkey; Type: FK CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.country
    ADD CONSTRAINT country_planet_name_fkey FOREIGN KEY (planet_name) REFERENCES public.planet(planet_name);


--
-- Name: moon moon_planet_name_fkey; Type: FK CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.moon
    ADD CONSTRAINT moon_planet_name_fkey FOREIGN KEY (planet_name) REFERENCES public.planet(planet_name);


--
-- Name: planet planet_star_name_fkey; Type: FK CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.planet
    ADD CONSTRAINT planet_star_name_fkey FOREIGN KEY (star_name) REFERENCES public.star(star_name);


--
-- Name: star star_galaxy_name_fkey; Type: FK CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.star
    ADD CONSTRAINT star_galaxy_name_fkey FOREIGN KEY (galaxy_name) REFERENCES public.galaxy(galaxy_name);


--
-- PostgreSQL database dump complete
--