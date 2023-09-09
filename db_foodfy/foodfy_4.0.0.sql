CREATE DATABASE foodfy;
\c foodfy
--
-- PostgreSQL database dump
--

-- Dumped from database version 15.4 (Ubuntu 15.4-0ubuntu0.23.04.1)
-- Dumped by pg_dump version 15.4 (Ubuntu 15.4-0ubuntu0.23.04.1)

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
-- Name: chefs; Type: TABLE; Schema: public; Owner: -
--

CREATE TABLE public.chefs (
    id integer NOT NULL,
    name text NOT NULL,
    avatar_url text NOT NULL,
    created_at timestamp without time zone NOT NULL
);


--
-- Name: chefs_id_seq; Type: SEQUENCE; Schema: public; Owner: -
--

CREATE SEQUENCE public.chefs_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


--
-- Name: chefs_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: -
--

ALTER SEQUENCE public.chefs_id_seq OWNED BY public.chefs.id;


--
-- Name: recipes; Type: TABLE; Schema: public; Owner: -
--

CREATE TABLE public.recipes (
    id integer NOT NULL,
    chef_id integer NOT NULL,
    image text NOT NULL,
    title text NOT NULL,
    ingredients text[] NOT NULL,
    preparation text[] NOT NULL,
    information text NOT NULL,
    created_at timestamp without time zone NOT NULL
);


--
-- Name: recipes_id_seq; Type: SEQUENCE; Schema: public; Owner: -
--

CREATE SEQUENCE public.recipes_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


--
-- Name: recipes_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: -
--

ALTER SEQUENCE public.recipes_id_seq OWNED BY public.recipes.id;


--
-- Name: chefs id; Type: DEFAULT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.chefs ALTER COLUMN id SET DEFAULT nextval('public.chefs_id_seq'::regclass);


--
-- Name: recipes id; Type: DEFAULT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.recipes ALTER COLUMN id SET DEFAULT nextval('public.recipes_id_seq'::regclass);


--
-- Data for Name: chefs; Type: TABLE DATA; Schema: public; Owner: -
--

COPY public.chefs (id, name, avatar_url, created_at) FROM stdin;
1	Jorge Relato	https://images.unsplash.com/photo-1594920529206-ac9bb992430a	2023-09-08 00:00:00
2	Fabiana Melo	https://unsplash.com/photos/YnlVBZzq1c0	2023-09-08 00:00:00
3	Vania Steroski	https://unsplash.com/photos/_HLd7dKoFxE	2023-09-08 00:00:00
4	Juliano Vieira	https://unsplash.com/photos/CLn3Egvg8oc	2023-09-08 00:00:00
5	Júlia Kinoto	https://unsplash.com/photos/z-IxdGQ7lPU	2023-09-08 00:00:00
6	Ricardo Golvea	https://unsplash.com/photos/WfV4KscvvBQ	2023-09-08 00:00:00
\.


--
-- Data for Name: recipes; Type: TABLE DATA; Schema: public; Owner: -
--

