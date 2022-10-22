--
-- PostgreSQL database dump
--

-- Dumped from database version 11.17 (Debian 11.17-astra.se1)
-- Dumped by pg_dump version 14.2

-- Started on 2022-10-22 12:50:31

SET statement_timeout = 0;
SET lock_timeout = 0;
SET idle_in_transaction_session_timeout = 0;
SET client_encoding = 'UTF8';
SET standard_conforming_strings = off;
SELECT pg_catalog.set_config('search_path', '', false);
SET check_function_bodies = false;
SET xmloption = content;
SET client_min_messages = warning;
SET escape_string_warning = off;
SET row_security = off;

--
-- TOC entry 4 (class 2615 OID 23626)
-- Name: laboratory_file; Type: SCHEMA; Schema: -; Owner: -
--

CREATE SCHEMA laboratory_file;


SET default_tablespace = '';

--
-- TOC entry 198 (class 1259 OID 23630)
-- Name: accountant; Type: TABLE; Schema: laboratory_file; Owner: -
--

CREATE TABLE laboratory_file.accountant (
    id_acc integer NOT NULL,
    acc_name text,
    id_user integer NOT NULL
);


--
-- TOC entry 199 (class 1259 OID 23636)
-- Name: insurance; Type: TABLE; Schema: laboratory_file; Owner: -
--

CREATE TABLE laboratory_file.insurance (
    id_ins integer NOT NULL,
    title text,
    inn integer,
    address text,
    "R/S" integer,
    bik integer
);


--
-- TOC entry 200 (class 1259 OID 23642)
-- Name: lab_serv; Type: TABLE; Schema: laboratory_file; Owner: -
--

CREATE TABLE laboratory_file.lab_serv (
    id_lab_ser integer NOT NULL,
    id_lab_ass integer NOT NULL,
    id_ser integer NOT NULL
);


--
-- TOC entry 210 (class 1259 OID 23687)
-- Name: lab_type; Type: TABLE; Schema: laboratory_file; Owner: -
--

CREATE TABLE laboratory_file.lab_type (
    id_type_lab integer NOT NULL,
    type integer
);


--
-- TOC entry 201 (class 1259 OID 23645)
-- Name: labarotory_assistant; Type: TABLE; Schema: laboratory_file; Owner: -
--

CREATE TABLE laboratory_file.labarotory_assistant (
    id_lab_ass integer NOT NULL,
    id_user integer NOT NULL,
    id_type_lab integer NOT NULL
);


--
-- TOC entry 202 (class 1259 OID 23648)
-- Name: ord_ser; Type: TABLE; Schema: laboratory_file; Owner: -
--

CREATE TABLE laboratory_file.ord_ser (
    id_ord_ser integer NOT NULL,
    id_ser integer NOT NULL,
    id_ord integer NOT NULL,
    id_stat integer NOT NULL
);


--
-- TOC entry 203 (class 1259 OID 23651)
-- Name: order; Type: TABLE; Schema: laboratory_file; Owner: -
--

CREATE TABLE laboratory_file."order" (
    id_ord integer NOT NULL,
    ord_date date,
    id_stat integer NOT NULL
);


--
-- TOC entry 204 (class 1259 OID 23654)
-- Name: patient; Type: TABLE; Schema: laboratory_file; Owner: -
--

CREATE TABLE laboratory_file.patient (
    id_pat integer NOT NULL,
    name text,
    birth date,
    pass_s integer,
    pass_n integer,
    tel_num integer,
    email text,
    id_user integer NOT NULL
);


--
-- TOC entry 197 (class 1259 OID 23627)
-- Name: policy; Type: TABLE; Schema: laboratory_file; Owner: -
--

CREATE TABLE laboratory_file.policy (
    id_pol integer NOT NULL,
    id_pat integer NOT NULL,
    id_ins integer,
    pol_num integer,
    id_type_pol integer NOT NULL
);


--
-- TOC entry 205 (class 1259 OID 23660)
-- Name: policy_type; Type: TABLE; Schema: laboratory_file; Owner: -
--

CREATE TABLE laboratory_file.policy_type (
    id_type_pol integer NOT NULL,
    title text
);


--
-- TOC entry 206 (class 1259 OID 23666)
-- Name: role; Type: TABLE; Schema: laboratory_file; Owner: -
--

CREATE TABLE laboratory_file.role (
    id_role integer NOT NULL,
    title text
);


--
-- TOC entry 207 (class 1259 OID 23672)
-- Name: ser_com; Type: TABLE; Schema: laboratory_file; Owner: -
--

CREATE TABLE laboratory_file.ser_com (
    id_com_ser integer NOT NULL,
    id_ser integer NOT NULL,
    id_lab_ass integer NOT NULL,
    id_pat integer NOT NULL,
    analyzer integer NOT NULL,
    id_ord_ser integer NOT NULL
);


--
-- TOC entry 208 (class 1259 OID 23675)
-- Name: service; Type: TABLE; Schema: laboratory_file; Owner: -
--

CREATE TABLE laboratory_file.service (
    id_ser integer NOT NULL,
    title character varying,
    price numeric,
    code integer,
    term date
);


--
-- TOC entry 209 (class 1259 OID 23681)
-- Name: status; Type: TABLE; Schema: laboratory_file; Owner: -
--

CREATE TABLE laboratory_file.status (
    id_stat integer NOT NULL,
    stat_name text
);


--
-- TOC entry 211 (class 1259 OID 23690)
-- Name: user; Type: TABLE; Schema: laboratory_file; Owner: -
--

CREATE TABLE laboratory_file."user" (
    id_user integer NOT NULL,
    name text,
    login character varying,
    password character varying,
    ip character varying,
    lastenter date,
    id_role integer NOT NULL
);


--
-- TOC entry 3034 (class 0 OID 23630)
-- Dependencies: 198
-- Data for Name: accountant; Type: TABLE DATA; Schema: laboratory_file; Owner: -
--



--
-- TOC entry 3035 (class 0 OID 23636)
-- Dependencies: 199
-- Data for Name: insurance; Type: TABLE DATA; Schema: laboratory_file; Owner: -
--



--
-- TOC entry 3036 (class 0 OID 23642)
-- Dependencies: 200
-- Data for Name: lab_serv; Type: TABLE DATA; Schema: laboratory_file; Owner: -
--

