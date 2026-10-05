--
-- PostgreSQL database dump
--

-- Dumped from database version 12.22 (Ubuntu 12.22-0ubuntu0.20.04.4)
-- Dumped by pg_dump version 12.22 (Ubuntu 12.22-0ubuntu0.20.04.4)

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

DROP DATABASE number_guess;
--
-- Name: number_guess; Type: DATABASE; Schema: -; Owner: freecodecamp
--

CREATE DATABASE number_guess WITH TEMPLATE = template0 ENCODING = 'UTF8' LC_COLLATE = 'C.UTF-8' LC_CTYPE = 'C.UTF-8';


ALTER DATABASE number_guess OWNER TO freecodecamp;

\connect number_guess

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
-- Name: games; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.games (
    game_id integer NOT NULL,
    user_id integer,
    guesses integer NOT NULL
);


ALTER TABLE public.games OWNER TO freecodecamp;

--
-- Name: games_game_id_seq; Type: SEQUENCE; Schema: public; Owner: freecodecamp
--

CREATE SEQUENCE public.games_game_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.games_game_id_seq OWNER TO freecodecamp;

--
-- Name: games_game_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: freecodecamp
--

ALTER SEQUENCE public.games_game_id_seq OWNED BY public.games.game_id;


--
-- Name: users; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.users (
    user_id integer NOT NULL,
    username character varying(22) NOT NULL
);


ALTER TABLE public.users OWNER TO freecodecamp;

--
-- Name: users_user_id_seq; Type: SEQUENCE; Schema: public; Owner: freecodecamp
--

CREATE SEQUENCE public.users_user_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.users_user_id_seq OWNER TO freecodecamp;

--
-- Name: users_user_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: freecodecamp
--

ALTER SEQUENCE public.users_user_id_seq OWNED BY public.users.user_id;


--
-- Name: games game_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.games ALTER COLUMN game_id SET DEFAULT nextval('public.games_game_id_seq'::regclass);


--
-- Name: users user_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.users ALTER COLUMN user_id SET DEFAULT nextval('public.users_user_id_seq'::regclass);


--
-- Data for Name: games; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.games VALUES (1, 3, 9);
INSERT INTO public.games VALUES (2, 3, 12);
INSERT INTO public.games VALUES (3, 4, 573);
INSERT INTO public.games VALUES (4, 5, 177);
INSERT INTO public.games VALUES (5, 4, 447);
INSERT INTO public.games VALUES (6, 4, 378);
INSERT INTO public.games VALUES (7, 4, 644);
INSERT INTO public.games VALUES (8, 3, 11);
INSERT INTO public.games VALUES (9, 3, 11);
INSERT INTO public.games VALUES (10, 8, 807);
INSERT INTO public.games VALUES (11, 9, 962);
INSERT INTO public.games VALUES (12, 8, 539);
INSERT INTO public.games VALUES (13, 8, 47);
INSERT INTO public.games VALUES (14, 8, 331);
INSERT INTO public.games VALUES (15, 10, 502);
INSERT INTO public.games VALUES (16, 10, 707);
INSERT INTO public.games VALUES (17, 11, 919);
INSERT INTO public.games VALUES (18, 11, 266);
INSERT INTO public.games VALUES (19, 10, 517);
INSERT INTO public.games VALUES (20, 10, 413);
INSERT INTO public.games VALUES (21, 10, 302);
INSERT INTO public.games VALUES (22, 12, 402);
INSERT INTO public.games VALUES (23, 12, 134);
INSERT INTO public.games VALUES (24, 13, 129);
INSERT INTO public.games VALUES (25, 13, 612);
INSERT INTO public.games VALUES (26, 12, 640);
INSERT INTO public.games VALUES (27, 12, 976);
INSERT INTO public.games VALUES (28, 12, 188);


--
-- Data for Name: users; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.users VALUES (1, 'alice');
INSERT INTO public.users VALUES (2, 'Enter your username:');
INSERT INTO public.users VALUES (3, 'bob');
INSERT INTO public.users VALUES (4, 'user_1791169160097');
INSERT INTO public.users VALUES (5, 'user_1791169160096');
INSERT INTO public.users VALUES (6, 'abc');
INSERT INTO public.users VALUES (7, '500');
INSERT INTO public.users VALUES (8, 'user_1791169767176');
INSERT INTO public.users VALUES (9, 'user_1791169767175');
INSERT INTO public.users VALUES (10, 'user_1791169907749');
INSERT INTO public.users VALUES (11, 'user_1791169907748');
INSERT INTO public.users VALUES (12, 'user_1791169961136');
INSERT INTO public.users VALUES (13, 'user_1791169961135');


--
-- Name: games_game_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.games_game_id_seq', 28, true);


--
-- Name: users_user_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.users_user_id_seq', 13, true);


--
-- Name: games games_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.games
    ADD CONSTRAINT games_pkey PRIMARY KEY (game_id);


--
-- Name: users users_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.users
    ADD CONSTRAINT users_pkey PRIMARY KEY (user_id);


--
-- Name: users users_username_key; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.users
    ADD CONSTRAINT users_username_key UNIQUE (username);


--
-- Name: games games_user_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.games
    ADD CONSTRAINT games_user_id_fkey FOREIGN KEY (user_id) REFERENCES public.users(user_id);


--
-- PostgreSQL database dump complete
--

