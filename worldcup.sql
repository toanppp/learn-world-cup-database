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

DROP DATABASE worldcup;
--
-- Name: worldcup; Type: DATABASE; Schema: -; Owner: freecodecamp
--

CREATE DATABASE worldcup WITH TEMPLATE = template0 ENCODING = 'UTF8' LC_COLLATE = 'C.UTF-8' LC_CTYPE = 'C.UTF-8';


ALTER DATABASE worldcup OWNER TO freecodecamp;

\connect worldcup

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
    year integer NOT NULL,
    round character varying(255) NOT NULL,
    winner_id integer NOT NULL,
    opponent_id integer NOT NULL,
    winner_goals integer NOT NULL,
    opponent_goals integer NOT NULL
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
-- Name: teams; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.teams (
    team_id integer NOT NULL,
    name character varying(255) NOT NULL
);


ALTER TABLE public.teams OWNER TO freecodecamp;

--
-- Name: teams_team_id_seq; Type: SEQUENCE; Schema: public; Owner: freecodecamp
--

CREATE SEQUENCE public.teams_team_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.teams_team_id_seq OWNER TO freecodecamp;

--
-- Name: teams_team_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: freecodecamp
--

ALTER SEQUENCE public.teams_team_id_seq OWNED BY public.teams.team_id;


--
-- Name: games game_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.games ALTER COLUMN game_id SET DEFAULT nextval('public.games_game_id_seq'::regclass);


--
-- Name: teams team_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.teams ALTER COLUMN team_id SET DEFAULT nextval('public.teams_team_id_seq'::regclass);


--
-- Data for Name: games; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.games VALUES (161, 2018, 'Final', 1020, 1021, 4, 2);
INSERT INTO public.games VALUES (162, 2018, 'Third Place', 1022, 1023, 2, 0);
INSERT INTO public.games VALUES (163, 2018, 'Semi-Final', 1021, 1023, 2, 1);
INSERT INTO public.games VALUES (164, 2018, 'Semi-Final', 1020, 1022, 1, 0);
INSERT INTO public.games VALUES (165, 2018, 'Quarter-Final', 1021, 1029, 3, 2);
INSERT INTO public.games VALUES (166, 2018, 'Quarter-Final', 1023, 1031, 2, 0);
INSERT INTO public.games VALUES (167, 2018, 'Quarter-Final', 1022, 1033, 2, 1);
INSERT INTO public.games VALUES (168, 2018, 'Quarter-Final', 1020, 1035, 2, 0);
INSERT INTO public.games VALUES (169, 2018, 'Eighth-Final', 1023, 1037, 2, 1);
INSERT INTO public.games VALUES (170, 2018, 'Eighth-Final', 1031, 1039, 1, 0);
INSERT INTO public.games VALUES (171, 2018, 'Eighth-Final', 1022, 1041, 3, 2);
INSERT INTO public.games VALUES (172, 2018, 'Eighth-Final', 1033, 1043, 2, 0);
INSERT INTO public.games VALUES (173, 2018, 'Eighth-Final', 1021, 1045, 2, 1);
INSERT INTO public.games VALUES (174, 2018, 'Eighth-Final', 1029, 1047, 2, 1);
INSERT INTO public.games VALUES (175, 2018, 'Eighth-Final', 1035, 1049, 2, 1);
INSERT INTO public.games VALUES (176, 2018, 'Eighth-Final', 1020, 1051, 4, 3);
INSERT INTO public.games VALUES (177, 2014, 'Final', 1052, 1051, 1, 0);
INSERT INTO public.games VALUES (178, 2014, 'Third Place', 1054, 1033, 3, 0);
INSERT INTO public.games VALUES (179, 2014, 'Semi-Final', 1051, 1054, 1, 0);
INSERT INTO public.games VALUES (180, 2014, 'Semi-Final', 1052, 1033, 7, 1);
INSERT INTO public.games VALUES (181, 2014, 'Quarter-Final', 1054, 1061, 1, 0);
INSERT INTO public.games VALUES (182, 2014, 'Quarter-Final', 1051, 1022, 1, 0);
INSERT INTO public.games VALUES (183, 2014, 'Quarter-Final', 1033, 1037, 2, 1);
INSERT INTO public.games VALUES (184, 2014, 'Quarter-Final', 1052, 1020, 1, 0);
INSERT INTO public.games VALUES (185, 2014, 'Eighth-Final', 1033, 1069, 2, 1);
INSERT INTO public.games VALUES (186, 2014, 'Eighth-Final', 1037, 1035, 2, 0);
INSERT INTO public.games VALUES (187, 2014, 'Eighth-Final', 1020, 1073, 2, 0);
INSERT INTO public.games VALUES (188, 2014, 'Eighth-Final', 1052, 1075, 2, 1);
INSERT INTO public.games VALUES (189, 2014, 'Eighth-Final', 1054, 1043, 2, 1);
INSERT INTO public.games VALUES (190, 2014, 'Eighth-Final', 1061, 1079, 2, 1);
INSERT INTO public.games VALUES (191, 2014, 'Eighth-Final', 1051, 1039, 1, 0);
INSERT INTO public.games VALUES (192, 2014, 'Eighth-Final', 1022, 1083, 2, 1);


