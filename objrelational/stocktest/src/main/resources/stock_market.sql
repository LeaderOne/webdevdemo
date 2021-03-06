--
-- PostgreSQL database dump
--

SET statement_timeout = 0;
SET client_encoding = 'UTF8';
SET standard_conforming_strings = on;
SET check_function_bodies = false;
SET client_min_messages = warning;

--
-- Name: plpgsql; Type: EXTENSION; Schema: -; Owner: 
--

CREATE EXTENSION IF NOT EXISTS plpgsql WITH SCHEMA pg_catalog;


--
-- Name: EXTENSION plpgsql; Type: COMMENT; Schema: -; Owner: 
--

COMMENT ON EXTENSION plpgsql IS 'PL/pgSQL procedural language';


SET search_path = public, pg_catalog;

SET default_tablespace = '';

SET default_with_oids = false;

--
-- Name: stock_bet; Type: TABLE; Schema: public; Owner: markelba; Tablespace: 
--

CREATE TABLE stock_bet (
    stock_symbol character(9) NOT NULL,
    d1dt numeric(16,2),
    d2dt numeric(16,2),
    pred_inc_pct numeric(8,4),
    bet_ts timestamp without time zone NOT NULL,
    bet_status character(4)
);


ALTER TABLE public.stock_bet OWNER TO markelba;

--
-- Name: stock_price; Type: TABLE; Schema: public; Owner: markelba; Tablespace: 
--

CREATE TABLE stock_price (
    stock_symbol character(9) NOT NULL,
    price numeric(16,2),
    price_ts timestamp without time zone NOT NULL
);


ALTER TABLE public.stock_price OWNER TO markelba;

--
-- Name: stock_ticker; Type: TABLE; Schema: public; Owner: markelba; Tablespace: 
--

CREATE TABLE stock_ticker (
    stock_symbol character(9) NOT NULL,
    company_name character varying(255)
);


ALTER TABLE public.stock_ticker OWNER TO markelba;

--
-- Data for Name: stock_bet; Type: TABLE DATA; Schema: public; Owner: markelba
--

COPY stock_bet (stock_symbol, d1dt, d2dt, pred_inc_pct, bet_ts, bet_status) FROM stdin;
\.


--
-- Data for Name: stock_price; Type: TABLE DATA; Schema: public; Owner: markelba
--

COPY stock_price (stock_symbol, price, price_ts) FROM stdin;
\.


--
-- Data for Name: stock_ticker; Type: TABLE DATA; Schema: public; Owner: markelba
--

COPY stock_ticker (stock_symbol, company_name) FROM stdin;
A        	 Agilent Technologies Inc. 
AA       	Alcoa Inc.
AA^      	Alcoa Inc.
AACC     	Asset Acceptance Capital Corp.
AADR     	AdvisorShares WCM/BNY Mellon Focused Growth ADR ETF
AAIT     	iShares MSCI AC Asia Information Tech ETF
AAME     	Atlantic American Corporation
AAN      	 Aarons  Inc. 
AAON     	 AAON Inc. 
AAP      	Advance Auto Parts Inc
AAPL     	Apple Inc.
AAT      	 American Assets Trust Inc. 
AAU      	 Almaden Minerals Ltd. 
AAV      	Advantage Oil & Gas Ltd
AAWW     	Atlas Air Worldwide Holdings
AAXJ     	iShares MSCI All Country Asia ex Japan Index Fund
AAZ^K    	SiM Internal Test 1
AB       	Alliance Capital Management Holding L.P.
ABAX     	 ABAXIS Inc. 
ABB      	ABB Ltd
ABBV     	AbbVie Inc.
ABC      	AmerisourceBergen Corporation (Holding Co)
ABCB     	Ameris Bancorp
ABCD     	 Cambium Learning Group Inc. 
ABCO     	The Advisory Board Company
ABFS     	Arkansas Best Corporation
ABG      	Asbury Automotive Group Inc
ABIO     	 ARCA biopharma Inc. 
ABM      	ABM Industries Incorporated
ABMD     	 ABIOMED Inc. 
ABR      	Arbor Realty Trust
ABR^A    	Arbor Realty Trust
ABT      	Abbott Laboratories
ABTL     	Autobytel Inc.
ABV      	Companhia de Bebidas das Americas - AmBev
ABV/C    	Companhia de Bebidas das Americas - AmBev
ABW^B    	Associated Banc-Corp
ABX      	Barrick Gold Corporation
ACAD     	ACADIA Pharmaceuticals Inc.
ACAS     	 American Capital Ltd. 
ACAT     	Arctic Cat Inc.
ACC      	American Campus Communities Inc
ACCL     	 Accelrys Inc. 
ACCO     	Acco Brands Corporation
ACCU     	AdvisorShares Accuvest Global Opportunities ETF
ACE      	Ace Limited
ACET     	Aceto Corporation
ACFC     	Atlantic Coast Federal Corporation
ACFN     	 Acorn Energy Inc. 
ACG      	ALLIANCEBERNSTEIN INCOME FUND INC
ACGL     	Arch Capital Group Ltd.
ACH      	Aluminum Corporation of China Ltd
ACHC     	 Acadia Healthcare Company Inc. 
ACHN     	 Achillion Pharmaceuticals Inc. 
ACI      	 Arch Coal Inc. 
ACIM     	SPDR MSCI ACWI IMI ETF
ACIW     	 ACI Worldwide Inc. 
ACLS     	 Axcelis Technologies Inc. 
ACM      	Aecom Technology Corporation
ACMP     	 Access Midstream Partmers L.P. 
ACN      	Accenture plc.
ACNB     	ACNB Corporation
ACO      	Amcol International Corporation
ACOR     	 Acorda Therapeutics Inc. 
ACP      	Avenue Income Credit Strategies Fund
ACPW     	 Active Power Inc. 
ACRE     	Ares Commercial Real Estate Corporation
ACRX     	 AcelRx Pharmaceuticals Inc. 
ACST     	 Acasti Pharma Inc. 
ACT      	 Actavis Inc. 
ACTG     	Acacia Research Corporation
ACTS     	 Actions Semiconductor Co. Ltd. 
ACTV     	 The Active Network Inc. 
ACU      	Acme United Corporation.
ACUR     	 Acura Pharmaceuticals Inc. 
ACW      	Accuride Corporation New
ACWI     	iShares MSCI ACWI (All Country World Index) Index Fund ETF
ACWV     	iShares MSCI All Country World Minimum Volatility Index Fund ETF
ACWX     	iShares MSCI ACWI ex US Index Fund
ACY      	AeroCentury Corp.
ADAT     	Authentidate Holding Corp.
ADBE     	Adobe Systems Incorporated
ADC      	Agree Realty Corporation
ADEP     	 Adept Technology Inc. 
ADES     	 ADA-ES Inc. 
ADGE     	American DG Energy Inc.
ADI      	 Analog Devices Inc. 
ADK      	Adcare Health Systems Inc
ADK^A    	Adcare Health Systems Inc
ADM      	Archer-Daniels-Midland Company
ADNC     	 Audience Inc. 
ADP      	 Automatic Data Processing Inc. 
ADRA     	BLDRS Asia 50 ADR Index Fund
ADRD     	BLDRS Developed Markets 100 ADR Index Fund
ADRE     	BLDRS Emerging Markets 50 ADR Index Fund
ADRU     	BLDRS Europe 100 ADR Index Fund
ADS      	Alliance Data Systems Corporation
ADSK     	 Autodesk Inc. 
ADT      	ADT Corporation
ADTN     	 ADTRAN Inc. 
ADUS     	Addus HomeCare Corporation
ADVS     	 Advent Software Inc. 
ADX      	Adams Express Company (The)
ADY      	 Feihe International Inc. 
AE       	 Adams Resources & Energy Inc. 
AEB      	Aegon NV
AEC      	Associated Estates Realty Corporation
AED      	Aegon NV
AEE      	Ameren Corporation
AEF      	Aegon NV
AEG      	Aegon NV
AEGN     	Aegion Corp
AEGR     	 Aegerion Pharmaceuticals Inc. 
AEH      	Aegon NV
AEHR     	Aehr Test Systems
AEIS     	 Advanced Energy Industries Inc. 
AEK      	Aegon NV
AEL      	American Equity Investment Life Holding Company
AEM      	Agnico-Eagle Mines Limited
AEO      	 American Eagle Outfitters Inc. 
AEP      	 American Electric Power Company Inc. 
AEPI     	AEP Industries Inc.
AER      	Aercap Holdings N.V.
AERL     	Asia Entertainment & Resources Ltd
AES      	The AES Corporation
AES^C    	The AES Corporation
AET      	Aetna Inc.
AETI     	 American Electric Technologies Inc. 
AEV      	Aegon NV
AEY      	 ADDvantage Technologies Group Inc. 
AEZS     	AEterna Zentaris Inc.
AF       	Astoria Financial Corporation
AFA      	 American Financial Group Inc. 
AFAM     	Almost Family Inc
AFB      	Alliance National Municipal Income Fund Inc
AFC      	Ares Capital Corporation
AF^C     	Astoria Financial Corporation
AFCB     	Athens Bancshares Corporation
AFCE     	 AFC Enterprises Inc. 
AFF      	 American International Group Inc. 
AFFX     	 Affymetrix Inc. 
AFFY     	 Affymax Inc. 
AFG      	 American Financial Group Inc. 
AFH      	 Atlas Financial Holdings Inc. 
AFK      	Market Vectors-Africa Index ETF
AFL      	Aflac Incorporated
AFM      	 Affiliated Managers Group Inc. 
AFOP     	 Alliance Fiber Optic Products Inc. 
AFQ      	 American Financial Group Inc. 
AFSD     	Aflac Incorporated
AFSI     	 AmTrust Financial Services Inc. 
AFT      	Apollo Senior Floating Rate Fund Inc.
AFW      	 American Financial Group Inc. 
AG       	First Majestic Silver Corp.
AGC      	Advent Claymore Convertible Securities and Income Fund II
AGCO     	AGCO Corporation
AGD      	Alpine Global Dynamic Dividend Fund
AGEM     	EGShares Composite GEMS ETF
AGEN     	Agenus Inc.
AGG      	iShares Barclays Aggregate ETF
AGI      	Alamos Gold Inc
AGII     	 Argo Group International Holdings Ltd. 
AGIIL    	 Argo Group International Holdings Ltd. 
AGLS     	AdvisorShares Accuvest Mars Hill Global Relative Value ETF
AGM      	Federal Agricultural Mortgage Corporation
AGM^A    	Federal Agricultural Mortgage Corporation
AGM/A    	Federal Agricultural Mortgage Corporation
AGN      	 Allergan Inc. 
AGNC     	American Capital Agency Corp.
AGNCP    	American Capital Agency Corp.
AGO      	Assured Guaranty Ltd.
AGO^B    	Assured Guaranty Ltd.
AGO^E    	Assured Guaranty Ltd.
AGO^F    	Assured Guaranty Ltd.
AGOL     	ETFS Physical Asian Gold Shares ETF
AGQ      	ProShares Ultra Silver ETF
AGRO     	Adecoagro S.A.
AGU      	Agrium Inc.
AGX      	 Argan Inc. 
AGYS     	 Agilysys Inc. 
AGZ      	iShares Barclays Agency Bond Fund ETF
AH       	 Accretive Health Inc. 
AHC      	A.H. Belo Corporation
AHGP     	 Alliance Holdings GP L.P. 
AHL      	Aspen Insurance Holdings Limited
AHL^     	Aspen Insurance Holdings Limited
AHL^A    	Aspen Insurance Holdings Limited
AHL^B    	Aspen Insurance Holdings Limited
AHPI     	 Allied Healthcare Products Inc. 
AHS      	AMN Healthcare Services Inc
AHT      	Ashford Hospitality Trust Inc
AHT^A    	Ashford Hospitality Trust Inc
AHT^D    	Ashford Hospitality Trust Inc
AHT^E    	Ashford Hospitality Trust Inc
AI       	Arlington Asset Investment Corp
AIA      	iShares S&P Asia 50 ETF
AIB      	Apollo Investment Corporation
AIF      	Apollo Tactical Income Fund Inc.
AIG      	 American International Group Inc. 
AIG/WS   	 American International Group Inc. 
AIM      	Aerosonic Corporation
AIMC     	 Altra Holdings Inc. 
AIN      	Albany International Corporation
AINV     	Apollo Investment Corporation
AIQ      	 Alliance HealthCare Services Inc. 
AIR      	AAR Corp.
AIRM     	Air Methods Corporation
AIRT     	 Air T Inc. 
AIT      	 Applied Industrial Technologies Inc. 
AIV      	Apartment Investment and Management Company
AIV^Z    	Apartment Investment and Management Company
AIXG     	Aixtron SE
AIZ      	 Assurant Inc. 
AJG      	Arthur J. Gallagher & Co.
AKAM     	 Akamai Technologies Inc. 
AKG      	Asanko Gold Inc.
AKO/A    	Embotelladora Andina S.A.
AKO/B    	Embotelladora Andina S.A.
AKP      	Alliance California Municipal Income Fund Inc
AKR      	Acadia Realty Trust
AKRX     	 Akorn Inc. 
AKS      	AK Steel Holding Corporation
AL       	Air Lease Corporation
ALB      	Albemarle Corporation
ALC      	 Assisted Living Concepts Inc. New 
ALCO     	 Alico Inc. 
ALCS     	 ALCO Stores Inc. 
ALD      	WisdomTree Asia Local Debt Fund ETF
ALDW     	 Alon USA Partners LP 
ALE      	 Allete Inc. 
ALEX     	 Alexander & Baldwin Holdings Inc. 
ALFA     	AlphaClone Alternative Alpha ETF
ALG      	 Alamo Group Inc. 
ALGN     	 Align Technology Inc. 
ALGT     	Allegiant Travel Company
ALIM     	 Alimera Sciences Inc. 
ALJ      	 Alon USA Energy Inc. 
ALK      	 Alaska Air Group Inc. 
ALKS     	Alkermes plc
ALL      	Allstate Corporation (The)
ALLB     	 Alliance Bancorp Inc. of Pennsylvania 
ALL^B    	Allstate Corporation (The)
ALLT     	Allot Communications Ltd.
ALLY^A   	GMAC Capital Trust I
ALN      	American Lorain Corporation
ALNY     	 Alnylam Pharmaceuticals Inc. 
ALOG     	Analogic Corporation
ALOT     	 Astro-Med Inc. 
ALP^N    	Alabama Power Company
ALP^O    	Alabama Power Company
ALP^P    	Alabama Power Company
ALR      	Alere Inc.
ALR^B    	Alere Inc.
ALSK     	 Alaska Communications Systems Group Inc. 
ALSN     	 Allison Transmission Holdings Inc. 
ALT      	iShares Diversified Alternatives Trust ETF
ALTE     	Alterra Capital Holdings Limited
ALTI     	Altair Nanotechnologies Inc.
ALTR     	Altera Corporation
ALTV     	Alteva (D/B/A)
ALU      	Alcatel Lucent
ALV      	 Autoliv Inc. 
ALVR     	Alvarion Ltd.
ALX      	 Alexander&#39;s Inc. 
ALXA     	 Alexza Pharmaceuticals Inc. 
ALXN     	 Alexion Pharmaceuticals Inc. 
AM       	American Greetings Corporation
AMAG     	 AMAG Pharmaceuticals Inc. 
AMAP     	AutoNavi Holdings Limited
AMAT     	 Applied Materials Inc. 
AMBA     	 Ambarella Inc. 
AMBO     	Ambow Education Holding Ltd.
AMBT     	Ambient Corporation
AMCC     	Applied Micro Circuits Corporation
AMCF     	Andatee China Marine Fuel Services Corporation
AMCN     	AirMedia Group Inc
AMCX     	AMC Networks Inc.
AMD      	 Advanced Micro Devices Inc. 
AME      	 AMTEK Inc. 
AMED     	Amedisys Inc
AMG      	 Affiliated Managers Group Inc. 
AMGN     	Amgen Inc.
AMIC     	American Independence Corp.
AMID     	 American Midstream Partners LP 
AMKR     	 Amkor Technology Inc. 
AMLP     	ALPS Alerian MLP ETF
AMNB     	 American National Bankshares Inc. 
AMOT     	 Allied Motion Technologies Inc. 
AMOV     	 America Movil S.A.B. de C.V. 
AMP      	 AMERIPRISE FINANCIAL SERVICES Inc. 
AMP^A    	 AMERIPRISE FINANCIAL SERVICES Inc. 
AMPE     	 Ampio Pharmaceuticals Inc. 
AMPS     	iShares Utilities Sector Bond ETF
AMRB     	American River Bankshares
AMRC     	 Ameresco Inc. 
AMRE     	 AmREIT Inc. 
AMRI     	 Albany Molecular Research Inc. 
AMRN     	Amarin Corporation PLC
AMRS     	 Amyris Inc. 
AMS      	American Shared Hospital Services
AMSC     	American Superconductor Corporation
AMSF     	 AMERISAFE Inc. 
AMSG     	Amsurg Corp.
AMSWA    	 American Software Inc. 
AMT      	American Tower Corporation (REIT)
AMTD     	TD Ameritrade Holding Corporation
AMTG     	 Apollo Residential Mortgage Inc. 
AMTG^A   	 Apollo Residential Mortgage Inc. 
AMWD     	American Woodmark Corporation
AMX      	 America Movil S.A.B. de C.V. 
AMZN     	 Amazon.com Inc. 
AN       	 AutoNation Inc. 
ANAC     	 Anacor Pharmaceuticals Inc. 
ANAD     	 ANADIGICS Inc. 
ANAT     	American National Insurance Company
ANCB     	Anchor Bancorp
ANCI     	American Caresource Holdings Inc
ANCX     	Access National Corporation
AND      	Global X FTSE Andean 40 ETF
ANDA     	Andina Acquisition Corporation
ANDAU    	Andina Acquisition Corporation
ANDAW    	Andina Acquisition Corporation
ANDE     	 The Andersons Inc. 
ANEN     	 Anaren Inc. 
ANF      	Abercrombie & Fitch Company
ANFI     	Amira Nature Foods Ltd
ANGI     	 Angie&#39;s List Inc. 
ANGL     	Market Vectors Fallen Angel HY Bond ETF
ANGO     	 AngioDynamics Inc. 
ANH      	Anworth Mortgage Asset  Corporation
ANH^A    	Anworth Mortgage Asset  Corporation
ANH^B    	Anworth Mortgage Asset  Corporation
ANIK     	Anika Therapeutics Inc.
ANLY     	Analysts International Corporation
ANN      	ANN INC.
ANR      	 Alpha Natural Resources Inc. 
ANSS     	 ANSYS Inc. 
ANTH     	 Anthera Pharmaceuticals Inc. 
ANTP     	PHAZAR CORP
ANV      	Allied Nevada Gold Corp.
ANW      	Aegean Marine Petroleum Network Inc.
AOA      	iShares S&P Aggressive Allocation Fund ETF
AOD      	Alpine Total Dynamic Dividend Fund
AOI      	 Alliance One International Inc. 
AOK      	iShares S&P Conservative Allocation Fund ETF
AOL      	AOL Inc.
AOM      	iShares S&P Moderate Allocation Fund ETF
AON      	Aon plc
AOR      	iShares S&P Growth Allocation Fund ETF
AOS      	Smith (A.O.) Corporation
AOSL     	Alpha and Omega Semiconductor Limited
AP       	Ampco-Pittsburgh Corporation
APA      	Apache Corporation
APA^D    	Apache Corporation
APAGF    	Apco Oil and Gas International Inc.
APAM     	Artisan Partners Asset Management Inc.
APB      	 Asia Pacific Fund Inc. (The) 
APC      	Anadarko Petroleum Corporation
APD      	 Air Products and Chemicals Inc. 
APEI     	 American Public Education Inc. 
APF      	 Morgan Stanley Asia-Pacific Fund Inc. 
APFC     	American Pacific Corporation
APH      	Amphenol Corporation
API      	 Advanced Photonix Inc. 
APL      	 Atlas Pipeline Partners L.P. 
APO      	 Apollo Global Management LLC 
APOG     	 Apogee Enterprises Inc. 
APOL     	 Apollo Group Inc. 
APP      	American Apparel Inc
APPY     	 Venaxis Inc. 
APRI     	 Apricus Biosciences Inc 
APSA     	Alto Palermo S.A.
APT      	 Alpha Pro Tech Ltd. 
APTS     	 Preferred Apartment Communities Inc. 
APU      	 AmeriGas Partners L.P. 
APWC     	Asia Pacific Wire & Cable Corporation Limited
AQ       	Acquity Group Limited
AQQ      	 American Spectrum Realty Inc. 
AQU      	Aquasition Corp.
AQUUU    	Aquasition Corp.
AQUUW    	Aquasition Corp.
ARAY     	Accuray Incorporated
ARB      	Arbitron Inc.
ARC      	 ARC Document Solutions Inc. 
ARCC     	Ares Capital Corporation
ARCI     	 Appliance Recycling Centers of America Inc. 
ARCO     	Arcos Dorados Holdings Inc.
ARCP     	 American Realty Capital Properties Inc. 
ARCW     	 ARC Group Worldwide Inc. 
ARDC     	 Ares Dynamic Credit Allocation Fund Inc. 
ARDNA    	 Arden Group Inc. 
ARE      	 Alexandria Real Estate Equities Inc. 
ARE^E    	 Alexandria Real Estate Equities Inc. 
AREX     	Approach Resources Inc.
ARG      	 Airgas Inc. 
ARGT     	Global X FTSE Argentina 20 ETF
ARH^C    	Arch Capital Group Ltd.
ARI      	Apollo Commercial Real Estate Finance
ARIA     	 ARIAD Pharmaceuticals Inc. 
ARI^A    	Apollo Commercial Real Estate Finance
ARII     	 American Railcar Industries Inc. 
ARK      	 Senior High Income Portfolio Inc. 
ARKR     	Ark Restaurants Corp.
ARL      	 American Realty Investors Inc. 
ARLP     	 Alliance Resource Partners L.P. 
ARMH     	ARM Holdings plc
ARN      	Ares Capital Corporation
ARNA     	 Arena Pharmaceuticals Inc. 
ARO      	Aeropostale Inc
AROW     	Arrow Financial Corporation
ARP      	 Atlas Resource Partners L.P. 
ARQL     	 ArQule Inc. 
ARR      	 ARMOUR Residential REIT Inc. 
ARR^A    	 ARMOUR Residential REIT Inc. 
ARR^B    	 ARMOUR Residential REIT Inc. 
ARRS     	Arris Group Inc
ARR/WS   	 ARMOUR Residential REIT Inc. 
ARRY     	Array BioPharma Inc.
ARSD     	Arabian American Development Company
ART      	ARTIO GLOBAL INVESTORS INC.
ARTC     	ArthroCare Corporation
ARTNA    	Artesian Resources Corporation
ARTW     	 Art&#39;s-Way Manufacturing Co. Inc. 
ARTX     	Arotech Corporation
ARU      	Ares Capital Corporation
ARUN     	 Aruba Networks Inc. 
ARW      	 Arrow Electronics Inc. 
ARWR     	Arrowhead Research Corporation
ARX      	Aeroflex Holding Corp.
ARY      	Ares Capital Corporation
ASA      	ASA Gold and Precious Metals Limited
ASBB     	 ASB Bancorp Inc. 
ASBC     	Associated Banc-Corp
ASBCW    	Associated Banc-Corp
ASBI     	Ameriana Bancorp
ASCA     	 Ameristar Casinos Inc. 
ASCMA    	 Ascent Capital Group Inc. 
ASDR     	ALPS ETF Trust VelocityShares Emerging Asia DR ETF
ASEA     	Global X FTSE ASEAN 40 ETF
ASEI     	 American Science and Engineering Inc. 
ASFI     	 Asta Funding Inc. 
ASG      	 Liberty All-Star Growth Fund Inc. 
ASGN     	 On Assignment Inc. 
ASH      	Ashland Inc.
ASI      	 American Safety Insurance Holdings Ltd. 
ASIA     	 AsiaInfo-Linkage Inc. 
ASM      	Avino Silver
ASMI     	ASM International N.V.
ASML     	ASML Holding N.V.
ASNA     	 Ascena Retail Group Inc. 
ASP      	American Strategic Income Portfolio
ASPS     	Altisource Portfolio Solutions S.A.
ASR      	 Grupo Aeroportuario del Sureste S.A. de C.V. 
ASRV     	AmeriServ Financial Inc.
ASRVP    	AmeriServ Financial Inc.
ASTC     	Astrotech Corporation
ASTE     	 Astec Industries Inc. 
ASTI     	 Ascent Solar Technologies Inc. 
ASTM     	 Aastrom Biosciences Inc. 
ASTX     	 Astex Pharmaceuticals Inc. 
ASUR     	Asure Software Inc
ASX      	 Advanced Semiconductor Engineering Inc. 
ASYS     	 Amtech Systems Inc. 
AT       	Atlantic Power Corporation
ATAI     	ATA Inc.
ATAX     	 America First Tax Exempt Investors L.P. 
ATE      	Advantest Corporation (Kabushiki Kaisha Advantest) ADS
ATEA     	 Astea International Inc. 
ATEC     	 Alphatec Holdings Inc. 
ATHN     	 athenahealth Inc. 
ATHX     	 Athersys Inc. 
ATI      	Allegheny Technologies Incorporated
ATK      	Alliant Techsystems Inc.
ATL      	Atlatsa Resources Corporation
ATLC     	Atlanticus Holdings Corporation
ATLO     	Ames National Corporation
ATLS     	 Atlas Energy L.P. 
ATMI     	ATMI Inc.
ATML     	Atmel Corporation
ATNI     	 Atlantic Tele-Network Inc. 
ATNY     	API Technologies Corp.
ATO      	Atmos Energy Corporation
ATOS     	Atossa Genetics Inc.
ATR      	 AptarGroup Inc. 
ATRC     	 AtriCure Inc. 
ATRI     	ATRION Corporation
ATRM     	Aetrium Incorporated
ATRO     	Astronics Corporation
ATRS     	 Antares Pharma Inc. 
ATSG     	 Air Transport Services Group Inc 
ATTU     	Attunity Ltd.
ATU      	Actuant Corporation
ATV      	 Acorn International Inc. 
ATVI     	 Activision Blizzard Inc 
ATW      	 Atwood Oceanics Inc. 
ATX      	Cross (A.T.) Company
AU       	AngloGold Ashanti Limited
AU^A     	AngloGold Ashanti Limited
AUBN     	 Auburn National Bancorporation Inc. 
AUD      	PIMCO Australia Bond Index Fund ETF
AUDC     	AudioCodes Ltd.
AUMN     	Golden Minerals Company
AUNZ     	WisdomTree Australia & New Zealand Debt Fund
AUO      	AU Optronics Corp
AUQ      	AuRico Gold Inc.
AUSE     	WisdomTree Australia Dividend Fund ETF
AUXL     	 Auxilium Pharmaceuticals Inc. 
AUY      	Yamana Gold Inc.
AV       	Aviva plc
AVA      	Avista Corporation
AVAV     	 AeroVironment Inc. 
AVB      	 AvalonBay Communities Inc. 
AVD      	American Vanguard Corporation
AVEO     	 AVEO Pharmaceuticals Inc. 
AVG      	AVG Technologies N.V.
AVGO     	Avago Technologies Limited
AVHI     	 A V Homes Inc. 
AVID     	 Avid Technology Inc. 
AVIV     	 Aviv REIT Inc. 
AVK      	Advent Claymore Convertible Securities and Income Fund
AVL      	 Avalon Rare Metals Inc. 
AVNR     	 Avanir Pharmaceuticals Inc. 
AVNW     	 Aviat Networks Inc. 
AVP      	 Avon Products Inc. 
AVT      	 Avnet Inc. 
AVV      	Aviva plc
AVX      	AVX Corporation
AVY      	Avery Dennison Corporation
AWAY     	 HomeAway Inc. 
AWC      	Alumina Ltd
AWF      	Alliance World Dollar Government Fund II
AWH      	 Allied World Assurance Company Holdings AG 
AWI      	Armstrong World Industries Inc
AWK      	American Water Works
AWP      	Alpine Global Premier Properties Fund
AWR      	American States Water Company
AWRE     	 Aware Inc. 
AWX      	Avalon Holdings Corporation
AXAS     	Abraxas Petroleum Corporation
AXDI     	iShares MSCI ACWI ex US Consumer Discretionary Sector Index Fund (AXDI) ETF
AXDX     	 Accelerate Diagnostics Inc. 
AXE      	Anixter International Inc.
AXEN     	iShares MSCI ACWI ex US Energy Sector Index Fund (AXEN) ETF
AXFN     	iShares MSCI ACWI ex US Financials Sector Index Fund
AXHE     	iShares MSCI ACWI ex US Health Care Sector Index Fund (AXHE) ETF
AXID     	iShares MSCI ACWI ex US Industrials Sector Index Fund (AXID) ETF
AXIT     	iShares MSCI ACWI ex US Information Technology Sector Index Fund (AXIT) ETF
AXJL     	WisdomTree Asia Pacific ex-Japan Fund ETF
AXJS     	iShares MSCI AC Asia ex Japan Small Cap
AXL      	 American Axle & Manufacturing Holdings Inc. 
AXLL     	Axiall Corporation
AXMT     	iShares MSCI ACWI ex US Materials Sector Index Fund (AXMT) ETF
AXN      	 Aoxing Pharmaceutical Company Inc. 
AXP      	American Express Company
AXR      	AMREP Corporation
AXS      	Axis Capital Holdings Limited
AXS^A    	Axis Capital Holdings Limited
AXS^C    	Axis Capital Holdings Limited
AXSL     	iShares MSCI ACWI ex US Consumer Staples Sector Index Fund (AXSL) ETF
AXTE     	iShares MSCI ACWI ex US Telecommunication Services Sector Index Fund (AXTE) ETF
AXTI     	AXT Inc
AXU      	Alexco Resource Corp
AXUT     	iShares MSCI ACWI ex US Utilities Sector Index Fund (AXUT) ETF
AXX      	Alderon Iron Ore Corp.
AYI      	Acuity Brands Inc
AYN      	Alliance New York Municipal Income Fund Inc
AYR      	Aircastle Limited
AZC      	Augusta Resource Corporation
AZK      	 Aurizon Mines Ltd. 
AZN      	Astrazeneca PLC
AZO      	 AutoZone Inc. 
AZPN     	 Aspen Technology Inc. 
AZZ      	AZZ Incorporated
B        	 Barnes Group Inc. 
BA       	Boeing Company (The)
BAA      	BANRO CORPORATION
BAB      	PowerShares Build America Bond Portfolio ETF
BABS     	SPDR Nuveen Barclays Capital Build America Bond ETF
BABY     	Natus Medical Incorporated
BABZ     	PIMCO Build America Bond Strategy Fund ETF
BAC      	Bank of America Corporation
BAC^D    	Bank of America Corporation
BAC^E    	Bank of America Corporation
BAC^H/CL 	Bank of America Corporation
BAC^I    	Bank of America Corporation
BAC^J    	Bank of America Corporation
BAC^L    	Bank of America Corporation
BAC/WS/A 	Bank of America Corporation
BAC^Z    	Bank of America Corporation
BAF      	BlackRock Income Investment Quality Trust
BAGL     	 Einstein Noah Restaurant Group Inc. 
BAH      	Booz Allen Hamilton Holding Corporation
BAK      	Braskem S.A.
BALT     	Baltic Trading Limited
BAM      	Brookfield Asset Management Inc
BAM$     	Brookfield Asset Management Inc
BAMM     	 Books-A-Million Inc. 
BANC     	 First PacTrust Bancorp Inc. 
BANCL    	 First PacTrust Bancorp Inc. 
BANF     	BancFirst Corporation
BANFP    	BancFirst Corporation
BANR     	Banner Corporation
BAP      	Credicorp Ltd.
BAS      	 Basic Energy Services Inc. 
BASI     	 Bioanalytical Systems Inc. 
BAX      	Baxter International Inc.
BBBY     	Bed Bath & Beyond Inc.
BBCN     	 BBCN Bancorp Inc. 
BBD      	Banco Bradesco Sa
BBDO     	Banco Bradesco Sa
BBEP     	 BreitBurn Energy Partners L.P. 
BBF      	BlackRock Municipal Income Investment Trust
BBG      	Bill Barrett Corporation
BBGI     	 Beasley Broadcast Group Inc. 
BBH      	Market Vectors Biotech ETF
BBK      	Blackrock Municipal Bond Trust
BBL      	BHP Billiton plc
BBN      	BalckRock Build America Bond Trust
BBNK     	Bridge Capital Holdings
BBOX     	Black Box Corporation
BBRC     	EGShares Beyond BRICs ETF
BBRG     	 Bravo Brio Restaurant Group Inc. 
BBRY     	Research In Motion Limited
BBSI     	 Barrett Business Services Inc. 
BBT      	BB&T Corporation
BBT^D    	BB&T Corporation
BBT^E    	BB&T Corporation
BBT^F    	BB&T Corporation
BBVA     	Banco Bilbao Viscaya Argentaria S.A.
BBW      	 Build-A-Bear Workshop Inc. 
BBX      	BBX Capital Corporation
BBY      	 Best Buy Co. Inc. 
BC       	Brunswick Corporation
BCA      	Corpbanca
BCBP     	 BCB Bancorp Inc. (NJ) 
BCC      	 Boise Cascade L.L.C. 
BCE      	 BCE Inc. 
BCEI     	 Bonanza Creek Energy Inc. 
BCF      	Blackrock Real Asset Equity Trust
BCH      	Banco De Chile
BCO      	Brink&#39;s Company (The)
BCOM     	B Communications Ltd.
BCOR     	 Blucora Inc. 
BCOV     	Brightcove Inc.
BCPC     	Balchem Corporation
BCR      	 C.R. Bard Inc. 
BCRX     	 BioCryst Pharmaceuticals Inc. 
BCS      	Barclays PLC
BCS^     	Barclays PLC
BCS^A    	Barclays PLC
BCSB     	 BCSB Bancorp Inc. 
BCS^C    	Barclays PLC
BCS^D    	Barclays PLC
BCV      	Bancroft Fund Limited
BCX      	BlackRock Resources
BDBD     	 Boulder Brands Inc. 
BDC      	Belden Inc
BDE      	 Black Diamond Inc. 
BDGE     	 Bridge Bancorp Inc. 
BDJ      	Blackrock Enhanced Equity Dividend Trust
BDL      	 Flanigan&#39;s Enterprises Inc. 
BDMS     	 Birner Dental Management Services Inc. 
BDN      	Brandywine Realty Trust
BDN^E    	Brandywine Realty Tr
BDR      	 Blonder Tongue Laboratories Inc. 
BDSI     	 BioDelivery Sciences International Inc. 
BDX      	 Becton Dickinson and Company 
BEAM     	Beam Inc.
BEAT     	 CardioNet Inc. 
BEAV     	 B/E Aerospace Inc. 
BEBE     	 bebe stores Inc. 
BECN     	 Beacon Roofing Supply Inc. 
BEE      	Strategic Hotels & Resorts Inc
BEE^A    	Strategic Hotels & Resorts Inc
BEE^B    	Strategic Hotels & Resorts Inc
BEE^C    	Strategic Hotels & Resorts Inc
BELFA    	Bel Fuse Inc.
BELFB    	Bel Fuse Inc.
BEN      	 Franklin Resources Inc. 
BERK     	 Berkshire Bancorp Inc. 
BERY     	BPC Acquisition Corp
BF/A     	Brown Forman Corporation
BFAM     	Bright Horizons Family Solutions Inc.
BF/B     	Brown Forman Corporation
BFIN     	BankFinancial Corporation
BFK      	BlackRock Municipal Income Trust
BFLY     	 Bluefly Inc. 
BFO      	Blackrock Florida Municipal 2020 Term Trust
BFR      	BBVA Banco Frances S.A.
BFS      	 Saul Centers Inc. 
BFS^A    	 Saul Centers Inc. 
BFS^C    	 Saul Centers Inc. 
BFY      	BlackRock New York Municipal Income Trust II
BFZ      	BlackRock California Municipal Income Trust
BG       	Bunge Limited
BGB      	Blackstone / GSO Strategic Credit Fund
BGC      	General Cable Corporation
BGCA     	 BGC Partners Inc. 
BGCP     	 BGC Partners Inc. 
BGE^B    	Baltimore Gas & Electric Company
BGFV     	Big 5 Sporting Goods Corporation
BGG      	Briggs & Stratton Corporation
BGH      	Babson Capital Global Short Duration High Yield Fund
BGMD     	 BG Medicine Inc. 
BGR      	BlackRock Energy and Resources Trust
BGS      	 B&G Foods Inc. 
BGSC     	BGS Acquisition Corp.
BGSCU    	BGS Acquisition Corp.
BGSCW    	BGS Acquisition Corp.
BGT      	Blackrock Global
BGX      	Blackstone GSO Long Short Credit Income Fund
BGY      	 BLACKROCK INTERNATIONAL Ltd. 
BH       	Biglari Holdings Inc.
BHB      	 Bar Harbor Bankshares Inc. 
BHD      	Blackrock Strategic Bond Trust
BHE      	 Benchmark Electronics Inc. 
BHI      	Baker Hughes Incorporated
BHK      	Blackrock Core Bond Trust
BHL      	Blackrock Defined Opportunity Credit Trust
BHLB     	 Berkshire Hills Bancorp Inc. 
BHP      	BHP Billiton Limited
BHV      	BlackRock Virginia Municipal Bond Trust
BHY      	Blackrock High Yield Trust (The)
BIB      	ProShares Trust ProShares Ultra Nasdaq Biotechnology
BICK     	First Trust BICK Index Fund ETF
BID      	Sotheby&#39;s
BIDU     	 Baidu Inc. 
BIE      	Blackrock Municipal Bond Investment Trust
BIF      	 USLIFE Income Fund Inc. 
BIG      	 Big Lots Inc. 
BIIB     	Biogen Idec Inc.
BIK      	SPDR S&P BRIC 40 ETF
BIL      	SPDR Barclays Capital 1-3 Month T-Bill ETF
BIN      	Progressive Waste Solutions Ltd.
BIO      	 Bio-Rad Laboratories Inc. 
BIO/B    	 Bio-Rad Laboratories Inc. 
BIOD     	Biodel Inc.
BIOF     	BioFuel Energy Corp.
BIOL     	 Biolase Inc. 
BIOS     	 BioScrip Inc. 
BIP      	Brookfield Infrastructure Partners LP
BIR^A    	 Berkshire Income Realty Inc. 
BIRT     	Actuate Corporation
BIS      	ProShares Trust ProShares UltraShort Nasdaq Biotechnology
BIT      	BlackRock Multi-Sector Income Trust
BITA     	Bitauto Holdings Limited
BIV      	Vanguard Intermediate-Term Bond ETF
BIZD     	Market Vectors BDC Income ETF
BJK      	Market Vectors Gaming ETF
BJRI     	 BJ&#39;s Restaurants Inc. 
BJZ      	Blackrock California Municipal 2018 Term Trust
BK       	Bank Of New York Mellon Corporation (The)
BK^C     	Bank Of New York Mellon Corporation (The)
BKCC     	BlackRock Kelso Capital Corporation
BKD      	Brookdale Senior Living Inc.
BKE      	 Buckle Inc. (The) 
BKEP     	 Blueknight Energy Partners L.P. L.L.C. 
BKEPP    	 Blueknight Energy Partners L.P. L.L.C. 
BKF      	iShares MSCI BRIC Index Fund ETF
BKH      	Black Hills Corporation
BKI      	 Buckeye Technologies Inc. 
BKJ      	 Bancorp of New Jersey Inc 
BKK      	Blackrock Municipal 2020 Term Trust
BKLN     	PowerShares Exchange-Traded Fund ETF
BKMU     	Bank Mutual Corporation
BKN      	BlackRock Investment Quality Municipal Trust Inc. (The)
BKOR     	 Oak Ridge Financial Services Inc. 
BKR      	Michael Baker Corporation
BKS      	 Barnes & Noble Inc. 
BKSC     	Bank of South Carolina Corp.
BKT      	BlackRock Income Trust Inc. (The)
BKU      	 BankUnited Inc. 
BKW      	Burger King Worldwide Inc.
BKYF     	The Bank of Kentucky Financial Corp.
BLC      	Belo Corporation
BLDP     	 Ballard Power Systems Inc. 
BLDR     	 Builders FirstSource Inc. 
BLE      	BlackRock Municipal Income Trust II
BLH      	Blackrock New York Municipal 2018 Term Trust
BLIN     	 Bridgeline Digital Inc. 
BLJ      	Blackrock New Jersey Municipal Bond Trust
BLK      	 BlackRock Inc. 
BLKB     	 Blackbaud Inc. 
BLL      	Ball Corporation
BLMN     	 Bloomin&#39; Brands Inc. 
BLMT     	 BSB Bancorp Inc. 
BLOX     	Infoblox Inc.
BLRX     	BioLineRx Ltd.
BLT      	 Blount International Inc. 
BLV      	Vanguard Long-Term Bond ETF
BLW      	Citigroup Inc.
BLX      	 Banco Latinoamericano de Comercio Exterior S.A. 
BMA      	Macro Bank Inc.
BMC      	 BMC Software Inc. 
BME      	Blackrock Health Sciences Trust
BMI      	 Badger Meter Inc. 
BMJ      	Birks & Mayors Inc.
BML^G    	Bank of America Corporation
BML^H    	Bank of America Corporation
BML^I    	Bank of America Corporation
BML^J    	Bank of America Corporation
BML^L    	Bank of America Corporation
BML^N    	Bank of America Corporation
BML^O    	Bank of America Corporation
BML^Q/CL 	Bank of America Corporation
BMO      	Bank Of Montreal
BMR      	Biomed Realty Trust
BMRC     	Bank of Marin Bancorp
BMRN     	BioMarin Pharmaceutical Inc.
BMS      	 Bemis Company Inc. 
BMTC     	Bryn Mawr Bank Corporation
BMY      	Bristol-Myers Squibb Company
BMY^     	Bristol-Myers Squibb Company
BNA      	BlackRock Income Opportunity Trust Inc. (The)
BNCL     	 Beneficial Mutual Bancorp Inc. 
BNCN     	BNC Bancorp
BND      	Vanguard Total Bond Market ETF
BNJ      	BlackRock New Jersey Municipal Income Trust
BNNY     	 Annie&#39;s Inc. 
BNO      	United States Brent Oil Fund LP ETF
BNPC     	Stream S&P Dynamic Roll Glbl Commodities ETF
BNS      	Bank of Nova Scotia (The)
BNSO     	 Bonso Electronics International Inc. 
BNY      	BlackRock New York Investment Quality Municipal Trust Inc. (Th
BOBE     	 Bob Evans Farms Inc. 
BOCH     	Bank of Commerce Holdings (CA)
BODY     	Body Central Corp.
BOE      	Blackrock Global
BOFI     	 BofI Holding Inc. 
BOH      	Bank of Hawaii Corporation
BOI      	Brookfield Mortgage Opportunity Income Fund Inc.
BOIL     	ProShares Ultra DJ-UBS Natural Gas ETF
BOKF     	BOK Financial Corporation
BOLT     	Bolt Technology Corporation
BONA     	Bona Film Group Limited
BOND     	PIMCO Total Return Exchange-Traded Fund
BONE     	 Bacterin International Holdings Inc. 
BONO     	Market Vectors LatAm Aggregate Bond ETF
BONT     	 The Bon-Ton Stores Inc. 
BOOM     	Dynamic Materials Corporation
BORN     	China New Borun Corporation
BOSC     	B.O.S. Better Online Solutions
BOTA     	 Biota Pharmaceuticals Inc. 
BOTJ     	 Bank of the James Financial Group Inc. 
BOX      	SeaCube Container Leasing Ltd.
BOXC     	Brookfield Canada Office Properties
BP       	BP p.l.c.
BPAX     	 Biosante Pharmaceuticals Inc. 
BPFH     	 Boston Private Financial Holdings Inc. 
BPFHW    	 Boston Private Financial Holdings Inc. 
BPHX     	 BluePhoenix Solutions Ltd. 
BPI      	 Bridgepoint Education Inc. 
BPK      	Blackrock Municipal 2018 Term Trust
BPL      	Buckeye Partners L.P.
BPO      	Brookfield Office Properties Inc.
BPOP     	 Popular Inc. 
BPOPM    	 Popular Inc. 
BPOPN    	 Popular Inc. 
BPS      	BlackRock Pennsylvania Strategic Municipal Trust (The)
BPT      	BP Prudhoe Bay Royalty Trust
BPY$     	Brookfield Property Partners L.P.
BPZ      	 BPZ Resources Inc 
BQH      	Blackrock New York Municipal Bond Trust
BQR      	BlackRock Ecosolutions Investment Trust
BQY      	S&P Quality Rankings Glbl Equ Mngd Tr
BR       	 Broadridge Financial Solutions Inc. 
BRAF     	Global X Brazil Financials ETF
BRAQ     	Global X Brazil Consumer ETF
BRAZ     	Global X Brazil Mid Cap ETF
BRC      	Brady Corporation
BRCD     	 Brocade Communications Systems Inc. 
BRCM     	Broadcom Corporation
BRD      	Brigus Gold Corp
BRE      	 BRE Properties Inc. 
BRE^D    	 BRE Properties Inc. 
BREW     	 Craft Brew Alliance Inc. 
BRF      	Market Vectors Brazil Small-Cap ETF
BRFS     	BRF-Brasil Foods S.A.
BRID     	Bridgford Foods Corporation
BRK/A    	Berkshire Hathaway Inc.
BRK/B    	Berkshire Hathaway Inc.
BRKL     	 Brookline Bancorp Inc. 
BRKR     	Bruker Corporation
BRKS     	 Brooks Automation Inc. 
BRLI     	 Bio-Reference Laboratories Inc. 
BRN      	 Barnwell Industries Inc. 
BRO      	 Brown & Brown Inc. 
BRP      	Brookfield Residential Properties Inc.
BRS      	Bristow Group Inc
BRT      	BRT Realty Trust
BRXX     	EGShares Brazil Infrastructure ETF
BRY      	Berry Petroleum Company
BSAC     	Banco Santander Chile
BSBR     	Banco Santander Brasil SA
BSCD     	Guggenheim BulletShares 2013 Corporate Bond ETF
BSCE     	Guggenheim BulletShares 2014 Corporate Bond ETF
BSCF     	Guggenheim BulletShares 2015 Corporate Bond ETF
BSCG     	Guggenheim BulletShares 2016 Corporate Bond ETF
BSCH     	Guggenheim BulletShares 2017 Corporate Bond ETF
BSCI     	Guggenheim BulletShares 2018 Corp Bond ETF
BSCJ     	Guggenheim BulletShares 2019 Corp Bond ETF
BSCK     	Guggenheim BulletShares 2020 Corp Bond ETF
BSD      	BlackRock Strategic Municipal Trust Inc. (The)
BSDM     	BSD Medical Corporation
BSE      	Blackrock New York Municipal Income Quality Trust
BSET     	 Bassett Furniture Industries Incorporated 
BSFT     	 BroadSoft Inc. 
BSI      	Alon Holdings - Blue Square Israel Ltd.
BSJD     	Guggenheim BulletShares 2013 High Yield Corporate Bond ETF
BSJE     	Guggenheim BulletShares 2014 High Yield Corporate Bond ETF
BSJF     	Guggenheim BulletShares 2015 High Yield Corporate Bond ETF
BSJG     	Guggenheim BulletShares 2016 HY C Bd ETF
BSJH     	Guggenheim BulletShares 2017 HY C Bd ETF
BSJI     	Guggenheim BulletShares 2018 HY C Bd ETF
BSL      	Blackstone GSO Senior Floating Rate Term Fund
BSMX     	Grupo Financiero Santander Mexico S.A. B. de C.V.
BSP      	American Strategic Income Portfolio II
BSPM     	 Biostar Pharmaceuticals Inc. 
BSQR     	BSQUARE Corporation
BSRR     	Sierra Bancorp
BSTC     	BioSpecifics Technologies Corp
BSV      	Vanguard Short-Term Bond ETF
BSX      	Boston Scientific Corporation
BT       	BT Group plc
BTA      	BlackRock Long-Term Municipal Advantage Trust
BTAL     	QuantShares U.S. Market Neutral Anti-Beta Fund ETF
BTE      	Baytex Energy Corp
BTF      	 Boulder Total Return Fund Inc. 
BTH      	 Blyth Inc. 
BTI      	British American Tobacco p.l.c.
BTN      	 Ballantyne Strong Inc 
BTO      	John Hancock Financial Opportunities Fund
BTT      	BlackRock Municipal Target Term Trust Inc. (The)
BTU      	Peabody Energy Corporation
BTUI     	 BTU International Inc. 
BTX      	 BioTime Inc. 
BTZ      	BlackRock Credit Allocation Income Trust
BUD      	Anheuser-Busch Inbev SA
BUI      	BlackRock Utility and Infrastructure Trust
BUND     	PIMCO Germany Bond Index Fund
BUR      	Burcon Nutrascience Corp
BUSE     	First Busey Corporation
BV       	 Bazaarvoice Inc. 
BVA      	Cordia Bancorp Inc.
BVN      	Buenaventura Mining Company Inc.
BVSN     	 BroadVision Inc. 
BVX      	Bovie Medical Corporation
BWA      	BorgWarner Inc.
BWC      	Babcock & Wilcox Company (The)
BWEN     	 Broadwind Energy Inc. 
BWG      	Legg Mason BW Global Income Opportunities Fund Inc.
BWINA    	 Baldwin & Lyons Inc. 
BWINB    	 Baldwin & Lyons Inc. 
BWL/A    	 Bowl America Inc. 
BWLD     	 Buffalo Wild Wings Inc. 
BWP      	Boardwalk Pipeline Partners L.P.
BWS      	 Brown Shoe Company Inc. 
BWX      	SPDR Barclays Capital International Treasury Bond ETF
BWZ      	SPDR Barclays Capital Short Term International Treasury Bond ETF
BX       	The Blackstone Group L.P.
BXC      	BlueLinx Holdings Inc.
BXE      	Bellatrix Exploration Ltd
BXP      	 Boston Properties Inc. 
BXP^B    	 Boston Properties Inc. 
BXS      	 BancorpSouth Inc. 
BXS^A    	 BancorpSouth Inc. 
BYD      	Boyd Gaming Corporation
BYFC     	Broadway Financial Corporation
BYI      	 Bally Technologies Inc. 
BYM      	Blackrock Municipal Income Quality Trust
BZ       	Boise Inc
BZC      	Breeze-Eastern Corporation
BZF      	WisdomTree Dreyfus Brazilian Real Fund ETF
BZH      	 Beazer Homes USA Inc. 
BZM      	BlackRock Maryland Municipal Bond Trust
BZQ      	ProShares UltraShort MSCI Brazil ETF
BZT      	 Beazer Homes USA Inc. 
BZU      	 Beazer Homes USA Inc. 
C        	Citigroup Inc.
CA       	CA Inc.
CAAS     	 China Automotive Systems Inc. 
CAB      	Cabela&#39;s Inc
CAC      	Camden National Corporation
CACB     	Cascade Bancorp
CACC     	Credit Acceptance Corporation
CACG     	Chart Acquisition Corp.
CACGU    	Chart Acquisition Corp.
CACGW    	Chart Acquisition Corp.
CACH     	 Cache Inc. 
CACHR    	 Cache Inc. 
CACI     	 CACI International Inc. 
CAD      	PIMCO Canada Bond Index Fund ETF
CADC     	 China Advanced Construction Materials Group Inc. 
CADX     	 Cadence Pharmaceuticals Inc. 
CAE      	CAE Inc
CAF      	Morgan Stanley China A Share Fund Inc.
CAFI     	Camco Financial Corporation
CAG      	 ConAgra Foods Inc. 
CAH      	 Cardinal Health Inc. 
CAJ      	 Canon Inc. 
CAK      	CAMAC Energy Inc.
CAKE     	The Cheesecake Factory Incorporated
CALD     	 Callidus Software Inc. 
CALI     	China Auto Logistics Inc.
CALL     	magicJack VocalTec Ltd
CALM     	 Cal-Maine Foods Inc. 
CALX     	 Calix Inc 
CAM      	Cameron International Corporation
CAMP     	CalAmp Corp.
CAMT     	Camtek Ltd.
CANE     	Teucrium CANE Fund ETF
CAP      	 Cai International Inc. 
CAR      	 Avis Budget Group Inc. 
CARB     	 Carbonite Inc. 
CART     	Carolina Trust Bank
CARV     	 Carver Bancorp Inc. 
CARZ     	First Trust Exchange-Traded Fund II First Trust NASDAQ Global 
CAS      	Castle (A.M.) & Co.
CASH     	 Meta Financial Group Inc. 
CASM     	 CAS Medical Systems Inc. 
CASS     	 Cass Information Systems Inc 
CASY     	 Caseys General Stores Inc. 
CAT      	 Caterpillar Inc. 
CATM     	 Cardtronics Inc. 
CATO     	Cato Corporation (The)
CATY     	Cathay General Bancorp
CAVM     	 Cavium Inc. 
CAW      	 CCA Industries Inc. 
CB       	Chubb Corporation (The)
CBAK     	 China BAK Battery Inc. 
CBAN     	 Colony Bankcorp Inc. 
CBB      	Cincinnati Bell Inc
CBB^B    	Cincinnati Bell Inc
CBD      	Companhia Brasileira de Distribuicao
CBEY     	 Cbeyond Inc. 
CBF      	Capital Bank Financial Corp.
CBG      	 CBRE Group Inc. 
CBI      	Chicago Bridge & Iron Company N.V.
CBIN     	 Community Bank Shares of Indiana Inc. 
CBK      	Christopher & Banks Corporation
CBL      	 CBL & Associates Properties Inc. 
CBL^D    	 CBL & Associates Properties Inc. 
CBL^E    	 CBL & Associates Properties Inc. 
CBLI     	 Cleveland BioLabs Inc. 
CBM      	Cambrex Corporation
CBMX     	CombiMatrix Corporation
CBMXW    	CombiMatrix Corporation
CBND     	SPDR Barclays Capital Issuer Scored Corporate Bond ETF
CBNJ     	 Cape Bancorp Inc. 
CBNK     	 Chicopee Bancorp Inc. 
CBO      	CBO (Listing Market - NYSE - Networks A/E)
CBOE     	 CBOE Holdings Inc. 
CBP      	China Botanic Pharmaceutical Inc.
CBPO     	 China Biologic Products Inc. 
CBR      	 Ciber Inc. 
CBRL     	 Cracker Barrel Old Country Store Inc. 
CBRX     	 Columbia Laboratories Inc. 
CBS      	CBS Corporation
CBS/A    	CBS Corporation
CBSH     	 Commerce Bancshares Inc. 
CBST     	 Cubist Pharmaceuticals Inc. 
CBT      	Cabot Corporation
CBU      	 Community Bank System Inc. 
CBX      	CBX (Listing Market NYSE Networks AE
CBZ      	 CBIZ Inc. 
C^C      	Citigroup Inc.
CCA      	MFS California Insured Municipal Trust
CCBG     	Capital City Bank Group
CCC      	Calgon Carbon Corporation
CCCL     	 China Ceramics Co. Ltd. 
CCE      	 Coca-Cola Enterprises Inc. 
CCF      	Chase Corporation
CCG      	 Campus Crest Communities Inc. 
CCG^A    	 Campus Crest Communities Inc. 
CCH      	COCA COLA HELLENIC BOTTLING CO
CCI      	Crown Castle International Corporation
CCIH     	ChinaCache International Holdings Ltd.
CCIX     	 Coleman Cable Inc. 
CCJ      	Cameco Corporation
CCK      	 Crown Holdings Inc. 
CCL      	Carnival Corporation
CCM      	Concord Medical Services Holdings Limited
CCMP     	Cabot Microelectronics Corporation
CCNE     	CNB Financial Corporation
CCO      	 Clear Channel Outdoor Holdings Inc. 
CCOI     	 Cogent Communications Group Inc. 
CCRN     	 Cross Country Healthcare Inc. 
CCSC     	 Country Style Cooking Restaurant Chain Co. Ltd. 
CCU      	 Compania Cervecerias Unidas S.A. 
CCUR     	Concurrent Computer Corporation
CCV      	Comcast Corporation
CCX      	WisdomTree Dreyfus Commodity Currency Fund ETF
CCXE     	WisdomTree Commodity Country Equity Fund ETF
CCXI     	 ChemoCentryx Inc. 
CCZ      	Comcast Corporation
CDE      	Coeur d&#39;Alene Mines Corporation
CDI      	CDI Corporation
CDNS     	 Cadence Design Systems Inc. 
CDR      	 Cedar Realty Trust Inc. 
CDR^B    	 Cedar Realty Trust Inc. 
CDTI     	 Clean Diesel Technologies Inc. 
CDXS     	 Codexis Inc. 
CDY      	Cardero Resource Corporation
CDZI     	 Cadiz Inc. 
CE       	Celanese Corporation
C^E      	Citigroup Inc.
CEA      	China Eastern Airlines Corporation Ltd.
CEB      	The Corporate Executive Board Company
CEC      	 CEC Entertainment Inc. 
CECE     	CECO Environmental Corp.
CECO     	Career Education Corporation
CEDU     	ChinaEdu Corporation
CEE      	 Central Europe and Russia Fund Inc. (The) 
CEF      	Central Fund of Canada Limited
CEG^A    	 Constellation Energy Group Inc. 
CEL      	 Cellcom Israel Ltd. 
CELG     	Celgene Corporation
CELGZ    	Celgene Corporation
CEM      	ClearBridge Energy MLP Fund Inc.
CEMB     	iShares Emerging Markets Corporate Bond ETF
CEMI     	 Chembio Diagnostics Inc. 
CEMP     	 Cempra Inc. 
CENT     	Central Garden & Pet Company
CENTA    	Central Garden & Pet Company
CENX     	Century Aluminum Company
CEO      	CNOOC Limited
CEP      	 Constellation Energy Partners LLC 
CERE     	 Ceres Inc. 
CERN     	Cerner Corporation
CERS     	Cerus Corporation
CET      	Central Securities Corporation
CETV     	Central European Media Enterprises Ltd.
CEV      	Eaton Vance California Municipal Income Trust
CEVA     	 CEVA Inc. 
CEW      	WisdomTree Dreyfus Emerging Currency ETF
CF       	 CF Industries Holdings Inc. 
CFBK     	Central Federal Corporation
CFC^A    	Countrywide Financial Corporation
CFC^B    	Countrywide Financial Corporation
CFD      	Nuveen Diversified Commodity Fund
CFFI     	C&F Financial Corporation
CFFN     	 Capitol Federal Financial Inc. 
CFI      	 Culp Inc. 
CFN      	CareFusion Corporation
CFNB     	California First National Bancorp
CFNL     	Cardinal Financial Corporation
CFP      	Cornerstone Progressive Return Fund
CFR      	 Cullen/Frost Bankers Inc. 
CFR^A    	 Cullen/Frost Bankers Inc. 
CFT      	iShares Barclays Credit Bond Fund ETF
CFX      	Colfax Corporation
CG       	The Carlyle Group L.P.
CGA      	 China Green Agriculture Inc. 
CGEN     	Compugen Ltd.
CGG      	CGG-Veritas
CGI      	 Celadon Group Inc. 
CGNX     	Cognex Corporation
CGO      	Calamos Global Total Return Fund
CGR      	 Claude Resources Inc. 
CGW      	Guggenheim S&P Global Water Index ETF
CGX      	 Consolidated Graphics Inc. 
CH       	 Aberdeen Chile Fund Inc. 
CHA      	China Telecom Corp Ltd
CHC      	China Hydroelectric Corporation
CHCI     	 Comstock Holding Companies Inc. 
CHCO     	City Holding Company
CHC/WS   	China Hydroelectric Corporation
CHD      	 Church & Dwight Company Inc. 
CHDN     	 Churchill Downs Incorporated 
CHDX     	 Chindex International Inc. 
CHE      	Chemed Corp.
CHEF     	 The Chefs&#39; Warehouse Inc. 
CHEP     	QuantShares U.S. Market Neutral Value Fund ETF
CHEV     	Cheviot Financial Corp
CHFC     	Chemical Financial Corporation
CHFN     	Charter Financial Corp.
CHG      	 CH Energy Group Inc. 
CHGS     	 China GengSheng Minerals Inc. 
CHH      	 Choice Hotels International Inc. 
CHI      	Calamos Convertible Opportunities and Income Fund
CHIE     	Global X China Energy ETF
CHII     	Global X China Industrials ETF
CHIM     	Global X China Materials ETF
CHIQ     	Global X China Consumer ETF
CHIX     	Global X China Financials ETF
CHK      	Chesapeake Energy Corporation
CHK^D    	Chesapeake Energy Corporation
CHKE     	Cherokee Inc.
CHKP     	Check Point Software Technologies Ltd.
CHKR     	Chesapeake Granite Wash Trust
CHL      	China Mobile (Hong Kong) Ltd.
CHLC     	Market Vectors Renminbi Bond ETF
CHLN     	 China Housing & Land Development Inc. 
CHMG     	Chemung Financial Corp
CHMT     	Chemtura Corp.
CHN      	 China Fund Inc. (The) 
CHNR     	 China Natural Resources Inc. 
CHOP     	China Gerui Advanced Materials Group Limited
CHRM     	Charm Communications Inc.
CHRW     	 C.H. Robinson Worldwide Inc. 
CHS      	 Chico&#39;s FAS Inc. 
CHSCP    	CHS Inc
CHSP     	Chesapeake Lodging Trust
CHSP^A   	Chesapeake Lodging Trust
CHT      	 Chunghwa Telecom Co. Ltd. 
CHTP     	 Chelsea Therapeutics International Ltd. 
CHTR     	 Charter Communications Inc. 
CHU      	China Unicom (Hong Kong) Ltd
CHUY     	 Chuy&#39;s Holdings Inc. 
CHW      	Calamos Global Dynamic Income Fund
CHXF     	WisdomTree China Dividend ex-Fincls ETF
CHXX     	EGShares China Infrastructure ETF
CHY      	Calamos Convertible and High Income Fund
CHYR     	Chyron Corporation
CI       	Cigna Corporation
C^I      	Citigroup Inc.
CIA      	 Citizens Inc. 
CIB      	BanColombia S.A.
CIDM     	Cinedigm Digital Cinema Corp
CIE      	 Cobalt International Energy Inc. 
CIEN     	CIENA Corporation
CIF      	Colonial Intermediate High Income Fund
CIFC     	CIFC Corp.
CIG      	Comp En De Mn Cemig ADS
CIG/C    	Comp En De Mn Cemig ADS
CII      	Blackrock Capital and Income Strategies Fund Inc
CIK      	 Credit Suisse Asset Management Income Fund Inc. 
CIM      	Chimera Investment Corporation
CIMT     	 Cimatron Limited 
CINF     	Cincinnati Financial Corporation
CIR      	 CIRCOR International Inc. 
CIS      	Camelot Information Systems
CISAA    	CIS Acquisition Ltd.
CISAU    	CIS Acquisition Ltd.
CISAW    	CIS Acquisition Ltd.
CISG     	CNinsure Inc.
CIT      	CIT Group Inc (DEL)
CITZ     	 CFS Bancorp Inc. 
CIU      	iShares Barclays Intermediate Credit Bond Fund ETF
CIX      	CompX International Inc.
CIZN     	Citizens Holding Company
CJES     	 C&J Energy Services Inc. 
CJJD     	 China Jo-Jo Drugstores Inc. 
CKEC     	 Carmike Cinemas Inc. 
CKH      	 SEACOR Holdings Inc. 
CKP      	 Checkpoint Systms Inc. 
CKSW     	ClickSoftware Technologies Ltd.
CKX      	 CKX Lands Inc. 
CL       	Colgate-Palmolive Company
CLB      	Core Laboratories N.V.
CLBH     	Carolina Bank Holdings Inc.
CLC      	CLARCOR Inc.
CLCT     	 Collectors Universe Inc. 
CLD      	Cloud Peak Energy Inc
CLDT     	Chatham Lodging Trust (REIT)
CLDX     	 Celldex Therapeutics Inc. 
CLF      	Cliffs Natural Resources Inc.
CLFD     	 Clearfield Inc. 
CLGX     	 CoreLogic Inc. 
CLH      	 Clean Harbors Inc. 
CLI      	Mack-Cali Realty Corporation
CLIR     	ClearSign Combustion Corporation
CLM      	 Cornerstone Strategic Value Fund Inc. 
CLMS     	 Calamos Asset Management Inc. 
CLMT     	 Calumet Specialty Products Partners L.P. 
CLNE     	Clean Energy Fuels Corp.
CLNT     	 Cleantech Solutions International Inc. 
CLNY     	 Colony Financial Inc 
CLNY^A   	 Colony Financial Inc 
CLP      	Colonial Properties Trust
CLR      	 Continental Resources Inc. 
CLRO     	 ClearOne Inc. 
CLRX     	 CollabRx Inc. 
CLS      	 Celestica Inc. 
CLSN     	Celsion Corporation
CLUB     	 Town Sports International Holdings Inc. 
CLV      	Cliffs Natural Resources Inc.
CLVS     	 Clovis Oncology Inc. 
CLW      	Clearwater Paper Corporation
CLWR     	Clearwire Corporation
CLWT     	Euro Tech Holdings Company Limited
CLX      	Clorox Company (The)
CLY      	iShares 10+ Year Credit Bond Fund ETF
CM       	Canadian Imperial Bank of Commerce
C^M      	Citigroup Inc.
CMA      	Comerica Incorporated
CMA/WS   	Comerica Incorporated
CMBS     	iShares Barclays CMBS Bond ETF
CMC      	Commercial Metals Company
CMCO     	Columbus McKinnon Corporation
CMCSA    	Comcast Corporation
CMCSK    	Comcast Corporation
CMD      	ProShares UltraShort DJ-UBS Commodity ETF
CME      	CME Group Inc.
CMF      	iShares S&P Cali Muni Bond ETF
CMFO     	China Marine Food Group Limited
CMG      	 Chipotle Mexican Grill Inc. 
CMGE     	China Mobile Games and Entertainment Group Limited
CMI      	Cummins Inc.
CMK      	Colonial Intermarket Income Trust I
CMLP     	Crestwood Midstream Partners LP
CMLS     	Cumulus Media Inc.
CMN      	Cantel Medical Corp.
CMO      	Capstead Mortgage Corporation
CMO^A    	Capstead Mortgage Corporation
CMO^B    	Capstead Mortgage Corporation
CMP      	 Compass Minerals International Inc. 
CMRE     	Costamare Inc.
CMRX     	 Chimerix Inc. 
CMS      	CMS Energy Corporation
CMS^A    	CMS Energy Corporation
CMSB     	 CMS Bancorp Inc. 
CMS^B    	CMS Energy Corporation
CMT      	Core Molding Technologies Inc
CMTL     	Comtech Telecommunications Corp.
CMU      	Colonial Municipal Income Trust
C^N      	Citigroup Inc.
CNA      	CNA Financial Corporation
CNAM     	 China Armco Metals Inc. 
CNBC     	 Center Bancorp Inc. 
CNBKA    	 Century Bancorp Inc. 
CNC      	Centene Corporation
CNCO     	Cencosud S.A.
CNDA     	IndexIQ Canada Small Cap ETF
CNDO     	 Coronado Biosciences Inc. 
CNET     	 ChinaNet Online Holdings Inc. 
CNH      	CNH Global N.V.
CNI      	Canadian National Railway Company
CNIT     	 China Information Technology Inc. 
CNK      	Cinemark Holdings Inc
CNL      	Cleco Corporation
CNMD     	CONMED Corporation
CNO      	 CNO Financial Group Inc. 
CNOB     	 ConnectOne Bancorp Inc. 
CNP      	 CenterPoint Energy Inc. 
CNPF     	Global X Canada Preferred ETF
CNQ      	Canadian Natural Resources Limited
CNQR     	 Concur Technologies Inc. 
CNR      	China Metro-Rural Holdings Limited
CNS      	Cohn & Steers Inc
CNSI     	Comverse Inc.
CNSL     	 Consolidated Communications Holdings Inc. 
CNTF     	China TechFaith Wireless Communication Technology Limited
CNTY     	 Century Casinos Inc. 
CNW      	Con-way Inc.
CNX      	CONSOL Energy Inc.
CNYD     	 China Yida Holding Co. 
CO       	China Cord Blood Corporation.
COA      	Coastal Contacts Inc                    
COBK     	 Colonial Financial Services Inc. 
COBO     	ProShares USD Covered Bond
COBR     	Cobra Electronics Corporation
COBZ     	CoBiz Financial Inc.
C^O/CL   	Citigroup Inc.
COCO     	 Corinthian Colleges Inc. 
CODE     	Spansion Inc
CODI     	Compass Diversified Holdings
COF      	Capital One Financial Corporation
COF^P    	Capital One Financial Corp
COF/WS   	Capital One Financial Corporation
COG      	Cabot Oil & Gas Corporation
COGO     	 Cogo Group Inc. 
COH      	 Coach Inc. 
COHR     	 Coherent Inc. 
COHU     	 Cohu Inc. 
COKE     	Coca-Cola Bottling Co. Consolidated
COL      	 Rockwell Collins Inc. 
COLB     	 Columbia Banking System Inc. 
COLM     	Columbia Sportswear Company
COLX     	Market Vector Colombia ETF
CONE     	CyrusOne Inc
CONN     	 Conn&#39;s Inc. 
COO      	 Cooper Companies Inc. (The) 
COOL     	Majesco Entertainment Company
COP      	ConocoPhillips
COPX     	Global X Copper Miners ETF
COR      	CoreSite Realty Corporation
COR^A    	CoreSite Realty Corporation
CORE     	 Core-Mark Holding Company Inc. 
CORN     	Teucrium Corn Fund ETF
CORP     	PIMCO Investment Grade Corporate Bond Index Fund ETF
CORR     	 CorEnergy Infrastructure Trust Inc. 
CORT     	Corcept Therapeutics Incorporated
COSI     	 Cosi Inc. 
COST     	Costco Wholesale Corporation
COT      	Cott Corporation
COV      	Covidien plc.
COVR     	Cover-All Technologies Inc.
COWN     	 Cowen Group Inc. 
COY      	 Blackrock Corporate High Yield Fund Inc. 
CP       	Canadian Pacific Railway Limited
C^P      	Citigroup Inc.
CPA      	 Copa Holdings S.A. 
CPAC     	Cementos Pacasmayo S.A.A.
CPAH     	CounterPath Corporation
CPB      	Campbell Soup Company
CPBC     	Community Partners Bancorp
CPE      	Callon Petroleum Company
CPER     	United States Copper ETF
CPF      	CPB Inc.
CPGI     	 China Shengda Packaging Group Inc. 
CPHC     	Canterbury Park Holding Corporation
CPHD     	CEPHEID
CPHI     	 China Pharma Holdings Inc. 
CPI      	IndexIQ CPI Inflation Hedged ETF
CPIX     	Cumberland Pharmaceuticals Inc.
CPK      	Chesapeake Utilities Corporation
CPL      	CPFL Energia S.A.
CPLA     	Capella Education Company
CPLP     	Capital Product Partners L.P.
CPN      	Calpine Corporation
CPNO     	 Copano Energy L.L.C. 
CPRT     	 Copart Inc. 
CPRX     	 Catalyst Pharmaceutical Partners Inc. 
CPSI     	 Computer Programs and Systems Inc. 
CPSL     	 China Precision Steel Inc. 
CPSS     	 Consumer Portfolio Services Inc. 
CPST     	Capstone Turbine Corporation
CPT      	Camden Property Trust
CPTS     	 Conceptus Inc. 
CPWR     	Compuware Corporation
C^Q      	Citigroup Inc.
CQB      	 Chiquita Brands International Inc. 
CQP      	 Cheniere Energy Partners LP 
CQQQ     	Guggenheim China Technology ETF
CR       	Crane Company
C^R      	Citigroup Inc.
CRAI     	 CRA International Inc. 
CRAY     	Cray Inc
CRBC     	 Citizens Republic Bancorp Inc. 
CRBQ     	Jefferies | TR/J CRB Global Commodity Equity Index Fund ETF
CRC      	 Chromcraft Revington Inc. 
CRD/A    	Crawford & Company
CRD/B    	Crawford & Company
CRDC     	 Cardica Inc. 
CRDS     	 Crossroads Systems Inc. 
CREE     	 Cree Inc. 
CREG     	China Recycling Energy Corporation
CRESW    	Cresud S.A.C.I.F. y A.
CRESY    	Cresud S.A.C.I.F. y A.
CRF      	 Cornerstone Strategic Return Fund Inc. (The) 
CRFN     	 Crescent Financial Bancshares Inc. 
CRH      	CRH PLC
CRI      	 Carter&#39;s Inc. 
CRIS     	 Curis Inc. 
CRK      	 Comstock Resources Inc. 
CRL      	 Charles River Laboratories International Inc. 
CRM      	Salesforce.com Inc
CRMB     	 Crumbs Bake Shop Inc. 
CRMBU    	 Crumbs Bake Shop Inc. 
CRMBW    	 Crumbs Bake Shop Inc. 
CRMD     	CorMedix Inc
CRMD/WS  	CorMedix Inc
CRME     	Cardiome Pharma Corporation
CRMT     	 America&#39;s Car-Mart Inc. 
CRNT     	Ceragon Networks Ltd.
CROC     	ProShares UltraShort Australian Dollar
CROP     	IndexIQ Global Agribusiness Small Cap ETF
CROX     	 Crocs Inc. 
CRR      	 Carbo Ceramics Inc. 
CRRB     	Carrollton Bancorp
CRRC     	Courier Corporation
CRS      	Carpenter Technology Corporation
CRT      	Cross Timbers Royalty Trust
CRTX     	Cornerstone Therapeutics Inc.
CRUD     	Teucrium Crude Oil Fund ETF
CRUS     	 Cirrus Logic Inc. 
CRV      	 Coast Distribution System Inc. (The) 
CRVL     	CorVel Corp.
CRVP     	 Crystal Rock Holdings Inc. 
CRWN     	 Crown Media Holdings Inc. 
CRWS     	 Crown Crafts Inc. 
CRY      	 CryoLife Inc. 
CRZO     	 Carrizo Oil & Gas Inc. 
CS       	Credit Suisse Group
C^S      	Citigroup Inc.
CSBK     	 Clifton Savings Bancorp Inc. 
CSC      	Computer Sciences Corporation
CSCD     	 Cascade Microtech Inc. 
CSCO     	 Cisco Systems Inc. 
CSD      	Guggenheim Spin-Off ETF
CSE      	CapitalSource Inc
CSFL     	 CenterState Banks Inc. 
CSFS     	The Cash Store Financial Services Inc.
CSGP     	 CoStar Group Inc. 
CSGS     	 CSG Systems International Inc. 
CSH      	 Cash America International Inc. 
CSI      	Cutwater Select Income Fund
CSII     	 Cardiovascular Systems Inc. 
CSIQ     	Canadian Solar Inc.
CSJ      	iShares Barclays 1-3 Year Credit Bond Fund ETF
CSL      	Carlisle Companies Incorporated
CSM      	ProShares Credit Suisse 130/30 ETF
CSOD     	 Cornerstone OnDemand Inc. 
CSP      	American Strategic Income Portfolio III
CSPI     	CSP Inc.
CSQ      	Calamos Strategic Total Return Fund
CSRE     	CSR plc
CSS      	 CSS Industries Inc. 
CSTE     	CaesarStone Sdot-Yam Ltd.
CSTR     	 Coinstar Inc. 
CSU      	Capital Senior Living Corporation
CSUN     	 China Sunergy Co. Ltd. 
CSV      	 Carriage Services Inc. 
CSWC     	Capital Southwest Corporation
CSX      	CSX Corporation
CT       	 Capital Trust Inc. 
CTAS     	Cintas Corporation
CTB      	Cooper Tire & Rubber Company
CTBI     	 Community Trust Bancorp Inc. 
CTC      	IFM Investments Limited
CTCH     	Commtouch Software Ltd.
CTCM     	 CTC Media Inc. 
CTCT     	 Constant Contact Inc. 
CTF      	Nuveen Long/Short Commodity Total Return Fund
CTGX     	 Computer Task Group Incorporated 
CTHR     	Charles & Colvard Ltd
CTIB     	CTI Industries Corporation
CTIC     	 Cell Therapeutics Inc. 
CTL      	 CenturyLink Inc. 
CTO      	Consolidated-Tomoka Land Co.
CTP      	CTPartners Executive Search Inc.
CTQ      	Qwest Corporation
CTR      	ClearBridge Energy MLP Total Return Fund Inc.
CTRN     	 Citi Trends Inc. 
CTRP     	 Ctrip.com International Ltd. 
CTRX     	Catamaran Corporation
CTS      	CTS Corporation
CTSH     	Cognizant Technology Solutions Corporation
CTU      	Qwest Corporation
CTW      	Qwest Corporation
CTWS     	 Connecticut Water Service Inc. 
CTX      	Qwest Corporation
CTXS     	 Citrix Systems Inc. 
CTZ^A    	 Citizens Republic Bancorp Inc. 
CU       	First Trust Exchange-Traded Fund II First Trust ISE Global Cop
CUB      	Cubic Corporation
CUBA     	 The Herzfeld Caribbean Basin Fund Inc. 
CUBE     	CubeSmart
CUBE^A   	CubeSmart
C^U/CL   	Citigroup Inc.
CUI      	 CUI Global Inc. 
CUK      	Carnival Plc ADS
CUNB     	CU Bancorp (CA)
CUO      	Continental Materials Corporation
CUR      	 Neuralstem Inc. 
CURE     	Direxion Daily Healthcare Bull 3X Shares ETF
CUT      	Guggenheim Timber ETF
CUTR     	 Cutera Inc. 
CUZ      	Cousins Properties Incorporated
CUZ^B    	Cousins Properties Incorporated
CVA      	Covanta Holding Corporation
CVB      	Lehman ABS Corporation
CVBF     	CVB Financial Corporation
CVC      	Cablevision Systems Corporation
C^V/CL   	Citigroup Inc.
CVCO     	 Cavco Industries Inc. 
CVCY     	Central Valley Community Bancorp
CVD      	Covance Inc.
CVE      	Cenovus Energy Inc
CVG      	Convergys Corporation
CVGI     	 Commercial Vehicle Group Inc. 
CVGW     	 Calavo Growers Inc. 
CVH      	 Coventry Health Care Inc. 
CVI      	CVR Energy Inc.
CVLT     	 CommVault Systems Inc. 
CVLY     	 Codorus Valley Bancorp Inc 
CVM      	Cel-Sci Corporation
CVO      	Cenveo Inc
CVR      	Chicago Rivet & Machine Co.
CVRR     	 CVR Refining LP 
CVS      	CVS Corporation
CVTI     	 Covenant Transportation Group Inc. 
CVU      	 CPI Aerostructures Inc. 
CVV      	CVD Equipment Corporation
CVX      	Chevron Corporation
CVY      	Guggenheim Multi-Asset Income ETF
CW       	Curtiss-Wright Corporation
C^W      	Citigroup Inc.
CWB      	SPDR Barclays Capital Convertible Bond ETF
CWBC     	Community West Bancshares
CWCO     	Consolidated Water Co. Ltd.
CWEI     	 Clayton Williams Energy Inc. 
CWH      	CommonWealth REIT
CWH^D    	CommonWealth REIT
CWH^E    	CommonWealth REIT
CWHN     	CommonWealth REIT
CWHO     	CommonWealth REIT
CWI      	SPDR MSCI ACWI ex-US ETF
C/WS/A   	Citigroup Inc.
CWST     	 Casella Waste Systems Inc. 
CWT      	California Water  Service Group Holding
CWTR     	 Coldwater Creek Inc. 
CWZ      	Lehman ABS Corporation
CX       	Cemex S.A.B. de C.V.
CXA      	SPDR Barclays Capital California Municipal Bond ETF
CXDC     	China XD Plastics Company Limited
CXE      	Colonial High Income Municipal Trust
CXH      	Colonial Investment Grade Municipal Trust
CXM      	 Cardium Therapeutics Inc. 
CXO      	Concho Resources Inc.
CXPO     	Crimson Exploration Inc.
CXS      	Crexus Investment Corp.
CXW      	Corrections Corporation of America
CXZ      	Crosshair Energy Corp
CY       	Cypress Semiconductor Corporation
CYAN     	Cyanotech Corporation
CYB      	WisdomTree Dreyfus Chinese Yuan Fund ETF
CYBE     	CyberOptics Corporation
CYBX     	 Cyberonics Inc. 
CYCC     	 Cyclacel Pharmaceuticals Inc. 
CYCCP    	 Cyclacel Pharmaceuticals Inc. 
CYD      	China Yuchai International Limited
CYE      	 Blackrock Corporate High Yield Fund III Inc 
CYH      	 Community Health Systems Inc. 
CYMI     	 Cymer Inc. 
CYN      	City National Corporation
CYN^C    	City National Corporation
CYNO     	 Cynosure Inc. 
CYOU     	Changyou.com Limited
CYS      	 CYS Investments Inc. 
CYS^A    	 CYS Investments Inc. 
CYT      	Cytec Industries Inc.
CYTK     	 Cytokinetics Incorporated 
CYTR     	CytRx Corporation
CYTX     	Cytori Therapeutics Inc
CYTXW    	Cytori Therapeutics Inc
CZA      	Guggenheim Mid-Cap Core ETF
C^Z/CL   	Citigroup Inc.
CZFC     	Citizens First Corporation
CZNC     	Citizens & Northern Corp
CZR      	Caesars Entertainment Corporation
CZWI     	 Citizens Community Bancorp Inc. 
CZZ      	Cosan Limited
D        	 Dominion Resources Inc. 
DAC      	Danaos Corporation
DAEG     	Daegis Inc
DAIO     	Data I/O Corporation
DAKT     	 Daktronics Inc. 
DAL      	 Delta Air Lines Inc. 
DAN      	Dana Holding Corporation
DANG     	E-Commerce China Dangdang Inc.
DAR      	Darling International Inc.
DARA     	 DARA Biosciences Inc. 
DATE     	Jiayuan.com International Ltd.
DAVE     	 Famous Dave&#39;s of America Inc. 
DB       	Deutsche Bank AG
DBA      	PowerShares DB Agriculture Fund ETF
DBB      	PowerShares DB Base Metals Fund ETF
DBBR     	DBX MSCI Brazil Currency-Hedged Equity Fund ETF
DBC      	PowerShares DB Commodity Index Trac ETF
DBCN     	DBX MSCI Canada Currency-Hedged Equity Fund ETF
DBD      	 Diebold Incorporated 
DBE      	PowerShares DB Energy Fund ETF
DBEF     	DBX MSCI EAFE Currency-Hedged Equity Fund ETF
DBEM     	DBX MSCI Emerging Markets Currency-Hedged Equity Fund ETF
DBIZ     	AdvisorShares Pring Turner Business Cycle ETF
DBJP     	DBX MSCI Japan Currency-Hedged Equity Fund ETF
DBL      	DoubleLine Opportunistic Credit Fund
DBLE     	Double Eagle Petroleum Company
DBLEP    	Double Eagle Petroleum Company
DBO      	PowerShares DB Oil Fund ETF
DBP      	PowerShares DB Precious Metals Fund ETF
DBS      	PowerShares DB Silver Fund ETF
DBU      	WisdomTree Global ex-U.S. Utility Fund ETF
DBV      	PowerShares DB G10 Currency Harvest ETF
DCA      	Virtus Total Return Fund
DCE      	Deutsche Bk Cap Fdg Tr X
DCI      	 Donaldson Company Inc. 
DCIN     	Digital Cinema Destinations Corp.
DCIX     	Diana Containerships Inc.
DCM      	 NTT DOCOMO Inc 
DCO      	Ducommun Incorporated
DCOM     	 Dime Community Bancshares Inc. 
DCT      	DCT Industrial Trust Inc
DCTH     	 Delcath Systems Inc. 
DD       	E.I. du Pont de Nemours and Company
DD^A     	E.I. du Pont de Nemours and Company
DD^B     	E.I. du Pont de Nemours and Company
DDC      	Dominion Diamond Corporation
DDD      	3D Systems Corporation
DDE      	Dover Downs Gaming & Entertainment Inc
DDF      	 Delaware Investments Dividend & Income Fund Inc. 
DDG      	ProShares Short Oil & Gas ETF
DDM      	ProShares Ultra Dow30 ETF
DDR      	DDR Corp.
DDR^H    	DDR Corp.
DDR^J    	DDR Corp.
DDR^K    	DDR Corp.
DDS      	 Dillard&#39;s Inc. 
DDT      	 Dillard&#39;s Inc. 
DDZ^K    	SiM Internal Test 3
DE       	Deere & Company
DECK     	Deckers Outdoor Corporation
DEF      	Guggenheim Defensive Equity ETF
DEG      	Etablissements Delhaize Freres et Cie &quot;Le Lion&quot; S.A.
DEI      	 Douglas Emmett Inc. 
DEJ      	Dejour Energy Inc.
DEL      	Deltic Timber Corporation
DELL     	Dell Inc.
DEM      	WisdomTree Emerging Markets High-Yielding Fund ETF
DENN     	Denny&#39;s Corporation
DEO      	Diageo plc
DEPO     	 Depomed Inc. 
DES      	WisdomTree Trust SmallCap Dividend Fund ETF
DEST     	Destination Maternity Corporation
DEW      	WisdomTree Europe High-Yielding Equity Fund ETF
DEX      	Delaware Enhanced Global Dividend
DEXO     	Dex One Corporation
DF       	Dean Foods Company
DFE      	WisdomTree Europe SmallCap Dividend Fund ETF
DFJ      	WisdomTree Japan SmallCap Fund ETF
DFRG     	 Del Frisco&#39;s Restaurant Group Inc. 
DFS      	Discover Financial Services
DFS^B    	Discover Financial Services
DFT      	 Dupont Fabros Technology Inc. 
DFT^A    	 Dupont Fabros Technology Inc. 
DFT^B    	 Dupont Fabros Technology Inc. 
DFZ      	R.G. Barry Corporation
DG       	Dollar General Corporation
DGAS     	 Delta Natural Gas Company Inc. 
DGI      	 DigitalGlobe Inc 
DGICA    	 Donegal Group Inc. 
DGICB    	 Donegal Group Inc. 
DGII     	Digi International Inc.
DGIT     	 Digital Generation Inc. 
DGL      	PowerShares DB Gold Fund ETF
DGLY     	 Digital Ally Inc. 
DGS      	WisdomTree Emerging Market SmallCap Fund ETF
DGSE     	 DGSE Companies Inc. 
DGT      	SPDR DJ Global Titans ETF
DGX      	Quest Diagnostics Incorporated
DHF      	Dreyfus High Yield Strategies Fund
DHG      	 DWS High Income Opportunities Fund Inc. 
DHI      	 D.R. Horton Inc. 
DHIL     	 Diamond Hill Investment Group Inc. 
DHR      	Danaher Corporation
DHRM     	Dehaier Medical Systems Limited
DHS      	WisdomTree High-Yielding Equity Fund ETF
DHT      	 DHT Holdings Inc. 
DHX      	 Dice Holdings Inc. 
DHY      	Credit Suisse High Yield Bond Fund
DIA      	SPDR Dow Jones Industrial Average ETF
DIG      	ProShares Ultra Oil & Gas ETF
DIM      	WisdomTree International MidCap Dividend Fund ETF
DIN      	 DineEquity Inc 
DIOD     	Diodes Incorporated
DIS      	Walt Disney Company (The)
DISCA    	 Discovery Communications Inc. 
DISCB    	 Discovery Communications Inc. 
DISCK    	 Discovery Communications Inc. 
DISH     	DISH Network Corporation
DIT      	AMCON Distributing Company
DIV      	Global X SuperDividend US ETF
DJCO     	Daily Journal Corp. (S.C.)
DK       	 Delek US Holdings Inc. 
DKL      	 Delek Logistics Partners L.P. 
DKS      	Dick&#39;s Sporting Goods Inc
DKT      	Deutsch Bk Contingent Cap Tr V
DL       	China Distance Education Holdings Limited
DLA      	 Delta Apparel Inc. 
DLB      	Dolby Laboratories
DLGC     	 Dialogic Inc. 
DLHC     	DLH Holdings Corp.
DLIA     	dELIA*s Inc.
DLLR     	DFC Global Corp
DLN      	WisdomTree LargeCap Dividend Fund ETF
DLPH     	Delphi Automotive plc
DLR      	 Digital Realty Trust Inc. 
DLR^E    	 Digital Realty Trust Inc. 
DLR^F    	 Digital Realty Trust Inc. 
DLR^G    	 Digital Realty Trust Inc. 
DLS      	WisdomTree International SmallCap Fund ETF
DLTR     	 Dollar Tree Inc. 
DLX      	Deluxe Corporation
DM       	Dolan Company (The)
DM^B     	Dolan Company (The)
DMD      	Demand Media Inc.
DMF      	 Dreyfus Municipal Income Inc. 
DMLP     	 Dorchester Minerals L.P. 
DMND     	 Diamond Foods Inc. 
DMO      	Western Asset Mortgage Defined Opportunity Fund Inc
DMRC     	Digimarc Corporation
DNB      	Dun & Bradstreet Corporation (The)
DNBF     	DNB Financial Corp
DNDN     	Dendreon Corporation
DNI      	Dividend and Income Fund
DNKN     	 Dunkin&#39; Brands Group Inc. 
DNL      	WisdomTree Global ex-U.S. Growth Fund ETF
DNN      	Denison Mine Corp
DNO      	United States Short Oil Fund LP ETF
DNP      	 Duff & Phelps Utilities Income Inc. 
DNR      	Denbury Resources Inc.
DNY      	The Denali Fund
DO       	 Diamond Offshore Drilling Inc. 
DOG      	ProShares Short Dow30 ETF
DOL      	WisdomTree International LargeCap Dividend Fund ETF
DOLE     	 Dole Food Company Inc 
DOM      	Dominion Resources Black Warrior Trust
DON      	WisdomTree MidCap Dividend Fund ETF
DOO      	WisdomTree International Dividend Top 100 Fund ETF
DORM     	 Dorman Products Inc. 
DOV      	Dover Corporation
DOVR     	 Dover Saddlery Inc. 
DOW      	Dow Chemical Company (The)
DOX      	Amdocs Limited
DPD      	Dow 30 Premium
DPG      	Duff & Phelps Global Utility Income Fund Inc.
DPK      	Direxion Developed Markets Bear 3x Shares ETF
DPM      	 DCP Midstream Partners LP 
DPO      	Dow 30 Premium
DPS      	 Dr Pepper Snapple Group Inc 
DPW      	Digital Power Corporation
DPZ      	Domino&#39;s Pizza Inc
DQ       	DAQQ New Energy Corp.
DRAD     	Digirad Corporation
DRAM     	Dataram Corporation
DRC      	Dresser-Rand Group Inc.
DRCO     	Dynamics Research Corporation
DRD      	DRDGOLD Limited
DRE      	Duke Realty Corporation
DRE^J    	Duke Realty Corporation
DRE^K    	Duke Realty Corporation
DRE^L    	Duke Realty Corporation
DRH      	Diamondrock Hospitality Company
DRI      	 Darden Restaurants Inc. 
DRIV     	 Digital River Inc. 
DRL      	Doral Financial Corporation
DRN      	Direxion Daily Real Estate Bull 3x Shares ETF
DRQ      	 Dril-Quip Inc. 
DRRX     	Durect Corporation
DRTX     	 Durata Therapeutics Inc. 
DRU      	 Dominion Resources Inc. 
DRV      	Direxion Daily Real Estate Bear 3x Shares ETF
DRW      	WisdomTree Global ex-U.S. Real Estate Fund ETF
DRWI     	DragonWave Inc
DRYS     	DryShips Inc.
DSCI     	 Derma Sciences Inc. 
DSCO     	 Discovery Laboratories Inc. 
DSGX     	The Descartes Systems Group Inc.
DSI      	iShares KLD 400 Social Index Fund ETF
DSKX     	 DS Healthcare Group Inc. 
DSM      	 Dreyfus Strategic Municipal Bond Fund Inc. 
DSPG     	 DSP Group Inc. 
DSS      	 Document Security Systems Inc. 
DST      	 DST Systems Inc. 
DSU      	 Blackrock Debt Strategies Fund Inc. 
DSUM     	PowerShares Chinese Yuan Dim Sum Bond Portfolio ETF
DSW      	DSW Inc.
DSWL     	 Deswell Industries Inc. 
DSX      	Diana Shipping inc.
DTD      	WisdomTree Total Dividend Fund ETF
DTE      	DTE Energy Company
DTF      	 Duff & Phelps Utilities Tax-Free Income Inc. 
DTH      	WisdomTree DEFA High-Yielding Equity Fund ETF
DTK      	Deutsche Bank AG
DTLK     	Datalink Corporation
DTN      	WisdomTree Dividend Top 100 Fund ETF
DTQ      	DTE Energy Company
DTSI     	 DTS Inc. 
DTT      	Deutsche Bank AG
DTV      	DIRECTV
DTZ      	DTE Energy Company
DUA      	Deutsche Bank AG
DUC      	 Duff & Phelps Utility & Corporate Bond Trust Inc. 
DUF      	Duff & Phelps Corporation
DUG      	ProShares UltraShort Oil & Gas ETF
DUK      	Duke Energy Corporation
DUKH     	Duke Energy Corporation
DUST     	Direxion Daily Gold Miners Bear 2x Shares ETF
DV       	DeVry Inc.
DVA      	DaVita healthCare Partners Inc.
DVAX     	Dynavax Technologies Corporation
DVCR     	Diversicare Healthcare Services Inc.
DVD      	 Dover Motorsports Inc. 
DVM      	Cohen & Steers Dividend Majors Fund
DVN      	Devon Energy Corporation
DVOX     	DynaVox Inc.
DVR      	 Cal Dive International Inc. 
DVY      	iShares Dow Jones Select Dividend Index Fund ETF
DVYA     	iShares Asia/Pacific Dividend 30 ETF
DVYE     	iShares Emerging Markets Dividend ETF
DW       	Drew Industries Incorporated
DWA      	 Dreamworks Animation SKG Inc. 
DWAS     	PowerShares DWA SmCp Technical Ldrs
DWCH     	Datawatch Corporation
DWM      	WisdomTree DEFA Fund ETF
DWRE     	 DEMANDWARE Inc. 
DWSN     	Dawson Geophysical Company
DWX      	SPDR S&P International Dividend ETF
DX       	 Dynex Capital Inc. 
DX^A     	 Dynex Capital Inc. 
DXB      	Deutsche Bank AG
DXCM     	 DexCom Inc. 
DXD      	ProShares UltraShort Dow30 ETF
DXJ      	WisdomTree Japan Total Dividend Fund ETF
DXLG     	 Destination XL Group Inc. 
DXPE     	 DXP Enterprises Inc. 
DXR      	Daxor Corporation
DXYN     	 The Dixie Group Inc. 
DY       	 Dycom Industries Inc. 
DYAX     	Dyax Corp.
DYN      	Dynegy Inc.
DYNT     	Dynatronics Corporation
DYN/WS   	Dynegy Inc.
DYSL     	Dynasil Corporation of America
DZK      	Direxion Developed Markets Bull 3x Shares ETF
E        	ENI S.p.A.
EA       	Electronic Arts Inc.
EAA      	 Entergy Arkansas Inc. 
EAB      	 Entergy Arkansas Inc. 
EAC      	Erickson Air-Crane Incorporated
EAD      	Wells Fargo Advantage Income Opportunities Fund
EAPS     	ESG Shares Pax MSCI EAFE ESG Index ETF
EAT      	 Brinker International Inc. 
EBAY     	eBay Inc.
EBF      	 Ennis Inc. 
EBIX     	Ebix Inc
EBMT     	 Eagle Bancorp Montana Inc. 
EBND     	SPDR Barclays Capital Emerging Markets Local Bond ETF
EBR      	Centrais Electricas Brasileiras SA
EBR/B    	Centrais Electricas Brasileiras SA
EBS      	 Emergent Biosolutions Inc. 
EBSB     	 Meridian Interstate Bancorp Inc. 
EBTC     	Enterprise Bancorp Inc
EC       	Ecopetrol S.A.
ECA      	Encana Corporation
ECF      	 Ellsworth Convertible Growth and Income Fund Inc. 
ECH      	iShares MSCI Chile Index Fund ETF
ECHO     	 Echo Global Logistics Inc. 
ECL      	Ecolab Inc.
ECNS     	iShares MSCI China Small Cap Index Fund (ECNS) ETF
ECOL     	 US Ecology Inc. 
ECON     	EGShares Emerging Markets Consumer ETF
ECPG     	Encore Capital Group Inc
ECT      	ECA Marcellus Trust I
ECTE     	 Echo Therapeutics Inc. 
ECTY     	 Ecotality Inc. 
ECYT     	 Endocyte Inc. 
ED       	Consolidated Edison Inc
EDAC     	Edac Technologies Corporation
EDAP     	EDAP TMS S.A.
EDC      	Direxion Emerging Markets Bull 3x Shares ETF
EDD      	 Morgan Stanley Emerging Markets Domestic Debt Fund Inc. 
EDE      	Empire District Electric Company (The)
EDEN     	iShares MSCI Denmark Cppd Investable Mkt
EDF      	Stone Harbor Emerging Markets Income Fund
EDG      	Edgen Group Inc.
EDGW     	 Edgewater Technology Inc. 
EDI      	Stone Harbor Emerging Markets Total Income Fund
EDIV     	SPDR S&P Emerging Markets Dividend ETF
EDMC     	Education Management Corporation
EDN      	Empresa Distribuidora Y Comercializadora Norte S.A. (Edenor)
EDR      	Education Realty Trust Inc.
EDS      	Exceed Company Ltd.
EDT      	Entergy Texas Inc
EDU      	 New Oriental Education & Technology Group Inc. 
EDUC     	Educational Development Corporation
EDV      	Vanguard Extended Duration Treasury ETF
EDZ      	Direxion Emerging Markets Bear 3x Shares ETF
EE       	El Paso Electric Company
EEA      	 European Equity Fund Inc. (The) 
EEB      	Guggenheim BRIC ETF
EEFT     	 Euronet Worldwide Inc. 
EEHB     	PowerShares S&P Emerging MktsHigh Beta ETF
EEI      	 Ecology and Environment Inc. 
EELV     	PowerShares S&P Emerging Markets Low Vol
EEM      	iShares MSCI Emerging Index Fund ETF
EEMA     	 iShares Inc. iShares MSCI Emerging Markets Asia Index Fund 
EEME     	 iShares Inc. iShares MSCI Emerging Markets EMEA Index Fund 
EEML     	iShares MSCI Emerging Markets Latin Amer
EEMS     	iShares MSCI Emerging Markets Small Cap Index Fund ETF
EEMV     	iShares MSCI Emerging Markets Minimum Volatility Index Fund ETF
EEP      	 Enbridge Energy L.P. 
EEQ      	Enbridge Energy Management LLC
EES      	WisdomTree SmallCap Earnings Fund ETF
EET      	ProShares Ultra MSCI Emerging Markets ETF
EEV      	ProShares UltraShort MSCI Emerging Markets ETF
EFA      	iShares MSCI EAFE Index Fund ETF
EFAV     	iShares MSCI EAFE Minimum Volatility Index Fund ETF
EFC      	Ellington Financial LLC
EFG      	iShares MSCI Growth Index Fund ETF
EFII     	 Electronics for Imaging Inc. 
EFM      	 Entergy Mississippi Inc. 
EFNL     	iShares MSCI Finland Capped Inv Mkt
EFO      	ProShares Ultra MSCI EAFE ETF
EFR      	Eaton Vance Senior Floating-Rate Fund
EFSC     	Enterprise Financial Services Corporation
EFT      	Eaton Vance Floating Rate Income Trust
EFU      	ProShares UltraShort MSCI EAFE ETF
EFUT     	eFuture Information Technology Inc.
EFV      	iShares MSCI Value Index Fund ETF
EFX      	 Equifax Inc. 
EFZ      	ProShares Short MSCI EAFE ETF
EGAN     	eGain Communications Corporation
EGAS     	Gas Natural Inc.
EGBN     	 Eagle Bancorp Inc. 
EGF      	 Blackrock Enhanced Government Fund Inc 
EGHT     	8x8 Inc
EGI      	Entree Gold Inc
EGL      	 Engility Holdings Inc. 
EGLE     	Eagle Bulk Shipping Inc.
EGN      	Energen Corporation
EGO      	Eldorado Gold Corporation
EGOV     	NIC Inc.
EGP      	 EastGroup Properties Inc. 
EGPT     	Market Vectors Egypt Index ETF
EGRW     	 iShares Inc. iShares MSCI Emerging Markets Growth Index Fund 
EGT      	Entertainment Gaming Asia Incorporated
EGY      	Vaalco Energy Inc
EHI      	Western Asset Global High Income Fund Inc
EHTH     	 eHealth Inc. 
EIA      	Eaton Vance California Municipal Bond Fund II
EIDO     	iShares MSCI Indonesia Investable Market Index Fund ETF
EIG      	Employers Holdings Inc
EIHI     	 Eastern Insurance Holdings Inc. 
EIM      	Eaton Vance Municipal Bond Fund
EIO      	Eaton Vance Ohio Municipal Bond Fund
EIP      	Eaton Vance Pennsylvania Municipal Bond Fund
EIRL     	iShares MSCI Ireland Capped Investable Market Index Fund ETF
EIS      	iShares MSCI Israel Capped Investable Market Index Fund ETF
EIV      	Eaton Vance Municipal Bond Fund II
EIX      	Edison International
EJ       	E-House (China) Holdings Limited
EL       	 Estee Lauder Companies Inc. (The) 
ELA      	 Entergy Louisiana Inc. 
ELB      	 Entergy Louisiana Inc. 
ELD      	WisdomTree Emerging Markets Local Debt Fund ETF
ELGX     	 Endologix Inc. 
ELJ      	 Entergy Louisiana Inc. 
ELLI     	 Ellie Mae Inc. 
ELLO     	Ellomay Capital Ltd.
ELMD     	 Electromed Inc. 
ELN      	 Elan Corporation plc 
ELNK     	 EarthLink Inc. 
ELON     	Echelon Corporation
ELOS     	Syneron Medical Ltd.
ELP      	Companhia Paranaense de Energia (COPEL)
ELR      	SPDR Dow Jones Large Cap ETF
ELRC     	Electro Rent Corporation
ELS      	 Equity Lifestyle Properties Inc. 
ELS^C    	 Equity Lifestyle Properties Inc. 
ELSE     	 Electro-Sensors Inc. 
ELTK     	Eltek Ltd.
ELX      	Emulex Corporation
ELY      	Callaway Golf Company
EMAN     	eMagin Corporation
EMB      	iShares JP Morgan Em Bond Fd ETF
EMC      	EMC Corporation
EMCB     	WisdomTree Emer Mkts Corporate Bond ETF
EMCD     	SPDR BofA ML EM Corp Bd ETF
EMCF     	Emclaire Financial Corp
EMCI     	 EMC Insurance Group Inc. 
EMCR     	EGShares Emerging Markets Core ETF
EMD      	 Western Asset Emerging Markets Income Fund Inc 
EMDD     	EGShares Emerg Mkts Domestic Demand ETF
EMDI     	 iShares Inc. iShares MSCI Emerging Markets Consumer Discrecti 
EMDR     	ALPS ETF Trust VelocityShares Emerging Markets DR ETF
EME      	 EMCOR Group Inc. 
EMEY     	 iShares Inc. iShares MSCI Emerging Markets Energy Sector Capp 
EMF      	Templeton Emerging Markets Fund
EMFN     	iShares MSCI Emerging Markets Financials Sector Index Fund
EMFT     	SPDR MSCI EM 50 ETF
EMHY     	iShares Emerging Markets High Yield Bond ETF
EMI      	Eaton Vance Michigan Municipal Income Trust
EMIF     	iShares S&P Emerging Markets Infrastructure Index Fund
EMITF    	Elbit Imaging Ltd.
EMJ      	Eaton Vance New Jersey Municipal Bond Fund
EMKR     	EMCORE Corporation
EML      	Eastern Company (The)
EMLC     	Market Vectors Emerging Markets Local Currency Bond ETF
EMLP     	First Trust North American Energy Infras
EMM      	SPDR Dow Jones Mid Cap ETF
EMMS     	Emmis Communications Corporation
EMMSP    	Emmis Communications Corporation
EMMT     	iShares MSCI Emerging Markets Materials Sector Index Fund
EMN      	Eastman Chemical Company
EMO      	ClearBridge Energy MLP Opportunity Fund Inc.
EMQ      	 Entergy Mississippi Inc. 
EMR      	Emerson Electric Company
EMT      	EGShares Emerging Markets Metals/Mining ETF
EMXX     	Eurasian Minerals Inc.
EMZ      	 Entergy Mississippi Inc. 
ENB      	Enbridge Inc
END      	Endeavor International Corporation
ENDP     	Endo Health Solutions Inc.
ENG      	ENGlobal Corporation
ENGN     	iShares Industrials Sector Bond ETF
ENH      	Endurance Specialty Holdings Ltd
ENH^A    	Endurance Specialty Holdings Ltd
ENH^B    	Endurance Specialty Holdings Ltd
ENI      	Enersis S A
ENJ      	 Entergy New Orleans Inc. 
ENL      	Reed Elsevier NV
ENMD     	 EntreMed Inc. 
ENOC     	 EnerNOC Inc. 
ENOR     	iShares MSCI Norway Cppd Investable Mkt
ENPH     	 Enphase Energy Inc. 
ENR      	 Energizer Holdings Inc. 
ENS      	Enersys
ENSG     	 The Ensign Group Inc. 
ENT      	Global Eagle Entertainment Inc.
ENTA     	 Enanta Pharmaceuticals Inc. 
ENTG     	 Entegris Inc. 
ENTR     	 Entropic Communications Inc. 
ENV      	 Envestnet Inc 
ENVI     	 Envivio Inc. 
ENX      	Eaton Vance New York Municipal Bond Fund
ENY      	Guggenheim Canadian Energy Income ETF
ENZ      	 Enzo Biochem Inc. 
ENZL     	iShares MSCI New Zealand Investable Market Index Fund (ENZL) ETF
ENZN     	 Enzon Pharmaceuticals Inc. 
EOC      	Empresa Nacional de Electricidad S.A.
EOD      	Wells Fargo Advantage Global Dividend Opportunity Fund
EOG      	 EOG Resources Inc. 
EOI      	Eaton Vance Enhance Equity Income Fund
EONC     	eOn Communications Corporation
EOPN     	 E2open Inc. 
EOS      	Eaton Vance Enhanced Equity Income Fund II
EOT      	Eaton Vance Municipal Income Trust
EOX      	 Emerald Oil Inc. 
EPAM     	 EPAM Systems Inc. 
EPAX     	 Ambassadors Group Inc. 
EPAY     	 Bottomline Technologies Inc. 
EPB      	El Paso Pipeline Partners LP
EP^C     	El Paso Corporation
EPD      	Enterprise Products Partners L.P.
EPHE     	iShares A79MSCI Philippines Investable Market Index Fund (EPHE) ETF
EPI      	WisdomTree India Earnings Fund ETF
EPIQ     	 EPIQ Systems Inc. 
EPL      	 EPL Oil & Gas Inc. 
EPM      	 Evolution Petroleum Corporation Inc. 
EPM^A    	 Evolution Petroleum Corporation Inc. 
EPOL     	iShares MSCI Poland Investable Market Index Fund ETF
EPP      	iShares MSCI Pacific Ex-Japan Index Fund ETF
EPR      	EPR Properties
EPR^C    	EPR Properties
EPR^E    	EPR Properties
EPR^F    	EPR Properties
EPS      	WisdomTree Earnings 500 Fund ETF
EPU      	iShares MSCI All Peru Capped Index Fund ETF
EPV      	ProShares UltraShort MSCI Europe ETF
EQIX     	 Equinix Inc. 
EQL      	ALPS Equal Sector Weight ETF
EQM      	 EQT Midstream Partners LP 
EQR      	Equity Residential
EQS      	 Equus Total Return Inc. 
EQT      	EQT Corporation
EQU      	Equal Energy Ltd.
EQY      	 Equity One Inc. 
ERA      	 Era Group Inc. 
ERB      	 ERBA Diagnostics Inc. 
ERC      	Wells Fargo Advantage Multi-Sector Income Fund
ERF      	Enerplus Corporation
ERH      	Wells Fargo Advantage Utilities and High Income Fund
ERIC     	Ericsson
ERIE     	Erie Indemnity Company
ERII     	 Energy Recovery Inc. 
ERJ      	Embraer-Empresa Brasileira de Aeronautica
EROC     	 Eagle Rock Energy Partners L.P. 
ERS      	 Empire Resources Inc. 
ERUS     	iShares MSCI Russia Capped Index Fund ETF
ERX      	Direxion Energy Bull 3x Shares ETF
ERY      	Direxion Energy Bear 3x Shares ETF
ES       	EnergySolutions Inc
ESBF     	ESB Financial Corporation
ESBK     	Elmira Savings Bank NY (The)
ESC      	Emeritus Corporation
ESCA     	 Escalade Incorporated 
ESD      	Western Asset Emerging Markets Debt Fund Inc
ESE      	ESCO Technologies Inc.
ESEA     	Euroseas Ltd.
ESGR     	Enstar Group Limited
ESI      	 ITT Educational Services Inc. 
ESIO     	 Electro Scientific Industries Inc. 
ESL      	Esterline Technologies Corporation
ESLT     	Elbit Systems Ltd.
ESMC     	Escalon Medical Corp.
ESP      	Espey Mfg. & Electronics Corp.
ESR      	iShares MSCI Emerging Markets Eastern Europe Index Fund ETF
ESRX     	Express Scripts Holding Company
ESS      	 Essex Property Trust Inc. 
ESSA     	 ESSA Bancorp Inc. 
ESS^H    	 Essex Property Trust Inc. 
ESSX     	Essex Rental Corporation
ESTE     	 Earthstone Energy Inc. 
ESV      	ENSCO plc
ESXB     	Community Bankers Trust Corporation.
ESYS     	Elecsys Corporation
ET       	 ExactTarget Inc. 
ETAK     	Elephant Talk Communications Corp.
ETB      	Eaton Vance Tax-Managed Buy-Write Income Fund
ETE      	 Energy Transfer Equity L.P. 
ETF      	Aberdeen Emerging Markets Smaller Company Opportunities Fund I
ETFC     	E*TRADE Financial Corporation
ETG      	Eaton Vance Tax-Advantaged Global Dividend Income Fund
ETH      	Ethan Allen Interiors Inc.
ETJ      	Eaton Vance Risk-Managed Diversified Equity Income Fund
ETM      	Entercom Communications Corporation
ETN      	 Eaton Corporation PLC 
ETO      	Eaton Vance Tax-Advantage Global Dividend Opp
ETP      	ENERGY TRANSFER PARTNERS
ETR      	Entergy Corporation
ETRM     	EnteroMedics Inc.
ETUA     	eUnits 2 Year U.S. Market Participation Trust
ETUB     	eUnits 2 Year U.S. Market Participation Trust
ETV      	Eaton Vance Corporation
ETW      	Eaton Vance Corporation
ETX      	Eaton Vance Municipal Income Term Trust
ETY      	Eaton Vance Tax-Managed Diversified Equity Income Fund
EU       	WisdomTree Dreyfus Euro Fund ETF
EUFN     	iShares MSCI Europe Financials Sector Index Fund
EUFX     	ProShares Short Euro
EUM      	ProShares Short MSCI Emerging Markets ETF
EUO      	ProShares UltraShort Euro ETF
EUSA     	iShares MSCI USA Index Fund ETF
EV       	Eaton Vance Corporation
EVAC     	Edwards Group Limited
EVAL     	 iShares Inc. iShares MSCI Emerging Markets Value Index Fund 
EVBN     	 Evans Bancorp Inc. 
EVBS     	 Eastern Virginia Bankshares Inc. 
EVC      	Entravision Communications Corporation
EVEP     	 EV Energy Partners L.P. 
EVER     	EverBank Financial Corp.
EVER^A   	EverBank Financial Corp.
EVF      	Eaton Vance Senior Income Trust
EVG      	Eaton Vance Short Diversified Income Fund
EVI      	 EnviroStarm Inc. 
EVJ      	Eaton Vance New Jersey Municipal Income Trust
EVK      	 Ever-Glory International Group Inc. 
EVM      	Eaton Vance California Municipal Bond Fund
EVN      	Eaton Vance Municipal Income Trust
EVO      	Eaton Vance Ohio Municipal Income Trust
EVOL     	 Evolving Systems Inc. 
EVP      	Eaton Vance Pennsylvania Municipal Income Trust
EVR      	Evercore Partners Inc
EVT      	Eaton Vance Tax Advantaged Dividend Income Fund
EVV      	Eaton Vance Limited Duration Income Fund
EVX      	Market Vectors Environment Index ETF Fund ETF
EVY      	Eaton Vance New York Municipal Income Trust
EW       	Edwards Lifesciences Corporation
EWA      	iShares MSCI Australia Index Fund ETF
EWAS     	iShares MSCI Australia Small Cap
EWBC     	 East West Bancorp Inc. 
EWC      	iShares MSCI Canada Index Fund ETF
EWCS     	iShares MSCI Canada Small Cap Index Fund
EWD      	iShares MSCI Sweden Index Fund ETF
EWEM     	Guggenheim (Rydex) MSCI Emerging Markets Equal Weight ETF
EWG      	iShares MSCI Germany Index Fund ETF
EWGS     	iShares MSCI Germany Small Cap
EWH      	iShares MSCI Hong Kong Index Fund ETF
EWHS     	iShares MSCI Hong Kong Small Cap
EWI      	iShares MSCI Italy Index Fund ETF
EWJ      	iShares MSCI Japan Index Fund ETF
EWK      	iShares MSCI Belgium Index Fund ETF
EWL      	iShares MSCI Switzerland Index Fund ETF
EWM      	iShares MSCI Malaysia Index Fund ETF
EWN      	iShares MSCI Netherlands Index Fund ETF
EWO      	iShares MSCI Austria Index Fund ETF
EWP      	iShares MSCI Spain Index Fund ETF
EWQ      	iShares MSCI France Index Fund ETF
EWRI     	Guggenheim (Rydex) Russell 1000 Equal Weight ETF
EWRM     	Guggenheim (Rydex) Russell MidCap Equal Weight ETF
EWRS     	Guggenheim (Rydex) Russell 2000 Equal Weight ETF
EWS      	iShares MSCI Singapore Index Fund ETF
EWSS     	iShares MSCI Singapore Small Cap Fund
EWT      	iShares MSCI Taiwan Index Fund ETF
EWU      	iShares MSCI United Kingdom Index Fund ETF
EWUS     	iShares MSCI United Kingdom Small Cap
EWV      	ProShares UltraShort MSCI Japan ETF
EWW      	iShares MSCI Mexico Index Fund ETF
EWX      	SPDR S&P Emerging Markets Small Cap ETF
EWY      	iShares MSCI South Korea Index Fund ETF
EWZ      	iShares MSCI Brazil Index Fund ETF
EWZS     	iShares MSCI Brazil Small Cap Index Fund (EWZS) ETF
EXA      	Exa Corporation
EXAC     	 Exactech Inc. 
EXAM     	 ExamWorks Group Inc. 
EXAR     	Exar Corporation
EXAS     	EXACT Sciences Corporation
EXC      	Exelon Corporation
EXD      	Eaton Vance Tax-Advantaged Bond
EXE      	 Crexendo Inc. 
EXEL     	 Exelixis Inc. 
EXFO     	EXFO Inc
EXG      	Eaton Vance Tax-Managed Global Diversified Equity Income Fund
EXH      	 Exterran Holdings Inc. 
EXI      	iShares S&P Global Industrials Sector Index Fund ETF
EXK      	Endeavour Silver Corporation
EXL      	 Excel Trust Inc. 
EXL^B    	 Excel Trust Inc. 
EXLP     	 Exterran Partners L.P. 
EXLS     	 ExlService Holdings Inc. 
EXM      	Excel Maritime Carriers Ltd.
EXP      	Eagle Materials Inc
EXPD     	 Expeditors International of Washington Inc. 
EXPE     	 Expedia Inc. 
EXPO     	 Exponent Inc. 
EXPR     	 Express Inc. 
EXR      	Extra Space Storage Inc
EXT      	WisdomTree Total Earnings Fund ETF
EXTR     	 Extreme Networks Inc. 
EXXI     	Energy XXI (Bermuda) Limited
EZA      	iShares MSCI South Africa Index Fund ETF
EZCH     	EZchip Semiconductor Limited
EZJ      	ProShares Ultra MSCI Japan ETF
EZM      	WisdomTree MidCap Earnings Fund ETF
EZPW     	 EZCORP Inc. 
EZU      	iShares MSCI EMU Index Fund ETF
EZY      	WisdomTree Low P/E Fund ETF
F        	Ford Motor Company
FAB      	First Trust Multi Cap Value AlphaDEX Fund ETF
FABK     	First Advantage Bancorp
FAC      	First Acceptance Corporation
FAD      	First Trust Multi CG AlphaDEX ETF
FAF      	First American Corporation (The)
FALC     	 FalconStor Software Inc. 
FAM      	First Trust/Aberdeen Global Opportunity Income Fund
FAN      	First Trust ISE Global Wind Energy ETF
FANG     	 Diamondback Energy Inc. 
FARM     	Farmer Brothers Company
FARO     	 FARO Technologies Inc. 
FAS      	Direxion Financial Bull 3x Shares ETF
FAST     	Fastenal Company
FAUS     	First Trust Australia AlphaDEX ETF
FAV      	First Trust Active Dividend Income Fund
FAX      	Aberdeen Asia-Pacific Income Fund Inc
FAZ      	Direxion Financial Bear 3x Shares ETF
FB       	 Facebook Inc. 
FBC      	 Flagstar Bancorp Inc. 
FBHS     	 Fortune Brands Home & Security Inc. 
FBIZ     	 First Business Financial Services Inc. 
FBMI     	Firstbank Corporation
FBMS     	 The First Bancshares Inc. 
FBN      	 Furniture Brands International Inc. 
FBNC     	First Bancorp
FBNK     	 First Connecticut Bancorp Inc. 
FBP      	First BanCorp.
FBR      	Fibria Celulose S.A.
FBRC     	FBR & Co
FBS^A    	 First Banks Inc. 
FBSS     	 Fauquier Bankshares Inc. 
FBT      	First Trust Amex Biotech Index Fund ETF
FBZ      	First Trust Brazil AlphaDEX ETF
FC       	Franklin Covey Company
FCA      	First Trust China AlphaDEX ETF
FCAL     	 First California Financial Group Inc. 
FCAN     	First Trust Canada AlphaDEX ETF
FCAP     	 First Capital Inc. 
FCBC     	 First Community Bancshares Inc. 
FCCO     	First Community Corporation
FCCY     	1st Constitution Bancorp (NJ)
FCE/A    	Forest City Enterprises Inc
FCE/B    	Forest City Enterprises Inc
FCEL     	 FuelCell Energy Inc. 
FCF      	First Commonwealth Financial Corporation
FCFC     	FirstCity Financial Corporation
FCFS     	 First Cash Financial Services Inc. 
FCG      	First Trust ISE-Revere Natural Gas ETF
FCH      	FelCor Lodging Trust Incorporated
FCH^A    	FelCor Lodging Trust Incorporated
FCH^C    	FelCor Lodging Trust Incorporated
FCHI     	iShares FTSE China (HK Listed) Index Fund
FCLF     	First Clover Leaf Financial Corp.
FCN      	 FTI Consulting Inc. 
FCNCA    	 First Citizens BancShares Inc. 
FCO      	 Aberdeen Global Income Fund Inc. 
FCS      	 Fairchild Semiconductor International Inc. 
FCT      	First Trust Senior Floating Rate Income Fund II
FCTY     	 1st Century Bancshares Inc 
FCVA     	 First Capital Bancorp Inc. (VA) 
FCX      	 Freeport-McMoran Copper & Gold Inc. 
FCY      	Forest City Enterprises Inc
FCZA     	First Citizens Banc Corp.
FDD      	First Trust Dow Jones STOXX Select Dividend 30 Index Fund ETF
FDEF     	First Defiance Financial Corp.
FDI      	 Fort Dearborn Income Securities Inc. 
FDL      	First Trust Morningstar ETF
FDM      	First Trust DJ Select MicroCap ETF
FDML     	Federal-Mogul Corporation
FDN      	First Trust DJ Internet Index Fund ETF
FDO      	 Family Dollar Stores Inc. 
FDP      	 Fresh Del Monte Produce Inc. 
FDS      	FactSet Research Systems Inc.
FDT      	First Trust Developed Markets Ex-US AlphaDEX ETF
FDTS     	First Trust Dev Mkts ex-US SC AlphaDEX ETF
FDUS     	Fidus Investment Corporation
FDV      	First Trust DB Strategic Value ETF
FDX      	FedEx Corporation
FE       	FirstEnergy Corporation
FEFN     	iShares MSCI Far East Financials Sector Index Fund
FEI      	First Trust MLP and Energy Income Fund
FEIC     	FEI Company
FEIM     	 Frequency Electronics Inc. 
FELE     	 Franklin Electric Co. Inc. 
FEM      	First Trust Emerging Markets AlphaDEX ETF
FEMS     	First Trust Emerging Markets SC AlphaDEX ETF
FEN      	First Trust Energy Income and Growth Fund
FENG     	Phoenix New Media Limited
FEO      	First Trust/Aberdeen Emerging Opportunity Fund
FEP      	First Trust Europe AlphaDEX ETF
FES      	Forbes Energy Services Ltd
FET      	 Forum Energy Technologies Inc. 
FEU      	SPDR DJ STOXX 50 ETF
FEX      	First Trust Large Cap Core AlphaDEX ETF
FEZ      	SPDR DJ EURO STOXX 50 ETF
FF       	FutureFuel Corp.
FFA      	First Trust
FFBC     	First Financial Bancorp.
FFBCW    	First Financial Bancorp.
FFBH     	 First Federal Bancshares of Arkansas Inc. 
FFC      	Flaherty & Crumrine Preferred Securities Income Fund Inc
FFCH     	 First Financial Holdings Inc. 
FFCO     	FedFirst Financial Corporation
FFEX     	 Frozen Food Express Industries Inc. 
FFG      	 FBL Financial Group Inc. 
FFHL     	 Fuwei Films (Holdings) Co. Ltd. 
FFI      	 Fortune Industries Inc. 
FFIC     	Flushing Financial Corporation
FFIN     	 First Financial Bankshares Inc. 
FFIV     	 F5 Networks Inc. 
FFKT     	Farmers Capital Bank Corporation
FFKY     	First Financial Service Corporation
FFN      	FriendFinder Networks Inc.
FFNM     	 First Federal of Northern Michigan Bancorp Inc. 
FFNW     	 First Financial Northwest Inc. 
FFR      	First Trust FTSE EPRA/NAREIT Global Real Estate Index Fund ETF
FFZ^K    	SiM Internal Test 4
FGB      	First Trust Specialty Finance and Financial Opportunities Fund
FGD      	First Trust DJ Global Select Dividend ETF
FGEM     	EGShares Financials GEMS ETF
FGM      	First Trust Germany AlphaDEX ETF
FGP      	 Ferrellgas Partners L.P. 
FHCO     	Female Health Company (The)
FHK      	First Trust Hong Kong AlphaDEX ETF
FHN      	First Horizon National Corporation
FHN^A    	First Horizon National Corporation
FHY      	First Trust Strategic High Income Fund II
FIBK     	 First Interstate BancSystem Inc. 
FICO     	Fair Isaac Corporation
FIF      	First Trust Energy Infrastructure Fund
FIG      	Fortress Investment Group LLC
FII      	 Federated Investors Inc. 
FILL     	iShares MSCI Global Energy Producers Fund ETF
FINF     	ProShares Short 30 Year TIPS/TSY Spread ETF
FINL     	 The Finish Line Inc. 
FINU     	ProShares UltraPro Financials
FINZ     	ProShares UltraPro Short Financials
FIO      	 Fusion-io Inc. 
FIRE     	 Sourcefire Inc. 
FIS      	 Fidelity National Information Services Inc. 
FISI     	 Financial Institutions Inc. 
FISV     	 Fiserv Inc. 
FITB     	Fifth Third Bancorp
FITBP    	Fifth Third Bancorp
FIVE     	 Five Below Inc. 
FIVZ     	PIMCO 3-7 Year U.S. Treasury Index Fund ETF
FIW      	First Trust ISE Water Index Fund ETF
FIX      	 Comfort Systems USA Inc. 
FIZZ     	National Beverage Corp.
FJP      	First Trust Japan AlphaDEX ETF
FKO      	First Trust South Korea AlphaDEX ETF
FKU      	First Trust United Kingdom AlphaDEX ETF
FL       	 Foot Locker Inc. 
FLAG     	Forensic Accounting ETF
FLC      	Flaherty & Crumrine Total Return Fund Inc
FLDM     	Fluidigm Corporation
FLEX     	Flextronics International Ltd.
FLIC     	The First of Long Island Corporation
FLIR     	 FLIR Systems Inc. 
FLL      	 Full House Resorts Inc. 
FLM      	First Trust ISE Global Engineering and Construction Index Fund ETF
FLML     	Flamel Technologies S.A.
FLN      	First Trust Latin America AlphaDEX ETF
FLO      	 Flowers Foods Inc. 
FLOT     	iShares Floating Rate Note ETF
FLOW     	Flow International Corporation
FLR      	Fluor Corporation
FLRN     	SPDR Barclays Capital Investment Grade Floating Rate ETF
FLS      	Flowserve Corporation
FLT      	 FleetCor Technologies Inc. 
FLTR     	Market Vectors Investment Grade Floating Rate
FLTX     	Fleetmatics Group PLC
FLWS     	 1-800 FLOWERS.COM Inc. 
FLXS     	 Flexsteel Industries Inc. 
FLY      	Fly Leasing Limited
FM       	iShares MSCI Frontier 100 Index ETF
FMBI     	 First Midwest Bancorp Inc. 
FMC      	FMC Corporation
FMCN     	Focus Media Holding Limited
FMD      	First Marblehead Corporation (The)
FMER     	FirstMerit Corporation
FMER^A   	FirstMerit Corporation
FMFC     	First M & F Corporation
FMK      	First Trust Mega Cap AlphaDex
FMN      	Federated Premier Municipal Income Fund
FMNB     	Farmers National Banc Corp.
FMO      	Fiduciary/Claymore MLP Opportunity Fund
FMS      	Fresenius Medical Care Corporation
FMS^     	Fresenius Medical Care Corporation
FMX      	Fomento Economico Mexicano S.A.B. de C.V.
FMY      	First Trust
FN       	Fabrinet
FNB      	F.N.B. Corporation
FNBN     	FNB United Corp.
FNF      	 Fidelity National Financial Inc. 
FNFG     	First Niagara Financial Group Inc.
FNFG^B   	First Niagara Financial Group Inc.
FNGN     	 Financial Engines Inc. 
FNHC     	Federated National Holding Company
FNI      	First Trust ISE Chindia ETF
FNIO     	iShares FTSE NAREIT Industrial/Office Capped Index ETF ETF
FNK      	First Trust Mid Cap Value AlphaDEX ETF
FNLC     	 First Bancorp Inc (ME) 
FNP      	 Fifth & Pacific Companies Inc. 
FNSR     	Finisar Corporation
FNV      	Franco-Nevada Corporation
FNX      	First Trust Mid Cap Core AlphaDEX ETF
FNY      	First Trust Mid Cap Growth AlphaDEX ETF
FOE      	Ferro Corporation
FOF      	 Cohen & Steers Closed-End Opportunity Fund Inc. 
FOL      	FactorShares 2X: Oil Bull/S&P500 Bear ETF
FOLD     	 Amicus Therapeutics Inc. 
FONE     	First Trust NASDAQ CEA Smartphone Index Fund
FONR     	Fonar Corporation
FOR      	Forestar Group Inc
FORD     	 Forward Industries Inc. 
FORM     	 FormFactor Inc. 
FORR     	 Forrester Research Inc. 
FORTY    	Formula Systems (1985) Ltd.
FORX     	PIMCO Foreign Currency Strategy ETF
FOSL     	 Fossil Inc. 
FPA      	First Trust Asia Pacific Ex-Japan AlphaDEX ETF
FPE      	First Trust Preferred Securities and Income ETF
FPO      	First Potomac Realty Trust
FPO^A    	First Potomac Realty Trust
FPP      	FieldPoint Petroleum Corporation
FPP/WS   	FieldPoint Petroleum Corporation
FPT      	Federated Premier Intermediate Municipal Income Fund
FPX      	First Trust IPOX-100 Index Fund ETF
FR       	 First Industrial Realty Trust Inc. 
FRA      	Blackrock Floating Rate Income Strategies Fund Inc
FRAK     	Market Vectors Unconventl Oil & Gas ETF
FRAN     	Francesca&#39;s Holdings Corporation
FRBK     	 Republic First Bancorp Inc. 
FRC      	FIRST REPUBLIC BANK
FRC^A    	FIRST REPUBLIC BANK
FRC^B    	FIRST REPUBLIC BANK
FRC^C    	FIRST REPUBLIC BANK
FRD      	Friedman Industries Inc.
FRED     	 Fred&#39;s Inc. 
FREE     	FreeSeas Inc.
FRF      	Fortegra Financial Corporation
FRGI     	 Fiesta Restaurant Group Inc. 
FRI      	First Trust S&P REIT Index Fund ETF
FR^K     	 First Industrial Realty Trust Inc. 
FRM      	Furmanite Corporation
FRME     	First Merchants Corporation
FRN      	Guggenheim Frontier Markets ETF
FRNK     	Franklin Financial Corporation
FRO      	Frontline Ltd.
FRP      	 FairPoint Communications Inc. 
FRS      	 Frisch&#39;s Restaurants Inc. 
FRT      	Federal Realty Investment Trust
FRX      	 Forest Laboratories Inc. 
FSA      	FactorShares 2X: TBond Bull/S&P500 Bear ETF
FSBK     	First South Bancorp Inc
FSBW     	 FS Bancorp Inc. 
FSC      	Fifth Street Finance Corp.
FSCE     	Fifth Street Finance Corp.
FSCFL    	Fifth Street Finance Corp.
FSCI     	 Fisher Communications Inc. 
FSD      	First Trust High Income Long Short Fund
FSE      	FactorShares 2X: S&P500 Bull/TBond Bear ETF
FSFG     	 First Savings Financial Group Inc. 
FSG      	FactorShares 2X: Gold Bull/S&P500 Bear ETF
FSGI     	 First Security Group Inc. 
FSI      	Flexible Solutions International Inc.
FSL      	 Freescale Semiconductor Ltd. 
FSLR     	 First Solar Inc. 
FSM      	Fortuna Silver Mines Inc.
FSP      	Franklin Street Properties Corp.
FSRV     	FirstService Corporation
FSS      	Federal Signal Corporation
FST      	Forest Oil Corporation
FSTR     	L.B. Foster Company
FSU      	FactorShares 2X: S&P500 Bull/USD Bear ETF
FSYS     	 Fuel Systems Solutions Inc. 
FSZ      	First Trust Switzerland AlphaDEX ETF
FT       	Franklin Universal Trust
FTA      	First Trust Large Cap Value Opportunities AlphaDEX Fund ETF
FTC      	First Trust Large Cap Growth Opportunities AlphaDEX Fund ETF
FTE      	France Telecom
FTEK     	 Fuel Tech Inc. 
FTF      	Franklin Templeton Limited Duration Income Trust
FTI      	 FMC Technologies Inc. 
FTK      	 Flotek Industries Inc. 
FTNT     	 Fortinet Inc. 
FTR      	Frontier Communications Corporation
FTT      	Federated Enhanced Treasury Income Fund
FTW      	First Trust Taiwan AlphaDEX ETF
FTY      	iShares FTSE NAREIT Real Estate 50 Index Fund ETF
FU       	FAB Universal Corp.
FUBC     	 1st United Bancorp Inc. (FL) 
FUL      	H. B. Fuller Company
FULL     	Full Circle Capital Corporation
FULT     	Fulton Financial Corporation
FUN      	 Cedar Fair L.P. 
FUNC     	First United Corporation
FUND     	 Royce Focus Trust Inc. 
FUR      	Winthrop Realty Trust
FUR^D    	Winthrop Realty Trust
FURX     	 Furiex Pharmaceuticals Inc. 
FVD      	First Trust VL Dividend ETF
FVE      	 Five Star Quality Care Inc. 
FVI      	First Trust VL Equity Allocation ETF
FVL      	First Trust Value Line 100 Fund ETF
FWDB     	AdvisorShares Madrona Forward Global Bond ETF
FWDD     	AdvisorShares Madrona Forward Domestic ETF
FWDI     	AdvisorShares Madrona Forward International ETF
FWLT     	Foster Wheeler AG.
FWRD     	Forward Air Corporation
FWV      	 First West Virginia Bancorp Inc. 
FXA      	Guggenheim (Rydex) CurrencyShares Australian Dollar Trust ETF
GFNCL    	General Finance Corporation
FXB      	Guggenheim (Rydex) CurrencyShares British Pound Sterling Trust ETF
FXC      	Guggenheim (Rydex) CurrencyShares Canadian Dollar Trust ETF
FXCB     	 Fox Chase Bancorp Inc. 
FXCH     	Guggenheim (Rydex) CurrencyShares Chinese Renminbi Trust ETF
FXCM     	FXCM Inc.
FXD      	First Trust Cons. Discret. AlphaDEX ETF
FXE      	Guggenheim (Rydex) CurrencyShares Euro Trust ETF
FXEN     	 FX Energy Inc. 
FXF      	Guggenheim (Rydex) CurrencyShares Swiss Franc Trust ETF
FXG      	First Trust Cons. Staples AlphaDEX ETF
FXH      	First Trust Health Care AlphaDEX ETF
FXI      	iShares FTSE/Xinhua China 25 Index Fund ETF
FXL      	First Trust Technology AlphaDEX ETF
FXN      	First Trust Energy AlphaDEX Fund ETF
FXO      	First Trust Financials AlphaDEX ETF
FXP      	ProShares UltraShort FTSE China 25 ETF
FXR      	First Trust Industrials AlphaDEX ETF
FXS      	Guggenheim (Rydex) CurrencyShares Swedish Krona Trust ETF
FXSG     	Guggenheim (Rydex) CurrencyShares Singapore Dollar Trust ETF
FXU      	First Trust Utilities AlphaDEX Fund ETF
FXY      	Guggenheim (Rydex) CurrencyShares Japanese Yen Trust ETF
FXZ      	First Trust Materials AlphaDEX Fund ETF
FYC      	First Trust Small Cap Growth AlphaDEX ETF
FYT      	First Trust Small Cap Value AlphaDEX ETF
FYX      	First Trust Small Cap Core AlphaDEX ETF
G        	Genpact Limited
GA       	Giant Interactive Group Inc
GAB      	 Gabelli Equity Trust Inc. (The) 
GABC     	 German American Bancorp Inc. 
GAB^D    	 Gabelli Equity Trust Inc. (The) 
GAB^G    	 Gabelli Equity Trust Inc. (The) 
GAB^H    	 Gabelli Equity Trust Inc. (The) 
GAF      	SPDR S&P Emerging Middle East & Africa ETF
GAGA     	Le Gaga Holdings Limited
GAI      	Global-Tech Advanced Innovations Inc.
GAIA     	 Gaiam Inc. 
GAIN     	Gladstone Investment Corporation
GAINP    	Gladstone Investment Corporation
GAL      	SPDR SSgA Global Allocation ETF
GALE     	 Galena Biopharma Inc. 
GALT     	Galectin Therapeutics Inc.
GALTU    	Galectin Therapeutics Inc.
GALTW    	Galectin Therapeutics Inc.
GAM      	 General American Investors Inc. 
GAM^B    	 General American Investors Inc. 
GAME     	Shanda Games Limited
GARS     	Garrison Capital Inc.
GAS      	 AGL Resources Inc. 
GASL     	Direxion Daily Natural Gas Related Bull 2x Shares ETF
GASS     	 StealthGas Inc. 
GASX     	Direxion Daily Natural Gas Related Bear 2x Shares ETF
GAT      	Georgia Power Company
GB       	 Greatbatch Inc. 
GBAB     	Guggenheim Build America Bonds Managed Duration Trust
GBCI     	 Glacier Bancorp Inc. 
GBDC     	 Golub Capital BDC Inc. 
GBF      	iShares Barclays Government/Credit Bond Fund ETF
GBL      	 Gamco Investors Inc. 
GBLI     	Global Indemnity plc
GBNK     	Guaranty Bancorp
GBR      	 New Concept Energy Inc 
GBX      	 Greenbrier Companies Inc. (The) 
GCA      	 Global Cash Access Holdings Inc. 
GCAP     	 GAIN Capital Holdings Inc. 
GCBC     	 Greene County Bancorp Inc. 
GCC      	GreenHaven Continuous Commodity Index Fund ETF
GCFB     	Granite City Food And Brewery Ltd.
GCH      	 Greater China Fund Inc. 
GCI      	 Gannett Co. Inc. 
GCO      	Genesco Inc.
GCOM     	Globecomm Systems Inc.
GCV      	 Gabelli Convertible and Income Securities Fund Inc. (The) 
GCV^B    	 Gabelli Convertible and Income Securities Fund Inc. (The) 
GCVRZ    	Sanofi
GD       	General Dynamics Corporation
GDAY     	ProShares Ultra Australian Dollar
GDF      	 Western Asset Global Partners Income Fund Inc. 
GDI      	 Gardner Denver Inc. 
GDL      	The GDL Fund
GDL^B    	The GDL Fund
GDO      	Western Asset Global Corporate Defined Opportunity Fund Inc.
GDOT     	Green Dot Corporation
GDP      	Goodrich Petroleum Corporation
GDV      	Gabelli Dividend
GDV^A    	Gabelli Dividend
GDV^D    	Gabelli Dividend
GDX      	Market Vectors TR Gold Miners ETF
GDXJ     	Market Vectors Junior Gold Miners ETF
GE       	General Electric Company
GE^A     	General Electric Company
GEB      	General Electric Company
GEF      	Greif Bros. Corporation
GEF/B    	Greif Bros. Corporation
GEH      	General Electric Capital Corporation
GEL      	 Genesis Energy L.P. 
GEMS     	PureFunds Diamond/Gemstone ETF
GENC     	Gencor Industries Inc.
GENE     	Genetic Technologies Ltd
GENT     	Gentium SpA
GEO      	Geo Group Inc (The)
GEOS     	Geospace Technologies Corporation
GEQ      	Guggenheim Equal Weight Enhanced Equity Income Fund
GERJ     	Market Vectors Germany Small-Cap ETF
GERN     	Geron Corporation
GES      	 Guess? Inc. 
GEVA     	Synageva BioPharma Corp.
GEVO     	 Gevo Inc. 
GEX      	Market Vectors Global Alternative Energy ETF
GF       	 New Germany Fund Inc. (The) 
GFA      	Gafisa SA
GFED     	 Guaranty Federal Bancshares Inc. 
GFF      	Griffon Corporation
GFI      	Gold Fields Limited
GFIG     	GFI Group Inc.
GFN      	General Finance Corporation
GFNCZ    	General Finance Corporation
GFY      	Western Asset Variable Rate Strategic Fund Inc.
GG       	Goldcorp Inc.
GGAL     	Grupo Financiero Galicia S.A.
GGB      	Gerdau S.A.
GGE      	Guggenheim Enhanced Equity Strategy Fund
GGEM     	EGShares Consumer Goods GEMS ETF
GGG      	Graco Inc.
GGGG     	Globak X Pure Gold Miners ETF
GGN      	 GAMCO Global Gold Natural Reources & Income Trust by Gabelli 
GGN^A    	 GAMCO Global Gold Natural Reources & Income Trust by Gabelli 
GGOV     	ProShares German Sovereign/Sub-Sovereign ETF
GGP      	 General Growth Properties Inc. 
GGP^A    	 General Growth Properties Inc. 
GGR      	GeoGlobal Resources Inc.
GGS      	 Global Geophysical Services Inc. 
GGT      	Gabelli Multi-Media Trust Inc. (The)
GGT^B    	Gabelli Multi-Media Trust Inc. (The)
GHDX     	 Genomic Health Inc. 
GHI      	 Global High Income Dollar Fund Inc. 
GHL      	 Greenhill & Co. Inc. 
GHM      	Graham Corporation
GHY      	 Prudential Global Short Duration High Yield Fund Inc. 
GHYG     	iShares Global High Yield Corporate Bond ETF
GIB      	 CGI Group Inc. 
GIFI     	 Gulf Island Fabrication Inc. 
GIG      	 GigOptix Inc. 
GIGA     	Giga-tronics Incorporated
GIGM     	GigaMedia Limited
GII      	SPDR FTSE/Macquarie Global Infrastructure 100 ETF
GIII     	 G-III Apparel Group Ltd. 
GIL      	 Gildan Activewear Inc. 
GILD     	 Gilead Sciences Inc. 
GILT     	Gilat Satellite Networks Ltd.
GIM      	 Templeton Global Income Fund Inc. 
GIS      	 General Mills Inc. 
GIVE     	AdvisorShares Global Echo ETF
GIVN     	Given Imaging Ltd.
GIY      	Guggenheim Enhanced Core Bond ETF
GJD      	SYNTHETIC FIXED INCOME SECURITIES INC
GJH      	SYNTHETIC FIXED INCOME SECURITIES INC
GJJ      	SYNTHETIC FIXED INCOME SECURITIES INC
GJK      	SYNTHETIC FIXED INCOME SECURITIES INC
GJM      	GMAC LLC
GJO      	SYNTHETIC FIXED INCOME SECURITIES INC
GJP      	 Synthetic Fixed-Income Securities Inc. 
GJR      	 Synthetic Fixed-Income Securities Inc. 
GJS      	SYNTHETIC FIXED INCOME SECURITIES INC
GJT      	 Synthetic Fixed-Income Securities Inc. 
GJV      	 Synthetic Fixed-Income Securities Inc. 
GK       	 G&K Services Inc. 
GKK      	Gramercy Capital Corp
GKK^A    	Gramercy Capital Corp
GKM      	GMAC LLC
GKNT     	 Geeknet Inc. 
GLAD     	Gladstone Capital Corporation
GLADP    	Gladstone Capital Corporation
GLBS     	Globus Maritime Limited
GLBZ     	Glen Burnie Bancorp
GLCB     	WisdomTree Global Corporate Bond ETF
GLCH     	 Gleacher & Company Inc. 
GLD      	SPDR Gold Shares ETF
GLDC     	 Golden Enterprises Inc. 
GLDD     	Great Lakes Dredge & Dock Corporation
GLDI     	Credit Suisse Gold Shares Covered Calls ETN
GLDX     	Global X Gold Explorers ETF
GLF      	 GulfMark Offshore Inc. 
GLL      	ProShares UltraShort Gold ETF
GLNG     	Golar LNG Limited
GLO      	Clough Global Opportunities Fund
GLOG     	GasLog Ltd.
GLOW     	 Glowpoint Inc. 
GLP      	Global Partners LP
GLPW     	Global Power Equipment Group Inc
GLQ      	Clough Global Equity Fund
GLRE     	 Greenlight Reinsurance Ltd. 
GLT      	Glatfelter
GLTR     	ETFS Physical Precious Metals Basket Shares ETF
GLU      	Gabelli Global Utility
GLUU     	Glu Mobile Inc.
GLV      	Clough Global Allocation Fund
GLW      	Corning Incorporated
GM       	General Motors Company
GMA      	GMAC LLC
GMAN     	 Gordmans Stores Inc. 
GM^B     	General Motors Company
GMCR     	 Green Mountain Coffee Roasters Inc. 
GME      	Gamestop Corporation
GMED     	 Globus Medical Inc. 
GMETP    	 GeoMet Inc. 
GMF      	SPDR S&P Emerging Asia Pacific ETF
GMFS     	SPDR S&P Small Cap Em Asia Pacific ETF
GMK      	 GRUMA S.A. de C.V. 
GML      	SPDR S&P Emerging Latin America ETF
GMLP     	Golar LNG Partners LP
GMM      	SPDR S&P Emerging Markets ETF
GMMB     	Columbia Intermediate Municipal Bond Strategy ETF
GMO      	 General Moly Inc 
GMT      	GATX Corporation
GMT^     	GATX Corporation
GMTB     	Columbia Core Bond Strategy ETF
GM/WS/A  	General Motors Company
GNAT     	WisdomTree Global Natural Resources Fund ETF
GNC      	 GNC Holdings Inc. 
GNCMA    	 General Communication Inc. 
GNE      	Genie Energy Ltd.
GNE^A    	Genie Energy Ltd.
GNI      	Great Northern Iron Ore Properties
GNK      	Genco Shipping & Trading Limited
GNMA     	iShares Barclays GNMA Bond ETF
GNMK     	 GenMark Diagnostics Inc. 
GNR      	SPDR S&P Global Natural Resources ETF
GNRC     	Generac Holdlings Inc.
GNT      	 GAMCO Natural Resources Gold & Income Tust by Gabelli 
GNTX     	Gentex Corporation
GNVC     	 GenVec Inc. 
GNW      	Genworth Financial Inc
GOF      	Guggenheim Strategic Opportunities Fund
GOL      	Gol Linhas Aereas Inteligentes S.A.
GOLD     	Randgold Resources Limited
GOM      	GMAC LLC
GOOD     	Gladstone Commercial Corporation
GOODN    	Gladstone Commercial Corporation
GOODO    	Gladstone Commercial Corporation
GOODP    	Gladstone Commercial Corporation
GOOG     	Google Inc.
GORO     	Gold Resource Corporation
GOV      	Government Properties Income Trust
GOVT     	iShares Barclays U.S. Treasury Bond ETF
GPC      	Genuine Parts Company
GPE^A    	Georgia Power Company
GPI      	 Group 1 Automotive Inc. 
GPIC     	Gaming Partners International Corporation
GPK      	Graphic Packaging Holding Company
GPL      	Great Panther Silver Limited
GPM      	Guggenheim Enhanced Equity Income Fund
GPN      	Global Payments Inc.
GPOR     	Gulfport Energy Corporation
GPR      	GeoPetro Resources Co
GPRC     	Guanwei Recycling Corp.
GPRE     	 Green Plains Renewable Energy Inc. 
GPS      	 Gap Inc. (The) 
GPX      	GP Strategies Corporation
GRA      	W.R. Grace & Co.
GRC      	Gorman-Rupp Company (The)
GREK     	Global X FTSE Greece 20 ETF
GRES     	IndexIQ ARB Global Resources ETF
GRF      	 Eagle Capital Growth Fund Inc. 
GRFS     	 Grifols S.A. 
GRH      	GreenHunter Energy Inc
GRH^C    	GreenHunter Energy Inc
GRI      	Cohen & Steers Global Realty Majors ETF
GRID     	First Trust NASDAQ Clean Edge Smart Grid Infrastructure Index 
GRIF     	 Griffin Land & Nurseries Inc. 
GRMN     	Garmin Ltd.
GRO      	Agria Corporation
GROW     	 U.S. Global Investors Inc. 
GRPN     	 Groupon Inc. 
GRP/U    	Granite Real Estate Inc.
GRR      	 Asia Tigers Fund Inc. (The) 
GRT      	Glimcher Realty Trust
GRT^G    	Glimcher Realty Trust
GRT^H    	Glimcher Realty Trust
GRT^I    	Glimcher Realty Trust
GRVY     	 GRAVITY Co. Ltd. 
GRX      	The Gabelli Healthcare & Wellness Trust
GRX^A    	The Gabelli Healthcare & Wellness Trust
GS       	 Goldman Sachs Group Inc. (The) 
GS^A     	 Goldman Sachs Group Inc. (The) 
GSAX     	ALPS | GS MOMENTUM BUILDER Asia ex-Japan Equities and US Treasuries Index ETF
GSB      	 GlobalSCAPE Inc. 
GS^B     	 Goldman Sachs Group Inc. (The) 
GSBC     	 Great Southern Bancorp Inc. 
GS^C     	 Goldman Sachs Group Inc. (The) 
GS^D     	 Goldman Sachs Group Inc. (The) 
GSE      	 GSE Holding Inc. 
GSF      	 Goldman Sachs Group Inc. (The) 
GSG      	iShares GSCI Commodity-Indexed Trust Fund ETF
GSGO     	ALPS | GS MOMENTUM BUILDER Growth Markets Equities and US Treasuries Index ETF
GSH      	Guangshen Railway Company Limited
GSI      	 General Steel Holdings Inc. 
GS^I     	 Goldman Sachs Group Inc. (The) 
GSIG     	 GSI Group Inc. 
GSIT     	 GSI Technology Inc. 
GSJ      	 Goldman Sachs Group Inc. (The) 
GSJK     	 Compressco Partners L.P. 
GSK      	GlaxoSmithKline PLC
GSL      	 Global Ship Lease Inc. 
GSM      	Globe Specialty Metals Inc.
GSMA     	ALPS | GS MOMENTUM BUILDER Multi-Asset Index ETF
GSOL     	Global Sources Ltd.
GSRA     	ALPS | GS Risk-Adjusted Return U.S. Large Cap index ETF
GSS      	 Golden Star Resources Ltd.
GST      	Gastar Exploration
GST^A    	Gastar Exploration
GSV      	Gold Standard Ventures Corporation
GSVC     	GSV Capital Corp
GSX      	GASCO ENERGY INC
GSY      	Guggenheim Enhanced Ultra-Short Bond ETF
GT       	The Goodyear Tire & Rubber Company
GTAA     	AdvisorShares Cambria Global Tactical ETF
GTAT     	 GT Advanced Technologies Inc. 
GTE      	Gran Tierra Energy Inc.
GTI      	GrafTech International Ltd
GTIM     	Good Times Restaurants Inc.
GTIP     	iShares Global Inflation-Linked
GTIV     	 Gentiva Health Services Inc. 
GTLS     	 Chart Industries Inc. 
GTN      	 Gray Television Inc. 
GTN/A    	 Gray Television Inc. 
GTPPP    	The Goodyear Tire & Rubber Company
GTS      	Triple-S Management Corporation
GTU      	Central Gold Trust
GTWN     	 Georgetown Bancorp Inc. 
GTXI     	 GTx Inc. 
GTY      	Getty Realty Corporation
GUA      	Gulf Power Company
GUID     	 Guidance Software Inc. 
GUL      	Gulf Power Company
GULF     	WisdomTree Middle East Dividend ETF
GUNR     	FlexShares Morningstar Global Upstream Natural Resources Index Fund ETF
GUR      	SPDR S&P Emerging Europe ETF
GURE     	 Gulf Resources Inc. 
GURU     	Global X Top Guru Holdings Index ETF
GUT      	Gabelli Utility Trust (The)
GUT^A    	Gabelli Utility Trust (The)
GV       	Goldfield Corporation (The)
GVA      	Granite Construction Incorporated
GVI      	iShares Barclays Intermediate Government/Credit Bond Fund ETF
GVP      	 GSE Systems Inc. 
GVT      	Columbia Concentrated Large Cap Value Strategy ETF
GWAY     	 Greenway Medical Technologies Inc. 
GWL      	SPDR S&P World ex-US ETF
GWR      	 Genesee & Wyoming Inc. 
GWRE     	 Guidewire Software Inc. 
GWRU     	 Genesee & Wyoming Inc. 
GWW      	 W.W. Grainger Inc. 
GWX      	SPDR S&P International Small Cap ETF
GXC      	SPDR S&P China ETF
GXF      	Global X FTSE Nordic 30 ETF
GXG      	Global X Interbolsa FTSE Colombia 20 ETF
GXP      	Great Plains Energy Inc
GXP^A    	Great Plains Energy Inc
GXP^D    	Great Plains Energy Inc
GXP^E    	Great Plains Energy Inc
GY       	GenCorp Inc.
GYA      	Corporate Asset Backed Corp CABCO
GYB      	CABCO Series 2004-101 Trust
GYC      	Corporate Asset Backed Corp CABCO
GYLD     	Arrow Dow Jones Global Yield ETF
GYRO     	 Gyrodyne Company of America Inc. 
GZT      	Gazit-Globe Ltd.
H        	Hyatt Hotels Corporation
HA       	 Hawaiian Holdings Inc. 
HAE      	Haemonetics Corporation
HAFC     	Hanmi Financial Corporation
HAIN     	 The Hain Celestial Group Inc. 
HAL      	Halliburton Company
HALL     	 Hallmark Financial Services Inc. 
HALO     	 Halozyme Therapeutics Inc. 
HAO      	Guggenheim China Small Cap ETF
HAP      	Market Vectors RVE Hard Assets Prod ETF
HAR      	 Harman International Industries Incorporated 
HAS      	 Hasbro Inc. 
HAST     	 Hastings Entertainment Inc. 
HAUP     	 Hauppauge Digital Inc. 
HAV      	 Helios Advantage Income Fund Inc. 
HAYN     	 Haynes International Inc. 
HBA^D    	 HSBC USA Inc. 
HBA^F    	 HSBC USA Inc. 
HBA^G    	 HSBC USA Inc. 
HBA^H    	 HSBC USA Inc. 
HBAN     	Huntington Bancshares Incorporated
HBANP    	Huntington Bancshares Incorporated
HBA^Z    	 HSBC USA Inc. 
HBC      	HSBC Holdings plc
HBC^A    	HSBC Holdings plc
HBC^/CL  	HSBC Holdings plc
HBCP     	 Home Bancorp Inc. 
HBHC     	Hancock Holding Company
HBI      	Hanesbrands Inc.
HBIO     	 Harvard Bioscience Inc. 
HBK      	 Hamilton Bancorp Inc. 
HBM      	HudBay Minerals Inc
HBMD     	 Howard Bancorp Inc. 
HBNC     	Horizon Bancorp (IN)
HBNK     	 Hampden Bancorp Inc. 
HBOS     	Heritage Financial Group
HCA      	 HCA Holdings Inc. 
HCBK     	 Hudson City Bancorp Inc. 
HCC      	 HCC Insurance Holdings Inc. 
HCCI     	 Heritage-Crystal Clean Inc. 
HCI      	 Homeowners Choice Inc. 
HCIIP    	 Homeowners Choice Inc. 
HCJ      	 Homeowners Choice Inc. 
HCKT     	 The Hackett Group Inc. 
HCLP     	Hi-Crush Partners LP
HCN      	 Health Care REIT Inc. 
HCN^I    	 Health Care REIT Inc. 
HCN^J    	 Health Care REIT Inc. 
HCOM     	 Hawaiian Telcom Holdco Inc. 
HCP      	 HCP Inc. 
HCS      	HSBC Holdings plc
HCS^B    	HSBC Holdings plc
HCSG     	 Healthcare Services Group Inc. 
HD       	 Home Depot Inc. (The) 
HDB      	HDFC Bank Limited
HDG      	ProShares Hedge Replication ETF
HDGE     	AdvisorShares Active Bear ETF
HDNG     	 Hardinge Inc. 
HDSN     	 Hudson Technologies Inc. 
HDV      	iShares High Dividend Equity ETF
HDY      	HyperDynamics Corporation
HE       	 Hawaiian Electric Industries Inc. 
HEB      	 Hemispherx BioPharma Inc. 
HECO     	Huntington EcoLogical Strategy ETF
HEDJ     	WisdomTree International Hedged Equity Fund ETF
HEES     	 H&E Equipment Services Inc. 
HEI      	Heico Corporation
HEI/A    	Heico Corporation
HEK      	Heckmann Corporation
HELE     	Helen of Troy Limited
HEOP     	Heritage Oaks Bancorp
HEP      	 Holly Energy Partners L.P. 
HEQ      	John Hancock Hedged Equity & Income Fund
HERO     	 Hercules Offshore Inc. 
HES      	Hess Corporation
HE^U     	 Hawaiian Electric Industries Inc. 
HF       	 HFF Inc. 
HFBC     	 HopFed Bancorp Inc. 
HFBL     	 Home Federal Bancorp Inc. of Louisiana 
HFC      	HollyFrontier Corporation
HFFC     	HF Financial Corp.
HFWA     	Heritage Financial Corporation
HGEM     	EGShares Health Care GEMS ETF
HGG      	 HHGregg Inc. 
HGH      	 Hartford Financial Services Group Inc. (The) 
HGI      	Guggenheim International Multi-Asset Income ETF
HGR      	 Hanger Inc. 
HGSH     	 China HGS Real Estate Inc. 
HGT      	Hugoton Royalty Trust
HH       	 Hooper Holmes Inc. 
HHC      	Howard Hughes Corporation (The)
HHS      	 Harte-Hanks Inc. 
HHY      	Helios High Yield Fund
HI       	Hillenbrand Inc
HIBB     	 Hibbett Sports Inc. 
HIF      	Western Asset High Income Fund Inc.
HIFS     	Hingham Institution for Savings
HIG      	 Hartford Financial Services Group Inc. (The) 
HIG/WS   	 Hartford Financial Services Group Inc. (The) 
HIH      	 Helios High Income Fund Inc 
HIHO     	Highway Holdings Limited
HII      	 Huntington Ingalls Industries Inc. 
HIIQ     	 Health Insurance Innovations Inc. 
HIL      	 Hill International Inc. 
HILL     	Dot Hill Systems Corporation
HILO     	EGShares Low Volatility Emerging Markets Dividend ETF
HIMX     	 Himax Technologies Inc. 
HIO      	 Western Asset High Income Opportunity Fund Inc. 
HIS      	CIGNA High Income Shares
HITK     	 Hi-Tech Pharmacal Co. Inc. 
HITT     	Hittite Microwave Corporation
HIW      	 Highwoods Properties Inc. 
HIX      	Western Asset High Income Fund II Inc.
HJJ      	MS Structured Asset Corp SATURNS Goldman Sachs
HJL      	MS Structured Asset Corp Saturns GE Cap Corp Series 2002-14
HJN      	MS Structured Asset Corp Saturns GE Cap Corp Series 2002-14
HJR      	MS Structured Asset Corp.
HJV      	MS Structured Asset Corp Saturns GE Cap Corp Series 2002-14
HK       	Halcon Resources Corporation
HKTV     	Hong Kong Television Network Limited
HL       	Hecla Mining Company
HL^B     	Hecla Mining Company
HLF      	Herbalife LTD.
HLIT     	Harmonic Inc.
HLM^     	Hillman Group Capital Trust
HLS      	HealthSouth Corporation
HLSS     	 Home Loan Servicing Solutions Ltd. 
HLX      	 Helix Energy Solutions Group Inc. 
HMA      	 Health Management Associates Inc. 
HMC      	 Honda Motor Company Ltd. 
HME      	 Home Properties Inc. 
HMG      	 HMG/Courtland Properties Inc. 
HMH      	 Helios Multi-Sector High Income Fund Inc. 
HMIN     	Home Inns & Hotels Management Inc.
HMN      	Horace Mann Educators Corporation
HMNF     	 HMN Financial Inc. 
HMNY     	Helios and Matheson Information Technology Inc
HMPR     	Hampton Roads Bankshares Inc
HMST     	 HomeStreet Inc. 
HMSY     	HMS Holdings Corp
HMY      	Harmony Gold Mining Company Limited
HNH      	Handy & Harman Ltd.
HNI      	HNI Corporation
HNP      	 Huaneng Power International Inc. 
HNR      	Harvest Natural Resources Inc
HNRG     	Hallador Energy Company
HNSN     	 Hansen Medical Inc. 
HNT      	Health Net Inc.
HNW      	Pioneer Diversified High Income Trust
HNZ      	H.J. Heinz Company
HOFT     	Hooker Furniture Corporation
HOG      	 Harley-Davidson Inc. 
HOGS     	Zhongpin Inc.
HOLI     	 Hollysys Automation Technologies Ltd. 
HOLL     	Hollywood Media Corp.
HOLX     	 Hologic Inc. 
HOMB     	 Home BancShares Inc. 
HOME     	 Home Federal Bancorp Inc. 
HON      	Honeywell International Inc.
HOS      	Hornbeck Offshore Services
HOT      	 Starwood Hotels & Resorts Worldwide Inc. 
HOTR     	 Chanticleer Holdings Inc. 
HOTRW    	 Chanticleer Holdings Inc. 
HOTT     	 Hot Topic Inc. 
HOV      	Hovnanian Enterprises Inc
HOVNP    	Hovnanian Enterprises Inc
HOVU     	Hovnanian Enterprises Inc
HP       	 Helmerich & Payne Inc. 
HPAC     	Hyde Park Acquisition Corp. II
HPCCP    	 Huntington Preferred Capital Inc. 
HPF      	John Hancock Pfd Income Fund II
HPI      	John Hancock Preferred Income Fund
HPJ      	Hong Kong Highpower Technology
HPOL     	 Harris Interactive Inc. 
HPP      	 Hudson Pacific Properties Inc. 
HPP^B    	 Hudson Pacific Properties Inc. 
HPQ      	Hewlett-Packard Company
HPS      	John Hancock Preferred Income Fund III
HPT      	Hospitality Properites Trust
HPT^C    	Hospitality Properites Trust
HPT^D    	Hospitality Properites Trust
HPTX     	 Hyperion Therapeutics Inc. 
HPY      	 Heartland Payment Systems Inc. 
HQH      	H&Q Healthcare Investors
HQL      	H&Q Life Sciences Investors
HR       	Healthcare Realty Trust Incorporated
HRB      	 H&R Block Inc. 
HRC      	Hill-Rom Holdings Inc
HRG      	Harbinger Group Inc
HRL      	Hormel Foods Corporation
HRS      	Harris Corporation
HRT      	Arrhythmia Research Technology Inc.
HRZN     	Horizon Technology Finance Corporation
HSA      	 Helios Strategic Income Fd Inc 
HSBC^B   	Household Finance Corp
HSC      	Harsco Corporation
HSH      	Hillshire Brands Company (The)
HSIC     	 Henry Schein Inc. 
HSII     	 Heidrick & Struggles International Inc. 
HSKA     	Heska Corporation
HSNI     	 HSN Inc. 
HSOL     	 Hanwha SolarOne Co. Ltd. 
HSON     	 Hudson Global Inc. 
HSP      	Hospira Inc
HST      	 Host Hotels & Resorts Inc. 
HSTM     	 HealthStream Inc. 
HSY      	Hershey Company (The)
HT       	Hersha Hospitality Trust
HTA      	 Healthcare Trust of America Inc. 
HT^B     	Hersha Hospitality Trust
HTBI     	 HomeTrust Bancshares Inc. 
HTBK     	Heritage Commerce Corp
HT^C     	Hersha Hospitality Trust
HTCH     	Hutchinson Technology Incorporated
HTCO     	Hickory Tech Corporation
HTD      	John Hancock Tax Advantaged Dividend Income Fund
HTF      	Horizon Technology Finance Corporation
HTGC     	 Hercules Technology Growth Capital Inc. 
HTGY     	 Hercules Technology Growth Capital Inc. 
HTGZ     	 Hercules Technology Growth Capital Inc. 
HTH      	Hilltop Holdings Inc.
HTHT     	 China Lodging Group Limited 
HTLD     	 Heartland Express Inc. 
HTLF     	 Heartland Financial USA Inc. 
HTM      	U.S. Geothermal Inc.
HTR      	Brookfield Total Return Fund Inc.
HTS      	Hatteras Financial Corp
HTS^A    	Hatteras Financial Corp
HTSI     	 Harris Teeter Supermarkets Inc. 
HTWO     	HF2 Financial Management Inc.
HTWR     	 Heartware International Inc. 
HTY      	John Hancock Tax-Advantaged Global Shareholder Yield Fund
HTZ      	 Hertz Global Holdings Inc 
HUB/A    	Hubbell Inc A
HUB/B    	Hubbell Inc A
HUBG     	 Hub Group Inc. 
HUM      	Humana Inc.
HUN      	Huntsman Corporation
HURC     	 Hurco Companies Inc. 
HURN     	Huron Consulting Group Inc.
HUSA     	Houston American Energy Corporation
HUSE     	Huntington US Equity Rotation Strat ETF
HVB      	Hudson Valley Holding Corp.
HVPW     	ALPS US Equity High Volatility Put Write ETF
HVT      	 Haverty Furniture Companies Inc. 
HVT/A    	 Haverty Furniture Companies Inc. 
HW       	Headwaters Incorporated
HWAY     	 Healthways Inc. 
HWBK     	 Hawthorn Bancshares Inc. 
HWCC     	Houston Wire & Cable Company
HWG      	Hallwood Group Incorporated
HWKN     	 Hawkins Inc. 
HXL      	Hexcel Corporation
HXM      	Desarrolladora Homex
HY       	 Hyster-Yale Materials Handling Inc. 
HYB      	 New America High Income Fund Inc. (The) 
HYD      	Market Vectors High Yield Municipal Index ETF
HYEM     	Market Vectors Emer Mkts Hi Yld Bond ETF
HYF      	 Managed High Yield Plus Fund Inc. 
HYG      	iShares iBoxx $ HY Corp Bond Fund ETF
HYGS     	Hydrogenics Corporation
HYI      	Western Asset High Yield Defined Opportunity Fund Inc.
HYK      	Lehman ABS Corporation
HYL      	Lehman ABS Corporation
HYLD     	AdvisorShares Peritus High Yield ETF
HYLS     	First Trust Exchange-Traded Fund IV First Trust High Yield Lon
HYMB     	SPDR Nuveen S&P High Yield Municipal Bond ETF
HYS      	PIMCO 0-5 Year High Yield Corporate Bond Index Fund ETF
HYT      	Blackrock Corporate High Yield Fund VI Inc
HYV      	Blackrock Corporate High Yield Fund V Inc
HYXU     	iShares Global ex USD High Yield Corp Bd ETF
HZNP     	 Horizon Pharma Inc. 
HZO      	 MarineMax Inc. 
IACI     	IAC/InterActiveCorp
IAE      	ING Asia Pacific High Dividend Equity Income Fund
IAF      	Aberdeen Australia Equity Fund Inc
IAG      	Iamgold Corporation
IAI      	iShares Dow Jones U.S. Broker-Dealers Index Fund ETF
IAK      	iShares Dow Jones U.S. Insurance Index Fund ETF
IART     	Integra LifeSciences Holdings Corporation
IAT      	iShares Dow Jones U.S. Regional Banks Index Fund ETF
IAU      	iShares COMEX Gold Trust ETF
IBA      	 Industrias Bachoco S.A. de C.V. 
IBB      	iShares Nasdaq Biotechnology ETF
IBCA     	Intervest Bancshares Corp.
IBCP     	Independent Bank Corporation
IBCPO    	Independent Bank Corporation
IBIO     	 iBio Inc. 
IBKC     	IBERIABANK Corporation
IBKR     	 Interactive Brokers Group Inc. 
IBM      	International Business Machines Corporation
IBN      	ICICI Bank Limited
IBND     	SPDR Barclays Capital International Corporate Bond ETF
IBO      	IBO (Listing Market - NYSE Amex Network B F)
IBOC     	International Bancshares Corporation
IBTX     	 Independent Bank Group Inc 
ICA      	Empresas Ica Soc Contrladora
ICAD     	icad inc.
ICB      	 MS Income Securities Inc. 
ICCC     	ImmuCell Corporation
ICE      	 IntercontinentalExchange Inc. 
ICF      	iShares Cohen & Steers Realty Major ETF
ICFI     	 ICF International Inc. 
ICGE     	 ICG Group Inc. 
ICH      	 Investors Capital Holdings Ltd. 
ICLN     	iShares S&P Global Clean Energy Index Fund
ICLR     	ICON plc
ICN      	WisdomTree Dreyfus Indian Rupee Fund ETF
ICON     	 Iconix Brand Group Inc. 
ICPT     	 Intercept Pharmaceuticals Inc. 
ICUI     	 ICU Medical Inc. 
IDA      	 IDACORP Inc. 
IDCC     	 InterDigital Inc. 
IDE      	ING Infrastructure Industrial and Material Fund
IDG      	 ING Group N.V. 
IDHB     	PowerShares S&P Intl Dev High Beta ETF
IDHQ     	PowerShares Dynamic Developed International Opportunities Portfolio ETF
IDI      	 Tiger Media Inc. 
IDI/WS   	 Tiger Media Inc. 
IDIX     	 Idenix Pharmaceuticals Inc. 
IDLV     	PowerShares S&P Intl Dev Low Volatility ETF
IDN      	 Intellicheck Mobilisa Inc. 
IDRA     	 Idera Pharmaceuticals Inc. 
IDSA     	 Industrial Services of America Inc. 
IDSY     	 I.D. Systems Inc. 
IDT      	IDT Corporation
IDTI     	 Integrated Device Technology Inc. 
IDU      	iShares Dow Jones U.S. Utilities Index Fund ETF
IDV      	iShares Dow Jones EPAC Select Dividend ETF
IDX      	Market Vectors Indonesia Index ETF
IDXJ     	Market Vectors Indonesia Small-Cap ETF
IDXX     	 IDEXX Laboratories Inc. 
IEC      	IEC Electronics Corp.
IEF      	iShares Barclays 7-10 Year Treasury Bond Fund ETF
IEFA     	iShares Core MSCI EAFE ETF
IEI      	iShares Barclays 3-7 Year Treasury Bond Fund ETF
IEMG     	iShares Core MSCI Emerging Markets ETF
IEO      	iShares Dow Jones U.S. Oil & Gas Exploration & Production Index Fund ETF
IEP      	Icahn Enterprises L.P.
IESC     	 Integrated Electrical Services Inc. 
IEV      	iShares S&P Europe 350 Index Fund ETF
IEX      	IDEX Corporation
IEZ      	iShares Dow Jones U.S. Oil Equipment & Services Index Fund ETF
IF       	 Aberdeen Indonesia Fund Inc. 
IFAS     	iShares FTSE EPRA/NAREIT Asia Index Fund
IFEU     	iShares FTSE EPRA/NAREIT Europe Index Fund
IFF      	 Internationa Flavors & Fragrances Inc. 
IFGL     	iShares FTSE EPRA/NAREIT Global Real Estate ex-U.S. Index Fund
IFMI     	 Institutional Financial Markets Inc. 
IFN      	 India Fund Inc. (The) 
IFNA     	iShares FTSE EPRA/NAREIT North America Index Fund
IFON     	InfoSonics Corp
IFSM     	iShares FTSE Developed Small Cap ex-North America Index Fund
IFT      	 Imperial Holdings Inc. 
IG       	 IGI Laboratories Inc. 
IGA      	ING Global Advantage and Premium Opportunity Fund
IGC      	India Globalization Capital Inc.
IGC/WS   	India Globalization Capital Inc.
IGD      	ING Global Equity Dividend and Premium Opportunity Fund
IGE      	iShares Goldman Sachs Natural Resources Index Fund ETF
IGEM     	EGShares Industrials GEMS ETF
IGF      	iShares S&P Global Infrastructure ETF
IGI      	Western Asset Investment Grade Defined Opportunity Trust Inc.
IGK      	 ING Group N.V. 
IGLD     	Internet Gold Golden Lines Ltd.
IGM      	iShares Goldman Sachs Technology Index Fund ETF
IGN      	iShares Goldman Sachs Network Index Fund ETF
IGOI     	 iGo Inc 
IGOV     	iShares S&P/Citigroup International Treasury Bond Fund
IGR      	CBRE Clarion Global Real Estate Income Fund
IGS      	ProShares Short Investment Grade Corporate ETF
IGT      	International Game Technology
IGTE     	iGATE Corporation
IGU      	ProShares Ultra Investment Grade Corporate ETF
IGV      	iShares Goldman Sachs Software Index Fund ETF
IHC      	Independence Holding Company
IHD      	ING Emerging Markets High Dividend Equity Fund
IHE      	iShares Dow Jones U.S. Pharmaceutical Index Fund ETF
IHF      	iShares Dow Jones U.S. Health Care Providers Index Fund ETF
IHG      	Intercontinental Hotels Group
IHI      	iShares Dow Jones U.S. Medical Devices Index Fund ETF
IHS      	IHS Inc.
IHT      	InnSuites Hospitality Trust
IHY      	Market Vectors Intl High Yield Bond ETF
IID      	ING International High Dividend Equity Income Fund
IIF      	 Morgan Stanley India Investment Fund Inc. 
III      	 Information Services Group Inc. 
IIIN     	 Insteel Industries Inc. 
IIJI     	 Internet Initiative Japan Inc. 
IILG     	 Interval Leisure Group Inc. 
IIM      	Invesco Value Municipal Income Trust
IIN      	IntriCon Corporation
IIT      	PT Indosat Tbk
IIVI     	II-VI Incorporated
IIZ^K    	SiM Internal Test 5
IJH      	iShares S&P MidCap 400 Index Fund ETF
IJJ      	iShares S&P MidCap 400 Value Index Fund ETF
IJK      	iShares S&P MidCap 400 Growth Index Fund ETF
IJR      	iShares S&P SmallCap 600 Index Fund ETF
IJS      	iShares S&P SmallCap 600 Values Index Fund ETF
IJT      	iShares S&P SmallCap 600 Growth Index Fund ETF
IKAN     	 Ikanos Communications Inc. 
IKNX     	Ikonics Corporation
IL       	 IntraLinks Holdings Inc. 
ILB      	PIMCO Global Adv Inf-Linked Bond Str ETF
ILF      	iShares Latin America 40 Index Fund ETF
ILMN     	 Illumina Inc. 
ILTB     	iShares Core Long-Term U.S. Bond ETF
IM       	Ingram Micro Inc.
IMAX     	Imax Corporation
IMCB     	Intermountain Community Bancorp
IMF      	Western Asset Inflation Management Fund Inc
IMGN     	 ImmunoGen Inc. 
IMH      	 Impac Mortgage Holdings Inc. 
IMI      	 Intermolecular Inc. 
IMKTA    	 Ingles Markets Incorporated 
IMMR     	Immersion Corporation
IMMU     	 Immunomedics Inc. 
IMMY     	 Imprimis Pharmaceuticals Inc. 
IMN      	Imation Corporation
IMO      	Imperial Oil Limited
IMOS     	ChipMOS TECHNOLOGIES (Bermuda) LTD.
IMPV     	 Imperva Inc. 
IMRS     	Imris Inc
IMUC     	 ImmunoCellular Therapeutics Ltd. 
IN       	 Intermec Inc. 
INAP     	Internap Network Services Corporation
INB      	 Cohen & Steers Global Income Builder Inc. 
INBK     	First Internet Bancorp
INCO     	EGShares India Consumer ETF
INCY     	Incyte Corporation
IND      	 ING Group N.V. 
INDA     	iShares MSCI India Index ETF
INDB     	Independent Bank Corp.
INDL     	Direxion Daily India Bull 2x Shares ETF
INDY     	iShares S&P India Nifty 50 Index Fund
INF      	Brookfield Global Listed Infrastructure Income Fund
INFA     	Informatica Corporation
INFI     	 Infinity Pharmaceuticals Inc. 
INFN     	Infinera Corporation
INFU     	 InfuSystems Holdings Inc. 
INFY     	Infosys Limited
ING      	 ING Group N.V. 
INGR     	Ingredion Incorporated
ININ     	 Interactive Intelligence Group Inc. 
INKM     	SPDR SSgA Income Allocation ETF
INN      	 Summit Hotel Properties Inc. 
INN^A    	 Summit Hotel Properties Inc. 
INN^B    	 Summit Hotel Properties Inc. 
INN^C    	 Summit Hotel Properties Inc. 
INO      	 Inovio Pharmaceuticals Inc. 
INOC     	Innotrac Corporation
INOD     	Innodata Inc.
INPH     	Interphase Corporation
INS      	Intelligent Systems Corporation
INSM     	 Insmed Inc. 
INT      	World Fuel Services Corporation
INTC     	Intel Corporation
INTG     	The Intergroup Corporation
INTL     	INTL FCStone Inc.
INTT     	inTest Corporation
INTU     	Intuit Inc.
INTX     	 Intersections Inc. 
INUV     	 Inuvo Inc 
INVE     	 Identive Group Inc. 
INVN     	 InvenSense Inc. 
INWK     	 InnerWorkings Inc. 
INXB     	Infinity Cross Border Acquisition Corporation
INXBU    	Infinity Cross Border Acquisition Corporation
INXBW    	Infinity Cross Border Acquisition Corporation
INXN     	InterXion Holding N.V.
INXX     	EGShares India Infrastructure ETF
INY      	SPDR Barclays Capital New York Municipal Bond ETF
INZ      	 ING Group N.V. 
IO       	Ion Geophysical Corporation
IOC      	InterOil Corporation
IOIL     	IndexIQ Global Oil Small Cap ETF
IOO      	iShares S&P Global 100 Index Fund ETF
IOSP     	Innospec Inc.
IOT      	Income Opportunity Realty Trust
IP       	International Paper Company
IPAR     	 Inter Parfums Inc. 
IPAS     	iPass Inc.
IPB      	 Merrill Lynch & Co. Inc. 
IPCC     	Infinity Property and Casualty Corporation
IPCI     	Intellipharmaceutics International Inc.
IPCM     	 IPC The Hospitalist Company Inc. 
IPD      	SPDR S&P International Consumer Discretionary Sector ETF
IPDN     	 Professional Diversity Network Inc. 
IPE      	SPDR Barclays Capital TIPS ETF
IPF      	SPDR S&P International Financial Sector ETF
IPFF     	iShares S&P Intl Preferred Stock Index ETF
IPG      	 Interpublic Group of Companies Inc. (The) 
IPGP     	IPG Photonics Corporation
IPHI     	Inphi Corporation
IPHS     	 Innophos Holdings Inc. 
IPI      	 Intrepid Potash Inc 
IPK      	SPDR S&P International Technology Sector ETF
IPL^D    	Interstate Power and Light Company
IPN      	SPDR S&P International Industrial Sector ETF
IPS      	SPDR S&P International Consumer Staples Sector ETF
IPT      	iParty Corporation
IPU      	SPDR S&P International Utilities Sector ETF
IPW      	SPDR S&P International Energy Sector ETF
IPXL     	 Impax Laboratories Inc. 
IQI      	Invesco Quality Municipal Income Trust
IQNT     	 Neutral Tandem Inc. 
IR       	Ingersoll-Rand plc (Ireland)
IRBT     	iRobot Corporation
IRC      	Inland Real Estate Corporation
IRC^A    	Inland Real Estate Corporation
IRDM     	Iridium Communications Inc
IRDMZ    	Iridium Communications Inc
IRE      	Governor and Company of the Bank of Ireland (The)
IRET     	Investors Real Estate Trust
IRET^    	Investors Real Estate Trust
IRF      	International Rectifier Corporation
IRG      	 Ignite Restaurant Group Inc. 
IRIX     	IRIDEX Corporation
IRL      	 New Ireland Fund Inc. (The) 
IRM      	Iron Mountain Incorporated
IROQ     	 IF Bancorp Inc. 
IRR      	ING Risk Managed Natural Resources Fund
IRS      	IRSA Inversiones Y Representaciones S.A.
IRV      	SPDR S&P International Materials Sector ETF
IRWD     	 Ironwood Pharmaceuticals Inc. 
IRY      	SPDR S&P International Health Care Sector ETF
ISBC     	 Investors Bancorp Inc. 
ISCA     	International Speedway Corporation
ISD      	 Prudential Short Duration High Yield Fund Inc. 
ISF      	 ING Group N.V. 
ISG      	 ING Group N.V. 
ISH      	International Shipholding Corporation
ISH^A    	International Shipholding Corporation
ISHG     	iShares S&P/Citigroup 1-3 Year International Treasury Bond Fun
ISIG     	 Insignia Systems Inc. 
ISIL     	Intersil Corporation
ISIS     	 Isis Pharmaceuticals Inc. 
ISL      	 Aberdeen Israel Fund Inc. 
ISLE     	 Isle of Capri Casinos Inc. 
ISM      	SLM Corporation
ISNS     	 Image Sensing Systems Inc. 
ISP      	 ING Group N.V. 
ISR      	 IsoRay Inc. 
ISRG     	 Intuitive Surgical Inc. 
ISRL     	 Isramco Inc. 
ISS      	iSoftStone Holdings Limited
ISSC     	 Innovative Solutions and Support Inc. 
ISSI     	 Integrated Silicon Solution Inc. 
IST      	SPDR S&P International Telecommunications Sector ETF
ISTB     	iShares Core Short-Term US Bond ETF
IT       	 Gartner Inc. 
ITA      	iShares Dow Jones U.S. Aerospace & Defense Index Fund ETF
ITB      	iShares Dow Jones U.S. Home Construction Index Fund ETF
ITC      	ITC Holdings Corp.
ITE      	SPDR Barclays Capital Intermediate Term Treasury ETF
ITF      	iShares S&P/TOPIX 150 Index Fund ETF
ITG      	 Investment Technology Group Inc. 
ITI      	 Iteris Inc. 
ITIC     	Investors Title Company
ITIP     	iShares International Inflation-Linked ETF
ITM      	Market Vectors Intermediate Municipal ETF
ITMN     	 InterMune Inc. 
ITOT     	iShares Core S&P Total U.S. Stock Market ETF
ITR      	SPDR Barclays Capital Intermediate Term Credit Bond ETF
ITRI     	 Itron Inc. 
ITRN     	Ituran Location and Control Ltd.
ITT      	ITT Corporation
ITUB     	Itau Unibanco Banco Holding SA
ITW      	Illinois Tool Works Inc.
IVAC     	 Intevac Inc. 
IVAN     	 Ivanhoe Energy Inc. 
IVC      	Invacare Corporation
IVE      	iShares S&P 500 Value Index Fund ETF
IVOG     	Vanguard S&P Mid-Cap 400 Growth ETF
IVOO     	Vanguard S&P Mid-Cap 400 ETF
IVOV     	Vanguard S&P Mid-Cap 400 Value ETF
IVR      	INVESCO MORTGAGE CAPITAL INC
IVR^A    	Invesco Mortgage Capital Inc.
IVV      	iShares Core S&P 500 Index Fund ETF
IVW      	iShares S&P 500 Growth Index Fund ETF
IVZ      	Invesco Plc
IWB      	iShares Russell 1000 ETF
IWC      	iShares Russell Microcap Index Fund ETF
IWD      	iShares Russell 1000 Value ETF
IWF      	iShares Russell 1000 Growth ETF
IWL      	iShares Russell Top 200 Index Fund ETF
IWM      	iShares Russell 2000 ETF
IWN      	iShares Russell 2000 Value ETF
IWO      	iShares Russell 2000 Growth ETF
IWP      	iShares Russell Midcap Growth Index ETF
IWR      	iShares Russell Midcap Index Fund ETF
IWS      	iShares Russell Midcap Value Index ETF
IWV      	iShares Russell 3000 ETF
IWW      	iShares Russell 3000 Value ETF
IWX      	iShares Russell Top 200 Value Index Fund ETF
IWY      	iShares Russell Top 200 Growth Index Fund ETF
IWZ      	iShares Russell 3000 Growth ETF
IX       	Orix Corp Ads
IXC      	iShares S&P Global Energy Index Fund ETF
IXG      	iShares S&P Global Financial Index Fund ETF
IXJ      	iShares S&P Global Healthcare Index Fund ETF
IXN      	iShares S&P Global Technology Index Fund ETF
IXP      	iShares S&P Global Telecommunications Index Fund ETF
IXUS     	iShares Core MSCI Total Intl Stk ETF
IXYS     	IXYS Corporation
IYC      	iShares Dow Jones U.S. Consumer Index Fund ETF
IYE      	iShares Dow Jones U.S. Energy Sector Fund ETF
IYF      	iShares Dow Jones U.S. Financial Sector Index Fund ETF
IYG      	iShares Dow Jones U.S. Financial Services Index Fund ETF
IYH      	iShares Dow Jones U.S. Health Care Index Fund ETF
IYJ      	iShares Dow Jones U.S. Industrial Sector Index Fund ETF
IYK      	iShares Dow Jones U.S. Consumer Goods Index Fund ETF
IYLD     	iShares Morningstar Multi-Asset Income ETF
IYM      	iShares Dow Jones U.S. Basic Materials Index ETF
IYR      	iShares Dow Jones U.S. Real Estate Index Fund ETF
IYT      	iShares Dow Jones Transportation Average Index Fund ETF
IYW      	iShares Dow Jones U.S. Technology Index Fund ETF
IYY      	iShares Dow Jones U.S. Total Market Index Fund ETF
IYZ      	iShares Dow Jones U.S. Telecommunications Index Fund ETF
JACK     	Jack In The Box Inc.
JACQ     	COLLABRIUM JAPAN ACQUISITION CORPORATION
JACQU    	COLLABRIUM JAPAN ACQUISITION CORPORATION
JACQW    	COLLABRIUM JAPAN ACQUISITION CORPORATION
JADE     	 LJ International Inc. 
JAG      	Jaguar Mining Inc
JAH      	Jarden Corporation
JAKK     	 JAKKS Pacific Inc. 
JASO     	 JA Solar Holdings Co. Ltd. 
JAXB     	 Jacksonville Bancorp Inc. 
JAZZ     	Jazz Pharmaceuticals plc
JBHT     	 J.B. Hunt Transport Services Inc. 
JBI      	Lehman ABS Cp 7.857%
JBJ      	Lehman ABS Corporation
JBK      	Lehman ABS Corporation
JBL      	 Jabil Circuit Inc. 
JBLU     	JetBlue Airways Corporation
JBN      	Select Asset Inc.
JBO      	Lehman ABS Corporation
JBR      	Select Asset Inc.
JBSS     	 John B. Sanfilippo & Son Inc. 
JBT      	John Bean Technologies Corporation
JCE      	Nuveen Core Equity Alpha Fund
JCI      	 Johnson Controls Inc. 
JCOM     	 j2 Global Inc. 
JCP      	 J.C. Penney Company Inc. Holding Company 
JCS      	 Communications Systems Inc. 
JCTCF    	Jewett-Cameron Trading Company
JDD      	Nuveen Diversified Dividend and Income Fund
JDSU     	JDS Uniphase Corporation
JE       	 Just Energy Group Inc. 
JEC      	Jacobs Engineering Group Inc.
JEQ      	 Japan Equity Fund Inc. (The) 
JFBI     	 Jefferson Bancshares Inc. 
JFC      	 JF China Region  Fund Inc. 
JFR      	Nuveen Floating Rate Income Fund
JGG      	Nuveen Global Income Opportunites Fund
JGT      	Nuveen Diversified Currency Opportunities Fund
JGV      	Nuveen Global Value Opportunities Fund
JHI      	John Hancock Investors Trust
JHP      	Nuveen Quality Preferred Income Fund 3
JHS      	John Hancock Income Securities Trust
JHX      	James Hardie Industries plc.
JIVE     	 Jive Software Inc. 
JJSF     	J & J Snack Foods Corp.
JKD      	iShares Morningstar Large Core Index Fund ETF
JKE      	iShares Morningstar Large Growth Index Fund ETF
JKF      	iShares Morningstar Large Value Index Fund ETF
JKG      	iShares Morningstar Mid Core Index Fund ETF
JKH      	iShares Morningstar Mid Growth Index Fund ETF
JKHY     	 Jack Henry & Associates Inc. 
JKI      	iShares Morningstar Mid Value Index Fund ETF
JKJ      	iShares Morningstar Small Core Index Fund ETF
JKK      	iShares Morningstar Small Growth Index Fund ETF
JKL      	iShares Morningstar Small Value Index Fund ETF
JKS      	JinkoSolar Holding Company Limited
JLA      	Nuveen Equity Premium Advantage Fund
JLL      	Jones Lang LaSalle Incorporated
JLS      	Nuveen Mortgage Opportunity Term Fund
JMBA     	 Jamba Inc. 
JMF      	Nuveen Energy MLP Total Return Fund
JMI      	Javelin Mortgage Investment Corp.
JMP      	JMP Group Inc
JMPB     	JMP Group Inc
JMT      	Nuven Mortgage Opportunity Term Fund 2
JNJ      	Johnson & Johnson
JNK      	SPDR Barclays Capital High Yield Bond ETF
JNPR     	 Juniper Networks Inc. 
JNS      	 Janus Capital Group Inc 
JNY      	 Jones Group Inc. (The) 
JOB      	 General Employment Enterprises Inc. 
JOBS     	 51job Inc. 
JOE      	St. Joe Company (The)
JOEZ     	Joe&#39;s Jeans Inc.
JOF      	Japan Smaller Capitalization Fund Inc
JOSB     	 Jos. A. Bank Clothiers Inc. 
JOUT     	Johnson Outdoors Inc.
JOY      	Joy Global Inc.
JPC      	Nuveen Preferred Income Opportunites Fund
JPG      	Nuveen Equity Premium and Growth Fund
JPI      	Nuveen Preferred and Income Term Fund
JPM      	J P Morgan Chase & Co
JPM^A    	J P Morgan Chase & Co
JPM^C    	J P Morgan Chase & Co
JPM^D    	J P Morgan Chase & Co
JPM^I    	J P Morgan Chase & Co
JPM^J/CL 	J P Morgan Chase & Co
JPM^K/CL 	J P Morgan Chase & Co
JPM^O/CL 	J P Morgan Chase & Co
JPM^P/CL 	J P Morgan Chase & Co
JPM^S/CL 	J P Morgan Chase & Co
JPM^W/CL 	J P Morgan Chase & Co
JPM/WS   	J P Morgan Chase & Co
JPM^X/CL 	J P Morgan Chase & Co
JPM^Y/CL 	J P Morgan Chase & Co
JPP      	SPDR Russell/Nomura PRIME Japan ETF
JPS      	Nuveen Quality Preferred Income Fund 2
JPX      	ProShares UltraShort MSCI Pacific ex-Japan ETF
JPZ      	Nuveen Equity Premium Income Fund
JQC      	Nuveen Credit Strategies Income Fund
JRCC     	James River Coal Company
JRI      	Nuveen Real Asset Income and Growth Fund
JRJC     	China Finance Online Co. Limited
JRN      	 Journal Communications Inc. 
JRO      	Nuveen Floating Rate Income Opportuntiy Fund
JRS      	Nuveen Real Estate Fund
JSC      	SPDR Russell/Nomura Small Cap Japan ETF
JSD      	Nuveen Short Duration Credit Opportunities Fund
JSM      	SLM Corporation
JSN      	Nuveen Equity Premium Opportunity Fund
JST      	Jinpan International Limited
JTA      	Nuveen Tax-Advantaged Total Return Strategy Fund
JTD      	Nuveen Tax-Advantaged Dividend Growth Fund
JTP      	Nuveen Quality Preferred Income Fund
JUNR     	Global X Junior Miners ETF
JVA      	 Coffee Holding Co. Inc. 
JW/A     	 John Wiley & Sons Inc. 
JW/B     	 John Wiley & Sons Inc. 
JWN      	 Nordstrom Inc. 
JXI      	iShares S&P Global Utilities Sector Index Fund ETF
JXSB     	Jacksonville Bancorp Inc.
JZC      	Lehman ABS Corporation
JZJ      	Lehman ABS Corporation
JZK      	Lehman ABS Corporation
JZL      	Lehman ABS Corporation
JZT      	Lehman ABS Corp
JZV      	Lehman ABS Corporation
K        	Kellogg Company
KAI      	Kadant Inc
KALU     	Kaiser Aluminum Corporation
KAMN     	Kaman Corporation
KAP      	 KCAP Financial Inc. 
KAR      	 KAR Auction Services Inc 
KB       	KB Financial Group Inc
KBALB    	 Kimball International Inc. 
KBE      	SPDR KBW Bank ETF
KBH      	KB Home
KBIO     	 KaloBios Pharmaceuticals Inc. 
KBR      	 KBR Inc. 
KBWB     	PowerShares KBW Bank Portfolio ETF
KBWC     	PowerShares KBW Capital Markets Portfolio ETF
KBWD     	PowerShares KBW High Dividend Yield Financial Portfolio ETF
KBWI     	PowerShares KBW Insurance Portfolio ETF
KBWP     	PowerShares KBW Property & Casualty Insurance Portfolio ETF
KBWR     	PowerShares KBW Regional Banking Portfolio ETF
KBWX     	PowerShares KBW International Financial Portfolio ETF
KBWY     	PowerShares KBW Premium Yield Equity REIT Portfolio ETF
KBX      	Kimber Resources Inc
KCAP     	 KCAP Financial Inc. 
KCC      	Lehman ABS Corporation
KCE      	SPDR KBW Capital Markets ETF
KCG      	 Knight Capital Group Inc. 
KCLI     	Kansas City Life Insurance Company
KDN      	Kaydon Corporation
KED      	Kayne Anderson Energy Development Company
KEF      	 Korea Equity Fund Inc. 
KEG      	 Key Energy Services Inc. 
KELYA    	 Kelly Services Inc. 
KELYB    	 Kelly Services Inc. 
KEM      	Kemet Corporation
KEP      	Korea Electric Power Corporation
KEQU     	Kewaunee Scientific Corporation
KERX     	 Keryx Biopharmaceuticals Inc. 
KEX      	Kirby Corporation
KEY      	KeyCorp
KEY^G    	KeyCorp
KEYN     	 Keynote Systems Inc. 
KEYW     	The KEYW Holding Corporation
KF       	 Korea Fund Inc. (The) 
KFFB     	Kentucky First Federal Bancorp
KFH      	KKR Financial Holdings LLC
KFI      	KKR Financial Holdings LLC
KFN      	KKR Financial Holdings LLC
KFN^     	KKR Financial Holdings LLC
KFRC     	 Kforce Inc. 
KFS      	 Kingsway Financial Services Inc. 
KFY      	Korn/Ferry International
KGC      	Kinross Gold Corporation
KGJI     	Kingold Jewelry Inc.
KHI      	Scudder High Income Trust
KID      	 Kid Brands Inc. 
KIE      	SPDR KBW Insurance ETF
KIM      	Kimco Realty Corporation
KIM^H    	Kimco Realty Corporation
KIM^I    	Kimco Realty Corporation
KIM^J    	Kimco Realty Corporation
KIM^K    	Kimco Realty Corporation
KINS     	 Kingstone Companies Inc 
KIOR     	 KiOR Inc. 
KIPO     	 Keating Capital Inc. 
KIPS     	 Kips Bay Medical Inc. 
KIRK     	 Kirkland&#39;s Inc. 
KKD      	 Krispy Kreme Doughnuts Inc. 
KKR      	KKR & Co. L.P.
KLAC     	KLA-Tencor Corporation
KLD      	iShares KLD Select Social Index Fund ETF
KLIC     	 Kulicke and Soffa Industries Inc. 
KMB      	Kimberly-Clark Corporation
KME      	SPDR KBW Mortgage Finance ETF
KMF      	 Kayne Anderson Midstream Energy Fund Inc 
KMG      	 KMG Chemicals Inc. 
KMI      	 Kinder Morgan Inc. 
KMI/WS   	 Kinder Morgan Inc. 
KMM      	Scudder Multi-Market Income Trust
KMP      	 Kinder Morgan Energy Partners L.P. 
KMPR     	Kemper Corporation
KMR      	 Kinder Morgan Management LLC 
KMT      	Kennametal Inc.
KMX      	CarMax Inc
KND      	 Kindred Healthcare Inc. 
KNDI     	 Kandi Technologies Group Inc. 
KNL      	 Knoll Inc. 
KNM      	Konami Corporation
KNOP     	KNOT Offshore Partners LP
KNOW     	Direxion All Cap Insider Sentiment Shrs ETF
KNX      	 Knight Transportation Inc. 
KO       	Coca-Cola Company (The)
KOF      	Coca Cola Femsa S.A.B. de C.V.
KOG      	Kodiak Oil & Gas Corp.
KOL      	Market Vectors Coal ETF
KOLD     	ProShares UltraShort DJ-UBS Natural Gas ETF
KONA     	 Kona Grill Inc. 
KONE     	Kingtone Wirelessinfo Solution Holding Ltd
KONG     	KongZhong Corporation
KOOL     	THERMOGENESIS Corp.
KOP      	Koppers Holdings Inc.
KOPN     	Kopin Corporation
KORS     	Michael Kors Holdings Limited
KOS      	Kosmos Energy Ltd.
KOSS     	Koss Corporation
KR       	Kroger Company (The)
KRA      	 Kraton Performance Polymers Inc 
KRC      	Kilroy Realty Corporation
KRC^G    	Kilroy Realty Corporation
KRC^H    	Kilroy Realty Corporation
KRE      	SPDR S&P Regional Banking ETF
KRFT     	 Kraft Foods Group Inc. 
KRG      	Kite Realty Group Trust
KRG^A    	Kite Realty Group Trust
KRJ/CL   	Lehman ABS Corporation
KRNY     	Kearny Financial
KRO      	Kronos Worldwide Inc
KROO     	IndexIQ Australia Small Cap ETF
KRS      	ProShares Short KBW Regional Banking ETF
KRU      	ProShares Ultra KBW Regional Banking ETF
KS       	KapStone Paper and Packaging Corporation
KSA/CL   	Lehman ABS Corporation
KSM      	Scudder Strategic Municiple Income Trust
KSS      	Kohl&#39;s Corporation
KST      	Scudder Strategic Income Trust
KSU      	Kansas City Southern
KSU^     	Kansas City Southern
KSWS     	K-Swiss Inc.
KT       	KT Corporation
KTCC     	Key Tronic Corporation
KTEC     	 Key Technology Inc. 
KTF      	Scudder Municiple Income Trust
KTH      	Lehman ABS Corporation
KTN      	Lehman ABS Corporation
KTOS     	 Kratos Defense & Security Solutions Inc. 
KTP      	Lehman ABS Corporation
KUB      	Kubota Corporation
KUTV     	 Ku6 Media Co. Ltd. 
KVHI     	 KVH Industries Inc. 
KW       	Kennedy-Wilson Holdings Inc.
KWK      	Quicksilver Resources Inc.
KWN      	Kennedy-Wilson Holdings Inc.
KWR      	Quaker Chemical Corporation
KWT      	Market Vectors Solar Energy ETF
KXI      	iShares S&P Global Consumer Staples Sector Index Fund ETF
KXM      	Kobex Minerals Inc.
KYAK     	Kayak Software Corporation
KYE      	 Kayne Anderson Energy Total Return Fund Inc. 
KYN      	Kayne Anderson MLP Investment Company
KYN^D/CL 	Kayne Anderson MLP Investment Company
KYN^E    	Kayne Anderson MLP Investment Company
KYN^F    	Kayne Anderson MLP Investment Company
KYO      	Kyocera Corporation
KYTH     	 Kythera Biopharmaceuticals Inc. 
L        	Loews Corporation
LABC     	 Louisiana Bancorp Inc. 
LABL     	Multi-Color Corporation
LACO     	 Lakes Entertainment Inc. 
LAD      	 Lithia Motors Inc. 
LAG      	SPDR Barclays Capital Aggregate Bond ETF
LAKE     	 Lakeland Industries Inc. 
LAMR     	Lamar Advertising Company
LANC     	Lancaster Colony Corporation
LAND     	Gladstone Land Corporation
LAQ      	 Latin America Equity Fund Inc. (The) 
LARK     	Landmark Bancorp Inc.
LAS      	Lentuo International Inc.
LATM     	Market Vectors Latin America Small-Cap Index ETF
LAWS     	 Lawson Products Inc. 
LAYN     	Layne Christensen Company
LAZ      	Lazard Ltd.
LBAI     	 Lakeland Bancorp Inc. 
LBF      	 Scudder Global High Income Fund Inc. 
LBIX     	Leading Brands Inc
LSBI     	LSB Financial Corp.
LBJ      	Direxion Daily Latin America 3x Bull Shrs ETF
LBTYA    	 Liberty Global Inc. 
LBTYB    	 Liberty Global Inc. 
LBTYK    	 Liberty Global Inc. 
LBY      	 Libbey Inc. 
LCAV     	LCA-Vision Inc.
LCC      	 US Airways Group Inc. New 
LCI      	Lannett Co Inc
LCM      	Advent/Claymore Enhanced Growth & Income Fund
LCNB     	LCNB Corporation
LCUT     	 Lifetime Brands Inc. 
LDF      	 Latin American Discovery Fund Inc. (The) 
LDK      	LDK Solar Co. Ltd.
LDL      	 Lydall Inc. 
LDP      	 Cohen & Steers Limited Duration Preferred and Income Fund Inc 
LDR      	 Landauer Inc. 
LEA      	Lear Corporation
LEAP     	 Leap Wireless International Inc. 
LECO     	 Lincoln Electric Holdings Inc. 
LEDR     	 Market Leader Inc 
LEDS     	SemiLEDS Corporation
LEE      	 Lee Enterprises Incorporated 
LEG      	 Leggett & Platt Incorporated 
LEI      	 Lucas Energy Inc. 
LEMB     	iShares Emerging Markets Local Currency Bond Fund ETF
LEN      	Lennar Corporation
LEN/B    	Lennar Corporation
LEO      	 Dreyfus Strategic Municipals Inc. 
LF       	Leapfrog Enterprises Inc
LFC      	China Life Insurance Company Limited
LFL      	LATAM Airlines Group S.A.
LFUS     	 Littelfuse Inc. 
LFVN     	Lifevantage Corporation
LG       	 Laclede Group Inc. 
LGCY     	Legacy Reserves LP
LGEM     	EGShares Basic Materials GEMS ETF
LGF      	Lions Gate Entertainment Corporation
LGI      	Lazard Global Total Return and Income Fund
LGL      	 LGL Group Inc. (The) 
LGLV     	SPDR Russell 1000 Low Volatility ETF
LGND     	Ligand Pharmaceuticals Incorporated
LGP      	Lehigh Gas Partners LP
LH       	Laboratory Corporation of America Holdings
LHCG     	LHC Group
LHO      	LaSalle Hotel Properties
LHO^G    	LaSalle Hotel Properties
LHO^H    	LaSalle Hotel Properties
LHO^I    	LaSalle Hotel Properties
LIFE     	Life Technologies Corporation
LII      	 Lennox International Inc. 
LIME     	Lime Energy Co.
LINC     	Lincoln Educational Services Corporation
LINE     	 Linn Energy LLC 
LINTA    	Liberty Interactive Corporation
LINTB    	Liberty Interactive Corporation
LION     	Fidelity Southern Corporation
LIOX     	 Lionbridge Technologies Inc. 
LIT      	Global X Lithium ETF
LIVE     	 LiveDeal Inc. 
LIWA     	 Lihua International Inc. 
LKFN     	Lakeland Financial Corporation
LKQ      	LKQ Corporation
LL       	 Lumber Liquidators Holdings Inc 
LLEN     	 L&L Energy Inc. 
LLL      	 L-3 Communications Holdings Inc. 
LLNW     	 Limelight Networks Inc. 
LLTC     	Linear Technology Corporation
LLY      	Eli Lilly and Company
LM       	 Legg Mason Inc. 
LMAT     	 LeMaitre Vascular Inc. 
LMCA     	Liberty Media Corporation
LMCB     	Liberty Media Corporation
LMIA     	 LMI Aerospace Inc. 
LMNR     	Limoneira Co
LMNX     	Luminex Corporation
LMOS     	Lumos Networks Corp.
LMT      	Lockheed Martin Corporation
LNBB     	 LNB Bancorp Inc. 
LNC      	Lincoln National Corporation
LNC^     	Lincoln National Corporation
LNCE     	 Snyder&#39;s-Lance Inc. 
LNCO     	 Linn Co LLC 
LNC/WS   	Lincoln National Corporation
LND      	Brasilagro Cia Brasileira De Propriedades Agricolas
LNDC     	Landec Corporation
LNG      	 Cheniere Energy Inc. 
LNKD     	LinkedIn Corporation
LNN      	Lindsay Corporation
LNT      	Alliant Energy Corporation
LO       	 Lorillard Inc 
LOAN     	 Manhattan Bridge Capital Inc 
LOCK     	 LifeLock Inc. 
LOCM     	Local Corporation
LODE     	 Comstock Mining Inc. 
LOGI     	Logitech International S.A.
LOGM     	 LogMein Inc. 
LOJN     	LoJack Corporation
LON      	Loncor Resources Inc.
LONG     	 eLong Inc. 
LOOK     	 LookSmart Ltd. 
LOPE     	 Grand Canyon Education Inc. 
LOR      	 Lazard World Dividend & Income Fund Inc. 
LORL     	 Loral Space and Communications Inc. 
LOV      	 Spark Networks Inc. 
LOW      	 Lowe&#39;s Companies Inc. 
LPDX     	 LipoScience Inc. 
LPHI     	Life Partners Holdings Inc
LPI      	 Laredo Petroleum Holdings Inc. 
LPL      	 LG Display Co. Ltd. 
LPLA     	LPL Financial Holdings Inc.
LPNT     	 LifePoint Hospitals Inc. 
LPR      	Lone Pine Resources Inc.
LPS      	 Lender Processing Services Inc 
LPSB     	 LaPorte Bancorp Inc. 
LPSN     	 LivePerson Inc. 
LPTH     	 LightPath Technologies Inc. 
LPTN     	 Lpath Inc. 
LPX      	Louisiana-Pacific Corporation
LQD      	iShares GS $ InvesTopTM Corporate Bond Fund ETF
LQDT     	 Liquidity Services Inc. 
LRAD     	LRAD Corporation
LRCX     	Lam Research Corporation
LRE      	 LRR Energy L.P. 
LRN      	K12 Inc
LRY      	Liberty Property Trust
LSBK     	 Lake Shore Bancorp Inc. 
LSCC     	Lattice Semiconductor Corporation
LSE      	 Caplease Inc. 
LSE^A    	 Caplease Inc. 
LSE^B    	 Caplease Inc. 
LSE^C    	 Caplease Inc. 
LSG      	Lake Shore Gold Corp
LSI      	LSI Corporation
LSTR     	 Landstar System Inc. 
LTBR     	Lightbridge Corporation
LTC      	 LTC Properties Inc. 
LTD      	 L Brands Inc. 
LTL      	ProShares Ultra Telecommunications ETF
LTM      	Life Time Fitness
LTON     	Linktone Ltd.
LTPZ     	PIMCO 15+ Year U.S. TIPS Index Fund ETF
LTRE     	 Learning Tree International Inc. 
LTRX     	 Lantronix Inc. 
LTS      	Ladenburg Thalmann Financial Services Inc
LTXC     	LTX-Credence Corporation
LUB      	 Luby&#39;s Inc. 
LUFK     	 Lufkin Industries Inc. 
LUK      	Leucadia National Corporation
LULU     	lululemon athletica inc.
LUNA     	Luna Innovations Incorporated
LUV      	Southwest Airlines Company
LUX      	 Luxottica Group S.p.A. 
LVB      	 Steinway Musical Instruments Inc. 
LVL      	Guggenheim S&P Global Dividend Opportunities Index ETF
LVLT     	 Level 3 Communications Inc. 
LVNTA    	Liberty Interactive Corporation
LVNTB    	Liberty Interactive Corporation
LVS      	Las Vegas Sands Corp.
LWAY     	 Lifeway Foods Inc. 
LWC      	SPDR Barclays Capital Long Term Credit Bond ETF
LXFR     	Luxfer Holdings PLC
LXK      	 Lexmark International Inc. 
LXP      	Lexington Realty Trust
LXP^C    	Lexington Realty Trust
LXP^D/CL 	Lexington Realty Trust
LXRX     	 Lexicon Pharmaceuticals Inc. 
LXU      	Lsb Industries Inc.
LYB      	LyondellBasell Industries NV
LYG      	Lloyds Banking Group Plc
LYG^A    	Lloyds Banking Group Plc
LYTS     	LSI Industries Inc.
LYV      	 Live Nation Entertainment Inc. 
LZB      	La-Z-Boy Incorporated
M        	Macy&#39;s Inc
MA       	Mastercard Incorporated
MAA      	 Mid-America Apartment Communities Inc. 
MAB      	Eaton Vance Massachusetts Municipal Bond Fund
MAC      	Macerich Company (The)
MACK     	 Merrimack Pharmaceuticals Inc. 
MAG      	 Magnetek Inc. 
MAGS     	Magal Security Systems Ltd.
MAIN     	Main Street Capital Corporation
MAKO     	MAKO Surgical Corp.
MAN      	ManpowerGroup
MANH     	 Manhattan Associates Inc. 
MANT     	ManTech International Corporation
MANU     	Manchester United Ltd.
MAR      	Marriot International
MARK     	 Remark Media Inc. 
MARPS    	Marine Petroleum Trust
MAS      	Masco Corporation
MASC     	Material Sciences Corporation
MASI     	Masimo Corporation
MAT      	 Mattel Inc. 
MATH     	AdvisorShares Meidell Tactical Advantage ETF
MATL     	Direxion Daily Basic Materials Bull 3x Shares ETF
MATR     	Mattersight Corporation
MATW     	Matthews International Corporation
MATX     	 Matson Inc. 
MAV      	Pioneer Municipal High Income Advantage Trust
MAXY     	 Maxygen Inc. 
MAYS     	 J. W. Mays Inc. 
MBA      	CIBT Education Group Inc.
MBB      	iShares Barclays MBS Fixed-Rate Bond ETF
MBFI     	MB Financial Inc.
MBG      	SPDR Barclays Capital Mortgage Backed Bond ETF
MBI      	 MBIA Inc. 
MBLX     	 Metabolix Inc. 
MBND     	Multiband Corporation
MBRG     	Middleburg Financial Corporation
MBT      	Mobile TeleSystems
MBTF     	M B T Financial Corp
MBVT     	 Merchants Bancshares Inc. 
MBWM     	Mercantile Bank Corporation
MCA      	 Blackrock MuniYield California Insured Fund Inc. 
MCBC     	Macatawa Bank Corporation
MCBI     	 MetroCorp Bancshares Inc. 
MCBK     	 Madison County Financial Inc. 
MCC      	Medley Capital Corporation
MCD      	McDonald&#39;s Corporation
MCEP     	 Mid-Con Energy Partners LP 
MCF      	Contango Oil & Gas Company
MCGC     	MCG Capital Corporation
MCHI     	iShares MSCI China ETF
MCHP     	Microchip Technology Incorporated
MCHX     	 Marchex Inc. 
MCI      	Babson Capital Corporate Investors
MCK      	McKesson Corporation
MCN      	Madison Covered Call & Equity Strategy Fund
MCO      	Moody&#39;s Corporation
MCOX     	Mecox Lane Limited
MCP      	 Molycorp Inc 
MCP^A    	 Molycorp Inc 
MCQ      	Medley Capital Corporation
MCR      	MFS Charter Income Trust
MCRI     	 Monarch Casino & Resort Inc. 
MCRL     	 Micrel Incorporated 
MCRO     	IndexIQ Hedge Macro Tracker ETF
MCRS     	 MICROS Systems Inc. 
MCS      	Marcus Corporation (The)
MCV      	Medley Capital Corporation
MCY      	Mercury General Corporation
MCZ      	Mad Catz Interactive Inc
MD       	 Mednax Inc 
MDAS     	 MedAssets Inc. 
MDC      	 M.D.C. Holdings Inc. 
MDCA     	MDC Partners Inc.
MDCI     	Medical Action Industries Inc.
MDCO     	The Medicines Company
MDD      	SPDR S&P International Mid Cap ETF
MDGN     	 Medgenics Inc. 
MDGN/WS  	 Medgenics Inc. 
MDH      	MHI Hospitality Corporation
MDIV     	First Trust Exchange-Traded Fund VI Multi-Asset Diversified In
MDLZ     	 Mondelez International Inc. 
MDM      	Mountain Province Diamonds Inc.
MDP      	Meredith Corporation
MDR      	 McDermott International Inc. 
MDRX     	 Allscripts Healthcare Solutions Inc. 
MDSO     	 Medidata Solutions Inc. 
MDT      	 Medtronic Inc. 
MDU      	 MDU Resources Group Inc. 
MDVN     	 Medivation Inc. 
MDW      	Midway Gold Corporation
MDY      	SPDR S&P MidCap 400 ETF
MDYG     	SPDR S&P 400 Mid Cap Growth ETF (MDYG) ETF
MDYV     	SPDR S&P 400 Mid Cap Value ETF (MDYV) ETF
MEA      	Metalico Inc
MEAD     	Meade Instruments Corp.
MEAS     	 Measurement Specialties Inc. 
MED      	MEDIFAST INC
MEET     	 MeetMe Inc. 
MEG      	 Media General Inc. 
MEI      	 Methode Electronics Inc. 
MEIL     	METHES ENERGIES INTERNATIONAL LTD
MEILW    	METHES ENERGIES INTERNATIONAL LTD
MEILZ    	METHES ENERGIES INTERNATIONAL LTD
MEIP     	 MEI Pharma Inc. 
MELA     	 MELA Sciences Inc 
MELI     	 MercadoLibre Inc. 
MEMP     	Memorial Production Partners LP
MEMS     	 MEMSIC Inc. 
MEN      	 Blackrock MuniEnhanced Fund Inc. 
MENT     	Mentor Graphics Corporation
MEOH     	Methanex Corporation
MERC     	Mercer International Inc.
MER^D    	 Merrill Lynch & Co. Inc. 
MER^E    	 Merrill Lynch & Co. Inc. 
MER^F    	 Merrill Lynch & Co. Inc. 
MER^K    	 Merrill Lynch & Co. Inc. 
MER^M    	 Merrill Lynch & Co. Inc. 
MER^P    	 Merrill Lynch & Co. Inc. 
MERU     	 Meru Networks Inc. 
MES      	Market Vectors Gulf States Index ETF
MET      	 MetLife Inc. 
MET^A    	 MetLife Inc. 
MET^B    	 MetLife Inc. 
METR     	 Metro Bancorp Inc 
MFA      	 MFA Financial Inc. 
MFA^A    	 MFA Financial Inc. 
MFB      	 Maidenform Brands Inc. 
MFC      	Manulife Financial Corp
MFD      	Macquarie/First Trust Global
MFG      	 Mizuho Financial Group Inc. 
MFI      	MicroFinancial Incorporated
MFL      	Blackrock MuniHoldings Investment Quality Fund
MFLR     	 Mayflower Bancorp Inc. 
MFLX     	 Multi-Fineline Electronix Inc. 
MFM      	MFS Municipal Income Trust
MFNC     	Mackinac Financial Corporation
MFO      	 MFA Financial Inc. 
MFRI     	 MFRI Inc. 
MFRM     	Mattress Firm Holding Corp.
MFSF     	MutualFirst Financial Inc.
MFT      	Blackrock MuniYield Investment QualityFund
MFV      	MFS Special Value Trust
MG       	Mistras Group Inc
MGA      	 Magna International Inc. 
MGAM     	 Multimedia Games Holding Company Inc. 
MGC      	Vanguard Mega Cap 300 ETF
MGCD     	MGC Diagnostics Corporation
MGEE     	MGE Energy Inc.
MGF      	MFS Government Markets Income Trust
MGH      	Minco Gold Corporation
MGI      	 Moneygram International Inc. 
MGIC     	Magic Software Enterprises Ltd.
MGK      	Vanguard Mega Cap 300 Growth ETF
MGLN     	 Magellan Health Services Inc. 
MGM      	MGM Resorts International
MGN      	 Mines Management Inc. 
MGPI     	 MGP Ingredients Inc. 
MGR      	 Affiliated Managers Group Inc. 
MGRC     	McGrath RentCorp
MGT      	MGT Capital Investments Inc
MGU      	Macquarie Global Infrastructure Total Return Fund Inc.
MGV      	Vanguard Mega Cap 300 Value ETF
MGYR     	 Magyar Bancorp Inc. 
MH^A     	 Maiden Holdings Ltd. 
MHD      	 Blackrock MuniHoldings Fund Inc. 
MHE      	Massachusetts Health and Education Tax-Exempt Trust
MHF      	 Western Asset Municipal High Income Fund Inc. 
MHGC     	Morgans Hotel Group Co.
MHH      	 Mastech Holdings Inc 
MHI      	Pioneer Municipal High Income Trust
MHK      	 Mohawk Industries Inc. 
MHLD     	 Maiden Holdings Ltd. 
MHN      	 Blackrock MuniHoldings New York Quality Fund Inc. 
MHNA     	 Maiden Holdings Ltd. 
MHNB     	 Maiden Holdings Ltd. 
MHO      	 M/I Homes Inc. 
MHO^A    	 M/I Homes Inc. 
MHP      	 McGraw-Hill Companies Inc. (The) 
MHR      	Magnum Hunter Resources Corporation
MHR^C    	Magnum Hunter Resources Corporation
MHR^D    	Magnum Hunter Resources Corporation
MHR^E    	Magnum Hunter Resources Corporation
MHY      	 Western Asset Managed High Income Fund Inc. 
MIC      	Macquarie Infrastructure Company LLC
MIDD     	The Middleby Corporation
MIDU     	Direxion Mid Cap Bull 3x Shares ETF
MIDZ     	Direxion Mid Cap Bear 3x Shares ETF
MIE      	 Cohen & Steers MLP Income and Energy Opportunity Fund Inc. 
MIG      	 Meadowbrook Insurance Group Inc. 
MIL      	MFC Industrial Ltd.
MILL     	 Miller Energy Resources Inc. 
MILL^C   	 Miller Energy Resources Inc. 
MIN      	MFS Intermediate Income Trust
MINC     	AdvisorShares Newfleet Multi-Sector Income ETF
MIND     	 Mitcham Industries Inc. 
MINI     	 Mobile Mini Inc. 
MINT     	PIMCO Enhanced Short Maturity Strategy Fund ETF
MITK     	 Mitek Systems Inc. 
MITL     	Mitel Networks Corporation
MITT     	 AG Mortgage Investment Trust Inc. 
MITT^A   	 AG Mortgage Investment Trust Inc. 
MIW      	Eaton Vance Michigan Municipal Bond Fund
MIY      	 Blackrock MuniYield Michigan Quality Fund Inc. 
MJI      	 Blackrock MuniYield New Jersey Quality Fund Inc. 
MJN      	Mead Johnson Nutrition Company
MKC      	 McCormick & Company Incorporated 
MKC/V    	 McCormick & Company Incorporated 
MKL      	Markel Corporation
MKSI     	 MKS Instruments Inc. 
MKTAY    	Makita Corp.
MKTG     	 Responsys Inc. 
MKTX     	 MarketAxess Holdings Inc. 
MLAB     	 Mesa Laboratories Inc. 
MLG      	 MetLife Inc. 
MLHR     	 Herman Miller Inc. 
MLI      	 Mueller Industries Inc. 
MLM      	 Martin Marietta Materials Inc. 
MLN      	Market Vectors-Lehman Brothers AMT-Free Long Municipal Index ETF
MLNK     	 ModusLink Global Solutions Inc 
MLNX     	 Mellanox Technologies Ltd. 
MLP      	 Maui Land & Pineapple Company Inc. 
MLPA     	Global X MLP ETF
MLPJ     	Global X Junior MLP ETF
MLR      	 Miller Industries Inc. 
MLU      	 MetLife Inc. 
MLVF     	 Malvern Bancorp Inc. 
MM       	 Millennial Media Inc. 
MMC      	 Marsh & McLennan Companies Inc. 
MMD      	MainStay DefinedTerm Municipal Opportunities Fund
MMLP     	Martin Midstream Partners L.P.
MMM      	3M Company
MMP      	Magellan Midstream Partners L.P.
MMR      	McMoRan Exploration Company
MMS      	 Maximus Inc. 
MMSI     	 Merit Medical Systems Inc. 
MMT      	MFS Multimarket Income Trust
MMTM     	SPDR S&P 1500 Momentum Tilt ETF
MMU      	 Western Asset Managed Municipals Fund Inc. 
MMUS     	 MakeMusic Inc. 
MMV      	Eaton Vance Massachusetts Municipal Income Trust
MMYT     	MakeMyTrip Limited
MMZ^K    	SiM Internal Test 6
MN       	 Manning & Napier Inc. 
MNA      	IndexIQ ARB Merger Arbitrage ETF
MNDO     	MIND C.T.I. Ltd.
MNE      	Blackrock Muni New York Intermediate Duration Fund Inc
MNGA     	MagneGas Corporation
MNGL     	Blue Wolf Mongolia Holdings Corp.
MNGLU    	Blue Wolf Mongolia Holdings Corp.
MNGLW    	Blue Wolf Mongolia Holdings Corp.
MNI      	McClatchy Company (The)
MNKD     	MannKind Corporation
MNOV     	 MediciNova Inc. 
MNP      	 Western Asset Municipal Partners Fund Inc. 
MNR      	Monmouth Real Estate Investment Corporation
MNR^A    	Monmouth Real Estate Investment Corporation
MNR^B    	Monmouth Real Estate Investment Corporation
MNRK     	 Monarch Financial Holdings Inc. 
MNRO     	 Monro Muffler Brake Inc. 
MNST     	Monster Beverage Corporation
MNTA     	 Momenta Pharmaceuticals Inc. 
MNTG     	 MTR Gaming Group Inc. 
MNTX     	 Manitex International Inc. 
MO       	Altria Group
MOAT     	Market Vectors Morningstar Wide Moat ETF
MOBI     	Sky-mobi Limited
MOC      	Command Security Corporation
MOCO     	 MOCON Inc. 
MOD      	Modine Manufacturing Company
MODN     	 Model N Inc. 
MOFG     	 MidWestOne Financial Group Inc. 
MOG/A    	Moog Inc.
MOG/B    	Moog Inc.
MOH      	Molina Healthcare Inc
MOLX     	Molex Incorporated
MOLXA    	Molex Incorporated
MOM      	QuantShares U.S. Market Neutral Momentum Fund ETF
MON      	Monsanto Company
MONY     	iShares Financials Sector Bond ETF
MOO      	Market Vectors-Agribusiness ETF
MORN     	 Morningstar Inc. 
MORT     	Market Vectors Mortgage REIT Income ETF
MOS      	Mosaic Company (The)
MOSY     	 MoSys Inc. 
MOV      	Movado Group Inc.
MOVE     	 Move Inc. 
MPA      	Blackrock MuniYield Pennsylvania Quality Fund
MPAA     	 Motorcar Parts of America Inc. 
MPAC     	MOD-PAC CORP.
MPB      	Mid Penn Bancorp
MPC      	Marathon Petroleum Corporation
MP^D     	Mississippi Power Company
MPEL     	Melco Crown Entertainment Limited
MPET     	Magellan Petroleum Corporation
MPG      	 MPG Office Trust Inc. 
MPG^A    	 MPG Office Trust Inc. 
MPLX     	MPLX LP
MPO      	 Midstates Petroleum Company Inc. 
MPR      	Met-Pro Corporation
MPV      	Babson Capital Participation Investors
MPW      	 Medical Properties Trust Inc. 
MPWR     	 Monolithic Power Systems Inc. 
MPX      	Marine Products Corporation
MQT      	 Blackrock MuniYield Quality Fund II Inc. 
MQY      	 Blackrock MuniYield Quality Fund Inc. 
MR       	Mindray Medical International Limited
MRC      	MRC Global Inc.
MRCC     	Monroe Capital Corporation
MRCY     	Mercury Systems Inc
MRF      	 American Income Fund Inc. 
MRGE     	Merge Healthcare Incorporated.
MRGR     	ProShares Merger ETF
MRH      	Montpelier Re Holdings Ltd.
MRH^A    	Montpelier Re Holdings Ltd.
MRIN     	Marin Software Incorporated
MRK      	 Merck & Company Inc. 
MRLN     	Marlin Business Services Corp.
MRO      	Marathon Oil Corporation
MRTN     	 Marten Transport Ltd. 
MRVL     	Marvell Technology Group Ltd.
MS       	Morgan Stanley
MSA      	Mine Safety Appliances Company
MS^A     	Morgan Stanley
MSB      	Mesabi Trust
MSBF     	MSB Financial Corp.
MSCA     	Main Street Capital Corporation
MSCC     	Microsemi Corporation
MSCI     	MSCI Inc
MSD      	 Morgan Stanley Emerging Markets Debt Fund Inc. 
MSEX     	Middlesex Water Company
MSF      	 Morgan Stanley Emerging Markets Fund Inc. 
MSFG     	 MainSource Financial Group Inc. 
MSFT     	Microsoft Corporation
MSG      	The Madison Square Garden Company
MSI      	 Motorola Solutions Inc. 
MSJ      	Morgan Stanley
MSK      	Morgan Stanley
MSL      	MidSouth Bancorp
MSLI     	Merus Labs International Inc.
MSM      	 MSC Industrial Direct Company Inc. 
MSN      	Emerson Radio Corporation
MSO      	 Martha Stewart Living Omnimedia Inc. 
MSON     	 MISONIX Inc. 
MSP      	Madison Strategic Sector Premium Fund
MSPD     	 Mindspeed Technologies Inc. 
MSTR     	MicroStrategy Incorporated
MSTX     	 Mast Therapeutics Inc. 
MSXX     	PureFunds ISE Mining Service ETF
MSZ      	Morgan Stanley
MT       	ArcelorMittal
MTB      	M&T Bank Corporation
MTB^     	M&T Bank Corporation
MTB^A    	M&T Bank Corporation
MTB^C    	M&T Bank Corporation
MTB/WS   	M&T Bank Corporation
MTCN     	ArcelorMittal
MTD      	 Mettler-Toledo International Inc. 
MTDR     	Matador Resources Company
MTEX     	 Mannatech Incorporated 
MTG      	MGIC Investment Corporation
MTGE     	American Capital Mortgage Investment Corp.
MTH      	Meritage Corporation
MTK      	SPDR Morgan Stanley Technology ETF
MTL      	Mechel OAO
MTL^     	Mechel OAO
MTN      	 Vail Resorts Inc. 
MTOR     	 Meritor Inc. 
MTR      	Mesa Royalty Trust
MTRN     	Materion Corporation
MTRX     	Matrix Service Company
MTS      	 Montgomery Street Income Securities Inc. 
MTSC     	MTS Systems Corporation
MTSI     	 M/A-COM Technology Solutions Holdings Inc. 
MTSL     	MER Telemanagement Solutions Ltd.
MTSN     	 Mattson Technology Inc. 
MTT      	Western Asset Municipal Defined Opportunity Trust Inc
MTU      	Mitsubishi UFJ Financial Group Inc
MTW      	 Manitowoc Company Inc. (The) 
MTX      	Minerals Technologies Inc.
MTZ      	 MasTec Inc. 
MU       	 Micron Technology Inc. 
MUA      	 Blackrock MuniAssets Fund Inc. 
MUAB     	iShares 2013 S&P AMT-Free Municipal Series ETF
MUAC     	iShares 2014 S&P AMT-Free Municipal Series ETF
MUAD     	iShares 2015 S&P AMT-Free Municipal Series ETF
MUAE     	iShares 2016 S&P AMT-Free Municipal Series ETF
MUAF     	iShares 2017 S&P AMT-Free Municipal Series ETF
MUAG     	iShares 2018 S&P AMT-Free Municipal Series
MUB      	iShares S&P National Municipal Bond Fund ETF
MUC      	 Blackrock MuniHoldings California Quality Fund  Inc. 
MUE      	 Blackrock MuniHoldings Quality Fund II Inc. 
MUH      	 Blackrock MuniHoldings Fund II Inc. 
MUI      	Blackrock Muni Intermediate Duration Fund Inc
MUJ      	 Blackrock MuniHoldings New Jersey Insured Fund Inc. 
MUNI     	PIMCO Intermediate Municipal Bond Strategy Fund ETF
MUR      	Murphy Oil Corporation
MUS      	 Blackrock MuniHoldings Quality Fund Inc. 
MUSA     	Metals USA Holdings Corp.
MUX      	McEwen Mining Inc.
MVC      	 MVC Capital Inc. 
MVCB     	 MVC Capital Inc. 
MVF      	 MuniVest Fund Inc. 
MVG      	Mag Silver Corporation
MVIS     	 Microvision Inc. 
MVISW    	 Microvision Inc. 
MVO      	MV Oil Trust
MVT      	 Blackrock MuniVest Fund II Inc. 
MVV      	ProShares Ultra MidCap400 ETF
MW       	 Men&#39;s Wearhouse Inc. (The) 
MWA      	MUELLER WATER PRODUCTS
MWE      	 MarkWest Energy Partners LP 
MWG      	Morgan Stanley
MWIV     	 MWI Veterinary Supply Inc. 
MWO      	Morgan Stanley
MWR      	Morgan Stanley
MWV      	Meadwestvaco Corporation
MWW      	 Monster Worldwide Inc. 
MX       	MagnaChip Semiconductor Corporation
MXA      	Minnesota Municipal Income Portfolio Inc.
MXC      	Mexco Energy Corporation
MXE      	 Mexico Equity and Income Fund Inc. (The) 
MXF      	 Mexico Fund Inc. (The) 
MXI      	iShares S&P Global Materials Sector Index Fund ETF
MXIM     	 Maxim Integrated Products Inc. 
MXL      	 MaxLinear Inc 
MXN      	 First American Minnesota Municipal Income Fund II Inc. 
MXT      	Maxcom Telecomunicaciones SAB de CV
MXWL     	 Maxwell Technologies Inc. 
MY       	China Ming Yang Wind Power Group Limited
MYC      	 Blackrock MuniYield California Fund Inc. 
MYD      	 Blackrock MuniYield Fund Inc. 
MYE      	 Myers Industries Inc. 
MYF      	Blackrock MuniYield Investment Fund
MYGN     	 Myriad Genetics Inc. 
MYI      	 Blackrock MuniYield Quality Fund III Inc. 
MYJ      	 Blackrock MuniYield New Jersey Fund Inc. 
MYL      	Mylan Inc.
MYM      	 Blackrock MuniYield Michigan Quality Fund II Inc. 
MYN      	 Blackrock MuniYield New York Quality Fund Inc. 
MYRG     	 MYR Group Inc. 
MYY      	ProShares Short MidCap400 ETF
MZA      	 MuniYield Arizona Fund Inc. 
MZF      	Managed Duration Investment Grade Municipal Fund
MZZ      	ProShares UltraShort MidCap400 ETF
N        	Netsuite Inc
NAC      	Nuveen California Dividend Advantage Municipal Fund
NAD      	Nuveen Dividend Advantage Municipal Fund
NAD^C    	Nuveen Dividend Advantage Municipal Fund
NAFC     	Nash-Finch Company
NAGS     	Teucrium Natural Gas Fund ETF
NAI      	AllianzGI International & Premium Strategy Fund
NAII     	 Natural Alternatives International Inc. 
NAK      	 Northern Dynasty Minerals Ltd. 
NAN      	Nuveen New York Dividend Advantage Municipal Fund
NAN^C    	Nuveen New York Dividend Advantage Municipal Fund
NAN^D    	Nuveen New York Dividend Advantage Municipal Fund
NANO     	Nanometrics Incorporated
NASB     	NASB Financial Inc.
NAT      	Nordic American Tankers Limited
NATH     	 Nathan&#39;s Famous Inc. 
NATI     	National Instruments Corporation
NATL     	National Interstate Corporation
NATR     	 Nature&#39;s Sunshine Products Inc. 
NAUH     	 National American University Holdings Inc. 
NAV      	Navistar International Corporation
NAVB     	 Navidea Biopharmaceuticals Inc. 
NAV^D    	Navistar International Corporation
NAVG     	 The Navigators Group Inc. 
NAVR     	Navarre Corporation
NAZ      	Nuveen Arizona Premium Income Municipal Fund
NAZ^C    	Nuveen Arizona Premium Income Municipal Fund
NAZ^D    	Nuveen Arizona Premium Income Municipal Fund
NBB      	Nuveen Build America Bond Fund
NBBC     	NewBridge Bancorp
NBD      	Nuveen Build America Bond Opportunity Fund
NBG      	National Bank of Greece SA
NBG^A    	National Bank of Greece SA
NBH      	Neuberger Berman Intermediate Municipal Fund Inc.
NBHC     	National Bank Holdings Corporation
NBIX     	 Neurocrine Biosciences Inc. 
NBL      	Noble Energy Inc.
NBN      	Northeast Bancorp
NBO      	Neuberger Berman New York Intermediate Municipal Fund Inc.
NBR      	Nabors Industries Ltd.
NBS      	 Neostem Inc. 
NBTB     	NBT Bancorp Inc.
NBTF     	NB&T FINANCIAL GROUP INC
NBW      	Neuberger Berman California Intermediate Municipal Fund Inc.
NBY      	 NovaBay Pharmaceuticals Inc. 
NC       	 NACCO Industries Inc. 
NCA      	 Nuveen California Municipal Value Fund Inc. 
NCB      	Nuveen California Municipal Value Fund 2
NCBC     	 New Century Bancorp Inc. (NC) 
NCI      	 Navigant Consulting Inc. 
NCIT     	 NCI Inc. 
NCLH     	Norwegian Cruise Line Holdings Ltd.
NCMI     	 National CineMedia Inc. 
NCO      	 Nuveen California Municipal Market Opportunity Fund Inc. 
NCP      	 Nuveen California Performance Plus Municipal Fund Inc. 
NCQ      	NovaCopper Inc.
NCR      	NCR Corporation
NCS      	 NCI Building Systems Inc. 
NCT      	Newcastle Investment Corporation
NCT^B    	Newcastle Investment Corporation
NCT^C    	Newcastle Investment Corporation
NCT^D    	Newcastle Investment Corporation
NCTY     	The9 Limited
NCU      	Nuveen California Premium Income Municipal Fund
NCU^C    	Nuveen California Premium Income Municipal Fund
NCV      	AllianzGI Convertible & Income Fund
NCZ      	AllianzGI Convertible & Income Fund II
NDAQ     	 The NASDAQ OMX Group Inc. 
NDP      	 Tortoise Energy Independence Fund Inc. 
NDRO     	Enduro Royalty Trust
NDSN     	Nordson Corporation
NDZ      	Nordion Inc.
NE       	Noble Corporation
NEA      	Nuveen AMT-Free Municipal Income Fund
NEA^C    	Nuveen AMT-Free Municipal Income Fund
NECB     	 Northeast Community Bancorp Inc. 
NED      	Noah Education Holdings Ltd.
NEE      	 NextEra Energy Inc. 
NEE^C    	 NextEra Energy Inc. 
NEE^F    	 NextEra Energy Inc. 
NEE^G    	 NextEra Energy Inc. 
NEE^H    	 NextEra Energy Inc. 
NEE^I    	 NextEra Energy Inc. 
NEE^J    	 NextEra Energy Inc. 
NEE^O    	 NextEra Energy Inc. 
NEM      	Newmont Mining Corporation
NEN      	New England Realty Associates Limited Partnership
NEO      	 NeoGenomics Inc. 
NEOG     	Neogen Corporation
NEON     	Neonode Inc.
NEPT     	Neptune Technologies & Bioresources Inc
NETC     	NET Servicos de Comunicacao S.A.
NETE     	 Net Element International Inc. 
NEU      	NewMarket Corporation
NEV      	Nuveen Enhanced Municipal Value Fund
NEWL     	NewLead Holdings Ltd.
NEWN     	New Energy Systems Group.
NEWP     	Newport Corporation
NEWS     	 NewStar Financial Inc. 
NEWT     	Newtek Business Services Inc.
NFBK     	 Northfield Bancorp Inc. 
NFEC     	NF Energy Saving Corporation
NFG      	National Fuel Gas Company
NFJ      	 AllianzGI NFJ Dividend Interest & Premium Strategy Fund 
NFLX     	 Netflix Inc. 
NFO      	Guggenheim Insider Sentiment ETF
NFP      	National Financial Partners Corporation
NFSB     	 Newport Bancorp Inc. 
NFX      	Newfield Exploration Company
NG       	Novagold Resources Inc.
NGD      	NEW GOLD INC.
NGG      	 National Grid Transco PLC 
NGL      	NGL ENERGY PARTNERS LP
NGLS     	Targa Resources Partners LP
NGPC     	NGP Capital Resources Company
NGS      	 Natural Gas Services Group Inc. 
NGT      	Eastern American Natural Gas Trust
NGVC     	 Natural Grocers by Vitamin Cottage Inc. 
NGX      	Nuveen Massachusetts AMT-Free Municipal Income Fund
NGX^C    	Nuveen Massachusetts AMT-Free Municipal Income Fund
NGZ      	AllianzGI Global Equity & Convertible Income Fund
NHC      	National HealthCare Corporation
NHC^A    	National HealthCare Corporation
NHF      	NexPoint Credit Stategies Fund
NHI      	 National Health Investors Inc. 
NHS      	Neuberger Berman High Yield Strategies Fund
NHTB     	 New Hampshire Thrift Bancshares Inc. 
NI       	 NiSource Inc 
NICE     	NICE-Systems Limited
NICK     	 Nicholas Financial Inc. 
NID      	Nuveen Intermediate Duration Municipal Term Fund
NIE      	AllianzGI Equity & Convertible Income Fund
NIF      	 Nuveen Premier Municipal Opportunity Fund Inc. 
NIHD     	 NII Holdings Inc. 
NILE     	 Blue Nile Inc. 
NIM      	Nuveen Select Maturities Municipal Fund
NINE     	Ninetowns Internet Technology Group Company Limited
NIO      	 Nuveen Municipal Opportunity Fund Inc. 
NIQ      	Nuveenn Intermediate Duration Quality Municipal Term Fund
NJ       	Nidec Corporation (Nihon Densan Kabushiki Kaisha)
NJR      	NewJersey Resources Corporation
NJV      	Nuveen New Jersey Municipal Value Fund
NKA      	Niska Gas Storage Partners LLC
NKE      	 Nike Inc. 
NKG      	Nuveen Georgia Dividend Advantage Municipal Fund 2
NKG^C    	Nuveen Georgia Dividend Advantage Municipal Fund 2
NKG^D    	Nuveen Georgia Dividend Advantage Municipal Fund 2
NKG^E    	Nuveen Georgia Dividend Advantage Municipal Fund 2
NKSH     	 National Bankshares Inc. 
NKTR     	Nektar Therapeutics
NKX      	Nuveen California AMT-Free Municipal Income Fund
NKY      	Precidian MAXIS Nikkei 225 Index ETF
NL       	 NL Industries Inc. 
NLNK     	NewLink Genetics Corporation
NLP      	NTS Realty Holdings Limited Partnership
NLR      	Market Vectors-Nuclear Energy ETF
NLS      	 Nautilus Group Inc. (The) 
NLSN     	Nielsen Holdings N.V.
NLST     	 Netlist Inc. 
NLY      	Annaly Capital Management Inc
NLY^A    	Annaly Capital Management Inc
NLY^C    	Annaly Capital Management Inc
NLY^D    	Annaly Capital Management Inc
NM       	Navios Maritime Holdings Inc.
NMA      	 Nuveen Municipal Advantage Fund Inc. 
NMB      	Nuveen Massachusetts Dividend Advantage Municipal Fund
NMB^C    	Nuveen Massachusetts Dividend Advantage Municipal Fund
NMD      	Nuveen Municipal High Income Opportunity Fund
NMFC     	New Mountain Finance Corporation
NMI      	 Nuveen Municipal Income Fund Inc. 
NMK^B    	 Niagara Mohawk Holdings Inc. 
NMK^C    	 Niagara Mohawk Holdings Inc. 
NML      	Neuberger Berman MLP Income Fund Inc.
NMM      	Navios Maritime Partners LP
NMO      	 Nuveen Municipal Market Opportunity Fund Inc. 
NMR      	Nomura Holdings Inc ADR
NMRX     	Numerex Corp.
NMT      	Nuveen Massachusetts Premium Income Municipal Fund
NMT^C    	Nuveen Massachusetts Premium Income Municipal Fund
NMT^D    	Nuveen Massachusetts Premium Income Municipal Fund
NMY      	Nuveen Maryland Premium Income Municipal Fund
NMY^C    	Nuveen Maryland Premium Income Municipal Fund
NMY^D    	Nuveen Maryland Premium Income Municipal Fund
NMY^E    	Nuveen Maryland Premium Income Municipal Fund
NMY^F    	Nuveen Maryland Premium Income Municipal Fund
NMY^G    	Nuveen Maryland Premium Income Municipal Fund
NMY^H    	Nuveen Maryland Premium Income Municipal Fund
NMZ      	Nuveen Municipal High Income Opportunity Fund
NNA      	Navios Maritime Acquisition Corporation
NNA/U    	Navios Maritime Acquisition Corporation
NNA/WS   	Navios Maritime Acquisition Corporation
NNBR     	 NN Inc. 
NNC      	Nuveen North Carolina Premium Income Municipal Fund
NNC^C    	Nuveen North Carolina Premium Income Municipal Fund
NNC^D    	Nuveen North Carolina Premium Income Municipal Fund
NNC^E    	Nuveen North Carolina Premium Income Municipal Fund
NNC^F    	Nuveen North Carolina Premium Income Municipal Fund
NNC^G    	Nuveen North Carolina Premium Income Municipal Fund
NNI      	 Nelnet Inc. 
NNJ      	 Nuveen New Jersey Premium Income Municipal Fund Inc. 
NNN      	National Retail Properties
NNN^D    	National Retail Properties
NNP      	 Nuveen New York Performance Plus Municipal Fund Inc. 
NNY      	 Nuveen New York Municipal Value Fund Inc. 
NOA      	 North American Energy Partners Inc. 
NOAH     	Noah Holdings Ltd.
NOC      	Northrop Grumman Corporation
NOG      	 Northern Oil and Gas Inc. 
NOK      	Nokia Corporation
NOM      	Nuveen Missouri Premium Income Municipal Fund
NOM^C    	Nuveen Missouri Premium Income Municipal Fund
NOR      	Noranda Aluminum Holding Corporation
NORW     	Global X FTSE Norway 30 ETF
NOV      	 National Oilwel Varcol Inc. 
NOVB     	North Valley Bancorp
NOW      	 ServiceNow Inc. 
NP       	 Neenah Paper Inc. 
NPBC     	 National Penn Bancshares Inc. 
NPD      	China Nepstar Chain Drugstore Ltd
NPF      	 Nuveen Premier Municipal Income Fund Inc. 
NPI      	 Nuveen Premium Income Municipal Fund Inc. 
NPK      	 National Presto Industries Inc. 
NPM      	 Nuveen Premium Income Municipal Fund II Inc. 
NPN      	Nuveen Pennsylvania Municipal Value Fund
NPO      	Enpro Industries
NPP      	 Nuveen Performance Plus Municipal Fund Inc. 
NPSP     	 NPS Pharmaceuticals Inc. 
NPT      	 Nuveen Premium Income Municipal Fund IV Inc. 
NPTN     	NeoPhotonics Corporation
NPV      	Nuveen Virginia Premium Income Municipal Fund
NPV^A    	Nuveen Virginia Premium Income Municipal Fund
NPV^C    	Nuveen Virginia Premium Income Municipal Fund
NPV^D    	Nuveen Virginia Premium Income Municipal Fund
NPV^E    	Nuveen Virginia Premium Income Municipal Fund
NPX      	Nuveen Premium Income Municipal Opportunity Fund
NPY      	Nuveen Pennsylvania Premium Income Municipal Fund II
NQ       	NQ Mobile Inc.
NQC      	 Nuveen California Investment Quality Municipal Fund Inc. 
NQI      	 Nuveen Quality Municipal Fund Inc. 
NQJ      	 Nuveen New Jersey Investment Quality Municipal Fund Inc. 
NQM      	 Nuveen Investment Quality Municipal Fund Inc. 
NQP      	 Nuveen Pennsylvania Investment Quality Municipal Fund Inc. 
NQS      	 Nuveen Select Quality Municipal Fund Inc. 
NQU      	 Nuveen Quality Income Municipal Fund Inc. 
NR       	 Newpark Resources Inc. 
NRC      	National Rural Utilities Cooperative Finance Corp
NRCI     	National Research Corporation
NRF      	Northstar Realty Finance Corp.
NRF^A    	Northstar Realty Finance Corp.
NRF^B    	Northstar Realty Finance Corp.
NRF^C    	Northstar Realty Finance Corp.
NRF^D    	Northstar Realty Finance Corp.
NRG      	 NRG Energy Inc. 
NRGM     	 Inergy Midstream L.P. 
NRGY     	 Inergy L.P. 
NRIM     	Northrim BanCorp Inc
NRK      	Nuveen New York AMT-Free Municipal Income Fund
NRK^C    	Nuveen New York AMT-Free Municipal Income Fund
NRO      	 Neuberger Berman Real Estate Securities Income Fund Inc. 
NRP      	Natural Resource Partners LP
NRT      	North European Oil Royality Trust
NRU      	National Rural Utilities Cooperative Finance Corp
NS       	Nustar Energy L.P.
NSC      	Norfolk Souther Corporation
NSEC     	 National Security Group Inc. 
NSH      	 Nustar GP Holdings LLC 
NSIT     	 Insight Enterprises Inc. 
NSL      	Nuveen Senior Income Fund
NSLP     	New Source Energy Partners L.P.
NSM      	Nationstar Mortgage Holdings Inc.
NSP      	 Insperity Inc. 
NSPH     	 Nanosphere Inc. 
NSPR     	 InspireMD Inc. 
NSR      	 Neustar Inc. 
NSS      	 NuStar Logistics L.P. 
NSSC     	 NAPCO Security Technologies Inc. 
NSU      	Nevsun Resources Ltd
NSYS     	Nortech Systems Incorporated
NTAP     	 NetApp Inc. 
NTC      	Nuveen Connecticut Premium Income Municipal Fund
NTC^C    	Nuveen Connecticut Premium Income Municipal Fund
NTC^D    	Nuveen Connecticut Premium Income Municipal Fund
NTC^E    	Nuveen Connecticut Premium Income Municipal Fund
NTC^F    	Nuveen Connecticut Premium Income Municipal Fund
NTC^G    	Nuveen Connecticut Premium Income Municipal Fund
NTCT     	 NetScout Systems Inc. 
NTE      	 Nam Tai Electronics Inc. 
NTES     	 NetEase Inc. 
NTG      	 Tortoise MLP Fund Inc. 
NTGR     	 NETGEAR Inc. 
NTI      	Northern Tier Energy LP
NTIC     	Northern Technologies International Corporation
NTK      	Nortek Inc.
NTL      	Nortel Inversora SA
NTLS     	NTELOS Holdings Corp.
NTN      	 NTN Buzztime Inc. 
NTRI     	NutriSystem Inc
NTRS     	Northern Trust Corporation
NTS      	 NTS Inc. 
NTSC     	 National Technical Systems Inc. 
NTSP     	 NetSpend Holdings Inc. 
NTT      	Nippon Telegraph and Telephone Corporation
NTWK     	NetSol Technologies Inc.
NTX      	Nuveen Texas Quality Income Municipal Fund
NTX^C    	Nuveen Texas Quality Income Municipal Fund
NTZ      	 Natuzzi S.p.A. 
NU       	Northeast Utilities
NUAN     	 Nuance Communications Inc. 
NUC      	 Nuveen California Quality Income Municipal Fund Inc. 
NUCL     	iShares S&P Global Nuclear Energy Index Fund ETF
NUE      	Nucor Corporation
NUGT     	Direxion Daily Gold Miners Bull 2x Shares ETF
NUJ      	Nuveen New Jersey Dividend Advantage Municipal Fund 2
NUJ^C    	Nuveen New Jersey Dividend Advantage Municipal Fund 2
NUM      	Nuveen Michigan Quality Income Municipal Fund
NUM^C    	Nuveen Michigan Quality Income Municipal Fund
NUO      	Nuveen Ohio Quality Income Municipal Fund
NUO^A    	Nuveen Ohio Quality Income Municipal Fund
NUO^C    	Nuveen Ohio Quality Income Municipal Fund
NUO^D    	Nuveen Ohio Quality Income Municipal Fund
NURO     	 NeuroMetrix Inc. 
NUS      	 Nu Skin Enterprises Inc. 
NUTR     	Nutraceutical International Corporation
NUV      	Nuveen AMT-Free Municipal Value Fund
NUVA     	 NuVasive Inc. 
NUW      	Nuveen AMT-Free Municipal Value Fund
NVAX     	 Novavax Inc. 
NVC      	 Nuveen California Select Quality Municipal Fund Inc. 
NVDA     	NVIDIA Corporation
NVDQ     	Novadaq Technologies Inc
NVE      	 NV Energy Inc 
NVEC     	NVE Corporation
NVEEU    	 NV5 Holdings Inc. 
NVG      	Nuveen Dividend Advantage Municipal Income Fund
NVG^C    	Nuveen Dividend Advantage Municipal Income Fund
NVGN     	Novogen Limited
NVMI     	Nova Measuring Instruments Ltd.
NVO      	Novo Nordisk A/S
NVR      	 NVR Inc. 
NVS      	Novartis AG
NVSL     	Naugatuck Valley Financial Corporation
NVTL     	 Novatel Wireless Inc. 
NVX      	Nuveen California Dividend Advantage Municipal Fund 2
NVX^A    	Nuveen California Dividend Advantage Municipal Fund 2
NVX^C    	Nuveen California Dividend Advantage Municipal Fund 2
NVY      	Nuveen Pennsylvania Dividend Advantage Municipal Fund 2
NVY^C    	Nuveen Pennsylvania Dividend Advantage Municipal Fund 2
NWBI     	 Northwest Bancshares Inc. 
NWBO     	 Northwest Biotherapeutics Inc. 
NWBOW    	 Northwest Biotherapeutics Inc. 
NW^C     	Natl Westminster Pfd
NWE      	NorthWestern Corporation
NWFL     	Norwood Financial Corp.
NWL      	Newell Rubbermaid Inc.
NWLI     	National Western Life Insurance Company
NWN      	Northwest Natural Gas Company
NWPX     	Northwest Pipe Company
NWS      	News Corporation
NWSA     	News Corporation
NWY      	 New York & Company Inc. 
NX       	Quanex Building Products Corporation
NXC      	Nuveen Insured California Select Tax-Free Income Portfolio
NXJ      	Nuveen New Jersey Dividend Advantage Municipal Fund
NXJ^A    	Nuveen New Jersey Dividend Advantage Municipal Fund
NXK      	Nuveen New York Dividend Advantage Municipal Fund 2
NXK^C    	Nuveen New York Dividend Advantage Municipal Fund 2
NXM      	Nuveen Pennsylvania Dividend Advantage Municipal Fund
NXM^C    	Nuveen Pennsylvania Dividend Advantage Municipal Fund
NXN      	Nuveen Insured New York Select Tax-Free Income Portfolio
NXP      	Nuveen Select Tax Free Income Portfolio
NXPI     	NXP Semiconductors N.V.
NXQ      	Nuveen Select Tax Free Income Portfolio II
NXR      	Nuveen Select Tax Free Income Portfolio III
NXST     	 Nexstar Broadcasting Group Inc. 
NXTM     	 NxStage Medical Inc. 
NXZ      	Nuveen Dividend Advantage Municipal Fund 2
NY       	iShares NYSE 100 Index Fund ETF
NYC      	iShares NYSE Composite Index Fund ETF
NYCB     	 New York Community Bancorp Inc. 
NYCB^U   	 New York Community Bancorp Inc. 
NYF      	iShares S&P NY Muni ETF
NYH      	Eaton Vance New York Municipal Bond Fund II
NYMT     	 New York Mortgage Trust Inc. 
NYMX     	Nymox Pharmaceutical Corporation
NYNY     	 Empire Resorts Inc. 
NYT      	New York Times Company (The)
NYV      	Nuveen New York Municipal Value Fund 2
NYX      	 NYSE Euronext Inc. 
NZF      	Nuveen Dividend Advantage Municipal Fund 3
NZF^C    	Nuveen Dividend Advantage Municipal Fund 3
NZH      	Nuveen California Dividend Advantage Municipal Fund 3
NZH^A    	Nuveen California Dividend Advantage Municipal Fund 3
NZH^B    	Nuveen California Dividend Advantage Municipal Fund 3
NZH^C    	Nuveen California Dividend Advantage Municipal Fund 3
O        	Realty Income Corporation
OABC     	 OmniAmerican Bancorp Inc. 
OAK      	 Oaktree Capital Group LLC 
OAKS     	Five Oaks Investment Corp.
OAS      	Oasis Petroleum Inc.
OB       	 OneBeacon Insurance Group Ltd. 
OBAF     	 OBA Financial Services Inc. 
OBAS     	Optibase Ltd.
OBCI     	 Ocean Bio-Chem Inc. 
OBT      	Orbital Corporation Limited
OC       	Owens Corning Inc
OCC      	Optical Cable Corporation
OCFC     	OceanFirst Financial Corp.
OCLR     	 Oclaro Inc. 
OCLS     	 Oculus Innovative Sciences Inc. 
OCN      	Ocwen Financial Corporation
OCR      	 Omnicare Inc. 
OCR^A    	 Omnicare Inc. 
OCR^B    	 Omnicare Inc. 
OC/WS/B  	Owens Corning Inc
OCZ      	OCZ Technology Group Inc
ODC      	Oil-Dri Corporation Of America
ODFL     	 Old Dominion Freight Line Inc. 
ODP      	 Office Depot Inc. 
O^E      	Realty Income Corporation
OEF      	iShares S&P 100 Index Fund ETF
OEH      	Orient-Express Hotels Ltd.
OESX     	 Orion Energy Systems Inc. 
O^F      	Realty Income Corporation
OFC      	Corporate Office Properties Trust
OFC^H    	Corporate Office Properties Trust
OFC^J/CL 	Corporate Office Properties Trust
OFC^L    	Corporate Office Properties Trust
OFED     	Oconee Federal Financial Corp.
OFG      	 Oriental Financial Group Inc. 
OFG^A    	 Oriental Financial Group Inc. 
OFG^B    	 Oriental Financial Group Inc. 
OFG^D    	 Oriental Financial Group Inc. 
OFI      	 Overhill Farms Inc. 
OFIX     	Orthofix International N.V.
OFLX     	 Omega Flex Inc. 
OFS      	OFS Capital Corporation
OGE      	OGE Energy Corporation
OGEM     	EGShares Energy GEMS ETF
OGEN     	 Oragenics Inc. 
OGXI     	OncoGenex Pharmaceuticals Inc.
OHI      	 Omega Healthcare Investors Inc. 
OI       	 Owens-Illinois Inc. 
OIA      	Invesco Municipal Income Opportunities Trust
OIBR     	Oi S.A.
OIBR/C   	Oi S.A.
OIH      	Market Vectors Oil Services ETF
OII      	 Oceaneering International Inc. 
OIIM     	O2Micro International Limited
OILT     	 Oiltanking Partners L.P. 
OINK     	 Tianli Agritech Inc. 
OIS      	 Oil States International Inc. 
OKE      	 ONEOK Inc. 
OKS      	 ONEOK Partners L.P. 
OKSB     	 Southwest Bancorp Inc. 
OKSBP    	 Southwest Bancorp Inc. 
OLBK     	 Old Line Bancshares Inc. 
OLN      	Olin Corporation
OLP      	 One Liberty Properties Inc. 
OMAB     	Grupo Aeroportuario del Centro Norte S.A.B. de C.V.
OMC      	Omnicom Group Inc.
OMCL     	 Omnicell Inc. 
OME      	Omega Protein Corporation
OMER     	Omeros Corporation
OMEX     	 Odyssey Marine Exploration Inc. 
OMG      	 OM Group Inc. 
OMI      	 Owens & Minor Inc. 
OMN      	OMNOVA Solutions Inc.
OMPI     	 Obagi Medical Products Inc. 
OMTH     	 Omthera Pharmaceuticals Inc. 
OMX      	Officemax Incorporated
ONB      	Old National Bancorp Capital Trust I
ONCY     	 Oncolytics Biotech Inc. 
ONE      	 Higher One Holdings Inc. 
ONEF     	RussellETF Equity ETF
ONEQ     	Fidelity Nasdaq Composite Index Tracking Stock
ONFC     	Oneida Financial Corp.
ONNN     	ON Semiconductor Corporation
ONP      	 Orient Paper Inc. 
ONTY     	Oncothyreon Inc.
ONVI     	 Onvia Inc. 
ONXX     	 ONYX Pharmaceuticals Inc. 
OOZ^K    	SiM Internal Test 7
OPAY     	 Official Payments Holdings Inc. 
OPEN     	 OpenTable Inc. 
OPHC     	 OptimumBank Holdings Inc. 
OPK      	Opko Health Inc
OPLK     	 Oplink Communications Inc. 
OPOF     	Old Point Financial Corporation
OPTR     	 Optimer Pharmaceuticals Inc. 
OPTT     	 Ocean Power Technologies Inc. 
OPXA     	 Opexa Therapeutics Inc. 
OPY      	 Oppenheimer Holdings Inc. 
ORA      	 Ormat Technologies Inc. 
ORB      	Orbital Sciences Corporation
ORBC     	ORBCOMM Inc.
ORBK     	Orbotech Ltd.
ORBT     	Orbit International Corporation
ORC      	 Orchid Island Capital Inc. 
ORCL     	Oracle Corporation
OREX     	 Orexigen Therapeutics Inc. 
ORI      	Old Republic International Corporation
ORIG     	Ocean Rig UDW Inc.
ORIT     	Oritani Financial Corp.
ORLY     	 O&#39;Reilly Automotive Inc. 
ORMP     	Oramed Pharmaceuticals Inc.
ORN      	Orion Marine Group Inc
ORRF     	Orrstown Financial Services Inc
OSBC     	 Old Second Bancorp Inc. 
OSBCP    	 Old Second Bancorp Inc. 
OSH      	Orchard Supply Hardware Stores Corporation
OSHC     	Ocean Shore Holding Co.
OSIR     	 Osiris Therapeutics Inc. 
OSIS     	 OSI Systems Inc. 
OSK      	Oshkosh Corporation
OSM      	SLM Corporation
OSN      	 Ossen Innovation Co. Ltd. 
OSTK     	 Overstock.com Inc. 
OSUR     	 OraSure Technologies Inc. 
OTEX     	Open Text Corporation
OTIV     	On Track Innovations Ltd
OTT      	 Otelco Inc. 
OTTR     	Otter Tail Corporation
OUTD     	 Outdoor Channel Holdings Inc. 
OVBC     	Ohio Valley Banc Corp.
OVLY     	Oak Valley Bancorp (CA)
OVRL     	 Overland Storage Inc. 
OVTI     	 OmniVision Technologies Inc. 
OWW      	 Orbitz Worldwide Inc. 
OXBT     	 Oxygen Biotherapeutics Inc. 
OXF      	 Oxford Resource Partners LP 
OXGN     	 OXiGENE Inc. 
OXLC     	Oxford Lane Capital Corp.
OXLCP    	Oxford Lane Capital Corp.
OXM      	 Oxford Industries Inc. 
OXY      	Occidental Petroleum Corporation
OZM      	Och-Ziff Capital Management Group LLC
OZRK     	Bank of the Ozarks
P        	 Pandora Media Inc. 
PAA      	 Plains All American Pipeline L.P. 
PAAS     	Pan American Silver Corp.
PAC      	 Grupo Aeroportuario Del Pacifico S.A. de C.V. 
PACB     	 Pacific Biosciences of California Inc. 
PACD     	Pacific Drilling S.A.
PACQ     	Prime Acquisition Corp.
PACQU    	Prime Acquisition Corp.
PACQW    	Prime Acquisition Corp.
PACR     	 Pacer International Inc. 
PACT     	Pactera Technology International Ltd
PACW     	PacWest Bancorp
PAF      	PowerShares FTSE RAFI Asia Pacific ex-Japan Portfolio ETF
PAG      	 Penske Automotive Group Inc. 
PAGG     	PowerShares Global Agriculture Portfolio
PAI      	 Pacific American Income Shares Inc. 
PAL      	 North American Palladium Ltd. 
PALL     	ETFS Physical Palladium Shares ETF
PAM      	Pampa Energia S.A.
PAMT     	Parametric Sound Corp.
PANL     	Universal Display Corporation
PANW     	 Palo Alto Networks Inc. 
PAR      	PAR Technology Corporation
PATH     	NuPathe Inc.
PATK     	 Patrick Industries Inc. 
PATR     	 Patriot Transportation Holding Inc. 
PAY      	 Verifone Systems Inc. 
PAYX     	 Paychex Inc. 
PB       	 Prosperity Bancshares Inc. 
PBA      	Pembina Pipeline Corp.
PBCP     	 Polonia Bancorp Inc. 
PBCT     	 People&#39;s United Financial Inc. 
PBD      	PowerShares Global Clean Energy Portfolio ETF
PBE      	PowerShares Dynamic Biotech &Genome ETF
PBF      	PBF Energy Inc.
PBH      	 Prestige Brand Holdings Inc. 
PBHC     	 Pathfinder Bancorp Inc. 
PBI      	Pitney Bowes Inc
PBI^     	Pitney Bowes Inc
PBI^A    	Pitney Bowes Inc
PBIB     	 Porter Bancorp Inc. 
PBI^B    	Pitney Bowes Inc
PBIP     	 Prudential Bancorp Inc. of Pennsylvania 
PBJ      	PowerShares Dynamic Food & Beverage ETF
PBM      	Pacific Booker Minerals Inc
PBMD     	Prima BioMed Ltd
PBNY     	Provident New York Bancorp
PBP      	PowerShares S&P 500 BuyWrite Portfolio ETF
PBR      	Petroleo Brasileiro S.A.- Petrobras
PBR/A    	Petroleo Brasileiro S.A.- Petrobras
PBS      	PowerShares Dynamic Media ETF
PBSK     	 Poage Bankshares Inc. 
PBT      	Permian Basin Royalty Trust
PBTH     	 PROLOR Biotech Inc. 
PBW      	PowerShares WilderHill Clean Energy Portfolio ETF
PBY      	 Pep Boys-Manny Moe & Jack (The) 
PBYI     	Puma Biotechnology Inc
PC       	Panasonic Corporation
PCAR     	PACCAR Inc.
PCBK     	Pacific Continental Corporation (Ore)
PCC      	PMC Commercial Trust
PCCC     	 PC Connection Inc. 
PCEF     	PowerShares CEF Income Composite Portfolio (Fund) ETF
PCF      	Putnam High Income Bond Fund
PCG      	Pacific Gas & Electric Co.
PCG^A    	Pacific Gas & Electric Co.
PCG^B    	Pacific Gas & Electric Co.
PCG^C    	Pacific Gas & Electric Co.
PCG^D    	Pacific Gas & Electric Co.
PCG^E    	Pacific Gas & Electric Co.
PCG^G    	Pacific Gas & Electric Co.
PCG^H    	Pacific Gas & Electric Co.
PCG^I    	Pacific Gas & Electric Co.
PCH      	Potlatch Corporation
PCI      	PIMCO Dynamic Credit Income Fund
PCK      	Pimco California Municipal Income Fund II
PCL      	 Plum Creek Timber Company Inc. 
PCLN     	priceline.com Incorporated
PCM      	 PIMCO Commercial Mortgage Securities Trust Inc. 
PCMI     	 PCM Inc. 
PCN      	Pimco Corporate & Income Stategy Fund
PCO      	Pendrell Corporation
PCOM     	 Points International Ltd. 
PCP      	Precision Castparts Corporation
PCQ      	PIMCO California Municipal Income Fund
PCRX     	 Pacira Pharmaceuticals Inc. 
PCS      	 MetroPCS Communications Inc. 
PCTI     	 PC-Tel Inc. 
PCY      	PowerShares Emerging Markets Sovereign Debt Portfolio ETF
PCYC     	 Pharmacyclics Inc. 
PCYG     	 Park City Group Inc. 
PCYO     	Pure Cycle Corporation
PDCE     	 PDC Energy Inc. 
PDCO     	 Patterson Companies Inc. 
PDEX     	 Pro-Dex Inc. 
PDFS     	 PDF Solutions Inc. 
PDH      	PetroLogistics LP
PDI      	PIMCO Dynamic Income Fund
PDII     	 PDI Inc. 
PDLI     	 PDL BioPharma Inc. 
PDM      	 Piedmont Office Realty Trust Inc. 
PDN      	PowerShares FTSE RAFI Developed Markets ex-U.S. Small-Mid Portfolio ETF
PDO      	Pyramid Oil Co
PDP      	PowerShares DWA Technical Leaders Portfolio ETF
PDS      	Precision Drilling Corporation
PDT      	John Hancock Premium Dividend Fund
PE^A/CL  	Peco Energy Company
PEB      	Pebblebrook Hotel Trust
PEB^A    	Pebblebrook Hotel Trust
PEB^B    	Pebblebrook Hotel Trust
PEB^C    	Pebblebrook Hotel Trust
PE^B/CL  	Peco Energy Company
PEBK     	 Peoples Bancorp of North Carolina Inc. 
PEBO     	Peoples Bancorp Inc.
PE^C/CL  	Peco Energy Company
PE^D/CL  	Peco Energy Company
PEG      	Public Service Enterprise Group Incorporated
PEGA     	Pegasystems Inc.
PEI      	Pennsylvania Real Estate Investment Trust
PEI^A    	Pennsylvania Real Estate Investment Trust
PEI^B    	Pennsylvania Real Estate Investment Trust
PEIX     	 Pacific Ethanol Inc. 
PEJ      	PowerShares Dynamic Leisure & Entertainment Portfolio ETF
PEK      	Market Vectors China ETF
PENN     	 Penn National Gaming Inc. 
PENX     	Penford Corporation
PEO      	Petroleum Resources Corporation
PEOP     	 Peoples Federal Bancshares Inc. 
PEP      	 Pepsico Inc. 
PER      	SandRidge Permian Trust
PERF     	 Perfumania Holdings Inc 
PERI     	Perion Network Ltd
PERM     	Global X Permanent ETF
PERY     	Perry Ellis International Inc.
PES      	Pioneer Energy Services Corp.
PESI     	 Perma-Fix Environmental Services Inc. 
PETM     	 PetSmart Inc 
PETS     	 PetMed Express Inc. 
PEX      	ProShares Global Listed Private Eq ETF
PEY      	PowerShares Dividend Achievers ETF
PLT      	 Plantronics Inc. 
PEZ      	PowerShares Dynamic Consumer Discretionary ETF
PF       	 Pinnacle Foods Inc. 
PFBC     	Preferred Bank
PFBI     	 Premier Financial Bancorp Inc. 
PFBX     	Peoples Financial Corporation
PFD      	Flaherty & Crumrine Preferred Income Fund Incorporated
PFE      	 Pfizer Inc. 
PFF      	iShares S&P US Preferred Stock Fund ETF
PFG      	Principal Financial Group Inc
PFG^B    	Principal Financial Group Inc
PFH      	CABCO Series 2004-101 Trust
PFI      	PowerShares Dynamic Financial ETF
PFIG     	PowerShares Fundamental Investment Grade Corporate Bond Portfolio ETF
PFIN     	 P & F Industries Inc. 
PFK      	 Prudential Financial Inc. 
PFL      	PIMCO Income Strategy Fund
PFLT     	PennantPark Floating Rate Capital Ltd.
PFM      	PowerShares Dividend Achievers ETF
PFMT     	Performant Financial Corporation
PFN      	PIMCO Income Strategy Fund II
PFO      	Flaherty & Crumrine Preferred Income Opportunity Fund Inc
PFPT     	 Proofpoint Inc. 
PFS      	 Provident Financial Services Inc 
PFSW     	 PFSweb Inc. 
PFX      	 Phoenix Companies Inc. (The) 
PFXF     	Market Vectors Pref Secs ex Fincls ETF
PG       	Procter & Gamble Company (The)
PGC      	Peapack-Gladstone Financial Corporation
PGF      	PowerShares Financial Preferred ETF
PGH      	Pengrowth Energy Corporation
PGI      	 Premiere Global Services Inc. 
PGJ      	PowerShares Golden Dragon Halter USX China Portfolio ETF
PGNX     	Progenics Pharmaceuticals Inc.
PGP      	Pimco Global Stocksplus & Income Fund
PGR      	Progressive Corporation (The)
PGRX     	Prospect Global Resources Inc.
PGTI     	 PGT Inc. 
PGX      	PowerShares Preferred Portfolio ETF
PH       	Parker-Hannifin Corporation
PHA      	 PulteGroup Inc. 
PHB      	PowerShares Fundamental High Yield Corporate Bond Portfolio ETF
PHD      	Pioneer Floating Rate Trust
PHDG     	Powershares S&P 500 Downside Hdg
PHF      	 Pacholder High Yield Fund Inc. 
PHG      	 Koninklijke Philips Electronics N.V. 
PHH      	PHH Corp
PHI      	Philippine Long Distance Telephone Company
PHII     	 PHI Inc. 
PHIIK    	 PHI Inc. 
PHK      	Pimco High Income Fund
PHM      	 PulteGroup Inc. 
PHMD     	 PhotoMedex Inc. 
PHO      	PowerShares Water Resource Port ETF
PHR      	 Prudential Financial Inc. 
PHT      	Pioneer High Income Trust
PHX      	Panhandle Royalty Company
PICB     	PowerShares International Corporate Bond Portfolio ETF
PICK     	iShares MSCI Global Select Metals & Mining Producers Fund ETF
PICO     	PICO Holdings Inc.
PID      	PowerShares Intl Dividend Achievers ETF
PIE      	PowerShares DWA Emerging Market Technical Leaders? Portfolio ETF
PII      	Polaris Industries Inc.
PIKE     	Pike Electric Corp.
PIM      	Putnam Master Intermediate Income Trust
PIN      	PowerShares India Portfolio ETF
PIO      	PowerShares Global Water Portfolio ETF
PIP      	 PharmAthene Inc 
PIQ      	PowerShares Dynamic MagniQuant ETF
PIR      	 Pier 1 Imports Inc. 
PIY      	 Merrill Lynch Depositor Inc. 
PIZ      	PowerShares DWA Developed Market Technical Leaders Portfolio ETF
PJA      	Preferred Plus Trust Ser QWS 2 Tr Ctf
PJC      	Piper Jaffray Companies
PJH      	 Prudential Financial Inc. 
PJI/CL   	PPlus Trust
PJL      	Preferred Plus Trust Ser QWS 2 Tr Ctf
PJP      	PowerShares Dynamic Pharmaceuticals ETF
PJS      	Preferred Plus Trust Ser QWS 2 Tr Ctf
PKB      	PowerShares Dynamic Build & Construction ETF
PKBK     	 Parke Bancorp Inc. 
PKD      	Parker Drilling Company
PKE      	Park Electrochemical Corporation
PKG      	Packaging Corporation of America
PKH      	 Merrill Lynch Depositor Inc. 
PKI      	 PerkinElmer Inc. 
PKO      	Pimco Income Opportunity Fund
PKOH     	Park-Ohio Holdings Corp.
PKT      	 Procera Networks Inc. 
PKW      	PowerShares Buyback Achievers ETF
PKX      	POSCO
PKY      	 Parkway Properties Inc. 
PKY^D    	 Parkway Properties Inc. 
PL       	Protective Life Corporation
PLAB     	 Photronics Inc. 
PL^B     	Protective Life Corporation
PLBC     	Plumas Bancorp
PL^C     	Protective Life Corporation
PLCC     	Paulson Capital Corp.
PLCE     	 The Children&#39;s Place Retail Stores Inc. 
PLCM     	 Polycom Inc. 
PLD      	 ProLogis Inc. 
PLD^L/CL 	 ProLogis Inc. 
PLD^M/CL 	 ProLogis Inc. 
PLD^O/CL 	 ProLogis Inc. 
PLD^P/CL 	 ProLogis Inc. 
PLD^R/CL 	 ProLogis Inc. 
PLD^S/CL 	 ProLogis Inc. 
PL^E     	Protective Life Corporation
PLG      	Platinum Group Metals Ltd.
PLL      	Pall Corporation
PLM      	Polymet Mining Corp.
PLMT     	 Palmetto Bancshares Inc. (SC) 
PLND     	Market Vectors Poland ETF
PLNR     	 Planar Systems Inc. 
PLOW     	 Douglas Dynamics Inc. 
PLP      	Protective Life Corporation
PLPC     	Preformed Line Products Company
PLPM     	 Planet Payment Inc. 
PLTM     	First Trust Exchange-Traded Fund II First Trust ISE Global Pla
PLUG     	 Plug Power Inc. 
PLUS     	ePlus inc.
PLW      	PowerShares 1-30 Treasury Ladder Portfolio ETF
PLX      	 Protalix BioTherapeutics Inc. 
PLXS     	Plexus Corp.
PLXT     	 PLX Technology Inc. 
PM       	Philip Morris International Inc
PMBC     	Pacific Mercantile Bancorp
PMC      	Pharmerica Corporation
PMCS     	 PMC - Sierra Inc. 
PMD      	Psychemedics Corporation
PME      	Pingtan Marine Enterprise Ltd.
PMF      	PIMCO Municipal Income Fund
PMFG     	 PMFG Inc. 
PML      	Pimco Municipal Income Fund II
PMM      	Putnam Managed Municipal Income Trust
PMNA     	PowerShares MENA Frontier Countries Portfolio
PMO      	Putnam Municipal Opportunities Trust
PMR      	PowerShares Dynamic Retail ETF
PMT      	PennyMac Mortgage Investment Trust
PMTC     	PTC Inc.
PMTI     	 Palomar Medical Technologies Inc. 
PMX      	PIMCO Municipal Income Fund III
PNBK     	Patriot National Bancorp Inc.
PNC      	 PNC Financial Services Group Inc. (The) 
PNC^L/CL 	 PNC Financial Services Group Inc. (The) 
PNC^P    	 PNC Financial Services Group Inc. (The) 
PNC^Q    	 PNC Financial Services Group Inc. (The) 
PNC/WS   	 PNC Financial Services Group Inc. (The) 
PNF      	PIMCO New York Municipal Income Fund
PNFP     	 Pinnacle Financial Partners Inc. 
PNG      	 PAA Natural Gas Storage L.P. 
PNI      	Pimco New York Municipal Income Fund II
PNK      	 Pinnacle Entertainment Inc. 
PNM      	 PNM Resources Inc. (Holding Co.) 
PNNT     	PennantPark Investment Corporation
PNQI     	PowerShares NASDAQ Internet Portfolio
PNR      	 Pentair Ltd. 
PNRA     	Panera Bread Company
PNRG     	PrimeEnergy Corporation
PNTA     	PennantPark Investment Corporation
PNTR     	Pointer Telocation Ltd.
PNW      	Pinnacle West Capital Corporation
PNX      	 Phoenix Companies Inc. (The) 
PNY      	 Piedmont Natural Gas Company Inc. 
PODD     	Insulet Corporation
POL      	PolyOne Corporation
POM      	 PEPCO Holdings Inc. 
POOL     	Pool Corporation
POPE     	Pope Resources
POR      	Portland General Electric Company
POST     	 Post Holdings Inc. 
POT      	Potash Corporation of Saskatchewan Inc.
POWI     	 Power Integrations Inc. 
POWL     	 Powell Industries Inc. 
POWR     	 PowerSecure International Inc 
POZN     	 Pozen Inc. 
PPA      	PowerShares Aerospace & Defense ETF
PPBI     	Pacific Premier Bancorp Inc
PPC      	Pilgrim&#39;s Pride Corporation
PPG      	 PPG Industries Inc. 
PPH      	Market Vectors Pharmaceutical ETF
PPHM     	Peregrine Pharmaceuticals Inc.
PPL      	PPL Corporation
PPLT     	ETFS Physical Platinum Shares ETF
PPL^U    	PPL Corporation
PPL^W    	PPL Corporation
PPO      	Polypore International Inc
PPP      	Primero Mining Corp
PPR      	ING Prime Rate Trust
PPS      	 Post Properties Inc. 
PPS^A    	 Post Properties Inc. 
PPT      	Putnam Premier Income Trust
PPX      	 PPL Capital Funding Inc. 
PQ       	Petroquest Energy Inc
PRA      	ProAssurance Corporation
PRAA     	 Portfolio Recovery Associates Inc. 
PRAN     	Prana Biotechnology Ltd
PRB      	Market Vectors Pre-Refunded Municipal Index ETF
PRCP     	 Perceptron Inc. 
PRE      	PartnerRe Ltd.
PRE^D    	PartnerRe Ltd.
PRE^E    	PartnerRe Ltd.
PRE^F    	PartnerRe Ltd.
PRF      	Powershares FTSE RAFI US 1000 Portfolio ETF
PRFT     	 Perficient Inc. 
PRFZ     	PowerShares FTSE RAFI US 1500 Small-Mid Portfolio
PRGN     	Paragon Shipping Inc.
PRGO     	Perrigo Company
PRGS     	Progress Software Corporation
PRGX     	 PRGX Global Inc. 
PRH      	 Prudential Financial Inc. 
PRI      	 Primerica Inc. 
PRIM     	Primoris Services Corporation
PRIS     	Promotora De Informaciones SA
PRIS/B   	Promotora De Informaciones SA
PRK      	Park National Corporation
PRKR     	 ParkerVision Inc. 
PRLB     	 Proto Labs Inc. 
PRLS     	Peerless Systems Corporation
PRMW     	Primo Water Corporation
PRN_     	PowerShares Dynamic Industrials ETF
PRO      	 PROS Holdings Inc. 
PROV     	 Provident Financial Holdings Inc. 
PRPH     	 ProPhase Labs Inc. 
PRSC     	The Providence Service Corporation
PRSS     	CafePress Inc.
PRTA     	Prothena Corporation plc
PRTS     	 U.S. Auto Parts Network Inc. 
PRU      	 Prudential Financial Inc. 
PRXI     	 Premier Exhibitions Inc. 
PRXL     	PAREXEL International Corporation
PRY      	Prospect Capital Corporation
PSA      	Public Storage
PSA^O    	Public Storage
PSA^P    	Public Storage
PSA^Q    	Public Storage
PSA^R    	Public Storage
PSA^S    	Public Storage
PSA^T    	Public Storage
RDA      	 RDA Microelectronics Inc. 
PSAU     	PowerShares Global Gold and Precious Metals Portfolio ETF
PSA^U    	Public Storage
PSA^V    	Public Storage
PSA^W    	Public Storage
PSA^X    	Public Storage
PSB      	 PS Business Parks Inc. 
PSBH     	 PSB Holdings Inc. 
PSB^R    	 PS Business Parks Inc. 
PSB^S    	 PS Business Parks Inc. 
PSB^T    	 PS Business Parks Inc. 
PSB^U    	 PS Business Parks Inc. 
PSB^V    	 PS Business Parks Inc. 
PSCC     	PowerShares Exchange-Traded Fund Trust II PowerShares S&P Smal
PSCD     	PowerShares Exchange-Traded Fund Trust II PowerShares S&P Smal
PSCE     	PowerShares Exchange-Traded Fund Trust II PowerShares S&P Smal
PSCF     	PowerShares Exchange-Traded Fund Trust II PowerShares S&P Smal
PSCH     	PowerShares Exchange-Traded Fund Trust II PowerShares S&P Smal
PSCI     	PowerShares Exchange-Traded Fund Trust II PowerShares S&P Smal
PSCM     	PowerShares Exchange-Traded Fund Trust II PowerShares S&P Smal
PSCT     	PowerShares Exchange-Traded Fund Trust II PowerShares S&P Smal
PSCU     	PowerShares Exchange-Traded Fund Trust II PowerShares S&P Smal
PSDV     	pSivida Corp.
PSE      	Pioneer Southwest Energy Partners L.P.
PSEC     	Prospect Capital Corporation
PSEM     	Pericom Semiconductor Corporation
PSF      	 Cohen & Steers Select Preferred and Income Fund Inc. 
PSI      	PowerShares Dynamic Semiconductors ETF
PSJ      	PowerShares Dynamic Software ETF
PSK      	SPDR Wells Fargo Preferred Stock ETF
PSL      	PowerShares Dynamic Consumer Staples ETF
PSMI     	Peregrine Semiconductor Corp.
PSMT     	 PriceSmart Inc. 
PSO      	 Pearson Plc 
PSP      	PowerShares Listed Private Equity ETF
PSQ      	ProShares Short QQQ ETF
PSR      	PowerShares Active U.S. Real Estate Fund ETF
PST      	ProShares UltraShort 7-10 Year Treasury ETF
PSTB     	Park Sterling Corporation
PSTI     	 Pluristem Therapeutics Inc. 
PSTR     	PostRock Energy Corporation
PSUN     	 Pacific Sunwear of California Inc. 
PSX      	Phillips 66
PT       	 Portugal Telecom SGPS S.A.. 
PTEK     	 PokerTek Inc. 
PTEN     	 Patterson-UTI Energy Inc. 
PTF      	PowerShares Dynamic Technology ETF
PTGI     	Primus Telecommunications Group Inc.
PTH      	PowerShares Dynamic Heathcare ETF
PTIE     	Pain Therapeutics
PTIX     	 Performance Technologies Incorporated 
PTN      	 Palatin Technologies Inc. 
PTNR     	Partner Communications Company Ltd.
PTNT     	Internet Patents Corporation
PTP      	 Platinum Underwriters Holdings Ltd.
PTR      	PetroChina Company Limited
PTRY     	 The Pantry Inc. 
PTSI     	 P.A.M. Transportation Services Inc. 
PTSX     	Point.360
PTX      	 Pernix Therapeutics Holdings Inc. 
PTY      	Pimco Corporate & Income Opportunity Fund
PUI      	PowerShares Dynamic Utilities ETF
PUK      	Prudential Public Limited Company
PUK^     	Prudential Public Limited Company
PUK^A    	Prudential Public Limited Company
PULB     	Pulaski Financial Corp.
PULS     	Pulse Electronics Corporation
PURE     	 PURE Bioscience Inc. 
PUW      	PowerShares WilderHill Progressive Energy Portfolio ETF
PVA      	Penn Virginia Corporation
PVD      	 Administradora de Fondos de Pensiones-Provida S.A. 
PVFC     	PVF Capital Corp.
PVG      	 Pretium Resources Inc. 
PVH      	PVH Corp.
PVI      	PowerShares VRDO Tax Free Weekly Portfolio ETF
PVR      	 PVR  Partners L.P. 
PVTB     	 PrivateBancorp Inc. 
PVTBP    	 PrivateBancorp Inc. 
PVTD     	 PrivateBancorp Inc. 
PW       	Power REIT
PWB      	PowerShares Dynamic LargeCap Growth ETF
PWC      	PowerShares XTF: Dynamic Market Portfolio ETF
PWE      	Penn West Petroleum Ltd
PWER     	 Power-One Inc. 
PWO      	PowerShares XTF: Dynamic OTC Portfolio ETF
PWOD     	 Penns Woods Bancorp Inc. 
PWR      	 Quanta Services Inc. 
PWRD     	 Perfect World Co. Ltd. 
PWV      	PowerShares Dynamic LargeCap Value ETF
PWX      	Providence and Worcester Railroad Company
PWZ      	PowerShares Insured CA Municipal Bond Portfolio ETF
PX       	 Praxair Inc. 
PXD      	Pioneer Natural Resources Company
PXE      	PowerShares Dynamic Energy E&P ETF
PXF      	PowerShares FTSE RAFI Developed Markets ex-U.S. Portfolio ETF
PXH      	PowerShares FTSE RAFI Emerging Markets Portfolio ETF
PXI      	PowerShares Dynamic Energy ETF
PXJ      	PowerShares Dynamic Oil Services ETF
PXLC     	PowerShares Fundamental Pure Large Core Portfolio ETF
PXLG     	PowerShares Fundamental Pure Large Growth ETF
PXLV     	PowerShares Fundamental Pure Large Value Portfolio ETF
PXLW     	 Pixelworks Inc. 
PXMC     	PowerShares Fundamental Pure Mid Core Portfolio ETF
PXMG     	PowerShares Fundamental Pure Mid Growth Portfolio ETF
PXMV     	PowerShares Fundamental Pure Mid Value Portfolio ETF
PXN      	PowerShares Lux Nanotech Portfolio ETF
PXP      	Plains Exploration & Production Company
PXQ      	PowerShares Dynamic Networking ETF
PXR      	PowerShares Global Emerging Markets Infrastructure Portfolio ETF
PXSC     	PowerShares Fundamental Pure Small Core Portfolio ETF
PXSG     	PowerShares Fundamental Pure Small Growth Portfolio ETF
PXSV     	PowerShares Fundamental Pure Small Value Portfolio ETF
PYB      	PPlus Trust
PYC      	PPlus Trust
PYG      	PPlus Trust
PYK      	PPlus Trust
PYN      	PIMCO New York Municipal Income Fund III
PYS      	PPlus Trust
PYT      	PPlus Trust
PYV      	PPlus Trust
PYY      	 Merrill Lynch Depositor Inc. 
PYZ      	PowerShares Dynamic Basic Materials ETF
PZA      	PowerShares Insured National Municipal Bond Portfolio ETF
PZB      	 Merrill Lynch Depositor Inc. 
PZC      	PIMCO California Municipal Income Fund III
PZD      	PowerShares Cleantech Portfolio ETF
PZE      	Petrobras Argentina S.A.
PZG      	Paramount Gold and Silver Corp.
PZI      	PowerShares Zacks Micro Cap ETF
PZN      	Pzena Investment Management Inc
PZT      	PowerShares Insured NY Municipal Bond Portfolio ETF
PZZA     	 Papa John&#39;S International Inc. 
PZZI     	 Pizza Inn Holdings Inc. 
QABA     	First Trust NASDAQ ABA Community Bank Index Fund
QADA     	QAD Inc.
QADB     	QAD Inc.
QAI      	IndexIQ Hedge Multi-Strategy Tracker ETF
QBAK     	Qualstar Corporation
QBC      	Cubic Energy Inc
QCCO     	 QC Holdings Inc. 
QCLN     	First Trust NASDAQ Clean Edge U.S. Liquid Series Index Fund
QCOM     	QUALCOMM Incorporated
QCOR     	 Questcor Pharmaceuticals Inc. 
QCRH     	 QCR Holdings Inc. 
QDEF     	FlexShares Quality Dividend Defensive
QDEL     	Quidel Corporation
QDF      	FlexShares Quality Dividend
QDYN     	FlexShares Quality Dividend Dynamic
QEH      	AdvisorShares QAM Equity Hedge ETF
QEP      	 QEP Resources Inc. 
QGEM     	EGShares Technology GEMS ETF
QGEN     	Qiagen N.V.
QID      	ProShares UltraShort QQQ ETF
QIHU     	Qihoo 360 Technology Co. Ltd.
QKLS     	 QKL Stores Inc. 
QLD      	ProShares Ultra QQQ ETF
QLGC     	QLogic Corporation
QLIK     	Qlik Technologies Inc.
QLTA     	iShares Aaa - A Rated Corporate Bond ETF
QLTB     	iShares Baa - Ba Rated Corporate Bd ETF
QLTC     	iShares B - Ca Rated Corporate Bond ETF
QLTI     	QLT Inc.
QLTY     	 Quality Distribution Inc. 
QLYS     	 Qualys Inc. 
QMM      	Quaterra Resources Inc
QMN      	IQ Hedge Market Neutral ETF
QNST     	 QuinStreet Inc. 
QQEW     	First Trust NASDAQ-100 Equal Weighted Index Fund
QQQ      	PowerShares QQQ Trust ETF
QQQC     	Global X NASDAQ China Technology ETF
QQQE     	Direxion NASDAQ-100 Equal Wtd Idx Shrs ETF
QQQX     	NASDAQ Premium Income and Growth Fund Inc.
QQXT     	First Trust NASDAQ-100 Ex-Technology Sector Index Fund
QQZ^K    	SiM Internal Test 8
QRE      	 QR Energy LP 
QRM      	Quest Rare Minerals Ltd
QSII     	 Quality Systems Inc. 
QTEC     	First Trust NASDAQ-100-Technology Sector Index Fund
QTM      	Quantum Corporation
QTWW     	 Quantum Fuel Systems Technologies Worldwide Inc. 
QUAD     	 Quad Graphics Inc 
QUIK     	QuickLogic Corporation
R        	 Ryder System Inc. 
RAD      	Rite Aid Corporation
RADA     	Rada Electronics Industries Limited
RAI      	Reynolds American Inc
RAIL     	 Freightcar America Inc. 
RALS     	ProShares RAFI Long/Short ETF
RAND     	Rand Capital Corporation
RAS      	RAIT Financial Trust
RAS^A    	RAIT Financial Trust
RAS^B    	RAIT Financial Trust
RAS^C    	RAIT Financial Trust
RATE     	 Bankrate Inc. 
RAVI     	FlexShares Ready Access Variable Inc ETF
RAVN     	 Raven Industries Inc. 
RAX      	 Rackspace Hosting Inc 
RBA      	Ritchie Bros. Auctioneers Incorporated
RBC      	Regal Beloit Corporation
RBCAA    	 Republic Bancorp Inc. 
RBCN     	 Rubicon Technology Inc. 
RBL      	SPDR S&P Russia ETF
RBNF     	Rurban Financial Corp
RBPAA    	 Royal Bancshares of Pennsylvania Inc. 
RBS      	Royal Bank Scotland plc (The)
RBS^E    	Royal Bank Scotland plc (The)
RBS^F    	Royal Bank Scotland plc (The)
RBS^G    	Royal Bank Scotland plc (The)
RBS^H    	Royal Bank Scotland plc (The)
RBS^I    	Royal Bank Scotland plc (The)
RBS^L    	Royal Bank Scotland plc (The)
RBS^M    	Royal Bank Scotland plc (The)
RBS^N    	Royal Bank Scotland plc (The)
RBS^P    	Royal Bank Scotland plc (The)
RBS^Q    	Royal Bank Scotland plc (The)
RBS^R    	Royal Bank Scotland plc (The)
RBS^S    	Royal Bank Scotland plc (The)
RBS^T    	Royal Bank Scotland plc (The)
RBY      	Rubicon Minerals Corp
RCD      	Guggenheim (Rydex) S&P Equal Weight Consumer Discretionary ETF
RCG      	 Renaissance Capital Growth & Income Fund III Inc. 
RCI      	 Rogers Communication Inc. 
RCII     	Rent-A-Center Inc.
RCKB     	 Rockville Financial Inc. 
RCKY     	 Rocky Brands Inc. 
RCL      	Royal Caribbean Cruises Ltd.
RCMT     	 RCM Technologies Inc. 
RCON     	 Recon Technology Ltd. 
RCS      	 RCM Strategic Global Government Fund Inc. 
RDC      	Rowan Companies plc
RDCM     	Radcom Ltd.
RDEN     	 Elizabeth Arden Inc. 
RDHL     	Redhill Biopharma Ltd.
RDI      	Reading International Inc
RDIB     	Reading International Inc
RDN      	Radian Group Inc.
RDNT     	 RadNet Inc. 
RDS/A    	Royal Dutch Shell PLC
RDS/B    	Royal Dutch Shell PLC
RDWR     	Radware Ltd.
RDY      	Dr. Reddy&#39;s Laboratories Ltd
RE       	 Everest Re Group Ltd. 
RE^B     	 Everest Re Group Ltd. 
RECN     	 Resources Connection Inc. 
RECV     	 Recovery Energy Inc. 
REDF     	Rediff.com India Limited
REE      	Rare Element Resources Ltd.
REED     	 Reeds Inc. 
REFR     	Research Frontiers Incorporated
REG      	Regency Centers Corporation
REG^F    	Regency Centers Corporation
REG^G    	Regency Centers Corporation
REGI     	 Renewable Energy Group Inc. 
REGN     	 Regeneron Pharmaceuticals Inc. 
REIS     	 Reis Inc 
REK      	ProShares Short Real Estate ETF
RELL     	 Richardson Electronics Ltd. 
RELV     	 Reliv&#39; International Inc. 
REM      	iShares FTSE NAREIT Mortgage REITs Index Fund ETF
REMX     	Market Vectors Rare Earth/Strategic Metals ETF
REMY     	 Remy International Inc. 
REN      	Resolute Energy Corporation
RENN     	Renren Inc.
RENT     	Rentrak Corporation
REN/WS   	Resolute Energy Corporation
RES      	 RPC Inc. 
RESI     	Altisource Residential Corporation
RETL     	Direxion Daily Retail Bull 2x Shares ETF
REV      	 Revlon Inc. 
REW      	ProShares UltraShort Technology ETF
REX      	REX American Resources Corporation
REXI     	 Resource America Inc. 
REXX     	Rex Energy Corporation
REZ      	iShares FTSE NAREIT Residential Index Fund ETF
RF       	Regions Financial Corporation
RF^A     	Regions Financial Corporation
RFG      	Guggenheim (Rydex) S&P MidCap 400 Pure Growth ETF
RFI      	 Cohen & Steers Total Return Realty Fund Inc. 
RFIL     	 RF Industries Ltd. 
RFMD     	 RF Micro Devices Inc. 
RFP      	Resolute Forest Products Inc.
RFV      	Guggenheim (Rydex) S&P MidCap 400 Pure Value ETF
RGA      	 Reinsurance Group of America Incorporated 
RGC      	Regal Entertainment Group
RGCO     	RGC Resources Inc.
RGDX     	 Response Genetics Inc. 
RGEN     	Repligen Corporation
RGI      	Guggenheim (Rydex) S&P Equal Weight Industrials ETF
RGLD     	 Royal Gold Inc. 
RGLS     	Regulus Therapeutics Inc.
RGP      	Regency Energy Partners LP
RGR      	 Sturm Ruger & Company Inc. 
RGS      	Regis Corporation
RH       	Restoration Hardware Holdings Inc.
RHI      	Robert Half International Inc.
RHP      	 Ryman Hospitality Properties Inc. 
RHS      	Guggenheim (Rydex) S&P Equal Weight Consumer Staples ETF
RHT      	 Red Hat Inc. 
RIC      	 Richmont Mines Inc. 
RICK     	 Rick&#39;s Cabaret International Inc. 
RIF      	RMR Real Estate Income Fund.
RIG      	Transocean Ltd.
RIGL     	 Rigel Pharmaceuticals Inc. 
RIMG     	Rimage Corporation
RINF     	ProShares 30 Year TIPS/TSY Spread ETF
RING     	iShares MSCI Global Gold Miners Fund ETF
RIO      	Rio Tinto Plc
RIOM     	Rio Alto Mining Limited
RIT      	LMP Real Estate Income Fund Inc
RITT     	RIT Technologies Ltd.
RIVR     	River Valley Bancorp.
RJD      	 Raymond James Financial Inc. 
RJET     	 Republic Airways Holdings Inc. 
RJF      	 Raymond James Financial Inc. 
RKH      	Market Vectors Bank and Brokerage ETF
RKT      	Rock-Tenn Company
RKUS     	 Ruckus Wireless Inc. 
RL       	Ralph Lauren Corporation
RLD      	RealD Inc
RLGT     	 Radiant Logistics Inc. 
RLGY     	Realogy Holdings Corp.
RLH      	Red Lion Hotels Corporation
RLH^A    	Red Lion Hotels Corporation
RLI      	RLI Corp.
RLJ      	RLJ Lodging Trust
RLJE     	 RLJ Entertainment Inc. 
RLOC     	 ReachLocal Inc. 
RLOG     	 Rand Logistics Inc. 
RLY      	SPDR SSgA Multi-Asset Real Return ETF
RM       	Regional Management Corp.
RMB      	Guggenheim Yuan Bond ETF
RMBS     	 Rambus Inc. 
RMCF     	 Rocky Mountain Chocolate Factory Inc. 
RMD      	ResMed Inc.
RMGN     	SCG Financial Acquisition Corp
RMKR     	 Rainmaker Systems Inc. 
RMT      	 Royce Micro-Cap Trust Inc. 
RMTI     	 Rockwell Medical Inc. 
RNDY     	 Roundy&#39;s Inc. 
RNE      	 Morgan Stanley Eastern Europe Fund Inc. 
RNET     	 RigNet Inc. 
RNF      	 Rentech Nitrogen Partners L.P. 
RNIN     	 Wireless Ronin Technologies Inc. 
RNN      	 Rexahn Pharmaceuticals Inc. 
RNO      	Rhino Resource Partners LP
RNP      	Cohen & Steers Reit and Preferred Income Fund Inc
RNR      	RenaissanceRe Holdings Ltd.
RNR^C    	RenaissanceRe Holdings Ltd.
RNR^D    	RenaissanceRe Holdings Ltd.
RNST     	Renasant Corporation
RNWK     	 RealNetworks Inc. 
ROC      	 Rockwood Holdings Inc. 
ROCK     	 Gibraltar Industries Inc. 
ROCM     	Rochester Medical Corporation
ROG      	Rogers Corporation
ROIA     	 Radio One Inc. 
ROIAK    	 Radio One Inc. 
ROIC     	Retail Opportunity Investments Corp.
ROICU    	Retail Opportunity Investments Corp.
ROICW    	Retail Opportunity Investments Corp.
ROIQ     	ROI Acquisition Corp.
ROIQU    	ROI Acquisition Corp.
ROIQW    	ROI Acquisition Corp.
ROK      	 Rockwell Automation Inc. 
ROL      	 Rollins Inc. 
ROLL     	RBC Bearings Incorporated
ROM      	ProShares Ultra Technology ETF
ROMA     	Roma Financial Corporation
ROOF     	IndexIQ US Real Estate Small Cap ETF
ROP      	 Roper Industries Inc. 
ROSE     	Rosetta Resources Inc.
ROSG     	Rosetta Genomics Ltd.
ROST     	 Ross Stores Inc. 
ROVI     	Rovi Corporation
ROX      	 Castle Brands Inc. 
ROYL     	 Royale Energy Inc. 
ROYT     	Pacific Coast Oil Trust
RP       	 RealPage Inc. 
RPAI     	 Retail Properties of America Inc. 
RPAI^A   	 Retail Properties of America Inc. 
RPG      	Guggenheim (Rydex) S&P 500 Pure Growth ETF
RPI      	 Roberts Realty Investors Inc. 
RPM      	RPM International Inc.
RPRX     	Repros Therapeutics Inc.
RPRXW    	Repros Therapeutics Inc.
RPRXZ    	Repros Therapeutics Inc.
RPT      	Ramco-Gershenson Properties Trust
RPT^D    	Ramco-Gershenson Properties Trust
RPTP     	Raptor Pharmaceutical Corp.
RPV      	Guggenheim (Rydex) S&P 500 Pure Value ETF
RPX      	Columbia Growth Equity Strategy ETF
RPXC     	RPX Corporation
RQI      	Cohen & Steers Quality Income Realty Fund Inc
RRC      	Range Resources Corporation
RRD      	R.R. Donnelley & Sons Company
RRF      	WisdomTree Global Real Return Fund ETF
RRGB     	 Red Robin Gourmet Burgers Inc. 
RRGR     	AdvisorShares Global Alpha & Beta ETF
RRMS     	 Rose Rock Midstream L.P. 
RRST     	RRSat Global Communications Network Ltd.
RRTS     	 Roadrunner Transportation Systems Inc 
RS       	Reliance Steel & Aluminum Co.
RSE      	 Rouse Properties Inc. 
RSG      	 Republic Services Inc. 
RSH      	Radioshack Corporation
RSO      	Resource Capital Corp.
RSO^A    	Resource Capital Corp.
RSO^B    	Resource Capital Corp.
RSOL     	 Real Goods Solar Inc. 
RSP      	Guggenheim (Rydex) S&P Equal Weight ETF
RST      	Rosetta Stone
RSTI     	 Rofin-Sinar Technologies Inc. 
RSX      	Market Vectors TR Russia ETF
RSXJ     	Market Vectors Russia Small-Cap ETF
RSYS     	RadiSys Corporation
RT       	 Ruby Tuesday Inc. 
RTEC     	 Rudolph Technologies Inc. 
RTH      	Market Vectors Retail ETF
RTI      	 RTI International Metals Inc. 
RTIX     	 RTI Biologics Inc. 
RTK      	 Rentech Inc. 
RTL      	iShares FTSE NAREIT Retail Index Fund ETF
RTM      	Guggenheim (Rydex) S&P Equal Weight Materials ETF
RTN      	Raytheon Company
RTR      	REVENUESHARES ADR FUND ETF
RUDR     	ALPS ETF Trust VelocityShares Russia Select DR ETF
RUE      	 rue21 Inc. 
RUK      	Reed Elsevier PLC
RUSHA    	 Rush Enterprises Inc. 
RUSHB    	 Rush Enterprises Inc. 
RUSL     	Direxion Daily Russia Bull 3x Shares ETF
RUSS     	Direxion Daily Russia Bear 3x Shares ETF
RUTH     	 Ruth&#39;s Hospitality Group Inc. 
RVBD     	 Riverbed Technology Inc. 
RVLT     	 Revolution Lighting Technologies Inc. 
RVM      	Revett Minerals Inc.
RVP      	 Retractable Technologies Inc. 
RVSB     	Riverview Bancorp Inc
RVT      	 Royce Value Trust Inc. 
RWC      	RELM Wireless Corporation
RWG      	Columbia Large-Cap Growth Equity Strategy ETF
RWJ      	REVENUESHARES SMALL CAP FUND ETF
RWK      	REVENUESHARES MID CAP FUND ETF
RWL      	REVENUESHARES LARGE CAP FUND ETF
RWM      	ProShares Short Russell2000 ETF
RWO      	SPDR Dow Jones Global Real Estate ETF
RWR      	SPDR Dow Jones REIT ETF
RWT      	 Redwood Trust Inc. 
RWV      	REVENUESHARES NAVELLIER OVERALL A-100 FUND ETF
RWW      	REVENUESHARES FINANCIALS SECTOR FUND ETF
RWX      	SPDR Dow Jones International Real Estate ETF
RXD      	ProShares UltraShort Health Care ETF
RXI      	iShares S&P Global Consumer Discretionary Sector Index Fund ETF
RXL      	ProShares Ultra Health Care ETF
RXN      	Rexnord Corporation
RY       	Royal Bank Of Canada
RYAAY    	Ryanair Holdings plc
RYE      	Guggenheim (Rydex) S&P Equal Weight Energy ETF
RYF      	Guggenheim (Rydex) S&P Equal Weight Financial ETF
RYH      	Guggenheim (Rydex) S&P Equal Weight Health Care ETF
RYJ      	Guggenheim Raymond James SB-1 Equity ETF
RYL      	 Ryland Group Inc. (The) 
RYN      	Rayonier Inc.
RYT      	Guggenheim (Rydex) S&P Equal Weight Technology ETF
RYU      	Guggenheim (Rydex) S&P Equal Weight Utilities ETF
RZA      	 Reinsurance Group of America Incorporated 
RZG      	Guggenheim (Rydex) S&P SmallCap 600 Pure Growth ETF
STM      	STMicroelectronics N.V.
RZV      	Guggenheim (Rydex) S&P SmallCap 600 Pure Value ETF
S        	Sprint  Nextel Corporation
SA       	 Seabridge Gold Inc. 
SAA      	ProShares Ultra SmallCap600 ETF
SAAS     	 inContact Inc. 
SAFM     	 Sanderson Farms Inc. 
SAFT     	 Safety Insurance Group Inc. 
SAGG     	Direxion Total Bond Market Bear 1x Shares ETF
SAH      	 Sonic Automotive Inc. 
SAI      	SAIC Inc
SAIA     	 Saia Inc. 
SAL      	 Salisbury Bancorp Inc. 
SALM     	Salem Communications Corporation
SAM      	 Boston Beer Company Inc. (The) 
SAN      	 Banco Santander S.A. 
SAN^A    	 Banco Santander S.A. 
SAN^B    	 Banco Santander S.A. 
SAN^C    	 Banco Santander S.A. 
SAND     	Sandstorm Gold Ltd
SAN^E    	 Banco Santander S.A. 
SAN^F    	 Banco Santander S.A. 
SAN^I    	 Banco Santander S.A. 
SANM     	Sanmina Corporation
SANW     	S&W Seed Company
SANWW    	S&W Seed Company
SANWZ    	S&W Seed Company
SAP      	SAP AG
SAPE     	Sapient Corporation
SAR      	Saratoga Investment Corp
SARA     	Saratoga Resources Inc
SASR     	 Sandy Spring Bancorp Inc. 
SATS     	EchoStar Corporation
SAVE     	 Spirit Airlines Inc. 
SB       	 Safe Bulkers Inc 
SBAC     	SBA Communications Corporation
SBB      	ProShares Short SmallCap600 ETF
SBBX     	Sussex Bancorp
SBCF     	Seacoast Banking Corporation of Florida
SBGI     	 Sinclair Broadcast Group Inc. 
SBGL     	Sibanye Gold Limited
SBH      	 Sally Beauty Holdings Inc. 
SBI      	Western Asset Intermediate Muni Fund Inc
SBLK     	Star Bulk Carriers Corp.
SBM      	ProShares Short Basic Materials ETF
SBNY     	Signature Bank
SBNYW    	Signature Bank
SBR      	Sabine Royalty Trust
SBRA     	 Sabra Healthcare REIT Inc. 
SBRAP    	 Sabra Healthcare REIT Inc. 
SBS      	Companhia de saneamento Basico Do Estado De Sao Paulo - Sabesp
SBSA     	 Spanish Broadcasting System Inc. 
SBSI     	 Southside Bancshares Inc. 
SBUX     	Starbucks Corporation
SBW      	Western Asset Worldwide Income Fund Inc.
SBY      	Silver Bay Realty Trust Corp.
SCBT     	SCBT Financial Corporation
SCC      	ProShares UltraShort Consumer Services ETF
SCCO     	Southern Copper Corporation
SCD      	LMP Capital and Income Fund Inc.
SCE^B    	Southern California Edison Company
SCE^C    	Southern California Edison Company
SCE^D    	Southern California Edison Company
SCE^E    	Southern California Edison Company
SCE^F    	Southern California Edison Company
SCE^G    	Southern California Edison Company
SCG      	Scana Corporation
SCHA     	Schwab U.S. Small-Cap ETF
SCHB     	Schwab U.S. Broad Market ETF
SCHC     	Schwab International Small-Cap Equity ETF
SCHD     	Schwab U.S. Dividend Equity ETF
SCHE     	Schwab Emerging Markets Equity ETF
SCHF     	Schwab International Equity ETF
SCHG     	Schwab U.S. Large-Cap Growth ETF
SCHH     	Schwab U.S. REIT ETF
SCHL     	Scholastic Corporation
SCHM     	Schwab U.S. Mid Cap ETF
SCHN     	 Schnitzer Steel Industries Inc. 
SCHO     	Schwab Short-Term U.S. Treasury ETF
SCHP     	Schwab U.S. TIPS ETF
SCHR     	Schwab Intermediate-Term U.S. Treasury ETF
SCHV     	Schwab U.S. Large-Cap Value ETF
SCHW     	The Charles Schwab Corporation
SCHW^B   	Schwab Charles Corporation
SCHX     	Schwab U.S. Large-Cap ETF
SCHZ     	Schwab U.S. Aggregate Bond ETF
SCI      	Service Corporation International
SCIF     	Market Vectors India Small-Cap ETF
SCIN     	EGShares India Small Cap ETF
SCJ      	iShares MSCI Japan Sm Cap ETF
SCL      	Stepan Company
SCL^     	Stepan Company
SCLN     	 SciClone Pharmaceuticals Inc. 
SCM      	Stellus Capital Investment Corporation
SCMP     	 Sucampo Pharmaceuticals Inc. 
SCO      	ProShares UltraShort DJ-UBS Crude Oil ETF
SCOK     	 SinoCoking Coal and Coke Chemical Industries Inc 
SCON     	Superconductor Technologies Inc.
SCOR     	 comScore Inc. 
SCPB     	SPDR Barclays Capital Short Term Corporate Bond ETF
SCR      	Simcere Pharmaceutical Group
SCS      	Steelcase Inc.
SCSC     	 ScanSource Inc. 
SCSS     	Select Comfort Corporation
SCTY     	SolarCity Corporation
SCU      	Scana Corporation
SCVL     	 Shoe Carnival Inc. 
SCX      	L.S. Starrett Company (The)
SCZ      	iShares MSCI EAFE Small Cap ETF
SD       	Sandridge Energy Inc.
SDBT     	 SoundBite Communications Inc. 
SDD      	ProShares UltraShort SmallCap600 ETF
SDIV     	Global X SuperDividend ETF
SDIX     	Strategic Diagnostics Inc.
SDK      	ProShares UltraShort Russell MidCap Growth ETF
SDLP     	Seadrill Partners LLC
SDO^A    	San Diego Gas & Electric Company
SDO^B    	San Diego Gas & Electric Company
SDO^C    	San Diego Gas & Electric Company
SDOG     	ALPS Sector Dividend Dogs ETF
SDO^H    	San Diego Gas & Electric Company
SDOW     	ProShares UltraPro Short Dow30 ETF
SDP      	ProShares UltraShort Utilities ETF
SDR      	SandRidge Mississippian Trust II
SDRL     	Seadrill Limited
SDS      	ProShares UltraShort S&P500 ETF
SDT      	SandRidge Mississippian Trust I
SDY      	SPDR S&P Dividend ETF
SE       	Spectra Energy Corp
SEA      	Guggenheim Shipping ETF
SEAC     	 SeaChange International Inc. 
SEB      	Seaboard Corporation
SED      	SED International Holdings Inc
SEE      	Sealed Air Corporation
SEED     	Origin Agritech Limited
SEF      	ProShares Short Financials ETF
SEIC     	SEI Investments Company
SEM      	Select Medical Holdings Corporation
SEMG     	Semgroup Corporation
SEMG/WS  	Semgroup Corporation
SENEA    	Seneca Foods Corp.
SENEB    	Seneca Foods Corp.
SEP      	 Spectra Energy Partners LP 
SEV      	 Sevcon Inc. 
SF       	Stifel Financial Corporation
SFB      	Stifel Financial Corporation
SFBC     	 Sound Financial Bancorp Inc. 
SFD      	 Smithfield Foods Inc. 
SFE      	 Safeguard Scientifics Inc. 
SFG      	 StanCorp Financial Group Inc. 
SFI      	iStar Financial Inc.
SFI^D    	iStar Financial Inc.
SFI^E    	iStar Financial Inc.
SFI^F    	iStar Financial Inc.
SFI^G    	iStar Financial Inc.
SFI^I    	iStar Financial Inc.
SFK      	ProShares UltraShort Russell1000 Growth ETF
SFL      	Ship Finance International Limited
SFLY     	 Shutterfly Inc. 
SFN      	Stifel Financial Corporation
SFNC     	Simmons First National Corporation
SFST     	 Southern First Bancshares Inc. 
SFUN     	SouFun Holdings Limited
SFY      	Swift Energy Company
SGA      	 Saga Communications Inc. 
SGB      	Southwest Georgia Financial Corporation
SGC      	 Superior Uniform Group Inc. 
SGEN     	 Seattle Genetics Inc. 
SGF      	 Singapore Fund Inc. (The) 
SGI      	Silicon Graphics International Corp
SGK      	 Schawk Inc. 
SGL      	 Strategic Global Income Fund Inc. 
SGMA     	 SigmaTron International Inc. 
SGMO     	 Sangamo BioSciences Inc. 
SGMS     	Scientific Games Corp
SGNT     	 Sagent Pharmaceuticals Inc. 
SGOC     	 SGOCO Group Ltd.
SGOL     	ETFS Physical Swiss Gold Shares ETF
SGRP     	 SPAR Group Inc. 
SGU      	 Star Gas Partners L.P. 
SGY      	Stone Energy Corporation
SGYP     	 Synergy Pharmaceuticals Inc. 
SGYPU    	 Synergy Pharmaceuticals Inc. 
SGYPW    	 Synergy Pharmaceuticals Inc. 
SGZA     	 Selective Insurance Group Inc. 
SH       	ProShares Short S&P500 ETF
SHBI     	Shore Bancshares Inc
SHEN     	Shenandoah Telecommunications Co
SHFL     	 SHFL Entertainment Inc. 
SHG      	Shinhan Financial Group Co Ltd
SHI      	 SINOPEC Shangai Petrochemical Company Ltd. 
SHIP     	Seanergy Maritime Holdings Corp
SHLD     	Sears Holdings Corporation
SHLM     	 A. Schulman Inc. 
SHLO     	 Shiloh Industries Inc. 
SHM      	SPDR Barclays Capital Short Term Municipal Bond ETF
SHO      	 Sunstone Hotel Investors Inc. 
SHO^D    	 Sunstone Hotel Investors Inc. 
SHOO     	 Steven Madden Ltd. 
SHOR     	 ShoreTel Inc. 
SHOS     	 Sears Hometown and Outlet Stores Inc. 
SHPG     	Shire plc
SHS      	Sauer-Danfoss Inc.
SHV      	iShares Barclays Short Treasury Bond Fund ETF
SHW      	Sherwin-Williams Company (The)
SHY      	iShares Barclays 1-3 Year Treasury Bond Fund ETF
SHZ      	 China Shen Zhou Mining & Resources Inc. 
SI       	Siemens AG
SIAL     	Sigma-Aldrich Corporation
SIBC     	 State Investors Bancorp Inc. 
SID      	National Steel Company
SIEB     	Siebert Financial Corp.
SIF      	 SIFCO Industries Inc. 
SIFI     	 SI Financial Group Inc. 
SIFY     	Sify Technologies Limited
SIG      	Signet Jewelers Limited
SIGA     	SIGA Technologies Inc.
SIGI     	 Selective Insurance Group Inc. 
SIGM     	 Sigma Designs Inc. 
SIJ      	ProShares UltraShort Industrials ETF
SIL      	Global X Silver Miners ETF
SILC     	Silicom Ltd
SILJ     	PureFunds ISE Junior Silver Small Cap Miners/Explorers ETF
SILU     	Sprott Resource Lending Corp.
SIM      	 Grupo Simec S.A. de C.V. 
SIMG     	 Silicon Image Inc. 
SIMO     	Silicon Motion Technology Corporation
SINA     	Sina Corporation
SINF     	ProShares UltraPro Short 10 Year TIPS/TSY Spread ETF
SINO     	 Sino-Global Shipping America Ltd. 
SIR      	Select Income REIT
SIRI     	Sirius XM Radio Inc.
SIRO     	 Sirona Dental Systems Inc. 
SIVB     	SVB Financial Group
SIVBO    	SVB Financial Group
SIVR     	ETFS Silver Trust ETF
SIX      	Six Flags Entertainment Corporation New
SIZ      	QuantShares U.S. Market Neutral Size Fund ETF
SJB      	ProShares Short High Yield ETF
SJF      	ProShares UltraShort Russell1000 Value ETF
SJH      	ProShares UltraShort Russell2000 Value ETF
SJI      	 South Jersey Industries Inc. 
SJL      	ProShares UltraShort Russell MidCap Value ETF
SJM      	J.M. Smucker Company (The)
SJNK     	SPDR BarCap ST High Yield Bond ETF
SJR      	Shaw Communications Inc.
SJT      	San Juan Basin Royalty Trust
SJW      	SJW Corporation
SKBI     	Skystar Bio-Pharmaceutical Company
SKF      	ProShares UltraShort Financials ETF
SKH      	 Skilled Healthcare Group Inc. 
SKK      	ProShares UltraShort Russell2000 Growth ETF
SKM      	 SK Telecom Corporation Ltd. 
SKS      	Saks Incorporated
SKT      	 Tanger Factory Outlet Centers Inc. 
SKUL     	 Skullcandy Inc. 
SKX      	 Skechers U.S.A. Inc. 
SKY      	Skyline Corporation
SKYW     	 SkyWest Inc. 
SKYY     	First Trust ISE Cloud Computing Index Fund
SLA      	 American Select Portfolio Inc. 
SLAB     	 Silicon Laboratories Inc. 
SLB      	Schlumberger N.V.
SLCA     	 U.S. Silica Holdings Inc. 
SLF      	Sun Life Financial Inc.
SLG      	SL Green Realty Corporation
SLG^C    	SL Green Realty Corporation
SLG^I    	SL Green Realty Corporation
SLGN     	 Silgan Holdings Inc. 
SLH      	 Solera Holdings Inc. 
SLI      	 SL Industries Inc. 
SLM      	SLM Corporation
SLMAP    	SLM Corporation
SLMBP    	SLM Corporation
SLP      	 Simulations Plus Inc. 
SLRA     	Solar Capital Ltd.
SLRC     	Solar Capital Ltd.
SLT      	Sterlite Industries (India) Limited
SLTC     	 Selectica Inc. 
SLTM     	 Solta Medical Inc 
SLV      	iShares Silver Trust ETF
SLVP     	iShares MSCI Global Silver Miners Fund ETF
SLW      	Silver Wheaton Corp
SLX      	Market Vectors Steel Index ETF Fund ETF
SLXP     	 Salix Pharmaceuticals Ltd. 
SLY      	SPDR S&P 600 Small Cap ETF (SLY) ETF
SLYG     	SPDR S&P 600 Small Cap Value ETF (SLYG) ETF
SLYV     	SPDR S&P 600 Small Cap Value ETF (SLYV) ETF
SM       	SM Energy Company
SMA      	Symmetry Medical Inc
SMB      	Market Vectors Short Municipal Index ETF
SMBC     	 Southern Missouri Bancorp Inc. 
SMCI     	 Super Micro Computer Inc. 
SMDD     	ProShares UltraPro Short MidCap400 ETF
SMED     	Sharps Compliance Corp
SMF      	Salient MLP and Energy Infrastructure Fund
SMFG     	Sumitomo Mitsui Financial Group Inc
SMG      	Scotts Miracle-Gro Company (The)
SMH      	Market Vectors Semiconductor ETF
SMI      	Semiconductor  Manufacturing International Corporation
SMIN     	iShares MSCI India Small Cap ETF
SMIT     	 Schmitt Industries Inc. 
SMK      	ProShares UltraShort MSCI Mexico Investable Market ETF
SMLP     	 Summit Midstream Partners LP 
SMLV     	SPDR Russell 2000 Low Volatility ETF
SMM      	Salient Midstream
SMMF     	 Summit Financial Group Inc. 
SMMU     	PIMCO Short Term Municipal Bond Strategy Fund ETF
SMN      	ProShares UltraShort Basic Materials ETF
SMP      	 Standard Motor Products Inc. 
SMPL     	Simplicity Bancorp Inc.
SMRT     	 Stein Mart Inc. 
SMS      	Sims Metal Management Limited
SMSI     	 Smith Micro Software Inc. 
SMT      	SMART Technologies Inc.
SMTC     	Semtech Corporation
SMTX     	SMTC Corporation
SN       	Sanchez Energy Corporation
SNA      	Snap-On Incorporated
SNAK     	 Inventure Foods Inc. 
SNBC     	 Sun Bancorp Inc. 
SNCR     	 Synchronoss Technologies Inc. 
SNDK     	SanDisk Corporation
SNDS     	Sustainable North American Oil Sands ETF
SNE      	Sony Corp Ord
SNFCA    	Security National Financial Corporation
SNH      	Senior Housing Properties Trust
SNHN     	Senior Housing Properties Trust
SNHY     	Sun Hydraulics Corporation
SNI      	 Scripps Networks Interactive Inc 
SNLN     	Pyxis/iBoxx Senior Loan ETF
SNMX     	 Senomyx Inc. 
SNN      	 Smith & Nephew SNATS Inc. 
SNP      	China Petroleum & Chemical Corporation
SNPS     	 Synopsys Inc. 
SNSS     	 Sunesis Pharmaceuticals Inc. 
SNTA     	Synta Pharmaceuticals Corp.
SNTS     	 Santarus Inc. 
SNV      	Synovus Financial Corp.
SNV^T    	Synovus Financial Corp.
SNX      	Synnex Corporation
SNY      	Sanofi
SO       	Southern Company (The)
SOCB     	Southcoast Financial Corporation
SOCL     	Global X Funds Global X Social Media Index ETF
SODA     	SodaStream International Ltd.
SOFO     	 Sonic Foundry Inc. 
SOHU     	Sohu.com Inc.
SOIL     	Global X Fertilizers/Potash ETF
SOL      	Renesola Ltd.
SOMH     	Somerset Hills Bancorp
SON      	Sonoco Products Company
SONA     	 Southern National Bancorp of Virginia Inc. 
SONC     	Sonic Corp.
SONS     	 Sonus Networks Inc. 
SOQ      	Sonde Resources Corp
SOR      	 Source Capital Inc. 
SORL     	 SORL Auto Parts Inc. 
SOV^C    	 Santander Holdings USA Inc. 
SOXL     	Direxion Daily Semiconductor Bull 3x Shares ETF
SOXS     	Direxion Daily Semiconductor Bear 3x Shares ETF
SOXX     	iShares Goldman Sachs Semiconductor Index Fund
SOYB     	Teucrium Soybean Fund ETF
SPA      	Sparton Corporation
SPAN     	 Span-America Medical Systems Inc. 
SPAR     	 Spartan Motors Inc. 
SPB      	 Spectrum Brands Holdings Inc. 
SPBC     	 SP Bancorp Inc. 
SPCHA    	 Sport Chalet Inc. 
SPCHB    	 Sport Chalet Inc. 
SPE      	Special Opportunities Fund Inc.
SPE^     	Special Opportunities Fund Inc.
SPEX     	Spherix Incorporated
SPF      	Standard Pacific Corp
SPFF     	Global X SuperIncome Preferred ETF
SPG      	 Simon Property Group Inc. 
SPG^J    	 Simon Property Group Inc. 
SPH      	 Suburban Propane Partners L.P. 
SPHB     	PowerShares S&P 500 High Beta ETF
SPHD     	PowerShares S&P 500 High Div Portfolio ETF
SPHQ     	PowerShares S&P 500 High Quality Portfolio ETF
SPIL     	 Siliconware Precision Industries Company Ltd. 
SPIR     	Spire Corporation
SPLK     	Splunk Inc.
SPLP     	Steel Partners Holdings LP
SPLS     	 Staples Inc. 
SPLV     	PowerShares S&P 500 Low Volatility ETF
SPMD     	SuperMedia Inc.
SPN      	 Superior Energy Services Inc. 
SPNC     	The Spectranetics Corporation
SPNS     	Sapiens International Corporation N.V.
SPP      	Sappi Limited
SPPI     	 Spectrum Pharmaceuticals Inc. 
SPPR     	 Supertel Hospitality Inc. 
SPPRO    	 Supertel Hospitality Inc. 
SPPRP    	 Supertel Hospitality Inc. 
SPR      	 Spirit Aerosystems Holdings Inc. 
SPRD     	 Spreadtrum Communications Inc. 
SPRO     	SmartPros Ltd.
SPRT     	 support.com Inc. 
SPSC     	 SPS Commerce Inc. 
SPTN     	 Spartan Stores Inc. 
SPU      	 SkyPeople Fruit Juice Inc. 
SPW      	SPX Corporation
SPWR     	SunPower Corporation
SPXL     	Direxion Large Cap Bull 3x Shares ETF
SPXS     	Direxion Large Cap Bear 3x Shares ETF
SPXU     	ProShares UltraPro Short S&P500 ETF
SPY      	SPDR S&P 500 ETF
SPYG     	SPDR S&P 500 Growth ETF
SPYV     	SPDR S&P 500 Value ETF (SPYV) ETF
SQI      	 SciQuest Inc. 
SQM      	Sociedad Quimica y Minera S.A.
SQNM     	 Sequenom Inc. 
SQNS     	Sequans Communications S.A.
SQQQ     	ProShares UltraPro Short QQQ 
SR       	Standard Register Company (The)
SRC      	 Spirit Realty Capital Inc. 
SRCE     	1st Source Corporation
SRCL     	 Stericycle Inc. 
SRDX     	 SurModics Inc. 
SRE      	Sempra Energy
SREV     	 ServiceSource International Inc. 
SRF      	The Cushing Royalty & Income Fund
SRI      	 Stoneridge Inc. 
SRPT     	 Sarepta Therapeutics Inc. 
SRS      	ProShares UltraShort Real Estate ETF
SRT      	 StarTek Inc. 
SRTY     	ProShares UltraPro Short Russell2000 ETF
SRV      	The Cushing MLP Total Return Fund
SSAM     	AdvisorShares Rockledge SectorSAM ETF
SSBI     	Summit State Bank
SSD      	 Simpson Manufacturing Company Inc. 
SSE      	Southern Connecticut Bancorp Inc
SSFN     	Stewardship Financial Corp
SSG      	ProShares UltraShort Semiconductors ETF
SSH      	Sunshine Heart Inc
SSI      	 Stage Stores Inc. 
SS^K     	SiM Internal Test 9
SSL      	Sasol Ltd.
SSN      	Samson Oil & Gas Limited
SSNC     	 SS&C Technologies Holdings Inc. 
SSNI     	 Silver Spring Networks Inc. 
SSO      	ProShares Ultra S&P500 ETF
SSP      	E.W. Scripps Company (The)
SSRI     	Silver Standard Resources Inc.
SSRX     	3SBio Inc.
SSS      	 Sovran Self Storage Inc. 
SST      	SPDR Barclays Capital Short Term Treasury ETF
SSTK     	 Shutterstock Inc. 
SSW      	Seaspan Corporation
SSW^C    	Seaspan Corporation
SSW^D    	Seaspan Corporation
SSY      	 SunLink Health Systems Inc. 
SSYS     	 Stratasys Ltd. 
ST       	Sensata Technologies Holding N.V.
STAA     	STAAR Surgical Company
STAG     	 Stag Industrial Inc. 
STAG^A   	 Stag Industrial Inc. 
STAN     	Standard Parking Corporation
STB      	Student Transportation Inc
STBA     	 S&T Bancorp Inc. 
STBZ     	State Bank Financial Corporation.
STC      	Stewart Information Services Corporation
STE      	STERIS Corporation
STEC     	 STEC Inc. 
STEI     	 Stewart Enterprises Inc. 
STEL     	StellarOne Corporation
STEM     	 StemCells Inc. 
STFC     	State Auto Financial Corporation
STI      	 SunTrust Banks Inc. 
STI^A    	 SunTrust Banks Inc. 
STI^E    	 SunTrust Banks Inc. 
STIP     	iShares Barclays 0-5 Year TIPS ETF
STI/WS/A 	 SunTrust Banks Inc. 
STJ      	 St. Jude Medical Inc. 
STK      	 Columbia Seligman Premium Technology Growth Fund Inc 
STKL     	 SunOpta Inc. 
STL      	Sterling Bancorp
STL^A    	Sterling Bancorp
STLD     	 Steel Dynamics Inc. 
STLY     	 Stanley Furniture Company Inc. 
STML     	 Stemline Therapeutics Inc. 
STMP     	Stamps.com Inc.
STN      	Stantec Inc
STND     	Standard Financial Corp.
STNG     	Scorpio Tankers Inc.
STNR     	Steiner Leisure Limited
STO      	Statoil ASA
STON     	StoneMor Partners L.P.
STP      	 Suntech Power Holdings Co. Ltd. 
STPZ     	PIMCO 1-5 Year U.S. TIPS Index Fund ETF
STR      	Questar Corporation
STRA     	 Strayer Education Inc. 
STRI     	 STR Holdings Inc 
STRL     	Sterling Construction Company Inc
STRM     	 Streamline Health Solutions Inc. 
STRN     	Sutron Corporation
STRS     	 Stratus Properties Inc. 
STRT     	Strattec Security Corporation
STRZA    	Starz
STRZB    	Starz
STS      	 Supreme Industries Inc. 
STSA     	Sterling Financial Corporation
STSI     	 Star Scientific Inc. 
STT      	State Street Corporation
STT^C    	State Street Corporation
STV      	 China Digital TV Holding Co. Ltd. 
STWD     	 STARWOOD PROPERTY TRUST Inc. 
STX      	Seagate Technology.
STXS     	 Stereotaxis Inc. 
STZ      	Constellation Brands Inc
STZ/B    	Constellation Brands Inc
SU       	Suncor Energy  Inc.
SUB      	iShares S&P Short Term National AMT-Free Municipal Bond Fund ETF
SUBK     	Suffolk Bancorp
SUI      	 Sun Communities Inc. 
SUI^A    	 Sun Communities Inc. 
SUMR     	 Summer Infant Inc. 
SUNS     	Solar Senior Capital Ltd.
SUP      	 Superior Industries International Inc. 
SUPN     	 Supernus Pharmaceuticals Inc. 
SUPX     	 Supertex Inc. 
SURG     	 Synergetics USA Inc. 
SUSP     	Susser Petroleum Partners LP
SUSQ     	 Susquehanna Bancshares Inc. 
SUSS     	Susser Holdings Corporation
SUTR     	Sutor Technology Group Limited
SVA      	 Sinovac Biotech Ltd. 
SVBI     	Severn Bancorp Inc
SVBL     	 Silver Bull Resources Inc. 
SVLC     	 SilverCrest Mines Inc. 
SVM      	Silvercorp Metals Inc
SVN      	7 Days Group Holdings Limited
SVNT     	Savient Pharmaceuticals Inc
SVT      	 Servotronics Inc. 
SVU      	SuperValu Inc.
SVVC     	 Firsthand Technology Value Fund Inc. 
SVXY     	ProShares Short VIX Short-Term Futures ETF
SWC      	Stillwater Mining Company
SWFT     	Swift Transportation Company
SWHC     	Smith & Wesson Holding Corporation
SWI      	 Solarwinds Inc. 
SWIR     	 Sierra Wireless Inc. 
SWJ      	 Stanley Black & Decker Inc. 
SWK      	 Stanley Black & Decker Inc. 
SWKS     	 Skyworks Solutions Inc. 
SWM      	 Schweitzer-Mauduit International Inc. 
SWN      	Southwestern Energy Company
SWS      	 SWS Group Inc. 
SWSH     	 Swisher Hygiene Inc. 
SWU      	 Stanley Black & Decker Inc. 
SWX      	Southwest Gas Corporation
SWY      	Safeway Inc.
SWZ      	 Swiss Helvetia Fund Inc. (The) 
SXC      	 SunCoke Energy Inc. 
SXCP     	 SunCoke Energy Partners L.P. 
SXE      	 Southcross Energy Partners L.P. 
SXI      	Standex International Corporation
SXL      	Sunoco Logistics Partners LP
SXT      	Sensient Technologies Corporation
SYA      	Symetra Financial Corporation
SYBT     	 S.Y. Bancorp Inc. 
SYBTP    	 S.Y. Bancorp Inc. 
SYK      	Stryker Corporation
SYKE     	 Sykes Enterprises Incorporated 
SYMC     	Symantec Corporation
SYMM     	 Symmetricom Inc. 
SYMX     	 Synthesis Energy Systems Inc. 
SYN      	 Synthetic Biologics Inc 
SYNA     	Synaptics Incorporated
SYNC     	 Synacor Inc. 
SYNL     	Synalloy Corporation
SYNM     	Syntroleum Corporation
SYNT     	 Syntel Inc. 
SYPR     	 Sypris Solutions Inc. 
SYRG     	Synergy Resources Corporation
SYT      	Syngenta AG
SYUT     	 Synutra International Inc. 
SYX      	Systemax Inc.
SYY      	Sysco Corporation
SZC      	iShares Trust
SZK      	ProShares UltraShort Consumer Goods ETF
SZYM     	 Solazyme Inc. 
T        	AT&T Inc.
TA       	TravelCenters of America LLC
TAC      	TransAlta Corporation
TACT     	TransAct Technologies Incorporated
TAGS     	Teucrium Agricultural ETF
TAHO     	 Tahoe Resources Inc. 
TAI      	 Transamerica Income Shares Inc. 
TAIT     	Taitron Components Incorporated
TAL      	 TAL International Group Inc. 
TAN      	Guggenheim Solar ETF
TANN     	TravelCenters of America LLC
TAO      	Guggenheim China Real Estate ETF
TAOM     	Taomee Holdings Limited
TAP      	Molson Coors Brewing  Company
TAP/A    	Molson Coors Brewing  Company
TARO     	Taro Pharmaceutical Industries Ltd.
TAS      	Tasman Metals Ltd
TASR     	 TASER International Inc. 
TAST     	 Carrols Restaurant Group Inc. 
TAT      	Transatlantic Petroleum Ltd
TATT     	TAT Technologies Ltd.
TAX      	JTH Holding Inc. D/B/A Liberty Tax Service
TAXI     	Medallion Financial Corp.
TAYC     	 Taylor Capital Group Inc. 
TAYCO    	 Taylor Capital Group Inc. 
TAYCP    	 Taylor Capital Group Inc. 
TAYD     	 Taylor Devices Inc. 
TBAC     	 Tandy Brands Accessories Inc. 
TBBK     	 The Bancorp Inc. 
TBF      	ProShares Short 20+ Year Treasury ETF
TBI      	 TrueBlue Inc. 
TBNK     	Territorial Bancorp Inc.
TBOW     	Trunkbow International Holdings Ltd.
TBT      	ProShares UltraShort 20+ Year Treasury ETF
TBX      	ProShares Short 7-10 Year Treasury ETF
TBZ      	ProShares UltraShort 3-7 Year Treasury ETF
TC       	Thompson Creek Metals Company Inc.
TCAP     	Triangle Capital Corporation
TCB      	TCF Financial Corporation
TCB^B    	TCF Financial Corporation
TCB^C    	TCF Financial Corporation
TCBI     	 Texas Capital Bancshares Inc. 
TCBIL    	 Texas Capital Bancshares Inc. 
TCBIP    	 Texas Capital Bancshares Inc. 
TCBIW    	 Texas Capital Bancshares Inc. 
TCBK     	TriCo Bancshares
TCB/WS   	TCF Financial Corporation
TCC      	Triangle Capital Corporation
TCCA     	Triangle Capital Corporation
TCCO     	Technical Communications Corporation
TCI      	 Transcontinental Realty Investors Inc. 
TCK      	Teck Resources Ltd
TCL      	Tata Communications Limited
TCO      	 Taubman Centers Inc. 
TCO^J    	 Taubman Centers Inc. 
TCO^K    	 Taubman Centers Inc. 
TCP      	 TC PipeLines LP 
TCPC     	TCP Capital Corp.
TCRD     	 THL Credit Inc. 
TC^T     	Thompson Creek Metals Company Inc.
TCX      	Tucows Inc.
TD       	Toronto Dominion Bank (The)
TDA      	 Telephone and Data Systems Inc. 
TDC      	Teradata Corporation
TDD      	DBX TDX Independence 2010 ETF
TDE      	 Telephone and Data Systems Inc. 
TDF      	 Templeton Dragon Fund Inc. 
TDG      	Transdigm Group Incorporated
TDH      	DBX TDX Independence 2020 ETF
TDI      	 Telephone and Data Systems Inc. 
TDIV     	First Trust Exchange-Traded Fund VI First Trust NASDAQ Technol
TDJ      	 Telephone and Data Systems Inc. 
TDN      	DBX TDX Independence 2030 ETF
TDS      	 Telephone and Data Systems Inc. 
TDTF     	FlexShares iBoxx 5-Year Target Duration TIPS Index Fund ETF
TDTT     	FlexShares iBoxx 3-Year Target Duration TIPS Index Fund ETF
TDV      	DBX TDX Independence 2040 ETF
TDW      	Tidewater Inc.
TDX      	DBX TDX Independence In-Target ETF
TDY      	Teledyne Technologies Incorporated
TE       	 TECO Energy Inc. 
TEAR     	TearLab Corporation
TECD     	Tech Data Corporation
TECH     	Techne Corporation
TECL     	Direxion Technology Bull 3x Shares ETF
TECS     	Direxion Technology Bear 3x Shares ETF
TECUA    	Tecumseh Products Company
TECUB    	Tecumseh Products Company
TEF      	Telefonica SA
TEG      	Integrys Energy Group
TEI      	 Templeton Emerging Markets Income Fund Inc. 
TEL      	TE Connectivity Ltd.
TELK     	 Telik Inc. 
TEN      	Tenneco Inc.
TENZ     	PIMCO 7-15 Year U.S. Treasury Index Fund ETF
TEO      	Telecom Argentina Stet - France Telecom S.A.
TER      	 Teradyne Inc. 
TESO     	Tesco Corporation
TESS     	TESSCO Technologies Incorporated
TEU      	Box Ships Inc.
TEVA     	Teva Pharmaceutical Industries Limited
TEX      	Terex Corporation
TF       	Thai Capital Fund Inc
TFCO     	 Tufco Technologies Inc. 
TFG      	 Goldman Sachs Group Inc. (The) 
TFI      	SPDR Barclays Capital Municipal Bond ETF
TFM      	 The Fresh Market Inc. 
TFSL     	TFS Financial Corporation
TFX      	Teleflex Incorporated
TG       	Tredegar Corporation
TGA      	Transglobe Energy Corp
TGB      	Taseko Mines Limited
TGC      	 Tengasco Inc. 
TGD      	Timmons Gold Corp
TGE      	 TGC Industries Inc. 
TGEM     	EGShares Telecom GEMS ETF
TGH      	Textainer Group Holdings Limited
TGI      	 Triumph Group Inc. 
TGP      	Teekay LNG Partners L.P.
TGR      	iShares S&P Target Date Retirement Income Index Fund ETF
TGS      	Transportadora De Gas Sa Ord B
TGT      	Target Corporation
TGX      	Theragenics Corporation
THC      	Tenet Healthcare Corporation
THD      	iShares MSCI Thailand Investable Market Index Fund ETF
THFF     	First Financial Corporation Indiana
THG      	 The Hanover Insurance Group Inc. 
THGA     	 The Hanover Insurance Group Inc. 
THHY     	Market Vectors Treasury-Hedged High Yield Bond ETF
THI      	Tim Hortons Inc.
THLD     	 Threshold Pharmaceuticals Inc. 
THM      	International Tower Hill Mines Ltd
THO      	 Thor Industries Inc. 
THOR     	Thoratec Corporation
THR      	 Thermon Group Holdings Inc. 
THRD     	TF Financial Corporation
THRM     	Gentherm Inc
THRX     	 Theravance Inc. 
THS      	 Treehouse Foods Inc. 
THTI     	 THT Heat Transfer Technology Inc. 
TI       	Telecom Italia S.P.A.
TI/A     	Telecom Italia S.P.A.
TIBX     	 TIBCO Software Inc. 
TICC     	TICC Capital Corp.
TIF      	Tiffany & Co.
TIGR     	TigerLogic Corporation
TIK      	Tel-Instrument Electronics Corp.
TILE     	 Interface Inc. 
TILT     	FlexShares Morningstar U.S. Market Factor Tilt Index Fund ETF
TINY     	 Harris & Harris Group Inc. 
TIP      	iShares Barclays TIPS Bond Fund ETF
TIPZ     	PIMCO Broad U.S. TIPS Index Fund ETF
TIS      	Orchids Paper Products Company
TISA     	 Top Image Systems Ltd. 
TISI     	 Team Inc. 
TITN     	Titan Machinery Inc.
TIVO     	TiVo Inc.
TJX      	 TJX Companies Inc. (The) 
TK       	Teekay Corporation
TKC      	Turkcell Iletisim Hizmetleri AS
TKF      	 Turkish Investment Fund Inc. (The) 
TKMR     	Tekmira Pharmaceuticals Corp
TKR      	Timken Company (The)
TLAB     	 Tellabs Inc. 
TLF      	 Tandy Leather Factory Inc. 
TLH      	iShares Barclays 10-20 Year Treasury Bond Fund ETF
TLI      	LMP Corporate Loan Fund Inc
TLK      	 P.T. Telekomunikasi Indonesia Tbk 
TLL      	ProShares UltraShort Telecommunications ETF
TLLP     	Tesoro Logistics LP
TLM      	Talisman Energy Inc.
TLO      	SPDR Barclays Capital Long Term Treasury ETF
TLP      	Transmontaigne Partners L.P.
TLR      	Timberline Resources Corporation
TLT      	iShares Barclays 20 Year Treasury Bond Fund ETF
TLTD     	FlexShares Mstar Dev Mk ex-US Fct Tl Idx ETF
TLTE     	FlexShares Mstar Emrg Mkts Fct Tl Idx ETF
TLYS     	 Tilly&#39;s Inc. 
TM       	Toyota Motor Corp Ltd Ord
TMF      	Direxion Daily 30-Yr Treasury Bull 3x Shrs ETF
TMH      	 Team Health Holdings Inc. 
TMHC     	Taylor Morrison Home Corporation
TMK      	Torchmark Corporation
TMK^B    	Torchmark Corporation
TMNG     	 The Management Network Group Inc. 
TMO      	Thermo Fisher Scientific Inc
TMP      	Tompkins Financial Corporation
TMS      	TMS International Corp.
TMV      	Direxion Daily 30-Yr Treasury Bear 3x Shrs ETF
TMW      	SPDR Dow Jones Total Market ETF
TNA      	Direxion Small Cap Bull 3x Shares ETF
TNAV     	 TeleNav Inc. 
TNC      	Tennant Company
TNGO     	 Tangoe Inc. 
TNH      	 Terra Nitrogen Company L.P. 
TNK      	Teekay Tankers Ltd.
TNP      	Tsakos Energy Navigation Ltd
TOF      	Tofutti Brands Inc.
TOFC     	Tower Financial Corporation
TOK      	iShares MSCI Kokusai ETF
TOL      	Toll Brothers Inc.
TOO      	Teekay Offshore Partners L.P.
TOPS     	TOP Ships Inc.
TORM     	TOR Minerals International Inc
TOT      	 TotalFinaElf S.A. 
TOTS     	Direxion Daily Total Market Bear 1X Shares ETF
TOWN     	Towne Bank
TOWR     	 Tower International Inc. 
TPC      	Tutor Perini Corporation
TPGI     	 Thomas Properties Group Inc. 
TPH      	 Tri Pointe Homes Inc. 
TPI      	 Tianyin Pharmaceutical Co. Inc. 
TPL      	Texas Pacific Land Trust
TPLM     	Triangle Petroleum Corporation
TPS      	ProShares UltraShort TIPS ETF
TPX      	Tempur-pedic International Inc
TPZ      	 Tortoise Power and Energy Infrastructure Fund Inc 
TQNT     	 TriQuint Semiconductor Inc. 
TQQQ     	ProShares UltraPro QQQ
TR       	 Tootsie Roll Industries Inc. 
TRAK     	 Dealertrack Technologies Inc. 
TRC      	Tejon Ranch Co
TREE     	 Tree.com Inc. 
TREX     	 Trex Company Inc. 
TRF      	 Templeton Russia Fund Inc. 
TRGP     	 Targa Resources Inc. 
TRGT     	 Targacept Inc. 
TRI      	Thomson Reuters Corp
TRIB     	Trinity Biotech plc
TRIO     	Trio Merger Corp.
TRIP     	 TripAdvisor Inc. 
TRIT     	Tri-Tech Holding Inc.
TRK      	 Speedway Motorsports Inc. 
TRLA     	 Trulia Inc. 
TRLG     	 True Religion Apparel Inc. 
TRMB     	Trimble Navigation Limited
TRMD     	TORM A/S
TRMK     	Trustmark Corporation
TRN      	 Trinity Industries Inc. 
TRNO     	Terreno Realty Corporation
TRNO^A   	Terreno Realty Corporation
TRNS     	 Transcat Inc. 
TRNX     	Tornier N.V.
TROV     	 TrovaGene Inc. 
TROVU    	 TrovaGene Inc. 
TROVW    	 TrovaGene Inc. 
TROW     	 T. Rowe Price Group Inc. 
TROX     	Tronox Limited
TRP      	TransCanada Corporation
TRQ      	Turquoise Hill Resources Ltd.
TRR      	 TRC Companies Inc. 
TRS      	TriMas Corporation
TRST     	TrustCo Bank Corp NY
TRSY     	PIMCO Broad U.S. Treasury Index Fund ETF
TRT      	Trio-Tech International
TRV      	 The Travelers Companies Inc. 
TRW      	TRW Automotive Holdings Corporation
TRX      	Tanzanian Royalty Exploration Corporation
TS       	Tenaris S.A.
TSBK     	 Timberland Bancorp Inc. 
TSCO     	Tractor Supply Company
TSEM     	Tower Semiconductor Ltd.
TSH      	Teche Holding Company
TSI      	 TCW Strategic Income Fund Inc. 
TSL      	Trina Solar Limited
TSLA     	 Tesla Motors Inc. 
TSM      	Taiwan Semiconductor Manufacturing Company Ltd.
TSN      	 Tyson Foods Inc. 
TSO      	Tesoro Corporation
TSON     	TranS1 Inc.
TSPT     	 Transcept Pharmaceuticals Inc. 
TSRA     	 Tessera Technologies Inc. 
TSRI     	 TSR Inc. 
TSRO     	 TESARO Inc. 
TSRX     	 Trius Therapeutics Inc. 
TSS      	 Total System Services Inc. 
TST      	 TheStreet Inc. 
TSTC     	Telestone Technologies Corp.
TSU      	TIM Participacoes S.A.
TSYS     	 TeleCommunication Systems Inc. 
TTC      	Toro Company (The)
TTEC     	 TeleTech Holdings Inc. 
TTEK     	 Tetra Tech Inc. 
TTF      	 Thai Fund Inc. (The) 
TTFS     	AdvisorShares TrimTabs Float Shrink ETF
TTGT     	 TechTarget Inc. 
TTHI     	 Transition Therapeutics Inc. 
TTI      	 Tetra Technologies Inc. 
TTM      	Tata Motors Ltd
TTMI     	 TTM Technologies Inc. 
TTP      	 Tortoise Pipeline & Energy Fund Inc. 
TTPH     	 Tetraphase Pharmaceuticals Inc. 
TTS      	 Tile Shop Hldgs Inc. 
TTT      	ProShares UltraPro Short 20+ Year Treasury ETF
TTTM     	T3 Motion Inc
TTTM/WS/W	T3 Motion Inc
TTWO     	 Take-Two Interactive Software Inc. 
TU       	TELUS Corporation
TUC      	Mac-Gray Corporation
TUES     	Tuesday Morning Corp.
TUMI     	 Tumi Holdings Inc. 
TUP      	Tupperware Brands Corporation
TUR      	iShares MSCI Turkey Investable Market Index Fund ETF
TUZ      	PIMCO 1-3 Year U.S. Treasury Index Fund ETF
TV       	Grupo Televisa S.A.
TVC      	Tennessee Valley Authority
TVE      	Tennessee Valley Authority
TVL      	LIN TV Corp
TW       	Towers Watson & Co
TWC      	Time Warner Cable Inc
TWER     	Towerstream Corporation
TWGP     	 Tower Group International Ltd. 
TWI      	 Titan International Inc. 
TWIN     	 Twin Disc Incorporated 
TWM      	ProShares UltraShort Russell2000 ETF
TWMC     	Trans World Entertainment Corp.
TWN      	 Taiwan Fund Inc. (The) 
TWO      	Two Harbors Investments Corp
TWO/WS   	Two Harbors Investments Corp
TWQ      	ProShares UltraShort Russell3000 ETF
TWTC     	tw telecom inc.
TWX      	Time Warner Inc.
TX       	Ternium S.A.
TXCC     	TranSwitch Corporation
TXI      	 Texas Industries Inc. 
TXN      	Texas Instruments Incorporated
TXRH     	 Texas Roadhouse Inc. 
TXT      	Textron Inc.
TY       	Tri Continental Corporation
TY^      	Tri Continental Corporation
TYBS     	Direxion Daily 20+ Year Treasury Bear 1x Shares ETF
TYC      	 Tyco International Ltd. (Switzerland) 
TYD      	Direxion Daily 10-Yr Treasury Bull 3x Shrs ETF
TYG      	Tortoise Energy Infrastructure Corporation
TYG^B    	Tortoise Energy Infrastructure Corporation
TYL      	 Tyler Technologies Inc. 
TYN      	Tortoise North American Energy Corporation
TYNS     	Direxion Daily 7-10 Year Treasury Bear 1x Shares ETF
TYO      	Direxion Daily 10-Yr Treasury Bear 3x Shrs ETF
TYPE     	Monotype Imaging Holdings Inc.
TYY      	Tortoise Energy Capital Corporation
TYY^C    	Tortoise Energy Capital Corporation
TZA      	Direxion Small Cap Bear 3x Shares ETF
TZD      	iShares S&P Target Date 2010 Index Fund ETF
TZE      	iShares S&P Target Date 2015 Index Fund ETF
TZF      	 Bear Stearns Depositor Inc. 
TZG      	iShares S&P Target Date 2020 Index Fund ETF
TZI      	iShares S&P Target Date 2025 Index Fund ETF
TZL      	iShares S&P Target Date 2030 Index Fund ETF
TZO      	iShares S&P Target Date 2035 Index Fund ETF
TZOO     	Travelzoo Inc.
TZV      	iShares S&P Target Date 2040 Index Fund ETF
TZW      	iShares S&P Target Date 2045 Index Fund ETF
TZY      	iShares S&P Target Date 2050 Index Fund ETF
TZYM     	 Tranzyme Inc. 
UA       	 Under Armour Inc. 
UACL     	 Universal Truckload Services Inc. 
UAL      	 United Continental Holdings Inc. 
UAM      	Universal American Corp.
UAMY     	United States Antimony Corporation
UAN      	 CVR Partners LP 
UBA      	Urstadt Biddle Properties Inc.
UBCP     	 United Bancorp Inc. 
UBFO     	United Security Bancshares
UBNK     	 United Financial Bancorp Inc. 
UBNT     	 Ubiquiti Networks Inc. 
UBOH     	 United Bancshares Inc. 
UBP      	Urstadt Biddle Properties Inc.
UBP^C    	Urstadt Biddle Properties Inc.
UBP^D    	Urstadt Biddle Properties Inc.
UBP^F    	Urstadt Biddle Properties Inc.
UBPS     	Universal Business Payment Solutions Acquisition Corporation
UBR      	ProShares Ultra MSCI Brazil ETF
UBS      	UBS AG
UBS^D    	UBS AG
UBSH     	Union First Market Bankshares Corporation
UBSI     	 United Bankshares Inc. 
UBT      	ProShares Ultra 20+ Year Treasury ETF
UCBA     	United Community Bancorp
UCBI     	 United Community Banks Inc. 
UCC      	ProShares Ultra Consumer Services ETF
UCD      	ProShares Ultra DJ-UBS Commodity ETF
UCFC     	United Community Financial Corp.
UCO      	ProShares Ultra DJ-UBS Crude Oil ETF
UCTT     	 Ultra Clean Holdings Inc. 
UDN      	PowerShares DB USD Index Bearish ETF
UDOW     	ProShares UltraPro Dow30 ETF
UDR      	 United Dominion Realty Trust Inc. 
UEC      	Uranium Energy Corp.
UEIC     	Universal Electronics Inc.
UEPS     	 Net 1 UEPS Technologies Inc. 
UFCS     	 United Fire Group Inc 
UFI      	 Unifi Inc. 
UFPI     	 Universal Forest Products Inc. 
UFPT     	 UFP Technologies Inc. 
UFS      	Domtar Corporation
UG       	 United-Guardian Inc. 
UGA      	United States Gasoline Fund LP ETF
UGE      	ProShares Ultra Consumer Goods ETF
UGEM     	EGShares Utilities GEMS ETF
UGI      	UGI Corporation
UGL      	ProShares Ultra Gold ETF
UGP      	Ultrapar Participacoes S.A.
UHAL     	Amerco
UHN      	United States Heating Oil Fund LP ETF
UHS      	 Universal Health Services Inc. 
UHT      	Universal Health Realty Income Trust
UIHC     	United Insurance Holdings Corp.
UIL      	UIL Holdings Corporation
UINF     	ProShares UltraPro 10 Year TIPS/TSY Spread ETF
UIS      	Unisys Corporation
UIS^A    	Unisys Corporation
UJB      	ProShares Ultra High Yield ETF
UKF      	ProShares Ultra Russell1000 Growth ETF
UKK      	ProShares Ultra Russell2000 Growth ETF
UKW      	ProShares Ultra Russell MidCap Growth ETF
UL       	Unilever PLC
ULBI     	Ultralife Corporation
ULE      	ProShares Ultra Euro ETF
ULGX     	 Urologix Inc. 
ULTA     	 Ulta Salon Co.metics & Fragrance Inc. 
ULTI     	 The Ultimate Software Group Inc. 
ULTR     	Ultrapetrol (Bahamas) Limited
UMBF     	UMB Financial Corporation
UMC      	United Microelectronics Corporation
UMDD     	ProShares UltraPro MidCap400 ETF
UMH      	 UMH Properties Inc. 
UMH^A    	 UMH Properties Inc. 
UMPQ     	Umpqua Holdings Corporation
UMX      	ProShares Ultra MSCI Mexico Investable Market ETF
UN       	Unilever NV
UNAM     	Unico American Corporation
UNB      	 Union Bankshares Inc. 
UNF      	Unifirst Corporation
UNFI     	 United Natural Foods Inc. 
UNG      	United States Natural Gas Fund LP ETF
UNH      	UnitedHealth Group Incorporated
UNIS     	Unilife Corporation
UNL      	United States 12 Month Natural Gas Fund LP ETF
UNM      	Unum Group
UNP      	Union Pacific Corporation
UNS      	UNS Energy Corporation
UNT      	Unit Corporation
UNTD     	 United Online Inc. 
UNTK     	 UniTek Global Services Inc. 
UNTY     	 Unity Bancorp Inc. 
UNXL     	 Uni-Pixel Inc. 
UPG      	Universal Power Group Inc
UPI      	 Uroplasty Inc. 
UPIP     	 Unwired Planet Inc. 
UPL      	Ultra Petroleum Corp.
UPRO     	ProShares UltraPro S&P500 ETF
UPS      	 United Parcel Service Inc. 
UPV      	ProShares Ultra MSCI Europe ETF
UPW      	ProShares Ultra Utilities ETF
UQM      	UQM TECHNOLOGIES INC
URA      	Global X Uranium ETF
URBN     	 Urban Outfitters Inc. 
URE      	ProShares Ultra Real Estate ETF
URG      	Ur Energy Inc
URI      	 United Rentals Inc. 
URRE     	 Uranium Resources Inc. 
URS      	URS Corporation
URTH     	iShares MSCI World ETF
URTY     	ProShares UltraPro Russell2000 ETF
URZ      	Uranerz Energy Corporation
USA      	Liberty All-Star Equity Fund
USAC     	 USA Compression Partners LP 
USAG     	United States Agriculture Index ETF
USAK     	 USA Truck Inc. 
USAP     	 Universal Stainless & Alloy Products Inc. 
USAT     	 USA Technologies Inc. 
USATP    	 USA Technologies Inc. 
USATZ    	 USA Technologies Inc. 
USB      	U.S. Bancorp
USB^A    	U.S. Bancorp
USB^H    	U.S. Bancorp
USBI     	 United Security Bancshares Inc. 
USB^L    	U.S. Bancorp
USB^M    	U.S. Bancorp
USB^N    	US Bancorp Del
USCI     	United States Commodity Index Fund ETF
USCR     	 U S Concrete Inc. 
USD      	ProShares Ultra Semiconductors ETF
USEG     	U.S. Energy Corp.
USG      	USG Corporation
USL      	United States 12 Month Oil ETF
USLM     	 United States Lime & Minerals Inc. 
USM      	United States Cellular Corporation
USMD     	 USMD Holdings Inc. 
USMI     	United States Metals Index
USMO     	 USA Mobility Inc. 
USMV     	iShares MSCI USA Minimum Volatility Index Fund ETF
USNA     	 USANA Health Sciences Inc. 
USO      	United States Oil Fund ETF
USPH     	 U.S. Physical Therapy Inc. 
UST      	ProShares Ultra 7-10 Year Treasury ETF
USTR     	United Stationers Inc.
USU      	USEC Inc.
UTEK     	 Ultratech Inc. 
UTF      	 Cohen & Steers Infrastructure Fund Inc 
UTG      	Reaves Utility Income Fund
UTHR     	United Therapeutics Corporation
UTI      	Universal Technical Institute Inc
UTIW     	UTi Worldwide Inc.
UTL      	UNITIL Corporation
UTMD     	 Utah Medical Products Inc. 
UTSI     	UTStarcom Holdings Corp
UTX      	United Technologies Corporation
UTX^A    	United Technologies Corporation
UUP      	PowerShares DB USD Index Bullish ETF
UUU      	 Universal Security Instruments Inc. 
UVE      	UNIVERSAL INSURANCE HOLDINGS INC
UVG      	ProShares Ultra Russell1000 Value ETF
UVSP     	Univest Corporation of Pennsylvania
UVT      	ProShares Ultra Russell2000 Value ETF
UVU      	ProShares Ultra Russell MidCap Value ETF
UVV      	Universal Corporation
UVXY     	ProShares Ultra VIX Short-Term Futures ETF
UWC      	ProShares Ultra Russell3000 ETF
UWM      	ProShares Ultra Russell2000 ETF
UWN      	 Nevada Gold & Casinos Inc. 
UXI      	ProShares Ultra Industrials ETF
UXJ      	ProShares Ultra MSCI Pacific ex-Japan ETF
UYG      	ProShares Ultra Financials ETF
UYM      	ProShares Ultra Basic Materials ETF
UZA      	United States Cellular Corporation
V        	Visa Inc.
VAC      	Marriot Vacations Worldwide Corporation
VAL      	Valspar Corporation (The)
VALE     	VALE S.A.
VALE/P   	VALE S.A.
VALU     	 Value Line Inc. 
VALV     	 Shengkai Innovations Inc. 
VAR      	 Varian Medical Systems Inc. 
VASC     	 Vascular Solutions Inc. 
VAW      	Vanguard Materials ETF - DNQ ETF
VB       	Vanguard Small-Cap ETF
VBF      	Invesco Bond Fund
VBFC     	Village Bank and Trust Financial Corp.
VBK      	Vanguard Small-Cap Growth ETF
VBR      	Vanguard Small-Cap Value ETF
VC       	Visteon Corporation
VCBI     	Virginia Commerce Bancorp
VCF      	 Delaware Investments Colorado Municipal Income Fund Inc 
VCI      	 Valassis Communications Inc. 
VCIT     	Vanguard Intermediate-Term Corporate Bond ETF
VCLK     	 ValueClick Inc. 
VCLT     	Vanguard Long-Term Corporate Bond ETF
VCO      	Vina Concha Y Toro
VCR      	Vanguard Consumer Discretion ETF - DNQ ETF
VCRA     	 Vocera Communications Inc. 
VCSH     	Vanguard Short-Term Corporate Bond ETF
VCV      	Invesco California Value Municipal Income Trust
VDC      	Vanguard Consumer Staples ETF - DNQ ETF
VDE      	Vanguard Energy ETF
VDSI     	 VASCO Data Security International Inc. 
VE       	Veolia Environnement
VEA      	Vanguard Europe Pacific ETF
VECO     	Veeco Instruments Inc.
VEGA     	AdvisorShares STAR Global Buy-Write ETF
VEGI     	iShares MSCI Global Agriculture Producers Fund ETF
VEL^E    	Virginia Electric & Power Company
VELT     	Velti plc
VET      	Vermilion Energy Inc.
VEU      	Vanguard FTSE All World Ex US ETF
VFC      	V.F. Corporation
VFH      	Vanguard Financials ETF - DNQ ETF
VFL      	Delaware Investments Florida Insured Municipal Income Fund
VG       	Vonage Holdings Corp.
VGEM     	EGShares Consumer Services GEMS ETF
VGI      	Virtus Global Multi-Sector Income Fund
VGIT     	Vanguard Intermediate -Term Government Bond ETF
VGK      	Vanguard European ETF
VGLT     	Vanguard Long-Term Government Bond ETF
VGM      	Invesco Trust for Investment Grade Municipals
VGR      	Vector Group Ltd.
VGSH     	Vanguard Short Term Government Bond ETF
VGT      	Vanguard Information Tech ETF - DNQ ETF
VGZ      	Vista Gold Corporation
VHC      	VirnetX Holding Corp
VHI      	 Valhi Inc. 
VHS      	 Vanguard Health Systems Inc. 
VHT      	Vanguard Health Care ETF - DNQ ETF
VIA      	Viacom Inc.
VIAB     	Viacom Inc.
VIAS     	 Viasystems Group Inc. 
VICL     	Vical Incorporated
VICR     	Vicor Corporation
VIDE     	Video Display Corporation
VIFL     	 Food Technology Service Inc. 
VIG      	Vanguard Div Appreciation ETF - DNQ ETF
VII      	 Vicon Industries Inc. 
VIMC     	Vimicro International Corporation
VIOG     	Vanguard S&P Small-Cap 600 Growth ETF
VIOO     	Vanguard S&P Small-Cap 600 ETF
VIOV     	Vanguard S&P Small-Cap 600 Value ETF
VIP      	Open Joint Stock Company &quot;Vimpel-Communications&quot;
VIPS     	Vipshop Holdings Limited
VIRC     	Virco Manufacturing Corporation
VIS      	Vanguard Industrials ETF - DNQ ETF
VISN     	 VisionChina Media Inc. 
VITC     	 Vitacost.com Inc. 
VIV      	Telefonica Brasil S.A.
VIVO     	Meridian Bioscience Inc.
VIXH     	First Trust CBOE S&P 500 VIX Tail Hedge ETF
VIXM     	ProShares VIX Mid-Term Futures ETF
VIXY     	ProShares VIX Short-Term Futures ETF
VKI      	Invesco Advantage Municipal Income Trust II
VKQ      	Invesco Municipal Trust
VLCCF    	Knightsbridge Tankers Limited
VLGEA    	 Village Super Market Inc. 
VLO      	Valero Energy Corporation
VLT      	Invesco High Income Trust II
VLTC     	Voltari Corporation
VLTR     	Volterra Semiconductor Corporation
VLU      	SPDR S&P 1500 Value Tilt ETF
VLY      	Valley National Bancorp
VLY^A    	Valley National Bancorp
VLY/WS   	Valley National Bancorp
VLYWW    	Valley National Bancorp
VMBS     	Vanguard Mortgage-Backed Securities ETF
VMC      	Vulcan Materials Company
VMED     	Virgin Media Inc.
VMI      	 Valmont Industries Inc. 
VMM      	 Delaware Investments Minnesota Municipal Income Fund II Inc. 
VMO      	Invesco Municipal Opportunity Trust
VMW      	 Vmware Inc. 
VNDA     	Vanda Pharmaceuticals Inc.
VNET     	 21Vianet Group Inc. 
VNM      	Market Vectors Vietnam ETF
VNO      	Vornado Realty Trust
VNOD     	Vornado Realty L.P.
VNO^G    	Vornado Realty Trust
VNO^I    	Vornado Realty Trust
VNO^J    	Vornado Realty Trust
VNO^K    	Vornado Realty Trust
VNO^L    	Vornado Realty Trust
VNQ      	Vanguard REIT ETF - DNQ ETF
VNQI     	Vanguard Global ex-U.S. Real Estate ETF
VNR      	Vanguard Natural Resources LLC
VNTV     	 Vantiv Inc. 
VO       	Vanguard Mid-Cap ETF
VOC      	VOC Energy Trust
VOCS     	 Vocus Inc. 
VOD      	Vodafone Group Plc
VOE      	Vanguard Mid-Cap Value ETF
VOLC     	Volcano Corporation
VONE     	Vanguard Russell 1000 ETF
VONG     	Vanguard Russell 1000 Growth ETF
VONV     	Vanguard Russell 1000 Value ETF
VOO      	Vanguard S&P 500 ETF
VOOG     	Vanguard S&P 500 Growth ETF
VOOV     	Vanguard S&P 500 Value ETF
VOT      	Vanguard Mid-Cap Growth ETF
VOX      	Vanguard Telecom ETF - DNQ ETF
VOXX     	VOXX International Corporation
VPFG     	 ViewPoint Financial Group Inc. 
VPG      	 Vishay Precision Group Inc. 
VPHM     	ViroPharma Incorporated
VPL      	Vanguard Pacific ETF
VPRT     	Vistaprint N.V.
VPU      	Vanguard Utilities ETF - DNQ ETF
VPV      	Invesco Pennsylvania Value Municipal Income Trust
VR       	 Validus Holdings Ltd. 
VRA      	 Vera Bradley Inc. 
VRD      	SPDR S&P VRDO Municipal Bond ETF
VRML     	 Vermillion Inc. 
VRNG     	 Vringo Inc. 
VRNG/WS  	 Vringo Inc. 
VRNM     	Verenium Corporation
VRNT     	Verint Systems Inc.
VRS      	Verso Paper Corp.
VRSK     	 Verisk Analytics Inc. 
VRSN     	 VeriSign Inc. 
VRTA     	 Vestin Realty Mortgage I Inc. 
VRTB     	 Vestin Realty Mortgage II Inc. 
VRTS     	 Virtus Investment Partners Inc. 
VRTU     	Virtusa Corporation
VRTX     	Vertex Pharmaceuticals Incorporated
VRX      	 Valeant Pharmaceuticals International Inc. 
VSAT     	 ViaSat Inc. 
VSBN     	 VSB Bancorp Inc. (NY) 
VSCI     	 Vision-Sciences Inc. 
VSCP     	 VirtualScopics Inc. 
VSEC     	VSE Corporation
VSH      	 Vishay Intertechnology Inc. 
VSI      	 Vitamin Shoppe Inc 
VSPY     	Direxion S&P 500 RC Volatility Res Shrs
VSR      	 Versar Inc. 
VSS      	Vanguard FTSE All-World ex-US Small-Cap ETF
VSTM     	 Verastem Inc. 
VT       	Vanguard Total World Stock ETF
VTA      	Invesco Credit Opportunities Fund
VTG      	Vantage Drilling Company
VTHR     	Vanguard Russell 3000 ETF
VTI      	Vanguard Total Stock Market ETF
VTIP     	Vanguard Malvern Funds Vanguard Short-Term Inflation-Protected
VTN      	Invesco Trust  for Investment Grade New York Municipal
VTNC     	 Vitran Corporation Inc. 
VTNR     	 Vertex Energy Inc 
VTR      	 Ventas Inc. 
VTRB     	 Ventas Realty Limited Partnership // Ventas Capital Corporati 
VTSS     	Vitesse Semiconductor Corporation
VTUS     	 Ventrus Biosciences Inc. 
VTV      	Vanguard Value ETF
VTWG     	Vanguard Russell 2000 Growth ETF
VTWO     	Vanguard Russell 2000 ETF
VTWV     	Vanguard Russell 2000 Value ETF
VUG      	Vanguard Growth ETF
VV       	Vanguard Large-Cap ETF
VVC      	Vectren Corporation
VVI      	Viad Corp
VVR      	Invesco Senior Income Trust
VVTV     	 ValueVision Media Inc. 
VVUS     	 VIVUS Inc. 
VWO      	Vanguard Emerging Markets ETF
VXF      	Vanguard Extended Market ETF
VXUS     	Vanguard STAR Funds Vanguard Total International Stock ETF
VYFC     	Valley Financial Corporation
VYM      	Vanguard High Dividend Yield ETF
VZ       	Verizon Communications Inc.
WAB      	Westinghouse Air Brake Technologies Corporation
WABC     	Westamerica Bancorporation
WAC      	Walter Investment Management Corp.
WACLY    	Wacoal Holdings Corporation
WAFD     	 Washington Federal Inc. 
WAFDW    	 Washington Federal Inc. 
WAG      	Walgreen Co.
WAGE     	 WageWorks Inc. 
WAIR     	 Wesco Aircraft Holdings Inc. 
WAL      	Western Alliance Bancorporation
WASH     	 Washington Trust Bancorp Inc. 
WAT      	Waters Corporation
WAVX     	Wave Systems Corp.
WAYN     	Wayne Savings Bancshares Inc.
WBB      	 Westbury Bancorp Inc. 
WBC      	Wabco Holdings Inc.
WBCO     	Washington Banking Company
WBK      	Westpac Banking Corporation
WBKC     	 Wolverine Bancorp Inc. 
WBMD     	WebMD Health Corp
WBS      	Webster Financial Corporation
WBS^E    	Webster Financial Corporation
WBSN     	 Websense Inc. 
WBS/WS   	Webster Financial Corporation
WCC      	 WESCO International Inc. 
WCG      	 WellCare Health Plans Inc. 
WCN      	 Waste Connections Inc. 
WCRX     	Warner Chilcott plc
WD       	 Walker & Dunlop Inc. 
WDAY     	 Workday Inc. 
WDC      	Western Digital Corporation
WDFC     	WD-40 Company
WDR      	 Waddell & Reed Financial Inc. 
WDTI     	WisdomTree Managed Futures Strategy Fund ETF
WEA      	Western Asset Bond Fund
WEAT     	Teucrium Wheat Fund ETF
WEBK     	 Wellesley Bancorp Inc. 
WEBM     	WebMediaBrands Inc
WEC      	Wisconsin Energy Corporation
WEN      	Wendy&#39;s Company (The)
WERN     	 Werner Enterprises Inc. 
WES      	 Western Gas Partners LP 
WETF     	 WisdomTree Investments Inc. 
WEYS     	 Weyco Group Inc. 
WF       	Woori Finance Holdings Co Ltd
WFBI     	WashingtonFirst Bankshares Inc
WFC      	Wells Fargo & Company
WFC^J    	Wells Fargo & Company
WFC^L    	Wells Fargo & Company
WFC^N    	Wells Fargo & Company
WFC^O    	Wells Fargo & Company
WFC^P    	Wells Fargo & Company
WFC/WS   	Wells Fargo & Company
WFD      	 Westfield Financial Inc. 
WFM      	 Whole Foods Market Inc. 
WFR      	 MEMC Electronic Materials Inc. 
WFT      	 Weatherford International Ltd.
WG       	 Willbros Group Inc. 
WGA      	Wells-Gardner Electronics Corporation
WGL      	WGL Holdings Inc
WGO      	 Winnebago Industries Inc. 
WGP      	 Western Gas Equity Partners LP 
WH       	WSP Holdings Limited
WHF      	 WhiteHorse Finance Inc. 
WHG      	Westwood Holdings Group Inc
WHLR     	 Wheeler Real Estate Investment Trust Inc. 
WHR      	Whirlpool Corporation
WHX      	Whiting USA Trust I
WHZ      	Whiting USA Trust II
WIA      	Western Asset/Claymore U.S. Treasury Inflation Prot Secs Fd
WIBC     	 Wilshire Bancorp Inc. 
WIFI     	 Boingo Wireless Inc. 
WILC     	 G. Willi-Food International Ltd. 
WILN     	Wi-Lan Inc
WIN      	Windstream Corporation
WINA     	Winmark Corporation
WIP      	SPDR DB International Government Inflation-Protected Bond ETF
WIRE     	Encore Wire Corporation
WIT      	Wipro Limited
WITE     	ETFS White Metals Basket Trust ETF
WIW      	Western Asset/Claymore U.S Treasury Inflation Prot Secs Fd 2
WLB      	Westmoreland Coal Company
WLBPZ    	Westmoreland Coal Company
WLDN     	 Willdan Group Inc. 
WLFC     	Willis Lease Finance Corporation
WLK      	Westlake Chemical Corporation
WLL      	Whiting Petroleum Corporation
WLL^A    	Whiting Petroleum Corporation
WLP      	WellPoint Inc.
WLT      	 Walter Energy Inc. 
WM       	 Waste Management Inc. 
WMAR     	 West Marine Inc. 
WMB      	 Williams Companies Inc. (The) 
WMC      	Western Asset Mortgage Capital Corporation
WMCR     	Claymore Wilshire Micro-Cap ETF
WMGI     	 Wright Medical Group Inc. 
WMGIZ    	 Wright Medical Group Inc. 
WMK      	 Weis Markets Inc. 
WMS      	WMS Industries Inc.
WNA^     	Wachovia Corporation
WNC      	Wabash National Corporation
WNR      	 Western Refining Inc. 
WNS      	WNS (Holdings) Limited
WOOD     	iShares S&P Global Timber &Forestry Index Fund
WOOF     	 VCA Antech Inc. 
WOR      	 Worthington Industries Inc. 
WPC      	W.P. Carey Inc.
WPCS     	WPCS International Incorporated
WPO      	Washington Post Company (The)
WPP      	Wausau Paper Corp.
WPPGY    	WPP plc
WPRT     	Westport Innovations Inc
WPS      	iShares S&P World ex-US Property ETF
WPX      	 WPX Energy Inc. 
WPZ      	Williams Partners L.P.
WR       	 Westar Energy Inc. 
WRB      	W.R. Berkley Corporation
WRB^A    	W.R. Berkley Corporation
WRD      	Weingarten Realty Investors
WRE      	Washington Real Estate Investment Trust
WREI     	Claymore Wilshire US REIT ETF
WRES     	 Warren Resources Inc. 
WRI      	Weingarten Realty Investors
WRI^F    	Weingarten Realty Investors
WRLD     	World Acceptance Corporation
WRLS     	Telular Corporation
WRN      	Western Copper and Gold Corporation
WRT      	Winthrop Realty Trust
WSB      	 WSB Holdings Inc. 
WSBC     	 WesBanco Inc. 
WSBF     	 Waterstone Financial Inc. 
WSCI     	WSI Industries Inc.
WSFS     	WSFS Financial Corporation
WSFSL    	WSFS Financial Corporation
WSH      	Willis Group Holdings Limited
WSM      	 Williams-Sonoma Inc. 
WSO      	 Watsco Inc. 
WSO/B    	 Watsco Inc. 
WSR      	Whitestone REIT
WST      	 West Pharmaceutical Services Inc. 
WSTC     	West Corporation
WSTG     	 Wayside Technology Group Inc. 
WSTL     	 Westell Technologies Inc. 
WTBA     	West Bancorporation
WTFC     	Wintrust Financial Corporation
WTFCW    	Wintrust Financial Corporation
WTI      	 W&T Offshore Inc. 
WTM      	 White Mountains Insurance Group Ltd. 
WTR      	 Aqua America Inc. 
WTS      	 Watts Water Technologies Inc. 
WTSL     	 The Wet Seal Inc. 
WTT      	 Wireless Telecom Group  Inc. 
WTW      	Weight Watchers International Inc
WU       	Western Union Company (The)
WVFC     	WVS Financial Corp.
WVVI     	 Willamette Valley Vineyards Inc. 
WWAV     	Whitewave Foods Company (The)
WWD      	 Woodward Inc. 
WWE      	 World Wrestling Entertainment Inc. 
WWW      	 Wolverine World Wide Inc. 
WWWW     	 Web.com Group Inc. 
WWZ^K    	SiM Internal Test 10
WX       	Wuxi Pharmatech (Cayman) Inc.
WXS      	WEX Inc.
WY       	Weyerhaeuser Company
WYN      	Wyndham Worldwide Corp
WYNN     	 Wynn Resorts Limited 
WYY      	WidePoint Corporation
X        	United States Steel Corporation
XAA      	American Municipal Income Portfolio
XAR      	SPDR S&P Aerospace & Defense ETF
XBI      	SPDR S&P Biotech ETF
XBKS     	 Xenith Bankshares Inc. 
XCJ      	Xcel Energy Inc.
XCO      	EXCO Resources NL
XEC      	Cimarex Energy Co
XEL      	Xcel Energy Inc.
XES      	SPDR S&P Oil & Gas Equipment & Services ETF
XFP      	Lehman ABS Corporation
XFR      	Lehman ABS Corporation
XHB      	SPDR S&P Homebuilders ETF
XHE      	SPDR S&P Healthcare Equipment ETF
XHS      	SPDR S&P Health Care Services ETF
XIDE     	Exide Technologies
XIN      	Xinyuan Real Estate Co Ltd
XKE      	Lehman ABS Corporation
XKO      	Lehman ABS Corporation
XL       	XL Group plc
XLB      	SPDR Materials Select Sector Fund ETF
XLE      	SPDR Energy Select Sector Fund ETF
XLF      	SPDR Financial Select Sector Fund ETF
XLG      	Guggenheim (Rydex) Russell Top 50 ETF
XLI      	SPDR Industrial Select Sector Fund ETF
XLK      	SPDR Technology Select Sector Fund ETF
XLNX     	 Xilinx Inc. 
XLP      	SPDR Consumer Staples Select Sector Fund ETF
XLS      	Exelis Inc.
XLU      	SPDR Utilities Select Sector Fund ETF
XLV      	SPDR Health Care Select Sector Fund ETF
XLY      	SPDR Consumer Discretionary Select Sector Fund ETF
XME      	SPDR S&P Metals and Mining ETF
XMLV     	PowerShares S&P 400 Low Volatility ETF
XMPT     	Market Vectors CEF Municipal Income ETF
XNPT     	 XenoPort Inc. 
XNY      	China Xiniya Fashion Limited
XOM      	Exxon Mobil Corporation
XOMA     	XOMA Corporation
XONE     	The ExOne Company
XOOM     	Xoom Corporation
XOP      	SPDR S&P Oil & Gas Exploration & Production ETF
XOVR     	SPDR BofA ML Crossover Corp Bond ETF
XOXO     	 XO Group Inc. 
XPH      	SPDR S&P Pharmaceuticals ETF
XPL      	Solitario Exploration & Royalty Corp
XPLR     	Xplore Technologies Corp
XPO      	 XPO Logistics Inc. 
XPP      	ProShares Ultra FTSE China 25 ETF
XRA      	Exeter Resource Corporation
XRAY     	DENTSPLY International Inc.
XRM      	 Xerium Technologies Inc. 
XRS      	TAL Education Group
XRSC     	XRS Corporation
XRT      	SPDR S&P Retail ETF
XRTX     	Xyratex Ltd.
XRX      	Xerox Corporation
XSD      	SPDR S&P Semiconductor ETF
XSLV     	PowerShares S&P 600 Low Volatility ETF
XSW      	SPDR S&P Software & Services ETF
XTEX     	 Crosstex Energy L.P. 
XTL      	SPDR S&P Telecom ETF
XTN      	SPDR S&P Transportation ETF
XTXI     	 Crosstex Energy Inc. 
XUE      	Xueda Education Group
XVG      	Lehman ABS Corporation
XWES     	World Energy Solutions Inc (DE)
XXIA     	Ixia
XYL      	Xylem Inc.
Y        	Alleghany Corporation
YANG     	Direxion Daily China 3X Bear Shares ETF
YAO      	Guggenheim China All-Cap ETF
YAVY     	Yadkin Valley Financial Corporation
YCL      	ProShares Ultra Yen ETF
YCS      	ProShares UltraShort Yen ETF
YELP     	Yelp Inc.
YGE      	Yingli Green Energy Holding Company Limited
YHOO     	Yahoo! Inc.
YINN     	Direxion Daily China 3X Bull Shares ETF
YMLI     	Yorkville High Income Infras MLP ETF
YMLP     	Yorkville High Income MLP ETF
YNDX     	Yandex N.V.
YOD      	 You On Demand Holdings Inc. 
YOKU     	Youku Tudou Inc.
YONG     	 Yongye International Inc. 
YORW     	The York Water Company
YPF      	YPF Sociedad Anonima
YRCW     	 YRC Worldwide Inc. 
YUM      	 Yum! Brands Inc. 
YXI      	ProShares Short FTSE China 25 ETF
YY       	YY Inc.
YZC      	Yanzhou Coal Mining Company Limited
Z        	 Zillow Inc. 
ZA       	Zuoan Fashion Limited
ZAGG     	ZAGG Inc
ZAZA     	ZaZa Energy Corporation
ZB^A     	Zions Bancorporation
ZBB      	ZBB Energy Corporation
ZB^B/CL  	Zions Bancorporation
ZB^C     	Zions Bancorporation
ZB^F     	Zions Bancorporation
ZB^G     	Zions Bancorporation
ZBRA     	Zebra Technologies Corporation
ZEP      	Zep Inc.
ZEUS     	 Olympic Steel Inc. 
ZF       	 Zweig Fund Inc. (The) 
ZFC      	ZAIS Financial Corp.
ZGNX     	 Zogenix Inc. 
ZHNE     	 Zhone Technologies Inc. 
ZIGO     	Zygo Corporation
ZINC     	Horsehead Holding Corp.
ZION     	Zions Bancorporation
ZIONW    	Zions Bancorporation
ZIONZ    	Zions Bancorporation
ZIOP     	ZIOPHARM Oncology Inc
ZIPR     	 ZipRealty Inc. 
ZIXI     	Zix Corporation
ZLC      	Zale Corporation
ZLCS     	Zalicus Inc.
ZLTQ     	 ZELTIQ Aesthetics Inc. 
ZMH      	 Zimmer Holdings Inc. 
ZN       	Zion Oil & Gas Inc
ZNGA     	Zynga Inc.
ZNH      	China Southern Airlines Company Limited
ZOLT     	 Zoltek Companies Inc. 
ZOOM     	 Zoom Technologies Inc. 
ZQK      	 Quiksilver Inc. 
ZROZ     	PIMCO 25+ Year Zero Coupon U.S. Treasury Index Fund ETF
ZSL      	ProShares UltraShort Silver ETF
ZTR      	 Zweig Total Return Fund Inc. (The) 
ZTS      	Zoetis Inc.
ZUMZ     	Zumiez Inc.
ZX       	China Zenix Auto International Limited
ZXX      	SM Listed Test 3
ZXX^F    	SM Listed Test 3
ZY^A     	Cqs Test Secid
ZYY      	SM Listed Test 2
ZYY^A    	SM Listed Test 2
ZYZ^K    	SiM Internal Test 11
ZZA      	SM Listed Test 2
ZZB      	SM Listed Test 2
ZZD      	SM Listed Test 2
ZZE      	SM Listed Test 2
ZZF      	SM Listed Test 2
ZZG      	SM Listed Test 2
ZZH      	SM Listed Test 2
ZZI      	SM Listed Test 2
ZZJ      	SM Listed Test 2
ZZJJ     	SM Listed Test 2
\.


--
-- Name: stock_bet_pkey; Type: CONSTRAINT; Schema: public; Owner: markelba; Tablespace: 
--

ALTER TABLE ONLY stock_bet
    ADD CONSTRAINT stock_bet_pkey PRIMARY KEY (stock_symbol, bet_ts);


--
-- Name: stock_price_pkey; Type: CONSTRAINT; Schema: public; Owner: markelba; Tablespace: 
--

ALTER TABLE ONLY stock_price
    ADD CONSTRAINT stock_price_pkey PRIMARY KEY (stock_symbol, price_ts);


--
-- Name: stock_ticker_pkey; Type: CONSTRAINT; Schema: public; Owner: markelba; Tablespace: 
--

ALTER TABLE ONLY stock_ticker
    ADD CONSTRAINT stock_ticker_pkey PRIMARY KEY (stock_symbol);


--
-- Name: stock_bet_stock_symbol_fkey; Type: FK CONSTRAINT; Schema: public; Owner: markelba
--

ALTER TABLE ONLY stock_bet
    ADD CONSTRAINT stock_bet_stock_symbol_fkey FOREIGN KEY (stock_symbol) REFERENCES stock_ticker(stock_symbol);


--
-- Name: stock_price_stock_symbol_fkey; Type: FK CONSTRAINT; Schema: public; Owner: markelba
--

ALTER TABLE ONLY stock_price
    ADD CONSTRAINT stock_price_stock_symbol_fkey FOREIGN KEY (stock_symbol) REFERENCES stock_ticker(stock_symbol);


--
-- Name: public; Type: ACL; Schema: -; Owner: postgres
--

REVOKE ALL ON SCHEMA public FROM PUBLIC;
REVOKE ALL ON SCHEMA public FROM postgres;
GRANT ALL ON SCHEMA public TO postgres;
GRANT ALL ON SCHEMA public TO PUBLIC;


--
-- PostgreSQL database dump complete
--