COPY public.recipes (id, chef_id, image, title, ingredients, preparation, information, created_at) FROM stdin;
2	2	https://rocketseat-cdn.s3-sa-east-1.amazonaws.com/launchbase/receitas/pizza.png	Pizza 4 estações	{"1 xícara (chá) de leite","1 ovo","1 colher (chá) de sal","1 colher (chá) de açúcar","1 colher (sopa) de margarina","1 e 1/2 xícara (chá) de farinha de trigo","1 colher (sobremesa) de fermento em pó","1/2 lata de molho de tomate","250 g de mussarela ralada grossa","2 tomates fatiados","azeitona picada","orégano a gosto"}	{"No liquidificador bata o leite, o ovo, o sal, o açúcar, a margarina, a farinha de trigo e o fermento em pó até que tudo esteja encorporado.","Despeje a massa em uma assadeira para pizza untada com margarina e leve ao forno preaquecido por 20 minutos.","Retire do forno e despeje o molho de tomate.","Cubra a massa com mussarela ralada, tomate e orégano a gosto.","Leve novamente ao forno até derreter a mussarela."}	Pizza de liquidificador é uma receita deliciosa e supersimples de preparar. Feita toda no liquidificador, ela é bem prática para o dia a dia. Aqui no TudoGostoso você também encontra diversas delícias práticas feitas no liquidificador: massa de panqueca, torta de frango de liquidificador, pão de queijo de liquidificador, bolo de banana, bolo de chocolate e muito mais!	2023-09-08 00:00:00
3	3	https://rocketseat-cdn.s3-sa-east-1.amazonaws.com/launchbase/receitas/asinha.png	Asinhas de frango ao barbecue	{"12 encontros de asinha de galinha, temperados a gosto","2 colheres de sopa de farinha de trigo","1/2 xícara (chá) de óleo","1 xícara de molho barbecue"}	{"Em uma tigela coloque o encontro de asinha de galinha e polvilhe a farinha de trigo e misture com as mãos.","Em uma frigideira ou assador coloque o óleo quando estiver quente frite até ficarem douradas.","Para servir fica bonito com salada, ou abuse da criatividade."}		2023-09-08 00:00:00
4	4	https://rocketseat-cdn.s3-sa-east-1.amazonaws.com/launchbase/receitas/lasanha.png	Lasanha mac n` cheese	{"massa pronta de lasanha","400 g de presunto","400 g de mussarela ralada","2 copos de requeijão","150 g de mussarela para gratinar"}	{"Em uma panela, coloque a manteiga para derreter.","Acrescente a farinha de trigo e misture bem com auxílio de um fouet.","Adicione o leite e misture até formar um creme homogêneo.","Tempere com sal, pimenta e noz-moscada a gosto.","Desligue o fogo e acrescente o creme de leite; misture bem e reserve."}	Recheie a lasanha com o que preferir.	2023-09-08 00:00:00
5	5	https://rocketseat-cdn.s3-sa-east-1.amazonaws.com/launchbase/receitas/macarrao.png	Espaguete ao alho	{"1 pacote de macarrão 500 g (tipo do macarrão a gosto)","1 saquinho de alho granulado","1/2 tablete de manteiga (não use margarina)","1 colher (sopa) de azeite extra virgem","ervas (manjericão, orégano, salsa, cebolinha, tomilho, a gosto)",sal,"1 dente de alho","gengibre em pó a gosto","1 folha de louro"}	{"Quando faltar mais ou menos 5 minutos para ficar no ponto de escorrer o macarrão, comece o preparo da receita.","Na frigideira quente coloque a manteiga, o azeite, a folha de louro, e o alho granulado.","Nesta hora um pouco de agilidade, pois o macarrão escorrido vai para a frigideira, sendo mexido e dosado com sal a gosto, as ervas, o gengibre em pó a gosto também.","O dente de alho, serve para você untar os pratos onde serão servidos o macarrão.","Coloque as porções nos pratos já com o cheiro do alho, e enfeite com algumas ervas."}	Não lave o macarrão nem passe óleo ou gordura nele depois de escorrê-lo. Coloque direto na frigideira.	2023-09-08 00:00:00
1	1	https://rocketseat-cdn.s3-sa-east-1.amazonaws.com/launchbase/receitas/burger.png	Triplo bacon burger	{"3 kg de carne moída (escolha uma carne magra e macia)","300 g de bacon moído","1 ovo","3 colheres (sopa) de farinha de trigo","3 colheres (sopa) de tempero caseiro: feito com alho, sal, cebola, pimenta e cheiro verde processados no liquidificador","30 ml de água gelada"}	{"Misture todos os ingredientes muito bem e amasse para que fique tudo muito bem misturado.","Faça porções de 90 g a 100 g.","Forre um plástico molhado em uma bancada e modele os hambúrgueres utilizando um aro como base.","Faça um de cada vez e retire o aro logo em seguida.","Forre uma assadeira de metal com plástico, coloque os hambúrgueres e intercale camadas de carne e plásticos (sem apertar).","Faça no máximo 4 camadas por forma e leve para congelar.","Retire do congelador, frite ou asse e está pronto."}	Preaqueça a chapa, frigideira ou grelha por 10 minutos antes de levar os hambúrgueres. Adicione um pouquinho de óleo ou manteiga e não amasse os hambúrgueres! \\r\\n\\r\\n Você sabia que a receita que precede o hambúrguer surgiu no século XIII, na Europa? A ideia de moer a carne chegou em Hamburgo no século XVII, onde um açougueiro resolveu também temperá-la. Assim, a receita foi disseminada nos Estados Unidos por alemães da região. Lá surgiu a ideia de colocar o hambúrguer no meio do pão e adicionar outros ingredientes, como queijo, tomates e alface.	2023-09-08 00:00:00
9	6	https://rocketseat-cdn.s3-sa-east-1.amazonaws.com/launchbase/receitas/doce.png	Docinhos pão-do-céu	{"1 kg de batata-doce","100 g de manteiga","3 ovos","1 pacote de coco seco ralado (100 g)","3 colheres (sopa) de açúcar 1 lata de Leite Moça","1 colher (sopa) de fermento em pó","manteiga para untar","açúcar de confeiteiro"}	{"Cozinhe a batata-doce numa panela de pressão, com meio litro de água, por cerca de 20 minutos. Descasque e passe pelo espremedor, ainda quente.","Junte a manteiga, os ovos, o coco ralado, o açúcar, o Leite Moça e o fermento em pó, mexendo bem após cada adição.","Despeje em assadeira retangular média, untada e leve ao forno médio (180°C), por aproximadamente 45 minutos. Depois de frio, polvilhe, com o açúcar de confeiteiro e corte em quadrados."}		2023-09-08 00:00:00
\.


--
-- Name: chefs_id_seq; Type: SEQUENCE SET; Schema: public; Owner: -
--

SELECT pg_catalog.setval('public.chefs_id_seq', 6, true);


--
-- Name: recipes_id_seq; Type: SEQUENCE SET; Schema: public; Owner: -
--

SELECT pg_catalog.setval('public.recipes_id_seq', 9, true);


--
-- Name: chefs chefs_pkey; Type: CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.chefs
    ADD CONSTRAINT chefs_pkey PRIMARY KEY (id);


--
-- Name: recipes recipes_pkey; Type: CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.recipes
    ADD CONSTRAINT recipes_pkey PRIMARY KEY (id);


--
-- PostgreSQL database dump complete
--

