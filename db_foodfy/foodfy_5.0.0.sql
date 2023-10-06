CREATE DATABASE foodfy;
\c foodfy

--
-- PostgreSQL database dump
--

-- Dumped from database version 15.4 (Ubuntu 15.4-0ubuntu0.23.04.1)
-- Dumped by pg_dump version 15.4 (Ubuntu 15.4-0ubuntu0.23.04.1)

-- Started on 2023-10-06 13:43:19 -03

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
-- TOC entry 217 (class 1259 OID 16446)
-- Name: chefs; Type: TABLE; Schema: public; Owner: fernando
--

CREATE TABLE public.chefs (
    id integer NOT NULL,
    name text NOT NULL,
    created_at timestamp without time zone NOT NULL,
    file_id integer
);


ALTER TABLE public.chefs OWNER TO fernando;

--
-- TOC entry 216 (class 1259 OID 16445)
-- Name: chefs_id_seq; Type: SEQUENCE; Schema: public; Owner: fernando
--

CREATE SEQUENCE public.chefs_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.chefs_id_seq OWNER TO fernando;

--
-- TOC entry 3416 (class 0 OID 0)
-- Dependencies: 216
-- Name: chefs_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: fernando
--

ALTER SEQUENCE public.chefs_id_seq OWNED BY public.chefs.id;


--
-- TOC entry 219 (class 1259 OID 16702)
-- Name: files; Type: TABLE; Schema: public; Owner: fernando
--

CREATE TABLE public.files (
    id integer NOT NULL,
    name text,
    path text NOT NULL
);


ALTER TABLE public.files OWNER TO fernando;

--
-- TOC entry 218 (class 1259 OID 16701)
-- Name: files_id_seq; Type: SEQUENCE; Schema: public; Owner: fernando
--

ALTER TABLE public.files ALTER COLUMN id ADD GENERATED ALWAYS AS IDENTITY (
    SEQUENCE NAME public.files_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1
);


--
-- TOC entry 220 (class 1259 OID 24884)
-- Name: recipe_files; Type: TABLE; Schema: public; Owner: fernando
--

CREATE TABLE public.recipe_files (
    recipe_id integer,
    file_id integer,
    id integer NOT NULL
);


ALTER TABLE public.recipe_files OWNER TO fernando;

--
-- TOC entry 221 (class 1259 OID 24899)
-- Name: recipe_files_id_seq; Type: SEQUENCE; Schema: public; Owner: fernando
--

ALTER TABLE public.recipe_files ALTER COLUMN id ADD GENERATED ALWAYS AS IDENTITY (
    SEQUENCE NAME public.recipe_files_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1
);


--
-- TOC entry 215 (class 1259 OID 16437)
-- Name: recipes; Type: TABLE; Schema: public; Owner: fernando
--

CREATE TABLE public.recipes (
    id integer NOT NULL,
    chef_id integer NOT NULL,
    title text NOT NULL,
    ingredients text[] NOT NULL,
    preparation text[] NOT NULL,
    information text NOT NULL,
    created_at timestamp without time zone NOT NULL
);


ALTER TABLE public.recipes OWNER TO fernando;

--
-- TOC entry 214 (class 1259 OID 16436)
-- Name: recipes_id_seq; Type: SEQUENCE; Schema: public; Owner: fernando
--

CREATE SEQUENCE public.recipes_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.recipes_id_seq OWNER TO fernando;

--
-- TOC entry 3417 (class 0 OID 0)
-- Dependencies: 214
-- Name: recipes_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: fernando
--

ALTER SEQUENCE public.recipes_id_seq OWNED BY public.recipes.id;


--
-- TOC entry 3249 (class 2604 OID 16449)
-- Name: chefs id; Type: DEFAULT; Schema: public; Owner: fernando
--

ALTER TABLE ONLY public.chefs ALTER COLUMN id SET DEFAULT nextval('public.chefs_id_seq'::regclass);


--
-- TOC entry 3248 (class 2604 OID 16440)
-- Name: recipes id; Type: DEFAULT; Schema: public; Owner: fernando
--

ALTER TABLE ONLY public.recipes ALTER COLUMN id SET DEFAULT nextval('public.recipes_id_seq'::regclass);