INSERT INTO laboratory_file.lab_serv VALUES (1, 1, 8);
INSERT INTO laboratory_file.lab_serv VALUES (2, 1, 14);
INSERT INTO laboratory_file.lab_serv VALUES (3, 1, 17);
INSERT INTO laboratory_file.lab_serv VALUES (4, 2, 12);
INSERT INTO laboratory_file.lab_serv VALUES (5, 2, 1);
INSERT INTO laboratory_file.lab_serv VALUES (6, 2, 8);
INSERT INTO laboratory_file.lab_serv VALUES (7, 2, 14);
INSERT INTO laboratory_file.lab_serv VALUES (8, 2, 3);
INSERT INTO laboratory_file.lab_serv VALUES (9, 3, 7);
INSERT INTO laboratory_file.lab_serv VALUES (10, 3, 14);
INSERT INTO laboratory_file.lab_serv VALUES (11, 4, 12);
INSERT INTO laboratory_file.lab_serv VALUES (12, 4, 4);
INSERT INTO laboratory_file.lab_serv VALUES (13, 5, 7);
INSERT INTO laboratory_file.lab_serv VALUES (14, 5, 10);
INSERT INTO laboratory_file.lab_serv VALUES (15, 5, 1);
INSERT INTO laboratory_file.lab_serv VALUES (16, 5, 8);
INSERT INTO laboratory_file.lab_serv VALUES (17, 6, 8);
INSERT INTO laboratory_file.lab_serv VALUES (18, 6, 14);
INSERT INTO laboratory_file.lab_serv VALUES (19, 6, 9);
INSERT INTO laboratory_file.lab_serv VALUES (20, 7, 17);
INSERT INTO laboratory_file.lab_serv VALUES (21, 7, 1);
INSERT INTO laboratory_file.lab_serv VALUES (22, 7, 3);
INSERT INTO laboratory_file.lab_serv VALUES (23, 7, 13);
INSERT INTO laboratory_file.lab_serv VALUES (24, 8, 17);
INSERT INTO laboratory_file.lab_serv VALUES (25, 8, 1);
INSERT INTO laboratory_file.lab_serv VALUES (26, 8, 3);
INSERT INTO laboratory_file.lab_serv VALUES (27, 8, 13);
INSERT INTO laboratory_file.lab_serv VALUES (28, 9, 11);
INSERT INTO laboratory_file.lab_serv VALUES (29, 9, 3);
INSERT INTO laboratory_file.lab_serv VALUES (30, 9, 13);
INSERT INTO laboratory_file.lab_serv VALUES (31, 10, 9);
INSERT INTO laboratory_file.lab_serv VALUES (32, 10, 13);
INSERT INTO laboratory_file.lab_serv VALUES (33, 10, 6);
INSERT INTO laboratory_file.lab_serv VALUES (34, 10, 3);
INSERT INTO laboratory_file.lab_serv VALUES (35, 11, 17);
INSERT INTO laboratory_file.lab_serv VALUES (36, 12, 1);
INSERT INTO laboratory_file.lab_serv VALUES (37, 12, 4);
INSERT INTO laboratory_file.lab_serv VALUES (38, 12, 9);
INSERT INTO laboratory_file.lab_serv VALUES (39, 12, 8);
INSERT INTO laboratory_file.lab_serv VALUES (40, 12, 16);
INSERT INTO laboratory_file.lab_serv VALUES (41, 13, 11);
INSERT INTO laboratory_file.lab_serv VALUES (42, 13, 2);
INSERT INTO laboratory_file.lab_serv VALUES (43, 13, 8);
INSERT INTO laboratory_file.lab_serv VALUES (44, 14, 12);
INSERT INTO laboratory_file.lab_serv VALUES (45, 14, 5);
INSERT INTO laboratory_file.lab_serv VALUES (46, 14, 12);
INSERT INTO laboratory_file.lab_serv VALUES (47, 15, 9);
INSERT INTO laboratory_file.lab_serv VALUES (48, 15, 14);
INSERT INTO laboratory_file.lab_serv VALUES (49, 15, 17);
INSERT INTO laboratory_file.lab_serv VALUES (50, 15, 1);
INSERT INTO laboratory_file.lab_serv VALUES (51, 16, 8);
INSERT INTO laboratory_file.lab_serv VALUES (52, 17, 13);
INSERT INTO laboratory_file.lab_serv VALUES (53, 17, 14);
INSERT INTO laboratory_file.lab_serv VALUES (54, 18, 1);
INSERT INTO laboratory_file.lab_serv VALUES (55, 18, 4);
INSERT INTO laboratory_file.lab_serv VALUES (56, 19, 5);
INSERT INTO laboratory_file.lab_serv VALUES (57, 19, 7);
INSERT INTO laboratory_file.lab_serv VALUES (58, 19, 12);
INSERT INTO laboratory_file.lab_serv VALUES (59, 19, 4);
INSERT INTO laboratory_file.lab_serv VALUES (60, 20, 11);
INSERT INTO laboratory_file.lab_serv VALUES (61, 20, 12);
INSERT INTO laboratory_file.lab_serv VALUES (62, 20, 15);
INSERT INTO laboratory_file.lab_serv VALUES (63, 20, 17);
INSERT INTO laboratory_file.lab_serv VALUES (64, 21, 13);
INSERT INTO laboratory_file.lab_serv VALUES (65, 21, 12);
INSERT INTO laboratory_file.lab_serv VALUES (66, 21, 11);
INSERT INTO laboratory_file.lab_serv VALUES (67, 21, 8);
INSERT INTO laboratory_file.lab_serv VALUES (68, 21, 6);
INSERT INTO laboratory_file.lab_serv VALUES (69, 22, 12);
INSERT INTO laboratory_file.lab_serv VALUES (70, 22, 17);
INSERT INTO laboratory_file.lab_serv VALUES (71, 23, 14);
INSERT INTO laboratory_file.lab_serv VALUES (72, 23, 9);
INSERT INTO laboratory_file.lab_serv VALUES (73, 23, 4);
INSERT INTO laboratory_file.lab_serv VALUES (74, 23, 14);
INSERT INTO laboratory_file.lab_serv VALUES (75, 24, 3);
INSERT INTO laboratory_file.lab_serv VALUES (76, 24, 8);
INSERT INTO laboratory_file.lab_serv VALUES (77, 24, 5);
INSERT INTO laboratory_file.lab_serv VALUES (78, 25, 7);
INSERT INTO laboratory_file.lab_serv VALUES (79, 25, 14);
INSERT INTO laboratory_file.lab_serv VALUES (80, 26, 3);
INSERT INTO laboratory_file.lab_serv VALUES (81, 26, 12);
INSERT INTO laboratory_file.lab_serv VALUES (82, 27, 6);
INSERT INTO laboratory_file.lab_serv VALUES (83, 27, 16);
INSERT INTO laboratory_file.lab_serv VALUES (84, 28, 5);
INSERT INTO laboratory_file.lab_serv VALUES (85, 28, 12);
INSERT INTO laboratory_file.lab_serv VALUES (86, 29, 14);
INSERT INTO laboratory_file.lab_serv VALUES (87, 29, 5);
INSERT INTO laboratory_file.lab_serv VALUES (88, 29, 1);
INSERT INTO laboratory_file.lab_serv VALUES (89, 29, 4);
INSERT INTO laboratory_file.lab_serv VALUES (90, 30, 13);
INSERT INTO laboratory_file.lab_serv VALUES (91, 31, 3);
INSERT INTO laboratory_file.lab_serv VALUES (92, 31, 9);
INSERT INTO laboratory_file.lab_serv VALUES (93, 31, 4);
INSERT INTO laboratory_file.lab_serv VALUES (94, 31, 1);
INSERT INTO laboratory_file.lab_serv VALUES (95, 32, 14);
INSERT INTO laboratory_file.lab_serv VALUES (96, 32, 16);
INSERT INTO laboratory_file.lab_serv VALUES (97, 33, 3);
INSERT INTO laboratory_file.lab_serv VALUES (98, 34, 6);
INSERT INTO laboratory_file.lab_serv VALUES (99, 34, 4);
INSERT INTO laboratory_file.lab_serv VALUES (100, 34, 15);
INSERT INTO laboratory_file.lab_serv VALUES (101, 34, 15);
INSERT INTO laboratory_file.lab_serv VALUES (102, 35, 16);
INSERT INTO laboratory_file.lab_serv VALUES (103, 35, 17);
INSERT INTO laboratory_file.lab_serv VALUES (104, 35, 12);
INSERT INTO laboratory_file.lab_serv VALUES (105, 35, 13);
INSERT INTO laboratory_file.lab_serv VALUES (106, 36, 10);
INSERT INTO laboratory_file.lab_serv VALUES (107, 36, 7);
INSERT INTO laboratory_file.lab_serv VALUES (108, 36, 14);
INSERT INTO laboratory_file.lab_serv VALUES (109, 37, 14);
INSERT INTO laboratory_file.lab_serv VALUES (110, 38, 6);
INSERT INTO laboratory_file.lab_serv VALUES (111, 39, 14);
INSERT INTO laboratory_file.lab_serv VALUES (112, 39, 4);
INSERT INTO laboratory_file.lab_serv VALUES (113, 39, 1);
INSERT INTO laboratory_file.lab_serv VALUES (114, 40, 16);
INSERT INTO laboratory_file.lab_serv VALUES (115, 40, 13);
INSERT INTO laboratory_file.lab_serv VALUES (116, 40, 7);
INSERT INTO laboratory_file.lab_serv VALUES (117, 40, 6);
INSERT INTO laboratory_file.lab_serv VALUES (118, 40, 4);
INSERT INTO laboratory_file.lab_serv VALUES (119, 41, 5);
INSERT INTO laboratory_file.lab_serv VALUES (120, 41, 1);
INSERT INTO laboratory_file.lab_serv VALUES (121, 42, 6);
INSERT INTO laboratory_file.lab_serv VALUES (122, 42, 4);
INSERT INTO laboratory_file.lab_serv VALUES (123, 43, 1);
INSERT INTO laboratory_file.lab_serv VALUES (124, 44, 10);
INSERT INTO laboratory_file.lab_serv VALUES (125, 44, 1);
INSERT INTO laboratory_file.lab_serv VALUES (126, 45, 7);
INSERT INTO laboratory_file.lab_serv VALUES (127, 46, 10);
INSERT INTO laboratory_file.lab_serv VALUES (128, 47, 11);
INSERT INTO laboratory_file.lab_serv VALUES (129, 47, 3);
INSERT INTO laboratory_file.lab_serv VALUES (130, 48, 5);
INSERT INTO laboratory_file.lab_serv VALUES (131, 48, 15);
INSERT INTO laboratory_file.lab_serv VALUES (132, 48, 17);
INSERT INTO laboratory_file.lab_serv VALUES (133, 49, 3);
INSERT INTO laboratory_file.lab_serv VALUES (134, 50, 15);
INSERT INTO laboratory_file.lab_serv VALUES (135, 50, 6);
INSERT INTO laboratory_file.lab_serv VALUES (136, 50, 10);
INSERT INTO laboratory_file.lab_serv VALUES (137, 51, 2);
INSERT INTO laboratory_file.lab_serv VALUES (138, 51, 12);
INSERT INTO laboratory_file.lab_serv VALUES (139, 51, 5);
INSERT INTO laboratory_file.lab_serv VALUES (140, 52, 17);
INSERT INTO laboratory_file.lab_serv VALUES (141, 52, 15);
INSERT INTO laboratory_file.lab_serv VALUES (142, 53, 16);
INSERT INTO laboratory_file.lab_serv VALUES (143, 53, 11);
INSERT INTO laboratory_file.lab_serv VALUES (144, 53, 3);
INSERT INTO laboratory_file.lab_serv VALUES (145, 54, 14);
INSERT INTO laboratory_file.lab_serv VALUES (146, 54, 7);
INSERT INTO laboratory_file.lab_serv VALUES (147, 54, 3);
INSERT INTO laboratory_file.lab_serv VALUES (148, 54, 2);
INSERT INTO laboratory_file.lab_serv VALUES (149, 55, 7);
INSERT INTO laboratory_file.lab_serv VALUES (150, 55, 17);
INSERT INTO laboratory_file.lab_serv VALUES (151, 55, 4);
INSERT INTO laboratory_file.lab_serv VALUES (152, 56, 17);
INSERT INTO laboratory_file.lab_serv VALUES (153, 56, 8);
INSERT INTO laboratory_file.lab_serv VALUES (154, 56, 7);
INSERT INTO laboratory_file.lab_serv VALUES (155, 57, 1);
INSERT INTO laboratory_file.lab_serv VALUES (156, 57, 11);
INSERT INTO laboratory_file.lab_serv VALUES (157, 57, 12);
INSERT INTO laboratory_file.lab_serv VALUES (158, 57, 9);
INSERT INTO laboratory_file.lab_serv VALUES (159, 58, 5);
INSERT INTO laboratory_file.lab_serv VALUES (160, 58, 12);
INSERT INTO laboratory_file.lab_serv VALUES (161, 59, 14);
INSERT INTO laboratory_file.lab_serv VALUES (162, 59, 3);
INSERT INTO laboratory_file.lab_serv VALUES (163, 60, 7);
INSERT INTO laboratory_file.lab_serv VALUES (164, 61, 8);
INSERT INTO laboratory_file.lab_serv VALUES (165, 61, 17);
INSERT INTO laboratory_file.lab_serv VALUES (166, 61, 14);
INSERT INTO laboratory_file.lab_serv VALUES (167, 62, 13);
INSERT INTO laboratory_file.lab_serv VALUES (168, 62, 4);
INSERT INTO laboratory_file.lab_serv VALUES (169, 62, 7);
INSERT INTO laboratory_file.lab_serv VALUES (170, 62, 11);
INSERT INTO laboratory_file.lab_serv VALUES (171, 62, 5);
INSERT INTO laboratory_file.lab_serv VALUES (172, 63, 11);
INSERT INTO laboratory_file.lab_serv VALUES (173, 63, 6);
INSERT INTO laboratory_file.lab_serv VALUES (174, 64, 4);
INSERT INTO laboratory_file.lab_serv VALUES (175, 65, 5);
INSERT INTO laboratory_file.lab_serv VALUES (176, 65, 9);
INSERT INTO laboratory_file.lab_serv VALUES (177, 66, 12);
INSERT INTO laboratory_file.lab_serv VALUES (178, 66, 17);
INSERT INTO laboratory_file.lab_serv VALUES (179, 66, 16);
INSERT INTO laboratory_file.lab_serv VALUES (180, 67, 9);
INSERT INTO laboratory_file.lab_serv VALUES (181, 67, 11);
INSERT INTO laboratory_file.lab_serv VALUES (182, 67, 6);
INSERT INTO laboratory_file.lab_serv VALUES (183, 67, 4);
INSERT INTO laboratory_file.lab_serv VALUES (184, 67, 10);
INSERT INTO laboratory_file.lab_serv VALUES (185, 68, 1);
INSERT INTO laboratory_file.lab_serv VALUES (186, 68, 4);
INSERT INTO laboratory_file.lab_serv VALUES (187, 68, 6);
INSERT INTO laboratory_file.lab_serv VALUES (188, 68, 17);
INSERT INTO laboratory_file.lab_serv VALUES (189, 69, 13);
INSERT INTO laboratory_file.lab_serv VALUES (190, 69, 2);
INSERT INTO laboratory_file.lab_serv VALUES (191, 69, 13);
INSERT INTO laboratory_file.lab_serv VALUES (192, 70, 14);
INSERT INTO laboratory_file.lab_serv VALUES (193, 70, 13);
INSERT INTO laboratory_file.lab_serv VALUES (194, 71, 13);
INSERT INTO laboratory_file.lab_serv VALUES (195, 72, 3);
INSERT INTO laboratory_file.lab_serv VALUES (196, 72, 4);
INSERT INTO laboratory_file.lab_serv VALUES (197, 72, 2);
INSERT INTO laboratory_file.lab_serv VALUES (198, 72, 9);
INSERT INTO laboratory_file.lab_serv VALUES (199, 73, 1);
INSERT INTO laboratory_file.lab_serv VALUES (200, 73, 15);
INSERT INTO laboratory_file.lab_serv VALUES (201, 73, 13);
INSERT INTO laboratory_file.lab_serv VALUES (202, 74, 13);
INSERT INTO laboratory_file.lab_serv VALUES (203, 74, 5);
INSERT INTO laboratory_file.lab_serv VALUES (204, 74, 5);
INSERT INTO laboratory_file.lab_serv VALUES (205, 74, 10);
INSERT INTO laboratory_file.lab_serv VALUES (206, 75, 5);
INSERT INTO laboratory_file.lab_serv VALUES (207, 75, 1);
INSERT INTO laboratory_file.lab_serv VALUES (208, 75, 17);
INSERT INTO laboratory_file.lab_serv VALUES (209, 75, 2);
INSERT INTO laboratory_file.lab_serv VALUES (210, 76, 7);
INSERT INTO laboratory_file.lab_serv VALUES (211, 76, 3);
INSERT INTO laboratory_file.lab_serv VALUES (212, 76, 12);
INSERT INTO laboratory_file.lab_serv VALUES (213, 77, 4);
INSERT INTO laboratory_file.lab_serv VALUES (214, 78, 11);
INSERT INTO laboratory_file.lab_serv VALUES (215, 78, 17);
INSERT INTO laboratory_file.lab_serv VALUES (216, 78, 15);
INSERT INTO laboratory_file.lab_serv VALUES (217, 78, 5);
INSERT INTO laboratory_file.lab_serv VALUES (218, 79, 17);
INSERT INTO laboratory_file.lab_serv VALUES (219, 80, 17);
INSERT INTO laboratory_file.lab_serv VALUES (220, 81, 6);
INSERT INTO laboratory_file.lab_serv VALUES (221, 81, 5);
INSERT INTO laboratory_file.lab_serv VALUES (222, 82, 6);
INSERT INTO laboratory_file.lab_serv VALUES (223, 82, 17);
INSERT INTO laboratory_file.lab_serv VALUES (224, 82, 2);
INSERT INTO laboratory_file.lab_serv VALUES (225, 83, 15);
INSERT INTO laboratory_file.lab_serv VALUES (226, 83, 7);
INSERT INTO laboratory_file.lab_serv VALUES (227, 83, 6);
INSERT INTO laboratory_file.lab_serv VALUES (228, 83, 15);
INSERT INTO laboratory_file.lab_serv VALUES (229, 83, 3);
INSERT INTO laboratory_file.lab_serv VALUES (230, 84, 10);
INSERT INTO laboratory_file.lab_serv VALUES (231, 84, 11);
INSERT INTO laboratory_file.lab_serv VALUES (232, 84, 13);
INSERT INTO laboratory_file.lab_serv VALUES (233, 84, 2);
INSERT INTO laboratory_file.lab_serv VALUES (234, 85, 10);
INSERT INTO laboratory_file.lab_serv VALUES (235, 85, 5);
INSERT INTO laboratory_file.lab_serv VALUES (236, 85, 14);
INSERT INTO laboratory_file.lab_serv VALUES (237, 85, 17);
INSERT INTO laboratory_file.lab_serv VALUES (238, 86, 14);
INSERT INTO laboratory_file.lab_serv VALUES (239, 86, 9);
INSERT INTO laboratory_file.lab_serv VALUES (240, 86, 13);
INSERT INTO laboratory_file.lab_serv VALUES (241, 87, 11);
INSERT INTO laboratory_file.lab_serv VALUES (242, 87, 9);
INSERT INTO laboratory_file.lab_serv VALUES (243, 87, 4);
INSERT INTO laboratory_file.lab_serv VALUES (244, 87, 10);
INSERT INTO laboratory_file.lab_serv VALUES (245, 88, 13);
INSERT INTO laboratory_file.lab_serv VALUES (246, 88, 3);
INSERT INTO laboratory_file.lab_serv VALUES (247, 89, 12);
INSERT INTO laboratory_file.lab_serv VALUES (248, 89, 1);
INSERT INTO laboratory_file.lab_serv VALUES (249, 90, 3);
INSERT INTO laboratory_file.lab_serv VALUES (250, 90, 2);
INSERT INTO laboratory_file.lab_serv VALUES (251, 90, 13);
INSERT INTO laboratory_file.lab_serv VALUES (252, 91, 8);
INSERT INTO laboratory_file.lab_serv VALUES (253, 91, 3);
INSERT INTO laboratory_file.lab_serv VALUES (254, 91, 11);
INSERT INTO laboratory_file.lab_serv VALUES (255, 91, 8);
INSERT INTO laboratory_file.lab_serv VALUES (256, 92, 11);
INSERT INTO laboratory_file.lab_serv VALUES (257, 92, 12);
INSERT INTO laboratory_file.lab_serv VALUES (258, 92, 9);
INSERT INTO laboratory_file.lab_serv VALUES (259, 93, 6);
INSERT INTO laboratory_file.lab_serv VALUES (260, 93, 12);
INSERT INTO laboratory_file.lab_serv VALUES (261, 93, 16);
INSERT INTO laboratory_file.lab_serv VALUES (262, 94, 11);
INSERT INTO laboratory_file.lab_serv VALUES (263, 95, 10);
INSERT INTO laboratory_file.lab_serv VALUES (264, 95, 7);
INSERT INTO laboratory_file.lab_serv VALUES (265, 96, 2);
INSERT INTO laboratory_file.lab_serv VALUES (266, 96, 12);
INSERT INTO laboratory_file.lab_serv VALUES (267, 96, 16);
INSERT INTO laboratory_file.lab_serv VALUES (268, 97, 5);
INSERT INTO laboratory_file.lab_serv VALUES (269, 97, 14);
INSERT INTO laboratory_file.lab_serv VALUES (270, 97, 13);
INSERT INTO laboratory_file.lab_serv VALUES (271, 97, 6);
INSERT INTO laboratory_file.lab_serv VALUES (272, 97, 5);
INSERT INTO laboratory_file.lab_serv VALUES (273, 98, 9);
INSERT INTO laboratory_file.lab_serv VALUES (274, 98, 10);
INSERT INTO laboratory_file.lab_serv VALUES (275, 98, 4);
INSERT INTO laboratory_file.lab_serv VALUES (276, 98, 1);
INSERT INTO laboratory_file.lab_serv VALUES (277, 99, 15);
INSERT INTO laboratory_file.lab_serv VALUES (278, 100, 3);
INSERT INTO laboratory_file.lab_serv VALUES (279, 100, 13);
INSERT INTO laboratory_file.lab_serv VALUES (280, 100, 2);


