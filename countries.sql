--
-- PostgreSQL port of the MySQL "World" database.
--
-- The sample data used in the world database is Copyright Statistics 
-- Finland, http://www.stat.fi/worldinfigures.
--

BEGIN;

SET client_encoding = 'LATIN1';

CREATE TABLE country (
    code character(3) NOT NULL,
    name text NOT NULL,
    continent text NOT NULL,
    region text NOT NULL,
    surfacearea real NOT NULL,
    indepyear smallint,
    population integer NOT NULL,
    lifeexpectancy real,
    gnp numeric(10,2),
    gnpold numeric(10,2),
    localname text NOT NULL,
    governmentform text NOT NULL,
    headofstate text,
    capital integer,
    code2 character(2) NOT NULL,
    CONSTRAINT country_continent_check CHECK ((((((((continent = 'Asia'::text) OR (continent = 'Europe'::text)) OR (continent = 'North America'::text)) OR (continent = 'Africa'::text)) OR (continent = 'Oceania'::text)) OR (continent = 'Antarctica'::text)) OR (continent = 'South America'::text)))
);

--
-- Data for Name: country; Type: TABLE DATA; Schema: public; Owner: chriskl
--

COPY country (code, name, continent, region, surfacearea, indepyear, population, lifeexpectancy, gnp, gnpold, localname, governmentform, headofstate, capital, code2) FROM stdin;
AFG	Afghanistan	Asia	Southern and Central Asia	652090	1919	22720000	45.900002	5976.00	\N	Afganistan/Afqanestan	Islamic Emirate	Mohammad Omar	1	AF
NLD	Netherlands	Europe	Western Europe	41526	1581	15864000	78.300003	371362.00	360478.00	Nederland	Constitutional Monarchy	Beatrix	5	NL
ANT	Netherlands Antilles	North America	Caribbean	800	\N	217000	74.699997	1941.00	\N	Nederlandse Antillen	Nonmetropolitan Territory of The Netherlands	Beatrix	33	AN
ALB	Albania	Europe	Southern Europe	28748	1912	3401200	71.599998	3205.00	2500.00	Shqip�ria	Republic	Rexhep Mejdani	34	AL
DZA	Algeria	Africa	Northern Africa	2381741	1962	31471000	69.699997	49982.00	46966.00	Al-Jaza�ir/Alg�rie	Republic	Abdelaziz Bouteflika	35	DZ
ASM	American Samoa	Oceania	Polynesia	199	\N	68000	75.099998	334.00	\N	Amerika Samoa	US Territory	George W. Bush	54	AS
AND	Andorra	Europe	Southern Europe	468	1278	78000	83.5	1630.00	\N	Andorra	Parliamentary Coprincipality		55	AD
AGO	Angola	Africa	Central Africa	1246700	1975	12878000	38.299999	6648.00	7984.00	Angola	Republic	Jos� Eduardo dos Santos	56	AO
AIA	Anguilla	North America	Caribbean	96	\N	8000	76.099998	63.20	\N	Anguilla	Dependent Territory of the UK	Elisabeth II	62	AI
ATG	Antigua and Barbuda	North America	Caribbean	442	1981	68000	70.5	612.00	584.00	Antigua and Barbuda	Constitutional Monarchy	Elisabeth II	63	AG
ARE	United Arab Emirates	Asia	Middle East	83600	1971	2441000	74.099998	37966.00	36846.00	Al-Imarat al-�Arabiya al-Muttahida	Emirate Federation	Zayid bin Sultan al-Nahayan	65	AE
ARG	Argentina	South America	South America	2780400	1816	37032000	75.099998	340238.00	323310.00	Argentina	Federal Republic	Fernando de la R�a	69	AR
ARM	Armenia	Asia	Middle East	29800	1991	3520000	66.400002	1813.00	1627.00	Hajastan	Republic	Robert Kot�arjan	126	AM
ABW	Aruba	North America	Caribbean	193	\N	103000	78.400002	828.00	793.00	Aruba	Nonmetropolitan Territory of The Netherlands	Beatrix	129	AW
AUS	Australia	Oceania	Australia and New Zealand	7741220	1901	18886000	79.800003	351182.00	392911.00	Australia	Constitutional Monarchy, Federation	Elisabeth II	135	AU
AZE	Azerbaijan	Asia	Middle East	86600	1991	7734000	62.900002	4127.00	4100.00	Az�rbaycan	Federal Republic	Heyd�r �liyev	144	AZ
BHS	Bahamas	North America	Caribbean	13878	1973	307000	71.099998	3527.00	3347.00	The Bahamas	Constitutional Monarchy	Elisabeth II	148	BS
BHR	Bahrain	Asia	Middle East	694	1971	617000	73	6366.00	6097.00	Al-Bahrayn	Monarchy (Emirate)	Hamad ibn Isa al-Khalifa	149	BH
BGD	Bangladesh	Asia	Southern and Central Asia	143998	1971	129155000	60.200001	32852.00	31966.00	Bangladesh	Republic	Shahabuddin Ahmad	150	BD
BRB	Barbados	North America	Caribbean	430	1966	270000	73	2223.00	2186.00	Barbados	Constitutional Monarchy	Elisabeth II	174	BB
BEL	Belgium	Europe	Western Europe	30518	1830	10239000	77.800003	249704.00	243948.00	Belgi�/Belgique	Constitutional Monarchy, Federation	Albert II	179	BE
BLZ	Belize	North America	Central America	22696	1981	241000	70.900002	630.00	616.00	Belize	Constitutional Monarchy	Elisabeth II	185	BZ
BEN	Benin	Africa	Western Africa	112622	1960	6097000	50.200001	2357.00	2141.00	B�nin	Republic	Mathieu K�r�kou	187	BJ
BMU	Bermuda	North America	North America	53	\N	65000	76.900002	2328.00	2190.00	Bermuda	Dependent Territory of the UK	Elisabeth II	191	BM
BTN	Bhutan	Asia	Southern and Central Asia	47000	1910	2124000	52.400002	372.00	383.00	Druk-Yul	Monarchy	Jigme Singye Wangchuk	192	BT
BOL	Bolivia	South America	South America	1098581	1825	8329000	63.700001	8571.00	7967.00	Bolivia	Republic	Hugo B�nzer Su�rez	194	BO
BIH	Bosnia and Herzegovina	Europe	Southern Europe	51197	1992	3972000	71.5	2841.00	\N	Bosna i Hercegovina	Federal Republic	Ante Jelavic	201	BA
BWA	Botswana	Africa	Southern Africa	581730	1966	1622000	39.299999	4834.00	4935.00	Botswana	Republic	Festus G. Mogae	204	BW
BRA	Brazil	South America	South America	8547403	1822	170115000	62.900002	776739.00	804108.00	Brasil	Federal Republic	Fernando Henrique Cardoso	211	BR
GBR	United Kingdom	Europe	British Islands	242900	1066	59623400	77.699997	1378330.00	1296830.00	United Kingdom	Constitutional Monarchy	Elisabeth II	456	GB
VGB	Virgin Islands, British	North America	Caribbean	151	\N	21000	75.400002	612.00	573.00	British Virgin Islands	Dependent Territory of the UK	Elisabeth II	537	VG
BRN	Brunei	Asia	Southeast Asia	5765	1984	328000	73.599998	11705.00	12460.00	Brunei Darussalam	Monarchy (Sultanate)	Haji Hassan al-Bolkiah	538	BN
BGR	Bulgaria	Europe	Eastern Europe	110994	1908	8190900	70.900002	12178.00	10169.00	Balgarija	Republic	Petar Stojanov	539	BG
BFA	Burkina Faso	Africa	Western Africa	274000	1960	11937000	46.700001	2425.00	2201.00	Burkina Faso	Republic	Blaise Compaor�	549	BF
BDI	Burundi	Africa	Eastern Africa	27834	1962	6695000	46.200001	903.00	982.00	Burundi/Uburundi	Republic	Pierre Buyoya	552	BI
CYM	Cayman Islands	North America	Caribbean	264	\N	38000	78.900002	1263.00	1186.00	Cayman Islands	Dependent Territory of the UK	Elisabeth II	553	KY
CHL	Chile	South America	South America	756626	1810	15211000	75.699997	72949.00	75780.00	Chile	Republic	Ricardo Lagos Escobar	554	CL
COK	Cook Islands	Oceania	Polynesia	236	\N	20000	71.099998	100.00	\N	The Cook Islands	Nonmetropolitan Territory of New Zealand	Elisabeth II	583	CK
CRI	Costa Rica	North America	Central America	51100	1821	4023000	75.800003	10226.00	9757.00	Costa Rica	Republic	Miguel �ngel Rodr�guez Echeverr�a	584	CR
DJI	Djibouti	Africa	Eastern Africa	23200	1977	638000	50.799999	382.00	373.00	Djibouti/Jibuti	Republic	Ismail Omar Guelleh	585	DJ
DMA	Dominica	North America	Caribbean	751	1978	71000	73.400002	256.00	243.00	Dominica	Republic	Vernon Shaw	586	DM
DOM	Dominican Republic	North America	Caribbean	48511	1844	8495000	73.199997	15846.00	15076.00	Rep�blica Dominicana	Republic	Hip�lito Mej�a Dom�nguez	587	DO
ECU	Ecuador	South America	South America	283561	1822	12646000	71.099998	19770.00	19769.00	Ecuador	Republic	Gustavo Noboa Bejarano	594	EC
EGY	Egypt	Africa	Northern Africa	1001449	1922	68470000	63.299999	82710.00	75617.00	Misr	Republic	Hosni Mubarak	608	EG
SLV	El Salvador	North America	Central America	21041	1841	6276000	69.699997	11863.00	11203.00	El Salvador	Republic	Francisco Guillermo Flores P�rez	645	SV
ERI	Eritrea	Africa	Eastern Africa	117600	1993	3850000	55.799999	650.00	755.00	Ertra	Republic	Isayas Afewerki [Isaias Afwerki]	652	ER
ESP	Spain	Europe	Southern Europe	505992	1492	39441700	78.800003	553233.00	532031.00	Espa�a	Constitutional Monarchy	Juan Carlos I	653	ES
ZAF	South Africa	Africa	Southern Africa	1221037	1910	40377000	51.099998	116729.00	129092.00	South Africa	Republic	Thabo Mbeki	716	ZA
ETH	Ethiopia	Africa	Eastern Africa	1104300	-1000	62565000	45.200001	6353.00	6180.00	YeItyop�iya	Republic	Negasso Gidada	756	ET
FLK	Falkland Islands	South America	South America	12173	\N	2000	\N	0.00	\N	Falkland Islands	Dependent Territory of the UK	Elisabeth II	763	FK
FJI	Fiji Islands	Oceania	Melanesia	18274	1970	817000	67.900002	1536.00	2149.00	Fiji Islands	Republic	Josefa Iloilo	764	FJ
PHL	Philippines	Asia	Southeast Asia	300000	1946	75967000	67.5	65107.00	82239.00	Pilipinas	Republic	Gloria Macapagal-Arroyo	766	PH
FRO	Faroe Islands	Europe	Nordic Countries	1399	\N	43000	78.400002	0.00	\N	F�royar	Part of Denmark	Margrethe II	901	FO
GAB	Gabon	Africa	Central Africa	267668	1960	1226000	50.099998	5493.00	5279.00	Le Gabon	Republic	Omar Bongo	902	GA
GMB	Gambia	Africa	Western Africa	11295	1965	1305000	53.200001	320.00	325.00	The Gambia	Republic	Yahya Jammeh	904	GM
GEO	Georgia	Asia	Middle East	69700	1991	4968000	64.5	6064.00	5924.00	Sakartvelo	Republic	Eduard �evardnadze	905	GE
GHA	Ghana	Africa	Western Africa	238533	1957	20212000	57.400002	7137.00	6884.00	Ghana	Republic	John Kufuor	910	GH
GIB	Gibraltar	Europe	Southern Europe	6	\N	25000	79	258.00	\N	Gibraltar	Dependent Territory of the UK	Elisabeth II	915	GI
GRD	Grenada	North America	Caribbean	344	1974	94000	64.5	318.00	\N	Grenada	Constitutional Monarchy	Elisabeth II	916	GD
GRL	Greenland	North America	North America	2166090	\N	56000	68.099998	0.00	\N	Kalaallit Nunaat/Gr�nland	Part of Denmark	Margrethe II	917	GL
GLP	Guadeloupe	North America	Caribbean	1705	\N	456000	77	3501.00	\N	Guadeloupe	Overseas Department of France	Jacques Chirac	919	GP
GUM	Guam	Oceania	Micronesia	549	\N	168000	77.800003	1197.00	1136.00	Guam	US Territory	George W. Bush	921	GU
GTM	Guatemala	North America	Central America	108889	1821	11385000	66.199997	19008.00	17797.00	Guatemala	Republic	Alfonso Portillo Cabrera	922	GT
GIN	Guinea	Africa	Western Africa	245857	1958	7430000	45.599998	2352.00	2383.00	Guin�e	Republic	Lansana Cont�	926	GN
GNB	Guinea-Bissau	Africa	Western Africa	36125	1974	1213000	49	293.00	272.00	Guin�-Bissau	Republic	Kumba Ial�	927	GW
GUY	Guyana	South America	South America	214969	1966	861000	64	722.00	743.00	Guyana	Republic	Bharrat Jagdeo	928	GY
HTI	Haiti	North America	Caribbean	27750	1804	8222000	49.200001	3459.00	3107.00	Ha�ti/Dayti	Republic	Jean-Bertrand Aristide	929	HT
HND	Honduras	North America	Central America	112088	1838	6485000	69.900002	5333.00	4697.00	Honduras	Republic	Carlos Roberto Flores Facuss�	933	HN
HKG	Hong Kong	Asia	Eastern Asia	1075	\N	6782000	79.5	166448.00	173610.00	Xianggang/Hong Kong	Special Administrative Region of China	Jiang Zemin	937	HK
SJM	Svalbard and Jan Mayen	Europe	Nordic Countries	62422	\N	3200	\N	0.00	\N	Svalbard og Jan Mayen	Dependent Territory of Norway	Harald V	938	SJ
IDN	Indonesia	Asia	Southeast Asia	1904569	1945	212107000	68	84982.00	215002.00	Indonesia	Republic	Abdurrahman Wahid	939	ID
IND	India	Asia	Southern and Central Asia	3287263	1947	1013662000	62.5	447114.00	430572.00	Bharat/India	Federal Republic	Kocheril Raman Narayanan	1109	IN
IRQ	Iraq	Asia	Middle East	438317	1932	23115000	66.5	11500.00	\N	Al-�Iraq	Republic	Saddam Hussein al-Takriti	1365	IQ
IRN	Iran	Asia	Southern and Central Asia	1648195	1906	67702000	69.699997	195746.00	160151.00	Iran	Islamic Republic	Ali Mohammad Khatami-Ardakani	1380	IR
IRL	Ireland	Europe	British Islands	70273	1921	3775100	76.800003	75921.00	73132.00	Ireland/�ire	Republic	Mary McAleese	1447	IE
ISL	Iceland	Europe	Nordic Countries	103000	1944	279000	79.400002	8255.00	7474.00	�sland	Republic	�lafur Ragnar Gr�msson	1449	IS
ISR	Israel	Asia	Middle East	21056	1948	6217000	78.599998	97477.00	98577.00	Yisra�el/Isra�il	Republic	Moshe Katzav	1450	IL
ITA	Italy	Europe	Southern Europe	301316	1861	57680000	79	1161755.00	1145372.00	Italia	Republic	Carlo Azeglio Ciampi	1464	IT
TMP	East Timor	Asia	Southeast Asia	14874	\N	885000	46	0.00	\N	Timor Timur	Administrated by the UN	Jos� Alexandre Gusm�o	1522	TP
AUT	Austria	Europe	Western Europe	83859	1918	8091800	77.699997	211860.00	206025.00	�sterreich	Federal Republic	Thomas Klestil	1523	AT
JAM	Jamaica	North America	Caribbean	10990	1962	2583000	75.199997	6871.00	6722.00	Jamaica	Constitutional Monarchy	Elisabeth II	1530	JM
JPN	Japan	Asia	Eastern Asia	377829	-660	126714000	80.699997	3787042.00	4192638.00	Nihon/Nippon	Constitutional Monarchy	Akihito	1532	JP
YEM	Yemen	Asia	Middle East	527968	1918	18112000	59.799999	6041.00	5729.00	Al-Yaman	Republic	Ali Abdallah Salih	1780	YE
JOR	Jordan	Asia	Middle East	88946	1946	5083000	77.400002	7526.00	7051.00	Al-Urdunn	Constitutional Monarchy	Abdullah II	1786	JO
CXR	Christmas Island	Oceania	Australia and New Zealand	135	\N	2500	\N	0.00	\N	Christmas Island	Territory of Australia	Elisabeth II	1791	CX
YUG	Yugoslavia	Europe	Southern Europe	102173	1918	10640000	72.400002	17000.00	\N	Jugoslavija	Federal Republic	Vojislav Ko�tunica	1792	YU
KHM	Cambodia	Asia	Southeast Asia	181035	1953	11168000	56.5	5121.00	5670.00	K�mpuch�a	Constitutional Monarchy	Norodom Sihanouk	1800	KH
CMR	Cameroon	Africa	Central Africa	475442	1960	15085000	54.799999	9174.00	8596.00	Cameroun/Cameroon	Republic	Paul Biya	1804	CM
CAN	Canada	North America	North America	9970610	1867	31147000	79.400002	598862.00	625626.00	Canada	Constitutional Monarchy, Federation	Elisabeth II	1822	CA
CPV	Cape Verde	Africa	Western Africa	4033	1975	428000	68.900002	435.00	420.00	Cabo Verde	Republic	Ant�nio Mascarenhas Monteiro	1859	CV
KAZ	Kazakstan	Asia	Southern and Central Asia	2724900	1991	16223000	63.200001	24375.00	23383.00	Qazaqstan	Republic	Nursultan Nazarbajev	1864	KZ
KEN	Kenya	Africa	Eastern Africa	580367	1963	30080000	48	9217.00	10241.00	Kenya	Republic	Daniel arap Moi	1881	KE
CAF	Central African Republic	Africa	Central Africa	622984	1960	3615000	44	1054.00	993.00	Centrafrique/B�-Afr�ka	Republic	Ange-F�lix Patass�	1889	CF
CHN	China	Asia	Eastern Asia	9572900	-1523	1277558000	71.400002	982268.00	917719.00	Zhongquo	People'sRepublic	Jiang Zemin	1891	CN
KGZ	Kyrgyzstan	Asia	Southern and Central Asia	199900	1991	4699000	63.400002	1626.00	1767.00	Kyrgyzstan	Republic	Askar Akajev	2253	KG
KIR	Kiribati	Oceania	Micronesia	726	1979	83000	59.799999	40.70	\N	Kiribati	Republic	Teburoro Tito	2256	KI
COL	Colombia	South America	South America	1138914	1810	42321000	70.300003	102896.00	105116.00	Colombia	Republic	Andr�s Pastrana Arango	2257	CO
COM	Comoros	Africa	Eastern Africa	1862	1975	578000	60	4401.00	4361.00	Komori/Comores	Republic	Azali Assoumani	2295	KM
COG	Congo	Africa	Central Africa	342000	1960	2943000	47.400002	2108.00	2287.00	Congo	Republic	Denis Sassou-Nguesso	2296	CG
COD	Congo, The Democratic Republic of the	Africa	Central Africa	2344858	1960	51654000	48.799999	6964.00	2474.00	R�publique D�mocratique du Congo	Republic	Joseph Kabila	2298	CD
CCK	Cocos (Keeling) Islands	Oceania	Australia and New Zealand	14	\N	600	\N	0.00	\N	Cocos (Keeling) Islands	Territory of Australia	Elisabeth II	2317	CC
PRK	North Korea	Asia	Eastern Asia	120538	1948	24039000	70.699997	5332.00	\N	Choson Minjujuui In�min Konghwaguk (Bukhan)	Socialistic Republic	Kim Jong-il	2318	KP
KOR	South Korea	Asia	Eastern Asia	99434	1948	46844000	74.400002	320749.00	442544.00	Taehan Min�guk (Namhan)	Republic	Kim Dae-jung	2331	KR
GRC	Greece	Europe	Southern Europe	131626	1830	10545700	78.400002	120724.00	119946.00	Ell�da	Republic	Kostis Stefanopoulos	2401	GR
HRV	Croatia	Europe	Southern Europe	56538	1991	4473000	73.699997	20208.00	19300.00	Hrvatska	Republic	�tipe Mesic	2409	HR
CUB	Cuba	North America	Caribbean	110861	1902	11201000	76.199997	17843.00	18862.00	Cuba	Socialistic Republic	Fidel Castro Ruz	2413	CU
KWT	Kuwait	Asia	Middle East	17818	1961	1972000	76.099998	27037.00	30373.00	Al-Kuwayt	Constitutional Monarchy (Emirate)	Jabir al-Ahmad al-Jabir al-Sabah	2429	KW
CYP	Cyprus	Asia	Middle East	9251	1960	754700	76.699997	9333.00	8246.00	K�pros/Kibris	Republic	Glafkos Klerides	2430	CY
LAO	Laos	Asia	Southeast Asia	236800	1953	5433000	53.099998	1292.00	1746.00	Lao	Republic	Khamtay Siphandone	2432	LA
LVA	Latvia	Europe	Baltic Countries	64589	1991	2424200	68.400002	6398.00	5639.00	Latvija	Republic	Vaira Vike-Freiberga	2434	LV
LSO	Lesotho	Africa	Southern Africa	30355	1966	2153000	50.799999	1061.00	1161.00	Lesotho	Constitutional Monarchy	Letsie III	2437	LS
LBN	Lebanon	Asia	Middle East	10400	1941	3282000	71.300003	17121.00	15129.00	Lubnan	Republic	�mile Lahoud	2438	LB
LBR	Liberia	Africa	Western Africa	111369	1847	3154000	51	2012.00	\N	Liberia	Republic	Charles Taylor	2440	LR
LBY	Libyan Arab Jamahiriya	Africa	Northern Africa	1759540	1951	5605000	75.5	44806.00	40562.00	Libiya	Socialistic State	Muammar al-Qadhafi	2441	LY
LIE	Liechtenstein	Europe	Western Europe	160	1806	32300	78.800003	1119.00	1084.00	Liechtenstein	Constitutional Monarchy	Hans-Adam II	2446	LI
LTU	Lithuania	Europe	Baltic Countries	65301	1991	3698500	69.099998	10692.00	9585.00	Lietuva	Republic	Valdas Adamkus	2447	LT
LUX	Luxembourg	Europe	Western Europe	2586	1867	435700	77.099998	16321.00	15519.00	Luxembourg/L�tzebuerg	Constitutional Monarchy	Henri	2452	LU
ESH	Western Sahara	Africa	Northern Africa	266000	\N	293000	49.799999	60.00	\N	As-Sahrawiya	Occupied by Marocco	Mohammed Abdel Aziz	2453	EH
MAC	Macao	Asia	Eastern Asia	18	\N	473000	81.599998	5749.00	5940.00	Macau/Aomen	Special Administrative Region of China	Jiang Zemin	2454	MO
MDG	Madagascar	Africa	Eastern Africa	587041	1960	15942000	55	3750.00	3545.00	Madagasikara/Madagascar	Federal Republic	Didier Ratsiraka	2455	MG
MKD	Macedonia	Europe	Southern Europe	25713	1991	2024000	73.800003	1694.00	1915.00	Makedonija	Republic	Boris Trajkovski	2460	MK
MWI	Malawi	Africa	Eastern Africa	118484	1964	10925000	37.599998	1687.00	2527.00	Malawi	Republic	Bakili Muluzi	2462	MW
MDV	Maldives	Asia	Southern and Central Asia	298	1965	286000	62.200001	199.00	\N	Dhivehi Raajje/Maldives	Republic	Maumoon Abdul Gayoom	2463	MV
MYS	Malaysia	Asia	Southeast Asia	329758	1957	22244000	70.800003	69213.00	97884.00	Malaysia	Constitutional Monarchy, Federation	Salahuddin Abdul Aziz Shah Alhaj	2464	MY
MLI	Mali	Africa	Western Africa	1240192	1960	11234000	46.700001	2642.00	2453.00	Mali	Republic	Alpha Oumar Konar�	2482	ML
MLT	Malta	Europe	Southern Europe	316	1964	380200	77.900002	3512.00	3338.00	Malta	Republic	Guido de Marco	2484	MT
MAR	Morocco	Africa	Northern Africa	446550	1956	28351000	69.099998	36124.00	33514.00	Al-Maghrib	Constitutional Monarchy	Mohammed VI	2486	MA
MHL	Marshall Islands	Oceania	Micronesia	181	1990	64000	65.5	97.00	\N	Marshall Islands/Majol	Republic	Kessai Note	2507	MH
MTQ	Martinique	North America	Caribbean	1102	\N	395000	78.300003	2731.00	2559.00	Martinique	Overseas Department of France	Jacques Chirac	2508	MQ
MRT	Mauritania	Africa	Western Africa	1025520	1960	2670000	50.799999	998.00	1081.00	Muritaniya/Mauritanie	Republic	Maaouiya Ould Sid�Ahmad Taya	2509	MR
MUS	Mauritius	Africa	Eastern Africa	2040	1968	1158000	71	4251.00	4186.00	Mauritius	Republic	Cassam Uteem	2511	MU
MYT	Mayotte	Africa	Eastern Africa	373	\N	149000	59.5	0.00	\N	Mayotte	Territorial Collectivity of France	Jacques Chirac	2514	YT
MEX	Mexico	North America	Central America	1958201	1810	98881000	71.5	414972.00	401461.00	M�xico	Federal Republic	Vicente Fox Quesada	2515	MX
FSM	Micronesia, Federated States of	Oceania	Micronesia	702	1990	119000	68.599998	212.00	\N	Micronesia	Federal Republic	Leo A. Falcam	2689	FM
MDA	Moldova	Europe	Eastern Europe	33851	1991	4380000	64.5	1579.00	1872.00	Moldova	Republic	Vladimir Voronin	2690	MD
MCO	Monaco	Europe	Western Europe	1.5	1861	34000	78.800003	776.00	\N	Monaco	Constitutional Monarchy	Rainier III	2695	MC
MNG	Mongolia	Asia	Eastern Asia	1566500	1921	2662000	67.300003	1043.00	933.00	Mongol Uls	Republic	Natsagiin Bagabandi	2696	MN
MSR	Montserrat	North America	Caribbean	102	\N	11000	78	109.00	\N	Montserrat	Dependent Territory of the UK	Elisabeth II	2697	MS
MOZ	Mozambique	Africa	Eastern Africa	801590	1975	19680000	37.5	2891.00	2711.00	Mo�ambique	Republic	Joaqu�m A. Chissano	2698	MZ
MMR	Myanmar	Asia	Southeast Asia	676578	1948	45611000	54.900002	180375.00	171028.00	Myanma Pye	Republic	kenraali Than Shwe	2710	MM
NAM	Namibia	Africa	Southern Africa	824292	1990	1726000	42.5	3101.00	3384.00	Namibia	Republic	Sam Nujoma	2726	NA
NRU	Nauru	Oceania	Micronesia	21	1968	12000	60.799999	197.00	\N	Naoero/Nauru	Republic	Bernard Dowiyogo	2728	NR
NPL	Nepal	Asia	Southern and Central Asia	147181	1769	23930000	57.799999	4768.00	4837.00	Nepal	Constitutional Monarchy	Gyanendra Bir Bikram	2729	NP
NIC	Nicaragua	North America	Central America	130000	1838	5074000	68.699997	1988.00	2023.00	Nicaragua	Republic	Arnoldo Alem�n Lacayo	2734	NI
NER	Niger	Africa	Western Africa	1267000	1960	10730000	41.299999	1706.00	1580.00	Niger	Republic	Mamadou Tandja	2738	NE
NGA	Nigeria	Africa	Western Africa	923768	1960	111506000	51.599998	65707.00	58623.00	Nigeria	Federal Republic	Olusegun Obasanjo	2754	NG
NIU	Niue	Oceania	Polynesia	260	\N	2000	\N	0.00	\N	Niue	Nonmetropolitan Territory of New Zealand	Elisabeth II	2805	NU
NFK	Norfolk Island	Oceania	Australia and New Zealand	36	\N	2000	\N	0.00	\N	Norfolk Island	Territory of Australia	Elisabeth II	2806	NF
NOR	Norway	Europe	Nordic Countries	323877	1905	4478500	78.699997	145895.00	153370.00	Norge	Constitutional Monarchy	Harald V	2807	NO
CIV	C�te d�Ivoire	Africa	Western Africa	322463	1960	14786000	45.200001	11345.00	10285.00	C�te d�Ivoire	Republic	Laurent Gbagbo	2814	CI
OMN	Oman	Asia	Middle East	309500	1951	2542000	71.800003	16904.00	16153.00	�Uman	Monarchy (Sultanate)	Qabus ibn Sa�id	2821	OM
PAK	Pakistan	Asia	Southern and Central Asia	796095	1947	156483000	61.099998	61289.00	58549.00	Pakistan	Republic	Mohammad Rafiq Tarar	2831	PK
PLW	Palau	Oceania	Micronesia	459	1994	19000	68.599998	105.00	\N	Belau/Palau	Republic	Kuniwo Nakamura	2881	PW
PAN	Panama	North America	Central America	75517	1903	2856000	75.5	9131.00	8700.00	Panam�	Republic	Mireya Elisa Moscoso Rodr�guez	2882	PA
PNG	Papua New Guinea	Oceania	Melanesia	462840	1975	4807000	63.099998	4988.00	6328.00	Papua New Guinea/Papua Niugini	Constitutional Monarchy	Elisabeth II	2884	PG
PRY	Paraguay	South America	South America	406752	1811	5496000	73.699997	8444.00	9555.00	Paraguay	Republic	Luis �ngel Gonz�lez Macchi	2885	PY
PER	Peru	South America	South America	1285216	1821	25662000	70	64140.00	65186.00	Per�/Piruw	Republic	Valentin Paniagua Corazao	2890	PE
PCN	Pitcairn	Oceania	Polynesia	49	\N	50	\N	0.00	\N	Pitcairn	Dependent Territory of the UK	Elisabeth II	2912	PN
MNP	Northern Mariana Islands	Oceania	Micronesia	464	\N	78000	75.5	0.00	\N	Northern Mariana Islands	Commonwealth of the US	George W. Bush	2913	MP
PRT	Portugal	Europe	Southern Europe	91982	1143	9997600	75.800003	105954.00	102133.00	Portugal	Republic	Jorge Samp�io	2914	PT
PRI	Puerto Rico	North America	Caribbean	8875	\N	3869000	75.599998	34100.00	32100.00	Puerto Rico	Commonwealth of the US	George W. Bush	2919	PR
POL	Poland	Europe	Eastern Europe	323250	1918	38653600	73.199997	151697.00	135636.00	Polska	Republic	Aleksander Kwasniewski	2928	PL
GNQ	Equatorial Guinea	Africa	Central Africa	28051	1968	453000	53.599998	283.00	542.00	Guinea Ecuatorial	Republic	Teodoro Obiang Nguema Mbasogo	2972	GQ
QAT	Qatar	Asia	Middle East	11000	1971	599000	72.400002	9472.00	8920.00	Qatar	Monarchy	Hamad ibn Khalifa al-Thani	2973	QA
FRA	France	Europe	Western Europe	551500	843	59225700	78.800003	1424285.00	1392448.00	France	Republic	Jacques Chirac	2974	FR
GUF	French Guiana	South America	South America	90000	\N	181000	76.099998	681.00	\N	Guyane fran�aise	Overseas Department of France	Jacques Chirac	3014	GF
PYF	French Polynesia	Oceania	Polynesia	4000	\N	235000	74.800003	818.00	781.00	Polyn�sie fran�aise	Nonmetropolitan Territory of France	Jacques Chirac	3016	PF
REU	R�union	Africa	Eastern Africa	2510	\N	699000	72.699997	8287.00	7988.00	R�union	Overseas Department of France	Jacques Chirac	3017	RE
ROM	Romania	Europe	Eastern Europe	238391	1878	22455500	69.900002	38158.00	34843.00	Rom�nia	Republic	Ion Iliescu	3018	RO
RWA	Rwanda	Africa	Eastern Africa	26338	1962	7733000	39.299999	2036.00	1863.00	Rwanda/Urwanda	Republic	Paul Kagame	3047	RW
SWE	Sweden	Europe	Nordic Countries	449964	836	8861400	79.599998	226492.00	227757.00	Sverige	Constitutional Monarchy	Carl XVI Gustaf	3048	SE
SHN	Saint Helena	Africa	Western Africa	314	\N	6000	76.800003	0.00	\N	Saint Helena	Dependent Territory of the UK	Elisabeth II	3063	SH
KNA	Saint Kitts and Nevis	North America	Caribbean	261	1983	38000	70.699997	299.00	\N	Saint Kitts and Nevis	Constitutional Monarchy	Elisabeth II	3064	KN
LCA	Saint Lucia	North America	Caribbean	622	1979	154000	72.300003	571.00	\N	Saint Lucia	Constitutional Monarchy	Elisabeth II	3065	LC
VCT	Saint Vincent and the Grenadines	North America	Caribbean	388	1979	114000	72.300003	285.00	\N	Saint Vincent and the Grenadines	Constitutional Monarchy	Elisabeth II	3066	VC
SPM	Saint Pierre and Miquelon	North America	North America	242	\N	7000	77.599998	0.00	\N	Saint-Pierre-et-Miquelon	Territorial Collectivity of France	Jacques Chirac	3067	PM
DEU	Germany	Europe	Western Europe	357022	1955	82164700	77.400002	2133367.00	2102826.00	Deutschland	Federal Republic	Johannes Rau	3068	DE
SLB	Solomon Islands	Oceania	Melanesia	28896	1978	444000	71.300003	182.00	220.00	Solomon Islands	Constitutional Monarchy	Elisabeth II	3161	SB
ZMB	Zambia	Africa	Eastern Africa	752618	1964	9169000	37.200001	3377.00	3922.00	Zambia	Republic	Frederick Chiluba	3162	ZM
WSM	Samoa	Oceania	Polynesia	2831	1962	180000	69.199997	141.00	157.00	Samoa	Parlementary Monarchy	Malietoa Tanumafili II	3169	WS
SMR	San Marino	Europe	Southern Europe	61	885	27000	81.099998	510.00	\N	San Marino	Republic	\N	3171	SM
STP	Sao Tome and Principe	Africa	Central Africa	964	1975	147000	65.300003	6.00	\N	S�o Tom� e Pr�ncipe	Republic	Miguel Trovoada	3172	ST
SAU	Saudi Arabia	Asia	Middle East	2149690	1932	21607000	67.800003	137635.00	146171.00	Al-�Arabiya as-Sa�udiya	Monarchy	Fahd ibn Abdul-Aziz al-Sa�ud	3173	SA
SEN	Senegal	Africa	Western Africa	196722	1960	9481000	62.200001	4787.00	4542.00	S�n�gal/Sounougal	Republic	Abdoulaye Wade	3198	SN
SYC	Seychelles	Africa	Eastern Africa	455	1976	77000	70.400002	536.00	539.00	Sesel/Seychelles	Republic	France-Albert Ren�	3206	SC
SLE	Sierra Leone	Africa	Western Africa	71740	1961	4854000	45.299999	746.00	858.00	Sierra Leone	Republic	Ahmed Tejan Kabbah	3207	SL
SGP	Singapore	Asia	Southeast Asia	618	1965	3567000	80.099998	86503.00	96318.00	Singapore/Singapura/Xinjiapo/Singapur	Republic	Sellapan Rama Nathan	3208	SG
SVK	Slovakia	Europe	Eastern Europe	49012	1993	5398700	73.699997	20594.00	19452.00	Slovensko	Republic	Rudolf Schuster	3209	SK
SVN	Slovenia	Europe	Southern Europe	20256	1991	1987800	74.900002	19756.00	18202.00	Slovenija	Republic	Milan Kucan	3212	SI
SOM	Somalia	Africa	Eastern Africa	637657	1960	10097000	46.200001	935.00	\N	Soomaaliya	Republic	Abdiqassim Salad Hassan	3214	SO
LKA	Sri Lanka	Asia	Southern and Central Asia	65610	1948	18827000	71.800003	15706.00	15091.00	Sri Lanka/Ilankai	Republic	Chandrika Kumaratunga	3217	LK
SDN	Sudan	Africa	Northern Africa	2505813	1956	29490000	56.599998	10162.00	\N	As-Sudan	Islamic Republic	Omar Hassan Ahmad al-Bashir	3225	SD
FIN	Finland	Europe	Nordic Countries	338145	1917	5171300	77.400002	121914.00	119833.00	Suomi	Republic	Tarja Halonen	3236	FI
SUR	Suriname	South America	South America	163265	1975	417000	71.400002	870.00	706.00	Suriname	Republic	Ronald Venetiaan	3243	SR
SWZ	Swaziland	Africa	Southern Africa	17364	1968	1008000	40.400002	1206.00	1312.00	kaNgwane	Monarchy	Mswati III	3244	SZ
CHE	Switzerland	Europe	Western Europe	41284	1499	7160400	79.599998	264478.00	256092.00	Schweiz/Suisse/Svizzera/Svizra	Federation	Adolf Ogi	3248	CH
SYR	Syria	Asia	Middle East	185180	1941	16125000	68.5	65984.00	64926.00	Suriya	Republic	Bashar al-Assad	3250	SY
TJK	Tajikistan	Asia	Southern and Central Asia	143100	1991	6188000	64.099998	1990.00	1056.00	To�ikiston	Republic	Emomali Rahmonov	3261	TJ
TWN	Taiwan	Asia	Eastern Asia	36188	1945	22256000	76.400002	256254.00	263451.00	T�ai-wan	Republic	Chen Shui-bian	3263	TW
TZA	Tanzania	Africa	Eastern Africa	883749	1961	33517000	52.299999	8005.00	7388.00	Tanzania	Republic	Benjamin William Mkapa	3306	TZ
DNK	Denmark	Europe	Nordic Countries	43094	800	5330000	76.5	174099.00	169264.00	Danmark	Constitutional Monarchy	Margrethe II	3315	DK
THA	Thailand	Asia	Southeast Asia	513115	1350	61399000	68.599998	116416.00	153907.00	Prathet Thai	Constitutional Monarchy	Bhumibol Adulyadej	3320	TH
TGO	Togo	Africa	Western Africa	56785	1960	4629000	54.700001	1449.00	1400.00	Togo	Republic	Gnassingb� Eyad�ma	3332	TG
TKL	Tokelau	Oceania	Polynesia	12	\N	2000	\N	0.00	\N	Tokelau	Nonmetropolitan Territory of New Zealand	Elisabeth II	3333	TK
TON	Tonga	Oceania	Polynesia	650	1970	99000	67.900002	146.00	170.00	Tonga	Monarchy	Taufa'ahau Tupou IV	3334	TO
TTO	Trinidad and Tobago	North America	Caribbean	5130	1962	1295000	68	6232.00	5867.00	Trinidad and Tobago	Republic	Arthur N. R. Robinson	3336	TT
TCD	Chad	Africa	Central Africa	1284000	1960	7651000	50.5	1208.00	1102.00	Tchad/Tshad	Republic	Idriss D�by	3337	TD
CZE	Czech Republic	Europe	Eastern Europe	78866	1993	10278100	74.5	55017.00	52037.00	�esko	Republic	V�clav Havel	3339	CZ
TUN	Tunisia	Africa	Northern Africa	163610	1956	9586000	73.699997	20026.00	18898.00	Tunis/Tunisie	Republic	Zine al-Abidine Ben Ali	3349	TN
TUR	Turkey	Asia	Middle East	774815	1923	66591000	71	210721.00	189122.00	T�rkiye	Republic	Ahmet Necdet Sezer	3358	TR
TKM	Turkmenistan	Asia	Southern and Central Asia	488100	1991	4459000	60.900002	4397.00	2000.00	T�rkmenostan	Republic	Saparmurad Nijazov	3419	TM
TCA	Turks and Caicos Islands	North America	Caribbean	430	\N	17000	73.300003	96.00	\N	The Turks and Caicos Islands	Dependent Territory of the UK	Elisabeth II	3423	TC
TUV	Tuvalu	Oceania	Polynesia	26	1978	12000	66.300003	6.00	\N	Tuvalu	Constitutional Monarchy	Elisabeth II	3424	TV
UGA	Uganda	Africa	Eastern Africa	241038	1962	21778000	42.900002	6313.00	6887.00	Uganda	Republic	Yoweri Museveni	3425	UG
UKR	Ukraine	Europe	Eastern Europe	603700	1991	50456000	66	42168.00	49677.00	Ukrajina	Republic	Leonid Kut�ma	3426	UA
HUN	Hungary	Europe	Eastern Europe	93030	1918	10043200	71.400002	48267.00	45914.00	Magyarorsz�g	Republic	Ferenc M�dl	3483	HU
URY	Uruguay	South America	South America	175016	1828	3337000	75.199997	20831.00	19967.00	Uruguay	Republic	Jorge Batlle Ib��ez	3492	UY
NCL	New Caledonia	Oceania	Melanesia	18575	\N	214000	72.800003	3563.00	\N	Nouvelle-Cal�donie	Nonmetropolitan Territory of France	Jacques Chirac	3493	NC
NZL	New Zealand	Oceania	Australia and New Zealand	270534	1907	3862000	77.800003	54669.00	64960.00	New Zealand/Aotearoa	Constitutional Monarchy	Elisabeth II	3499	NZ
UZB	Uzbekistan	Asia	Southern and Central Asia	447400	1991	24318000	63.700001	14194.00	21300.00	Uzbekiston	Republic	Islam Karimov	3503	UZ
BLR	Belarus	Europe	Eastern Europe	207600	1991	10236000	68	13714.00	\N	Belarus	Republic	Aljaksandr Luka�enka	3520	BY
WLF	Wallis and Futuna	Oceania	Polynesia	200	\N	15000	\N	0.00	\N	Wallis-et-Futuna	Nonmetropolitan Territory of France	Jacques Chirac	3536	WF
VUT	Vanuatu	Oceania	Melanesia	12189	1980	190000	60.599998	261.00	246.00	Vanuatu	Republic	John Bani	3537	VU
VAT	Holy See (Vatican City State)	Europe	Southern Europe	0.40000001	1929	1000	\N	9.00	\N	Santa Sede/Citt� del Vaticano	Independent Church State	Johannes Paavali II	3538	VA
VEN	Venezuela	South America	South America	912050	1811	24170000	73.099998	95023.00	88434.00	Venezuela	Federal Republic	Hugo Ch�vez Fr�as	3539	VE
RUS	Russian Federation	Europe	Eastern Europe	17075400	1991	146934000	67.199997	276608.00	442989.00	Rossija	Federal Republic	Vladimir Putin	3580	RU
VNM	Vietnam	Asia	Southeast Asia	331689	1945	79832000	69.300003	21929.00	22834.00	Vi�t Nam	Socialistic Republic	Tr�n Duc Luong	3770	VN
EST	Estonia	Europe	Baltic Countries	45227	1991	1439200	69.5	5328.00	3371.00	Eesti	Republic	Lennart Meri	3791	EE
USA	United States	North America	North America	9363520	1776	278357000	77.099998	8510700.00	8110900.00	United States	Federal Republic	George W. Bush	3813	US
VIR	Virgin Islands, U.S.	North America	Caribbean	347	\N	93000	78.099998	0.00	\N	Virgin Islands of the United States	US Territory	George W. Bush	4067	VI
ZWE	Zimbabwe	Africa	Eastern Africa	390757	1980	11669000	37.799999	5951.00	8670.00	Zimbabwe	Republic	Robert G. Mugabe	4068	ZW
PSE	Palestine	Asia	Middle East	6257	\N	3101000	71.400002	4173.00	\N	Filastin	Autonomous Area	Yasser (Yasir) Arafat	4074	PS
ATA	Antarctica	Antarctica	Antarctica	13120000	\N	0	\N	0.00	\N	�	Co-administrated		\N	AQ
BVT	Bouvet Island	Antarctica	Antarctica	59	\N	0	\N	0.00	\N	Bouvet�ya	Dependent Territory of Norway	Harald V	\N	BV
IOT	British Indian Ocean Territory	Africa	Eastern Africa	78	\N	0	\N	0.00	\N	British Indian Ocean Territory	Dependent Territory of the UK	Elisabeth II	\N	IO
SGS	South Georgia and the South Sandwich Islands	Antarctica	Antarctica	3903	\N	0	\N	0.00	\N	South Georgia and the South Sandwich Islands	Dependent Territory of the UK	Elisabeth II	\N	GS
HMD	Heard Island and McDonald Islands	Antarctica	Antarctica	359	\N	0	\N	0.00	\N	Heard and McDonald Islands	Territory of Australia	Elisabeth II	\N	HM
ATF	French Southern territories	Antarctica	Antarctica	7780	\N	0	\N	0.00	\N	Terres australes fran�aises	Nonmetropolitan Territory of France	Jacques Chirac	\N	TF
UMI	United States Minor Outlying Islands	Oceania	Micronesia/Caribbean	16	\N	0	\N	0.00	\N	United States Minor Outlying Islands	Dependent Territory of the US	George W. Bush	\N	UM
\.


ALTER TABLE ONLY country
    ADD CONSTRAINT country_pkey PRIMARY KEY (code);

COMMIT;

ANALYZE country;