--
-- TOC entry 3406 (class 0 OID 16446)
-- Dependencies: 217
-- Data for Name: chefs; Type: TABLE DATA; Schema: public; Owner: fernando
--

COPY public.chefs (id, name, created_at, file_id) FROM stdin;
2	Fabiana Melo	2023-09-08 00:00:00	179
3	Vania Steroski	2023-09-08 00:00:00	180
4	Juliano Vieira	2023-09-08 00:00:00	181
5	Júlia Kinoto	2023-09-08 00:00:00	182
6	Ricardo Gouveia	2023-09-08 00:00:00	183
1	Jorge Relato	2023-09-08 00:00:00	193
\.


--
-- TOC entry 3408 (class 0 OID 16702)
-- Dependencies: 219
-- Data for Name: files; Type: TABLE DATA; Schema: public; Owner: fernando
--

COPY public.files (id, name, path) FROM stdin;
120	1696278849669-zulu-fernando-UM4d6RsrkmM-unsplash.jpg	public/images/1696278849669-zulu-fernando-UM4d6RsrkmM-unsplash.jpg
121	1696278849701-mafe-estudio-LV2p9Utbkbw-unsplash.jpg	public/images/1696278849701-mafe-estudio-LV2p9Utbkbw-unsplash.jpg
119	1696278849653-katrine-lucas-jcJAlUd9-9c-unsplash.jpg	public/images/1696278849653-katrine-lucas-jcJAlUd9-9c-unsplash.jpg
122	1696278849600-giuliana-catachura-ce9zPQmZ5ic-unsplash.jpg	public/images/1696278849600-giuliana-catachura-ce9zPQmZ5ic-unsplash.jpg
179	1696551985051-fabiana_melo.jpg	public/images/1696551985051-fabiana_melo.jpg
180	1696551994561-vania_steroski.jpg	public/images/1696551994561-vania_steroski.jpg
181	1696552002483-juliano_vieira.jpg	public/images/1696552002483-juliano_vieira.jpg
182	1696552013773-julia_kinoto.jpg	public/images/1696552013773-julia_kinoto.jpg
183	1696552036749-ricardo_gouveia.jpg	public/images/1696552036749-ricardo_gouveia.jpg
193	1696604175425-jorge_relato.jpg	public/images/1696604175425-jorge_relato.jpg
194	1696604222330-burguer.png	public/images/1696604222330-burguer.png
33	1696016894343-pizza.png	public/images/1696016894343-pizza.png
34	1696016952334-asinhas.png	public/images/1696016952334-asinhas.png
35	1696016966425-lasanha.png	public/images/1696016966425-lasanha.png
36	1696017105262-espaguete.png	public/images/1696017105262-espaguete.png
37	1696017191141-doce.png	public/images/1696017191141-doce.png
\.


--
-- TOC entry 3409 (class 0 OID 24884)
-- Dependencies: 220
-- Data for Name: recipe_files; Type: TABLE DATA; Schema: public; Owner: fernando
--

COPY public.recipe_files (recipe_id, file_id, id) FROM stdin;
2	33	10
3	34	11
4	35	12
5	36	13
10	37	14
1	194	141
1	119	95
1	120	96
1	121	97
1	122	98
\.


--
-- TOC entry 3404 (class 0 OID 16437)
-- Dependencies: 215
-- Data for Name: recipes; Type: TABLE DATA; Schema: public; Owner: fernando
--