--
-- TOC entry 3046 (class 0 OID 23687)
-- Dependencies: 210
-- Data for Name: lab_type; Type: TABLE DATA; Schema: laboratory_file; Owner: -
--

INSERT INTO laboratory_file.lab_type VALUES (1, 1);
INSERT INTO laboratory_file.lab_type VALUES (2, 2);
INSERT INTO laboratory_file.lab_type VALUES (3, 3);


--
-- TOC entry 3037 (class 0 OID 23645)
-- Dependencies: 201
-- Data for Name: labarotory_assistant; Type: TABLE DATA; Schema: laboratory_file; Owner: -
--

INSERT INTO laboratory_file.labarotory_assistant VALUES (1, 1, 1);
INSERT INTO laboratory_file.labarotory_assistant VALUES (2, 2, 2);
INSERT INTO laboratory_file.labarotory_assistant VALUES (3, 3, 1);
INSERT INTO laboratory_file.labarotory_assistant VALUES (4, 4, 1);
INSERT INTO laboratory_file.labarotory_assistant VALUES (5, 5, 1);
INSERT INTO laboratory_file.labarotory_assistant VALUES (6, 6, 2);
INSERT INTO laboratory_file.labarotory_assistant VALUES (7, 7, 2);
INSERT INTO laboratory_file.labarotory_assistant VALUES (8, 8, 2);
INSERT INTO laboratory_file.labarotory_assistant VALUES (9, 9, 3);
INSERT INTO laboratory_file.labarotory_assistant VALUES (10, 10, 3);
INSERT INTO laboratory_file.labarotory_assistant VALUES (11, 11, 2);
INSERT INTO laboratory_file.labarotory_assistant VALUES (12, 12, 2);
INSERT INTO laboratory_file.labarotory_assistant VALUES (13, 13, 1);
INSERT INTO laboratory_file.labarotory_assistant VALUES (14, 14, 3);
INSERT INTO laboratory_file.labarotory_assistant VALUES (15, 15, 3);
INSERT INTO laboratory_file.labarotory_assistant VALUES (16, 16, 1);
INSERT INTO laboratory_file.labarotory_assistant VALUES (17, 17, 3);
INSERT INTO laboratory_file.labarotory_assistant VALUES (18, 18, 3);
INSERT INTO laboratory_file.labarotory_assistant VALUES (19, 19, 3);
INSERT INTO laboratory_file.labarotory_assistant VALUES (20, 20, 2);
INSERT INTO laboratory_file.labarotory_assistant VALUES (21, 21, 1);
INSERT INTO laboratory_file.labarotory_assistant VALUES (22, 22, 3);
INSERT INTO laboratory_file.labarotory_assistant VALUES (23, 23, 3);
INSERT INTO laboratory_file.labarotory_assistant VALUES (24, 24, 2);
INSERT INTO laboratory_file.labarotory_assistant VALUES (25, 25, 3);
INSERT INTO laboratory_file.labarotory_assistant VALUES (26, 26, 1);
INSERT INTO laboratory_file.labarotory_assistant VALUES (27, 27, 2);
INSERT INTO laboratory_file.labarotory_assistant VALUES (28, 28, 3);
INSERT INTO laboratory_file.labarotory_assistant VALUES (29, 29, 2);
INSERT INTO laboratory_file.labarotory_assistant VALUES (30, 30, 3);
INSERT INTO laboratory_file.labarotory_assistant VALUES (31, 31, 2);
INSERT INTO laboratory_file.labarotory_assistant VALUES (32, 32, 2);
INSERT INTO laboratory_file.labarotory_assistant VALUES (33, 33, 2);
INSERT INTO laboratory_file.labarotory_assistant VALUES (34, 34, 2);
INSERT INTO laboratory_file.labarotory_assistant VALUES (35, 35, 2);
INSERT INTO laboratory_file.labarotory_assistant VALUES (36, 36, 2);
INSERT INTO laboratory_file.labarotory_assistant VALUES (37, 37, 2);
INSERT INTO laboratory_file.labarotory_assistant VALUES (38, 38, 2);
INSERT INTO laboratory_file.labarotory_assistant VALUES (39, 39, 1);
INSERT INTO laboratory_file.labarotory_assistant VALUES (40, 40, 2);
INSERT INTO laboratory_file.labarotory_assistant VALUES (41, 41, 2);
INSERT INTO laboratory_file.labarotory_assistant VALUES (42, 42, 3);
INSERT INTO laboratory_file.labarotory_assistant VALUES (43, 43, 2);
INSERT INTO laboratory_file.labarotory_assistant VALUES (44, 44, 2);
INSERT INTO laboratory_file.labarotory_assistant VALUES (45, 45, 2);
INSERT INTO laboratory_file.labarotory_assistant VALUES (46, 46, 2);
INSERT INTO laboratory_file.labarotory_assistant VALUES (47, 47, 3);
INSERT INTO laboratory_file.labarotory_assistant VALUES (48, 48, 3);
INSERT INTO laboratory_file.labarotory_assistant VALUES (49, 49, 2);
INSERT INTO laboratory_file.labarotory_assistant VALUES (50, 50, 2);
INSERT INTO laboratory_file.labarotory_assistant VALUES (51, 51, 2);
INSERT INTO laboratory_file.labarotory_assistant VALUES (52, 52, 3);
INSERT INTO laboratory_file.labarotory_assistant VALUES (53, 53, 3);
INSERT INTO laboratory_file.labarotory_assistant VALUES (54, 54, 3);
INSERT INTO laboratory_file.labarotory_assistant VALUES (55, 55, 2);
INSERT INTO laboratory_file.labarotory_assistant VALUES (56, 56, 1);
INSERT INTO laboratory_file.labarotory_assistant VALUES (57, 57, 1);
INSERT INTO laboratory_file.labarotory_assistant VALUES (58, 58, 3);
INSERT INTO laboratory_file.labarotory_assistant VALUES (59, 59, 3);
INSERT INTO laboratory_file.labarotory_assistant VALUES (60, 60, 1);
INSERT INTO laboratory_file.labarotory_assistant VALUES (61, 61, 1);
INSERT INTO laboratory_file.labarotory_assistant VALUES (62, 62, 2);
INSERT INTO laboratory_file.labarotory_assistant VALUES (63, 63, 2);
INSERT INTO laboratory_file.labarotory_assistant VALUES (64, 64, 2);
INSERT INTO laboratory_file.labarotory_assistant VALUES (65, 65, 1);
INSERT INTO laboratory_file.labarotory_assistant VALUES (66, 66, 2);
INSERT INTO laboratory_file.labarotory_assistant VALUES (67, 67, 3);
INSERT INTO laboratory_file.labarotory_assistant VALUES (68, 68, 2);
INSERT INTO laboratory_file.labarotory_assistant VALUES (69, 69, 3);
INSERT INTO laboratory_file.labarotory_assistant VALUES (70, 70, 1);
INSERT INTO laboratory_file.labarotory_assistant VALUES (71, 71, 1);
INSERT INTO laboratory_file.labarotory_assistant VALUES (72, 72, 1);
INSERT INTO laboratory_file.labarotory_assistant VALUES (73, 73, 1);
INSERT INTO laboratory_file.labarotory_assistant VALUES (74, 74, 2);
INSERT INTO laboratory_file.labarotory_assistant VALUES (75, 75, 3);
INSERT INTO laboratory_file.labarotory_assistant VALUES (76, 76, 2);
INSERT INTO laboratory_file.labarotory_assistant VALUES (77, 77, 3);
INSERT INTO laboratory_file.labarotory_assistant VALUES (78, 78, 1);
INSERT INTO laboratory_file.labarotory_assistant VALUES (79, 79, 3);
INSERT INTO laboratory_file.labarotory_assistant VALUES (80, 80, 1);
INSERT INTO laboratory_file.labarotory_assistant VALUES (81, 81, 3);
INSERT INTO laboratory_file.labarotory_assistant VALUES (82, 82, 1);
INSERT INTO laboratory_file.labarotory_assistant VALUES (83, 83, 3);
INSERT INTO laboratory_file.labarotory_assistant VALUES (84, 84, 2);
INSERT INTO laboratory_file.labarotory_assistant VALUES (85, 85, 2);
INSERT INTO laboratory_file.labarotory_assistant VALUES (86, 86, 1);
INSERT INTO laboratory_file.labarotory_assistant VALUES (87, 87, 1);
INSERT INTO laboratory_file.labarotory_assistant VALUES (88, 88, 2);
INSERT INTO laboratory_file.labarotory_assistant VALUES (89, 89, 2);
INSERT INTO laboratory_file.labarotory_assistant VALUES (90, 90, 1);
INSERT INTO laboratory_file.labarotory_assistant VALUES (91, 91, 2);
INSERT INTO laboratory_file.labarotory_assistant VALUES (92, 92, 1);
INSERT INTO laboratory_file.labarotory_assistant VALUES (93, 93, 2);
INSERT INTO laboratory_file.labarotory_assistant VALUES (94, 94, 1);
INSERT INTO laboratory_file.labarotory_assistant VALUES (95, 95, 3);
INSERT INTO laboratory_file.labarotory_assistant VALUES (96, 96, 1);
INSERT INTO laboratory_file.labarotory_assistant VALUES (97, 97, 3);
INSERT INTO laboratory_file.labarotory_assistant VALUES (98, 98, 2);
INSERT INTO laboratory_file.labarotory_assistant VALUES (99, 99, 2);
INSERT INTO laboratory_file.labarotory_assistant VALUES (100, 100, 2);


