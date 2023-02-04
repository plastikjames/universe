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
-- Name: extra; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.extra (
    name character varying(20) NOT NULL,
    extra_id integer NOT NULL,
    description text
);


ALTER TABLE public.extra OWNER TO freecodecamp;

--
-- Name: extra_extra_id_seq; Type: SEQUENCE; Schema: public; Owner: freecodecamp
--

CREATE SEQUENCE public.extra_extra_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.extra_extra_id_seq OWNER TO freecodecamp;

--
-- Name: extra_extra_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: freecodecamp
--

ALTER SEQUENCE public.extra_extra_id_seq OWNED BY public.extra.extra_id;


--
-- Name: galaxy; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.galaxy (
    galaxy_id integer NOT NULL,
    distance_from_earth integer,
    speed integer,
    diameter_lightyears numeric,
    description text,
    has_life boolean,
    visible_with_eye boolean,
    name character varying(20) NOT NULL
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
    temp_day integer,
    temp_night integer,
    diameter_km numeric,
    description text,
    has_life boolean,
    visible_with_eye boolean,
    name character varying(20) NOT NULL,
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
    temp integer,
    orbit_days integer,
    diameter_km numeric,
    description text,
    has_life boolean,
    visible_with_eye boolean,
    name character varying(20) NOT NULL,
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
    temp integer,
    rotate_time integer,
    diameter_km numeric,
    description text,
    dying boolean,
    visible_with_eye boolean,
    name character varying(20) NOT NULL,
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
-- Name: extra extra_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.extra ALTER COLUMN extra_id SET DEFAULT nextval('public.extra_extra_id_seq'::regclass);


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
-- Data for Name: extra; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.extra VALUES ('more', 1, 'information');
INSERT INTO public.extra VALUES ('bare', 2, 'minimum');
INSERT INTO public.extra VALUES ('yikes', 3, 'I think I have done this);
');


--
-- Data for Name: galaxy; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.galaxy VALUES (1, 0, 600, 105700, 'The Milky Way is a huge collection of stars, dust and gas. Its called a spiral galaxy because if you could view it from the top or bottom, it would look like a spinning pinwheel. The Sun is located on one of the spiral arms, about 25,000 light-years away from the center of the galaxy.', true, true, 'Milky Way');
INSERT INTO public.galaxy VALUES (2, 3, 800, 220000, 'The Andromeda Galaxy gets its name from the area in which it appears, the constellation of Andromeda – which is named for the after the mythological Greek princess Andromeda.', false, true, 'Andromeda');
INSERT INTO public.galaxy VALUES (3, 163000, 700, 14000, 'The LMC is one of the closest galaxies of the Milky Way. Though it is a satellite galaxy, it is the fourth largest galaxy in the Local Group. It is around 14,000 light-years across. Take note that one light-year is roughly 6 trillion miles (9 trillion km). If we multiply 6 trillion miles by 14,000, we can get a sense of how really big the LMC is!', false, true, 'Magellanic Clouds');
INSERT INTO public.galaxy VALUES (4, 23000000, 650, 60000, 'Most people who might imagine the classic shape and structure of a galaxy will probably instantly start thinking of the Whirlpool Galaxy, a spiral galaxy that happens to exist relatively close to our own galaxy, the Milky Way. Due to its proximity and size, it was the first galaxy to be officially labeled with the spiral designation. In the modern age of science, astronomers are interested in the Whirlpool Galaxy due to its relationship with a nearby dwarf galaxy.', false, false, 'whirlpoool Galaxy');
INSERT INTO public.galaxy VALUES (5, 29000000, 900, 50000, 'The Sombrero Galaxy, one of the more unusual-looking barred spiral galaxies, owes its name to its resemblance to the Mexican hat of the same name. It has a large central bulge and a bright nucleus, and its spiral’s arms pass through a thick dust lane, which is the ring encircling the central bulge. The galaxys appearance is due to our seeing it edge on. Sombrero Galaxy is classed an an unbarred spiral galaxy and can be found in the constellation of Virgo. Its estimated distance from Earth is 29 million light years.', false, false, 'Sombrero Galaxy');
INSERT INTO public.galaxy VALUES (6, 900000000, 100000, 5000000, 'A long time ago in a galaxy far, far away', true, false, 'Star Wars Galaxy');


--
-- Data for Name: moon; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.moon VALUES (3, 120, -130, 3475, 'Earths moon. It is that big round white thing in our night sky.', false, true, 'Luna', 7);
INSERT INTO public.moon VALUES (4, 25, 25, 150, 'That aint no moon....', true, true, 'Death Star', 12);
INSERT INTO public.moon VALUES (5, NULL, NULL, NULL, 'TBA', false, false, 'Phobos', 8);
INSERT INTO public.moon VALUES (6, NULL, NULL, NULL, 'TBA', false, false, 'Demios', 8);
INSERT INTO public.moon VALUES (7, NULL, NULL, NULL, 'See this one with binoculars!', false, false, 'Titan', 42);
INSERT INTO public.moon VALUES (8, NULL, NULL, NULL, 'TBA', false, false, 'Rhea', 42);
INSERT INTO public.moon VALUES (9, NULL, NULL, NULL, 'TBA', false, false, 'Lapetus', 42);
INSERT INTO public.moon VALUES (10, NULL, NULL, NULL, 'TBA', false, false, 'Dione', 42);
INSERT INTO public.moon VALUES (11, NULL, NULL, NULL, 'TBA', false, false, 'Tethys', 42);
INSERT INTO public.moon VALUES (12, NULL, NULL, NULL, 'TBA', false, false, 'Mimas', 42);
INSERT INTO public.moon VALUES (13, NULL, NULL, NULL, 'TBA', false, false, 'Hyperion', 42);
INSERT INTO public.moon VALUES (14, NULL, NULL, NULL, 'TBA', false, false, 'Enceladus', 42);
INSERT INTO public.moon VALUES (15, NULL, NULL, NULL, 'TBA', false, false, 'Phoebe', 42);
INSERT INTO public.moon VALUES (16, NULL, NULL, NULL, 'TBA', false, false, 'Promtheus', 42);
INSERT INTO public.moon VALUES (17, NULL, NULL, NULL, 'TBA', false, false, 'Janus', 42);
INSERT INTO public.moon VALUES (18, NULL, NULL, NULL, 'TBA', false, false, 'Pandora', 42);
INSERT INTO public.moon VALUES (19, NULL, NULL, NULL, 'TBA', false, false, 'Helene', 42);
INSERT INTO public.moon VALUES (20, NULL, NULL, NULL, 'TBA', false, false, 'Siarnaq', 42);
INSERT INTO public.moon VALUES (21, NULL, NULL, NULL, 'TBA', false, false, 'Atlas', 42);
INSERT INTO public.moon VALUES (22, NULL, NULL, NULL, 'TBA', false, false, 'Pan', 42);


--
-- Data for Name: planet; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.planet VALUES (7, 16, 365, 12742, 'The center of it all, where you and I call home.', true, true, 'Earth', 1);
INSERT INTO public.planet VALUES (8, -28, 687, 6779, 'About 1/3 the size of Earth, Mars is the second-smallest planet in the Solar System.', false, true, 'Mars', 1);
INSERT INTO public.planet VALUES (9, -195, 30660, 50000, 'Along with Neptune, Uranus is classified as an ice giant because it contains more ices than the gas giants Jupiter and Saturn. Otherwise all the giant planets are fairly similar.', false, false, 'Uranus', 1);
INSERT INTO public.planet VALUES (10, 0, 88, 4879, 'The smallest planet in the Solar System and the closest to the Sun.', false, true, 'Mercury', 1);
INSERT INTO public.planet VALUES (11, -201, 60000, 49244, 'The outermost major planet has a blue appearance, caused by traces of methane in the planets atmosphere.', false, false, 'Neptune', 1);
INSERT INTO public.planet VALUES (12, 25, 365, 12742, 'This planet is doomed. Death star approaching!', true, false, 'Alderaan', 39);
INSERT INTO public.planet VALUES (40, 471, 243, 12104, 'A hot planet close to the sun.', false, true, 'Venus', 1);
INSERT INTO public.planet VALUES (41, -108, 30343, 139822, 'A large planet that has a lot of hydrogen', false, true, 'Jupiter', 1);
INSERT INTO public.planet VALUES (42, -138, 69789, 120500, 'A large planet with beautiful rings around it.', true, false, 'Saturn', 1);
INSERT INTO public.planet VALUES (43, 0, 88, 4879, 'This planet, Proxima Centauri b, has the classification of a super-Earth though its just a tad bigger than Earth.', false, false, 'Proxima Centauri b', 2);
INSERT INTO public.planet VALUES (44, -233, 335564, 2376, 'Is this really a planet? That is the queston...', false, false, 'Pluto', 1);
INSERT INTO public.planet VALUES (45, 25, 365, 12742, 'All that remains now....', false, false, 'Alderaan Asteroids', 39);


--
-- Data for Name: star; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.star VALUES (1, 10000, 27, 14000000, 'The centre of the solar system around which all the planets, moons, comets and asteroids orbit, the Suns heat and light are essential for life.', false, true, 'The Sun', 1);
INSERT INTO public.star VALUES (2, 12000, 6, 16000000, 'The brightest is Alpha Centauri, which is a double star containing a G-type main-sequence star similar to the Sun. Its called Alpha Centauri A.', true, true, 'Alpha Centauri', 1);
INSERT INTO public.star VALUES (3, 130000, 75, 28000000, 'The brightest star in our night sky is called Sirius and is also the brightest star in the constellation of Canis Major, the Big Dog. It lies 8.3 light-years away from us.', false, true, 'Sirius', 1);
INSERT INTO public.star VALUES (4, 200000, 34, 50000000, 'One way to express a stars size is by its diameter, which is usually written in terms of the radius of the Sun. Astronomers theorize that the widest a star can be is just under 2,000 solar radii. There are a few stars that reach that size, including one called UY Scuti.', true, true, 'UY Scuti', 1);
INSERT INTO public.star VALUES (5, 300000, 15, 406000, 'People often ask which stars will blow up as supernovae. There are a number of known red supergiant stars that could die this way. Betelgeuse is one of them. Its the second-brightest star in the constellation Orion, which is visible to stargazers in much of the world from November through April.', true, true, 'Betelgeuse', 1);
INSERT INTO public.star VALUES (39, 10000, NULL, NULL, 'Might not be the only star in this system soon - death star aproaching!', NULL, NULL, 'Alderaans Sun', 6);


--
-- Name: extra_extra_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.extra_extra_id_seq', 3, true);


--
-- Name: galaxy_galaxy_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.galaxy_galaxy_id_seq', 6, true);


--
-- Name: moon_moon_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.moon_moon_id_seq', 22, true);


--
-- Name: planet_planet_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.planet_planet_id_seq', 45, true);


--
-- Name: star_star_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.star_star_id_seq', 39, true);


--
-- Name: extra extra_name_key; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.extra
    ADD CONSTRAINT extra_name_key UNIQUE (name);


--
-- Name: extra extra_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.extra
    ADD CONSTRAINT extra_pkey PRIMARY KEY (extra_id);


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