COPY public.recipes (id, chef_id, title, ingredients, preparation, information, created_at) FROM stdin;
3	3	Asinhas de frango ao barbecue	{"12 encontros de asinha de galinha, temperados a gosto","2 colheres de sopa de farinha de trigo","1/2 xícara (chá) de óleo","1 xícara de molho barbecue"}	{"Em uma tigela coloque o encontro de asinha de galinha e polvilhe a farinha de trigo e misture com as mãos.","Em uma frigideira ou assador coloque o óleo quando estiver quente frite até ficarem douradas.","Para servir fica bonito com salada, ou abuse da criatividade."}		2023-09-08 00:00:00
4	4	Lasanha mac n` cheese	{"massa pronta de lasanha","400 g de presunto","400 g de mussarela ralada","2 copos de requeijão","150 g de mussarela para gratinar"}	{"Em uma panela, coloque a manteiga para derreter.","Acrescente a farinha de trigo e misture bem com auxílio de um fouet.","Adicione o leite e misture até formar um creme homogêneo.","Tempere com sal, pimenta e noz-moscada a gosto.","Desligue o fogo e acrescente o creme de leite; misture bem e reserve."}	Recheie a lasanha com o que preferir.	2023-09-08 00:00:00
5	5	Espaguete ao alho	{"1 pacote de macarrão 500 g (tipo do macarrão a gosto)","1 saquinho de alho granulado","1/2 tablete de manteiga (não use margarina)","1 colher (sopa) de azeite extra virgem","ervas (manjericão, orégano, salsa, cebolinha, tomilho, a gosto)",sal,"1 dente de alho","gengibre em pó a gosto","1 folha de louro"}	{"Quando faltar mais ou menos 5 minutos para ficar no ponto de escorrer o macarrão, comece o preparo da receita.","Na frigideira quente coloque a manteiga, o azeite, a folha de louro, e o alho granulado.","Nesta hora um pouco de agilidade, pois o macarrão escorrido vai para a frigideira, sendo mexido e dosado com sal a gosto, as ervas, o gengibre em pó a gosto também.","O dente de alho, serve para você untar os pratos onde serão servidos o macarrão.","Coloque as porções nos pratos já com o cheiro do alho, e enfeite com algumas ervas."}	Não lave o macarrão nem passe óleo ou gordura nele depois de escorrê-lo. Coloque direto na frigideira.	2023-09-08 00:00:00
10	6	Docinhos pão-do-céu	{"1 kg de batata-doce","100 g de manteiga","3 ovos","1 pacote de coco seco ralado (100 g)","3 colheres (sopa) de açúcar 1 lata de Leite Moça","1 colher (sopa) de fermento em pó","manteiga para untar","açúcar de confeiteiro"}	{"Cozinhe a batata-doce numa panela de pressão, com meio litro de água, por cerca de 20 minutos. Descasque e passe pelo espremedor, ainda quente.","Junte a manteiga, os ovos, o coco ralado, o açúcar, o Leite Moça e o fermento em pó, mexendo bem após cada adição.","Despeje em assadeira retangular média, untada e leve ao forno médio (180°C), por aproximadamente 45 minutos. Depois de frio, polvilhe, com o açúcar de confeiteiro e corte em quadrados."}		2023-09-08 00:00:00
2	2	Pizza 4 estações	{"1 xícara (chá) de leite","1 ovo","1 colher (chá) de sal","1 colher (chá) de açúcar","1 colher (sopa) de margarina","1 e 1/2 xícara (chá) de farinha de trigo","1 colher (sobremesa) de fermento em pó","1/2 lata de molho de tomate","250 g de mussarela ralada grossa","2 tomates fatiados","azeitona picada","orégano a gosto"}	{"No liquidificador bata o leite, o ovo, o sal, o açúcar, a margarina, a farinha de trigo e o fermento em pó até que tudo esteja encorporado.","Despeje a massa em uma assadeira para pizza untada com margarina e leve ao forno preaquecido por 20 minutos.","Retire do forno e despeje o molho de tomate.","Cubra a massa com mussarela ralada, tomate e orégano a gosto.","Leve novamente ao forno até derreter a mussarela.","new test"}	Pizza de liquidificador é uma receita deliciosa e supersimples de preparar. Feita toda no liquidificador, ela é bem prática para o dia a dia. Aqui no TudoGostoso você também encontra diversas delícias práticas feitas no liquidificador: massa de panqueca, torta de frango de liquidificador, pão de queijo de liquidificador, bolo de banana, bolo de chocolate e muito mais!	2023-09-08 00:00:00
1	1	Triplo bacon burger	{"3 kg de carne moída (escolha uma carne magra e macia)","300 g de bacon moído","1 ovo","3 colheres (sopa) de farinha de trigo","3 colheres (sopa) de tempero caseiro: feito com alho, sal, cebola, pimenta e cheiro verde processados no liquidificador","30 ml de água gelada"}	{"Misture todos os ingredientes muito bem e amasse para que fique tudo muito bem misturado.","Faça porções de 90 g a 100 g.","Forre um plástico molhado em uma bancada e modele os hambúrgueres utilizando um aro como base.","Faça um de cada vez e retire o aro logo em seguida.","Forre uma assadeira de metal com plástico, coloque os hambúrgueres e intercale camadas de carne e plásticos (sem apertar).","Faça no máximo 4 camadas por forma e leve para congelar.","Retire do congelador, frite ou asse e está pronto."}	Preaqueça a chapa, frigideira ou grelha por 10 minutos antes de levar os hambúrgueres. Adicione um pouquinho de óleo ou manteiga e não amasse os hambúrgueres! \\r\\n\\r\\n Você sabia que a receita que precede o hambúrguer surgiu no século XIII, na Europa? A ideia de moer a carne chegou em Hamburgo no século XVII, onde um açougueiro resolveu também temperá-la. Assim, a receita foi disseminada nos Estados Unidos por alemães da região. Lá surgiu a ideia de colocar o hambúrguer no meio do pão e adicionar outros ingredientes, como queijo, tomates e alface.	2023-09-08 00:00:00
\.


--
-- TOC entry 3418 (class 0 OID 0)
-- Dependencies: 216
-- Name: chefs_id_seq; Type: SEQUENCE SET; Schema: public; Owner: fernando
--

SELECT pg_catalog.setval('public.chefs_id_seq', 15, true);


--
-- TOC entry 3419 (class 0 OID 0)
-- Dependencies: 218
-- Name: files_id_seq; Type: SEQUENCE SET; Schema: public; Owner: fernando
--

SELECT pg_catalog.setval('public.files_id_seq', 194, true);


--
-- TOC entry 3420 (class 0 OID 0)
-- Dependencies: 221
-- Name: recipe_files_id_seq; Type: SEQUENCE SET; Schema: public; Owner: fernando
--

SELECT pg_catalog.setval('public.recipe_files_id_seq', 141, true);


--
-- TOC entry 3421 (class 0 OID 0)
-- Dependencies: 214
-- Name: recipes_id_seq; Type: SEQUENCE SET; Schema: public; Owner: fernando
--

SELECT pg_catalog.setval('public.recipes_id_seq', 26, true);


--
-- TOC entry 3253 (class 2606 OID 16453)
-- Name: chefs chefs_pkey; Type: CONSTRAINT; Schema: public; Owner: fernando
--

ALTER TABLE ONLY public.chefs
    ADD CONSTRAINT chefs_pkey PRIMARY KEY (id);


--
-- TOC entry 3255 (class 2606 OID 16708)
-- Name: files files_pkey; Type: CONSTRAINT; Schema: public; Owner: fernando
--

ALTER TABLE ONLY public.files
    ADD CONSTRAINT files_pkey PRIMARY KEY (id);


--
-- TOC entry 3257 (class 2606 OID 24904)
-- Name: recipe_files recipe_files_pkey; Type: CONSTRAINT; Schema: public; Owner: fernando
--

ALTER TABLE ONLY public.recipe_files
    ADD CONSTRAINT recipe_files_pkey PRIMARY KEY (id);


--
-- TOC entry 3251 (class 2606 OID 16444)
-- Name: recipes recipes_pkey; Type: CONSTRAINT; Schema: public; Owner: fernando
--

ALTER TABLE ONLY public.recipes
    ADD CONSTRAINT recipes_pkey PRIMARY KEY (id);


--
-- TOC entry 3258 (class 2606 OID 24932)
-- Name: chefs chefs_file_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: fernando
--

ALTER TABLE ONLY public.chefs
    ADD CONSTRAINT chefs_file_id_fkey FOREIGN KEY (file_id) REFERENCES public.files(id);


--
-- TOC entry 3259 (class 2606 OID 24894)
-- Name: recipe_files file_id to files id; Type: FK CONSTRAINT; Schema: public; Owner: fernando
--

ALTER TABLE ONLY public.recipe_files
    ADD CONSTRAINT "file_id to files id" FOREIGN KEY (file_id) REFERENCES public.files(id);


--
-- TOC entry 3260 (class 2606 OID 24889)
-- Name: recipe_files recipe_id to recipes id; Type: FK CONSTRAINT; Schema: public; Owner: fernando
--

ALTER TABLE ONLY public.recipe_files
    ADD CONSTRAINT "recipe_id to recipes id" FOREIGN KEY (recipe_id) REFERENCES public.recipes(id);


-- Completed on 2023-10-06 13:43:19 -03

--
-- PostgreSQL database dump complete
--