--
-- TOC entry 3038 (class 0 OID 23648)
-- Dependencies: 202
-- Data for Name: ord_ser; Type: TABLE DATA; Schema: laboratory_file; Owner: -
--



--
-- TOC entry 3039 (class 0 OID 23651)
-- Dependencies: 203
-- Data for Name: order; Type: TABLE DATA; Schema: laboratory_file; Owner: -
--



--
-- TOC entry 3040 (class 0 OID 23654)
-- Dependencies: 204
-- Data for Name: patient; Type: TABLE DATA; Schema: laboratory_file; Owner: -
--



--
-- TOC entry 3033 (class 0 OID 23627)
-- Dependencies: 197
-- Data for Name: policy; Type: TABLE DATA; Schema: laboratory_file; Owner: -
--



--
-- TOC entry 3041 (class 0 OID 23660)
-- Dependencies: 205
-- Data for Name: policy_type; Type: TABLE DATA; Schema: laboratory_file; Owner: -
--



--
-- TOC entry 3042 (class 0 OID 23666)
-- Dependencies: 206
-- Data for Name: role; Type: TABLE DATA; Schema: laboratory_file; Owner: -
--

INSERT INTO laboratory_file.role VALUES (1, 'Lab_ass');


--
-- TOC entry 3043 (class 0 OID 23672)
-- Dependencies: 207
-- Data for Name: ser_com; Type: TABLE DATA; Schema: laboratory_file; Owner: -
--



