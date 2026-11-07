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
    user_id integer NOT NULL,
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

INSERT INTO public.games VALUES (1, 2, 376);
INSERT INTO public.games VALUES (2, 2, 586);
INSERT INTO public.games VALUES (3, 3, 201);
INSERT INTO public.games VALUES (4, 3, 986);
INSERT INTO public.games VALUES (5, 2, 213);
INSERT INTO public.games VALUES (6, 2, 66);
INSERT INTO public.games VALUES (7, 2, 791);
INSERT INTO public.games VALUES (8, 4, 568);
INSERT INTO public.games VALUES (9, 4, 716);
INSERT INTO public.games VALUES (10, 5, 791);
INSERT INTO public.games VALUES (11, 5, 460);
INSERT INTO public.games VALUES (12, 4, 412);
INSERT INTO public.games VALUES (13, 4, 675);
INSERT INTO public.games VALUES (14, 4, 304);
INSERT INTO public.games VALUES (15, 6, 227);
INSERT INTO public.games VALUES (16, 6, 102);
INSERT INTO public.games VALUES (17, 7, 172);
INSERT INTO public.games VALUES (18, 7, 297);
INSERT INTO public.games VALUES (19, 6, 701);
INSERT INTO public.games VALUES (20, 6, 234);
INSERT INTO public.games VALUES (21, 6, 820);
INSERT INTO public.games VALUES (22, 8, 75);
INSERT INTO public.games VALUES (23, 8, 611);
INSERT INTO public.games VALUES (24, 9, 133);
INSERT INTO public.games VALUES (25, 9, 676);
INSERT INTO public.games VALUES (26, 8, 409);
INSERT INTO public.games VALUES (27, 8, 599);
INSERT INTO public.games VALUES (28, 8, 732);
INSERT INTO public.games VALUES (29, 10, 194);
INSERT INTO public.games VALUES (30, 10, 918);
INSERT INTO public.games VALUES (31, 11, 578);
INSERT INTO public.games VALUES (32, 11, 645);
INSERT INTO public.games VALUES (33, 10, 103);
INSERT INTO public.games VALUES (34, 10, 694);
INSERT INTO public.games VALUES (35, 10, 943);
INSERT INTO public.games VALUES (36, 12, 475);
INSERT INTO public.games VALUES (37, 12, 428);
INSERT INTO public.games VALUES (38, 13, 194);
INSERT INTO public.games VALUES (39, 13, 670);
INSERT INTO public.games VALUES (40, 12, 844);
INSERT INTO public.games VALUES (41, 12, 307);
INSERT INTO public.games VALUES (42, 12, 981);
INSERT INTO public.games VALUES (43, 14, 18);


--
-- Data for Name: users; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.users VALUES (1, 'Regin');
INSERT INTO public.users VALUES (2, 'user_1794016978067');
INSERT INTO public.users VALUES (3, 'user_1794016978066');
INSERT INTO public.users VALUES (4, 'user_1794017018436');
INSERT INTO public.users VALUES (5, 'user_1794017018435');
INSERT INTO public.users VALUES (6, 'user_1794017054940');
INSERT INTO public.users VALUES (7, 'user_1794017054939');
INSERT INTO public.users VALUES (8, 'user_1794017081609');
INSERT INTO public.users VALUES (9, 'user_1794017081608');
INSERT INTO public.users VALUES (10, 'user_1794017144242');
INSERT INTO public.users VALUES (11, 'user_1794017144241');
INSERT INTO public.users VALUES (12, 'user_1794017214044');
INSERT INTO public.users VALUES (13, 'user_1794017214043');
INSERT INTO public.users VALUES (14, 'regin');


--
-- Name: games_game_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.games_game_id_seq', 43, true);


--
-- Name: users_user_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.users_user_id_seq', 14, true);


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