--
-- Data for Name: teams; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.teams VALUES (1023, 'England');
INSERT INTO public.teams VALUES (1031, 'Sweden');
INSERT INTO public.teams VALUES (1041, 'Japan');
INSERT INTO public.teams VALUES (1021, 'Croatia');
INSERT INTO public.teams VALUES (1045, 'Denmark');
INSERT INTO public.teams VALUES (1029, 'Russia');
INSERT INTO public.teams VALUES (1047, 'Spain');
INSERT INTO public.teams VALUES (1049, 'Portugal');
INSERT INTO public.teams VALUES (1033, 'Brazil');
INSERT INTO public.teams VALUES (1069, 'Chile');
INSERT INTO public.teams VALUES (1037, 'Colombia');
INSERT INTO public.teams VALUES (1035, 'Uruguay');
INSERT INTO public.teams VALUES (1020, 'France');
INSERT INTO public.teams VALUES (1073, 'Nigeria');
INSERT INTO public.teams VALUES (1052, 'Germany');
INSERT INTO public.teams VALUES (1075, 'Algeria');
INSERT INTO public.teams VALUES (1054, 'Netherlands');
INSERT INTO public.teams VALUES (1043, 'Mexico');
INSERT INTO public.teams VALUES (1061, 'Costa Rica');
INSERT INTO public.teams VALUES (1079, 'Greece');
INSERT INTO public.teams VALUES (1051, 'Argentina');
INSERT INTO public.teams VALUES (1039, 'Switzerland');
INSERT INTO public.teams VALUES (1022, 'Belgium');
INSERT INTO public.teams VALUES (1083, 'United States');


--
-- Name: games_game_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.games_game_id_seq', 192, true);


--
-- Name: teams_team_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.teams_team_id_seq', 1083, true);


--
-- Name: games games_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.games
    ADD CONSTRAINT games_pkey PRIMARY KEY (game_id);


--
-- Name: teams teams_name_key; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.teams
    ADD CONSTRAINT teams_name_key UNIQUE (name);


--
-- Name: teams teams_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.teams
    ADD CONSTRAINT teams_pkey PRIMARY KEY (team_id);


--
-- Name: games games_opponent_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.games
    ADD CONSTRAINT games_opponent_id_fkey FOREIGN KEY (opponent_id) REFERENCES public.teams(team_id);


--
-- Name: games games_winner_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.games
    ADD CONSTRAINT games_winner_id_fkey FOREIGN KEY (winner_id) REFERENCES public.teams(team_id);


--
-- PostgreSQL database dump complete
--