--
-- TOC entry 3044 (class 0 OID 23675)
-- Dependencies: 208
-- Data for Name: service; Type: TABLE DATA; Schema: laboratory_file; Owner: -
--

INSERT INTO laboratory_file.service VALUES (1, 'TSH', 262.71, 619, NULL);
INSERT INTO laboratory_file.service VALUES (2, 'Амилаза', 361.88, 311, NULL);
INSERT INTO laboratory_file.service VALUES (3, 'Альбумин', 234.09, 548, NULL);
INSERT INTO laboratory_file.service VALUES (4, 'Креатинин', 143.22, 258, NULL);
INSERT INTO laboratory_file.service VALUES (5, 'Билирубин общий', 102.85, 176, NULL);
INSERT INTO laboratory_file.service VALUES (6, 'Гепатит В', 176.83, 501, NULL);
INSERT INTO laboratory_file.service VALUES (7, 'Гепатит С', 289.99, 543, NULL);
INSERT INTO laboratory_file.service VALUES (8, 'ВИЧ', 490.77, 557, NULL);
INSERT INTO laboratory_file.service VALUES (9, 'СПИД', 341.78, 229, NULL);
INSERT INTO laboratory_file.service VALUES (10, 'Кальций общий', 419.9, 415, NULL);
INSERT INTO laboratory_file.service VALUES (11, 'Глюкоза', 447.65, 323, NULL);
INSERT INTO laboratory_file.service VALUES (12, 'Ковид IgM', 209.78, 855, NULL);
INSERT INTO laboratory_file.service VALUES (13, 'Общий белок', 396.03, 346, NULL);
INSERT INTO laboratory_file.service VALUES (14, 'Железо', 105.32, 836, NULL);
INSERT INTO laboratory_file.service VALUES (15, 'Сифилис RPR', 443.66, 659, NULL);
INSERT INTO laboratory_file.service VALUES (16, 'АТ и АГ к ВИЧ 1/2', 370.62, 797, NULL);
INSERT INTO laboratory_file.service VALUES (17, 'Волчаночный антикоагулянт', 290.11, 287, NULL);


--
-- TOC entry 3045 (class 0 OID 23681)
-- Dependencies: 209
-- Data for Name: status; Type: TABLE DATA; Schema: laboratory_file; Owner: -
--



--
-- TOC entry 3047 (class 0 OID 23690)
-- Dependencies: 211
-- Data for Name: user; Type: TABLE DATA; Schema: laboratory_file; Owner: -
--

INSERT INTO laboratory_file."user" VALUES (2, 'Northrop Mably', 'nmably1', 'ukM0e6', '22.32.15.211', '2020-06-20', 1);
INSERT INTO laboratory_file."user" VALUES (3, 'Fabian Rolf', 'frolf2', '7QpCwac0yi', '113.92.142.29', '2020-05-19', 1);
INSERT INTO laboratory_file."user" VALUES (4, 'Lauree Raden', 'lraden3', '5Ydp2mz', '39.24.146.52', '2020-06-22', 1);
INSERT INTO laboratory_file."user" VALUES (5, 'Barby Follos', 'bfollos4', 'ckmAJPQV', '87.232.97.3', '2020-03-18', 1);
INSERT INTO laboratory_file."user" VALUES (6, 'Mile Enterle', 'menterle5', '0PRom6i', '85.121.209.6', '2020-07-04', 1);
INSERT INTO laboratory_file."user" VALUES (7, 'Midge Peaker', 'mpeaker6', '0Tc5oRc', '196.39.132.128', '2020-09-03', 1);
INSERT INTO laboratory_file."user" VALUES (8, 'Manon Robichon', 'mrobichon7', 'LEwEjMlmE5X', '143.159.207.105', '2020-08-31', 1);
INSERT INTO laboratory_file."user" VALUES (9, 'Stavro Robken', 'srobken8', 'Cbmj3Yi', '12.154.73.196', '2020-05-22', 1);
INSERT INTO laboratory_file."user" VALUES (10, 'Bryan Tidmas', 'btidmas9', 'dYDHbBQfK', '24.42.134.21', '2020-06-06', 1);
INSERT INTO laboratory_file."user" VALUES (11, 'Jeannette Fussie', 'jfussiea', 'EGxXuLQ9', '98.194.112.137', '2020-08-21', 1);
INSERT INTO laboratory_file."user" VALUES (12, 'Stephen Antonacci', 'santonaccib', 'YcXAhY3Pja', '198.146.255.15', '2019-10-03', 1);
INSERT INTO laboratory_file."user" VALUES (13, 'Niccolo Bountiff', 'nbountiffc', '5xfyjS9ZULGA', '231.78.246.229', '2020-01-22', 1);
INSERT INTO laboratory_file."user" VALUES (14, 'Clemente Benjefield', 'cbenjefieldd', 'tQOsP0ei9TuD', '88.126.93.246', '2020-07-09', 1);
INSERT INTO laboratory_file."user" VALUES (15, 'Orlan Corbyn', 'ocorbyne', 'bG1ZIzwIoU', '232.175.48.179', '2020-04-24', 1);
INSERT INTO laboratory_file."user" VALUES (16, 'Coreen Stickins', 'cstickinsf', 'QRYADbgNj', '64.30.175.158', '2020-04-20', 1);
INSERT INTO laboratory_file."user" VALUES (17, 'Daveta Clarage', 'dclarageg', 'Yp59ZIDnWe', '139.88.229.111', '2020-06-09', 1);
INSERT INTO laboratory_file."user" VALUES (18, 'Javier McCawley', 'jmccawleyh', 'g58zLcmCYON', '14.199.67.32', '2020-04-20', 1);
INSERT INTO laboratory_file."user" VALUES (19, 'Daile Band', 'dbandi', 'yFAaYuVW', '206.105.148.56', '2019-12-02', 1);
INSERT INTO laboratory_file."user" VALUES (20, 'Angil Buttery', 'abutteryj', 'ttOFbWWGtD', '192.158.7.138', '2020-06-21', 1);
INSERT INTO laboratory_file."user" VALUES (21, 'Kyla Kinman', 'kkinmank', 'qUr6fdWP6L5G', '134.99.243.113', '2019-11-08', 1);
INSERT INTO laboratory_file."user" VALUES (22, 'Selena Skepper', 'sskepperl', 'jHYN0v3', '52.90.89.126', '2020-04-28', 1);
INSERT INTO laboratory_file."user" VALUES (23, 'Alyson Yeoland', 'ayeolandm', 'QQezRBV9', '239.7.55.187', '2020-05-31', 1);
INSERT INTO laboratory_file."user" VALUES (24, 'Claudie Speeding', 'cspeedingn', 'UCLYITfw2Vo', '127.37.194.127', '2019-11-15', 1);
INSERT INTO laboratory_file."user" VALUES (25, 'Alaric Scarisbrick', 'ascarisbricko', 'fzBcv6GbyCp', '97.227.15.172', '2020-02-19', 1);
INSERT INTO laboratory_file."user" VALUES (26, 'Marie Thurby', 'mthurbyp', 'wg0uIskqei', '94.70.148.135', '2019-09-18', 1);
INSERT INTO laboratory_file."user" VALUES (27, 'Cloe Roxbrough', 'croxbroughq', '67CVVym', '185.110.201.36', '2020-01-11', 1);
INSERT INTO laboratory_file."user" VALUES (28, 'Pegeen McCotter', 'pmccotterr', 'QG5tdzRpGZJ2', '22.179.187.229', '2020-03-22', 1);
INSERT INTO laboratory_file."user" VALUES (29, 'Iggie Calleja', 'icallejas', 'aeDvZk8o9', '67.237.123.227', '2020-07-19', 1);
INSERT INTO laboratory_file."user" VALUES (30, 'Nelle Brosch', 'nbroscht', 'DmPJt2', '251.1.59.65', '2019-12-17', 1);
INSERT INTO laboratory_file."user" VALUES (32, 'Eldridge Abbatucci', 'eabbatucciv', 'gUtNdsDu', '52.44.134.126', '2020-03-29', 1);
INSERT INTO laboratory_file."user" VALUES (33, 'Skip Garnham', 'sgarnhamw', 'eml6RqbK', '100.17.131.54', '2020-01-29', 1);
INSERT INTO laboratory_file."user" VALUES (34, 'Ric Kitchenside', 'rkitchensidex', 'xaa7miQ7yB', '29.100.76.146', '2019-12-14', 1);
INSERT INTO laboratory_file."user" VALUES (35, 'Urbanus Di Meo', 'udiy', 'dHqu78cU6NOP', '90.30.202.251', '2019-12-25', 1);
INSERT INTO laboratory_file."user" VALUES (36, 'Monty Beidebeke', 'mbeidebekez', 'F5T5spAU9A4O', '3.32.202.92', '2020-02-05', 1);
INSERT INTO laboratory_file."user" VALUES (37, 'Byrann Savins', 'bsavins10', 'l6sYf29NLN', '123.187.14.103', '2020-01-23', 1);
INSERT INTO laboratory_file."user" VALUES (38, 'Sonnie Riby', 'sriby11', 'Va34LYqFh', '16.81.16.23', '2020-06-17', 1);
INSERT INTO laboratory_file."user" VALUES (39, 'Sherill Birney', 'sbirney12', 'Ggygo2ePsETs', '144.76.193.237', '2019-12-27', 1);
INSERT INTO laboratory_file."user" VALUES (41, 'Maison Skerme', 'mskerme14', 'wy1HWA', '143.177.136.232', '2020-02-10', 1);
INSERT INTO laboratory_file."user" VALUES (42, 'Hanan Cahey', 'hcahey15', 'NSXcG9khd', '18.127.87.158', '2020-06-13', 1);
INSERT INTO laboratory_file."user" VALUES (43, 'Tore Rusling', 'trusling16', 'abol9dYC8e', '142.216.95.251', '2020-03-19', 1);
INSERT INTO laboratory_file."user" VALUES (44, 'Jeddy De Souza', 'jde17', 'gK6Hsl8Q', '229.104.255.175', '2019-10-17', 1);
INSERT INTO laboratory_file."user" VALUES (45, 'Flossi McLeoid', 'fmcleoid18', 'B9zr0N7cJw', '90.207.38.179', '2020-01-26', 1);
INSERT INTO laboratory_file."user" VALUES (46, 'Nikoletta Megainey', 'nmegainey19', 'gph7QurFf', '172.249.218.50', '2020-05-22', 1);
INSERT INTO laboratory_file."user" VALUES (47, 'Adan Bliven', 'abliven1a', 'vVxlf94KpeX', '49.101.94.118', '2020-06-17', 1);
INSERT INTO laboratory_file."user" VALUES (48, 'Mohandis Rossoni', 'mrossoni1b', 'nLXj2lS', '161.5.132.42', '2019-11-16', 1);
INSERT INTO laboratory_file."user" VALUES (49, 'Nappie Redington', 'nredington1c', 'DCbOb1SX', '174.42.8.3', '2020-05-06', 1);
INSERT INTO laboratory_file."user" VALUES (50, 'Lenka Francie', 'lfrancie1d', 'DoGeHWuAAM', '182.2.128.34', '2020-03-30', 1);
INSERT INTO laboratory_file."user" VALUES (51, 'Ashley Blowin', 'ablowin1e', 'aQygVtMjN', '73.212.243.168', '2020-06-24', 1);
INSERT INTO laboratory_file."user" VALUES (52, 'Vale Goroni', 'vgoroni1f', 'bWr0QU', '93.126.120.134', '2020-08-19', 1);
INSERT INTO laboratory_file."user" VALUES (53, 'Suki Grafom', 'sgrafom1g', 'JcNcVDAouYzA', '9.26.5.107', '2019-12-17', 1);
INSERT INTO laboratory_file."user" VALUES (55, 'Emilie Collett', 'ecollett1i', 'Y0uMyKB0W', '47.0.240.7', '2019-10-07', 1);
INSERT INTO laboratory_file."user" VALUES (56, 'Byrom Terrell', 'bterrell1j', 'hswseW', '157.21.33.53', '2020-02-25', 1);
INSERT INTO laboratory_file."user" VALUES (57, 'Daphne Bifield', 'dbifield1k', 'oYAQ4URihIA', '24.185.229.169', '2020-07-29', 1);
INSERT INTO laboratory_file."user" VALUES (58, 'Blanca Staig', 'bstaig1l', 'MygqEtjMtUbC', '171.78.28.229', '2020-02-19', 1);
INSERT INTO laboratory_file."user" VALUES (59, 'Adriaens Kennsley', 'akennsley1m', 'CTUdBfJsy6qF', '208.81.128.179', '2020-07-15', 1);
INSERT INTO laboratory_file."user" VALUES (60, 'Emlyn Bartak', 'ebartak1n', 'y3t4H1', '130.247.20.138', '2019-12-20', 1);
INSERT INTO laboratory_file."user" VALUES (61, 'Victoria Willshire', 'vwillshire1o', 'VFSLc2t', '243.230.165.161', '2020-09-03', 1);
INSERT INTO laboratory_file."user" VALUES (62, 'Egon Savin', 'esavin1p', 'axnJY9s', '40.140.160.210', '2020-01-31', 1);
INSERT INTO laboratory_file."user" VALUES (63, 'Phillie Elsom', 'pelsom1q', 'OXzMECG', '253.7.8.82', '2020-01-01', 1);
INSERT INTO laboratory_file."user" VALUES (64, 'Adan Semaine', 'asemaine1r', 'MdJRkHor5SP', '76.252.15.218', '2019-10-05', 1);
INSERT INTO laboratory_file."user" VALUES (65, 'Constantino Northrop', 'cnorthrop1s', 'UIwCvTA7MRS0', '119.130.24.85', '2019-10-12', 1);
INSERT INTO laboratory_file."user" VALUES (66, 'Rodie Easson', 'reasson1t', '3J0jgg9RWlXs', '212.248.119.232', '2020-08-14', 1);
INSERT INTO laboratory_file."user" VALUES (67, 'Alida Boleyn', 'aboleyn1u', '3q2mQdDRmtr', '181.14.56.184', '2020-05-26', 1);
INSERT INTO laboratory_file."user" VALUES (68, 'Hill Scholfield', 'hscholfield1v', '1Pbs3K6qXYB', '15.7.205.224', '2020-02-23', 1);
INSERT INTO laboratory_file."user" VALUES (70, 'Alexandro Eldon', 'aeldon1x', 'rrywOQRmFKyh', '4.174.11.210', '2019-12-04', 1);
INSERT INTO laboratory_file."user" VALUES (71, 'Kayle Collin', 'kcollin1y', 'Q0ZV21vew0', '52.19.142.168', '2020-06-30', 1);
INSERT INTO laboratory_file."user" VALUES (72, 'Inesita Larkins', 'ilarkins1z', 'DEFNpHtU', '3.26.42.188', '2019-12-05', 1);
INSERT INTO laboratory_file."user" VALUES (73, 'Waylin Lound', 'wlound20', 'a2G4Ihh2o', '31.243.68.215', '2020-01-26', 1);
INSERT INTO laboratory_file."user" VALUES (74, 'Mechelle Gillogley', 'mgillogley21', 'EjUHfCUFqF', '79.38.53.53', '2020-05-01', 1);
INSERT INTO laboratory_file."user" VALUES (75, 'Donal Muccino', 'dmuccino22', 'E4okVgx', '109.138.101.234', '2020-04-02', 1);
INSERT INTO laboratory_file."user" VALUES (76, 'Joye Leadbetter', 'jleadbetter23', 'ZNsaKdgb', '51.245.190.167', '2020-05-02', 1);
INSERT INTO laboratory_file."user" VALUES (77, 'Gianina Trump', 'gtrump24', '6XXY7IS26Ci', '11.191.37.17', '2020-08-03', 1);
INSERT INTO laboratory_file."user" VALUES (78, 'Read LeEstut', 'rleestut25', 'zq3C4rUR', '119.247.100.162', '2020-09-11', 1);
INSERT INTO laboratory_file."user" VALUES (79, 'Jill Anscott', 'janscott26', '5maCRrCZLu', '104.85.178.46', '2020-04-28', 1);
INSERT INTO laboratory_file."user" VALUES (80, 'Bud Douch', 'bdouch27', 'KAkwrli', '72.132.101.188', '2020-02-06', 1);
INSERT INTO laboratory_file."user" VALUES (82, 'Hew Izzat', 'hizzat29', 'Uifdtu', '143.246.125.169', '2020-01-20', 1);
INSERT INTO laboratory_file."user" VALUES (1, 'Clareta Hacking', 'chacking0', '4tzqHdkqzo4', '147.231.50.234', '2020-02-10', 1);
INSERT INTO laboratory_file."user" VALUES (31, 'Shae Allsepp', 'sallseppu', 't0ko0854Cpvv', '88.20.74.85', '2020-08-09', 1);
INSERT INTO laboratory_file."user" VALUES (40, 'Indira Kleanthous', 'ikleanthous13', '3H0GS7a', '169.108.108.88', '2019-12-29', 1);
INSERT INTO laboratory_file."user" VALUES (54, 'Justis Gianneschi', 'jgianneschi1h', 'oieX5u3sUfpD', '139.241.156.87', '2020-03-14', 1);
INSERT INTO laboratory_file."user" VALUES (69, 'Cordell Cowpe', 'ccowpe1w', 'VHr417Ft0', '237.236.173.63', '2020-06-17', 1);
INSERT INTO laboratory_file."user" VALUES (81, 'Cicily Ossenna', 'cossenna28', 'vfKJkCeohOzZ', '230.85.180.186', '2020-01-06', 1);
INSERT INTO laboratory_file."user" VALUES (83, 'Eddie Gimeno', 'egimeno2a', 'oF1hbmKlZ', '60.57.115.125', '2020-03-18', 1);
INSERT INTO laboratory_file."user" VALUES (84, 'Sybyl Fierro', 'sfierro2b', 'VjUrQ2', '250.233.247.215', '2020-01-22', 1);
INSERT INTO laboratory_file."user" VALUES (85, 'Nicol Troup', 'ntroup2c', 'KmDDYf1Pu', '121.7.142.165', '2020-06-25', 1);
INSERT INTO laboratory_file."user" VALUES (86, 'Bondy Pattenden', 'bpattenden2d', 'IOUkHpOn', '45.121.26.90', '2020-06-15', 1);
INSERT INTO laboratory_file."user" VALUES (87, 'Angus Cockman', 'acockman2e', 'fDKhK7OK', '167.9.255.77', '2020-01-06', 1);
INSERT INTO laboratory_file."user" VALUES (88, 'Mord Hanscome', 'mhanscome2f', 'xBHzpa7eP0u', '121.181.10.230', '2020-07-10', 1);
INSERT INTO laboratory_file."user" VALUES (89, 'Susy Leblanc', 'sleblanc2g', 'T2et1U5M', '118.164.120.202', '2020-06-16', 1);
INSERT INTO laboratory_file."user" VALUES (90, 'Gerard Ciccoloi', 'gciccoloi2h', 'w4dZ3hxiCiAg', '71.235.27.27', '2020-02-03', 1);
INSERT INTO laboratory_file."user" VALUES (91, 'Seamus Sayburn', 'ssayburn2i', '1hTM7EVKaS', '75.194.92.114', '2020-01-24', 1);
INSERT INTO laboratory_file."user" VALUES (92, 'Washington Gentiry', 'wgentiry2j', 'z2X9UH5', '188.49.78.185', '2020-04-10', 1);
INSERT INTO laboratory_file."user" VALUES (93, 'Rebekkah Westall', 'rwestall2k', 'xLgunbO9x6', '212.150.81.93', '2020-02-02', 1);
INSERT INTO laboratory_file."user" VALUES (94, 'Court Kulic', 'ckulic2l', 'FLHYRN', '154.121.193.131', '2020-06-26', 1);
INSERT INTO laboratory_file."user" VALUES (95, 'Lorilee Roux', 'lroux2m', '98cCxHeeK31', '229.187.60.106', '2020-06-12', 1);
INSERT INTO laboratory_file."user" VALUES (96, 'Modestine Rolinson', 'mrolinson2n', 'faGzyW8hEca', '9.203.185.188', '2019-10-30', 1);
INSERT INTO laboratory_file."user" VALUES (97, 'Shelbi Ellgood', 'sellgood2o', '3do5MME', '199.226.26.7', '2020-08-31', 1);
INSERT INTO laboratory_file."user" VALUES (98, 'Barbabra Retchless', 'bretchless2p', 'WraGihh', '86.66.23.203', '2019-11-09', 1);
INSERT INTO laboratory_file."user" VALUES (99, 'Robinetta Jerzak', 'rjerzak2q', 'hAp8jki', '205.158.144.210', '2019-12-11', 1);
INSERT INTO laboratory_file."user" VALUES (100, 'Vance Boots', 'vboots2r', 'bgJfSDEVEQm6', '91.73.40.29', '2020-09-07', 1);


--
-- TOC entry 2867 (class 2606 OID 23698)
-- Name: accountant accountant_pk; Type: CONSTRAINT; Schema: laboratory_file; Owner: -
--

ALTER TABLE ONLY laboratory_file.accountant
    ADD CONSTRAINT accountant_pk PRIMARY KEY (id_acc);


--
-- TOC entry 2869 (class 2606 OID 23700)
-- Name: insurance insurance_pk; Type: CONSTRAINT; Schema: laboratory_file; Owner: -
--

ALTER TABLE ONLY laboratory_file.insurance
    ADD CONSTRAINT insurance_pk PRIMARY KEY (id_ins);


--
-- TOC entry 2871 (class 2606 OID 23702)
-- Name: lab_serv lab_serv_pk; Type: CONSTRAINT; Schema: laboratory_file; Owner: -
--

ALTER TABLE ONLY laboratory_file.lab_serv
    ADD CONSTRAINT lab_serv_pk PRIMARY KEY (id_lab_ser);


--
-- TOC entry 2873 (class 2606 OID 23704)
-- Name: labarotory_assistant labarotory_assistant_pk; Type: CONSTRAINT; Schema: laboratory_file; Owner: -
--

ALTER TABLE ONLY laboratory_file.labarotory_assistant
    ADD CONSTRAINT labarotory_assistant_pk PRIMARY KEY (id_lab_ass);


--
-- TOC entry 2875 (class 2606 OID 23706)
-- Name: ord_ser ord_ser_pk; Type: CONSTRAINT; Schema: laboratory_file; Owner: -
--

ALTER TABLE ONLY laboratory_file.ord_ser
    ADD CONSTRAINT ord_ser_pk PRIMARY KEY (id_ord_ser);


--
-- TOC entry 2877 (class 2606 OID 23708)
-- Name: order order_pk; Type: CONSTRAINT; Schema: laboratory_file; Owner: -
--

ALTER TABLE ONLY laboratory_file."order"
    ADD CONSTRAINT order_pk PRIMARY KEY (id_ord);


--
-- TOC entry 2879 (class 2606 OID 23710)
-- Name: patient patient_pk; Type: CONSTRAINT; Schema: laboratory_file; Owner: -
--

ALTER TABLE ONLY laboratory_file.patient
    ADD CONSTRAINT patient_pk PRIMARY KEY (id_pat);


--
-- TOC entry 2865 (class 2606 OID 23712)
-- Name: policy policy_pk; Type: CONSTRAINT; Schema: laboratory_file; Owner: -
--

ALTER TABLE ONLY laboratory_file.policy
    ADD CONSTRAINT policy_pk PRIMARY KEY (id_pol);


--
-- TOC entry 2881 (class 2606 OID 23714)
-- Name: policy_type policy_type_pk; Type: CONSTRAINT; Schema: laboratory_file; Owner: -
--

ALTER TABLE ONLY laboratory_file.policy_type
    ADD CONSTRAINT policy_type_pk PRIMARY KEY (id_type_pol);


--
-- TOC entry 2883 (class 2606 OID 23716)
-- Name: role role_pk; Type: CONSTRAINT; Schema: laboratory_file; Owner: -
--

ALTER TABLE ONLY laboratory_file.role
    ADD CONSTRAINT role_pk PRIMARY KEY (id_role);


--
-- TOC entry 2885 (class 2606 OID 23718)
-- Name: ser_com ser_com_pk; Type: CONSTRAINT; Schema: laboratory_file; Owner: -
--

ALTER TABLE ONLY laboratory_file.ser_com
    ADD CONSTRAINT ser_com_pk PRIMARY KEY (id_com_ser);


--
-- TOC entry 2887 (class 2606 OID 23720)
-- Name: service service_pk; Type: CONSTRAINT; Schema: laboratory_file; Owner: -
--

ALTER TABLE ONLY laboratory_file.service
    ADD CONSTRAINT service_pk PRIMARY KEY (id_ser);


--
-- TOC entry 2889 (class 2606 OID 23722)
-- Name: status status_pk; Type: CONSTRAINT; Schema: laboratory_file; Owner: -
--

ALTER TABLE ONLY laboratory_file.status
    ADD CONSTRAINT status_pk PRIMARY KEY (id_stat);


--
-- TOC entry 2891 (class 2606 OID 23724)
-- Name: lab_type type_lab_pk; Type: CONSTRAINT; Schema: laboratory_file; Owner: -
--

ALTER TABLE ONLY laboratory_file.lab_type
    ADD CONSTRAINT type_lab_pk PRIMARY KEY (id_type_lab);


--
-- TOC entry 2893 (class 2606 OID 23726)
-- Name: user user_pk; Type: CONSTRAINT; Schema: laboratory_file; Owner: -
--

ALTER TABLE ONLY laboratory_file."user"
    ADD CONSTRAINT user_pk PRIMARY KEY (id_user);


--
-- TOC entry 2897 (class 2606 OID 23727)
-- Name: accountant accountant_fk; Type: FK CONSTRAINT; Schema: laboratory_file; Owner: -
--

ALTER TABLE ONLY laboratory_file.accountant
    ADD CONSTRAINT accountant_fk FOREIGN KEY (id_user) REFERENCES laboratory_file."user"(id_user);


--
-- TOC entry 2898 (class 2606 OID 23732)
-- Name: lab_serv lab_serv_fk; Type: FK CONSTRAINT; Schema: laboratory_file; Owner: -
--

ALTER TABLE ONLY laboratory_file.lab_serv
    ADD CONSTRAINT lab_serv_fk FOREIGN KEY (id_lab_ass) REFERENCES laboratory_file.labarotory_assistant(id_lab_ass);


--
-- TOC entry 2899 (class 2606 OID 23737)
-- Name: lab_serv lab_serv_fk_1; Type: FK CONSTRAINT; Schema: laboratory_file; Owner: -
--

ALTER TABLE ONLY laboratory_file.lab_serv
    ADD CONSTRAINT lab_serv_fk_1 FOREIGN KEY (id_ser) REFERENCES laboratory_file.service(id_ser);


--
-- TOC entry 2900 (class 2606 OID 23742)
-- Name: labarotory_assistant labarotory_assistant_fk; Type: FK CONSTRAINT; Schema: laboratory_file; Owner: -
--

ALTER TABLE ONLY laboratory_file.labarotory_assistant
    ADD CONSTRAINT labarotory_assistant_fk FOREIGN KEY (id_user) REFERENCES laboratory_file."user"(id_user);


--
-- TOC entry 2901 (class 2606 OID 23747)
-- Name: labarotory_assistant labarotory_assistant_fk1; Type: FK CONSTRAINT; Schema: laboratory_file; Owner: -
--

ALTER TABLE ONLY laboratory_file.labarotory_assistant
    ADD CONSTRAINT labarotory_assistant_fk1 FOREIGN KEY (id_type_lab) REFERENCES laboratory_file.lab_type(id_type_lab);


--
-- TOC entry 2902 (class 2606 OID 23752)
-- Name: ord_ser ord_ser_fk; Type: FK CONSTRAINT; Schema: laboratory_file; Owner: -
--

ALTER TABLE ONLY laboratory_file.ord_ser
    ADD CONSTRAINT ord_ser_fk FOREIGN KEY (id_ser) REFERENCES laboratory_file.service(id_ser);


--
-- TOC entry 2903 (class 2606 OID 23757)
-- Name: ord_ser ord_ser_fk1; Type: FK CONSTRAINT; Schema: laboratory_file; Owner: -
--

ALTER TABLE ONLY laboratory_file.ord_ser
    ADD CONSTRAINT ord_ser_fk1 FOREIGN KEY (id_ord) REFERENCES laboratory_file."order"(id_ord);


--
-- TOC entry 2904 (class 2606 OID 23762)
-- Name: ord_ser ord_ser_fk2; Type: FK CONSTRAINT; Schema: laboratory_file; Owner: -
--

ALTER TABLE ONLY laboratory_file.ord_ser
    ADD CONSTRAINT ord_ser_fk2 FOREIGN KEY (id_stat) REFERENCES laboratory_file.status(id_stat);


--
-- TOC entry 2905 (class 2606 OID 23767)
-- Name: order order_fk; Type: FK CONSTRAINT; Schema: laboratory_file; Owner: -
--

ALTER TABLE ONLY laboratory_file."order"
    ADD CONSTRAINT order_fk FOREIGN KEY (id_stat) REFERENCES laboratory_file.status(id_stat);


--
-- TOC entry 2906 (class 2606 OID 23772)
-- Name: patient patient_fk; Type: FK CONSTRAINT; Schema: laboratory_file; Owner: -
--

ALTER TABLE ONLY laboratory_file.patient
    ADD CONSTRAINT patient_fk FOREIGN KEY (id_user) REFERENCES laboratory_file."user"(id_user);


--
-- TOC entry 2894 (class 2606 OID 23777)
-- Name: policy policy_fk; Type: FK CONSTRAINT; Schema: laboratory_file; Owner: -
--

ALTER TABLE ONLY laboratory_file.policy
    ADD CONSTRAINT policy_fk FOREIGN KEY (id_pat) REFERENCES laboratory_file.patient(id_pat);


--
-- TOC entry 2895 (class 2606 OID 23782)
-- Name: policy policy_fk_1; Type: FK CONSTRAINT; Schema: laboratory_file; Owner: -
--

ALTER TABLE ONLY laboratory_file.policy
    ADD CONSTRAINT policy_fk_1 FOREIGN KEY (id_ins) REFERENCES laboratory_file.insurance(id_ins);


--
-- TOC entry 2896 (class 2606 OID 23787)
-- Name: policy policy_fk_2; Type: FK CONSTRAINT; Schema: laboratory_file; Owner: -
--

ALTER TABLE ONLY laboratory_file.policy
    ADD CONSTRAINT policy_fk_2 FOREIGN KEY (id_type_pol) REFERENCES laboratory_file.policy_type(id_type_pol);


--
-- TOC entry 2907 (class 2606 OID 23792)
-- Name: ser_com ser_com_fk; Type: FK CONSTRAINT; Schema: laboratory_file; Owner: -
--

ALTER TABLE ONLY laboratory_file.ser_com
    ADD CONSTRAINT ser_com_fk FOREIGN KEY (id_ord_ser) REFERENCES laboratory_file.ord_ser(id_ord_ser);


--
-- TOC entry 2908 (class 2606 OID 23797)
-- Name: ser_com ser_com_fk_1; Type: FK CONSTRAINT; Schema: laboratory_file; Owner: -
--

ALTER TABLE ONLY laboratory_file.ser_com
    ADD CONSTRAINT ser_com_fk_1 FOREIGN KEY (id_ser) REFERENCES laboratory_file.service(id_ser);


--
-- TOC entry 2909 (class 2606 OID 23802)
-- Name: ser_com ser_com_fk_2; Type: FK CONSTRAINT; Schema: laboratory_file; Owner: -
--

ALTER TABLE ONLY laboratory_file.ser_com
    ADD CONSTRAINT ser_com_fk_2 FOREIGN KEY (id_lab_ass) REFERENCES laboratory_file.labarotory_assistant(id_lab_ass);


--
-- TOC entry 2910 (class 2606 OID 23807)
-- Name: ser_com ser_com_fk_3; Type: FK CONSTRAINT; Schema: laboratory_file; Owner: -
--

ALTER TABLE ONLY laboratory_file.ser_com
    ADD CONSTRAINT ser_com_fk_3 FOREIGN KEY (id_pat) REFERENCES laboratory_file.patient(id_pat);


--
-- TOC entry 2911 (class 2606 OID 23812)
-- Name: user user_fk; Type: FK CONSTRAINT; Schema: laboratory_file; Owner: -
--

ALTER TABLE ONLY laboratory_file."user"
    ADD CONSTRAINT user_fk FOREIGN KEY (id_role) REFERENCES laboratory_file.role(id_role);


-- Completed on 2022-10-22 12:50:37

--
-- PostgreSQL database dump complete
--

