BEGIN TRANSACTION;
CREATE TABLE IF NOT EXISTS "Administration" (
	"ID"	INT4 NOT NULL,
	"LogoPath"	TEXT,
	"ReferenceImagePath"	TEXT,
	"LastSelectedPath"	TEXT,
	"AutoSelect"	BOOL,
	"AutoOpenDocuments"	BOOL,
	"SavePath"	TEXT,
	"DateChanged"	DATETIME,
	"DateCreated"	DATETIME,
	PRIMARY KEY("ID")
);
CREATE TABLE IF NOT EXISTS "App_variables" (
	"ID"	INTEGER NOT NULL,
	"Var"	TEXT,
	"Val"	TEXT,
	PRIMARY KEY("ID" AUTOINCREMENT)
);
CREATE TABLE IF NOT EXISTS "Country" (
	"ID"	INT4 NOT NULL,
	"CountryName"	VARCHAR(255),
	"CountryCode"	VARCHAR(8),
	"Favorite"	BOOL,
	PRIMARY KEY("ID")
);
CREATE TABLE IF NOT EXISTS "Lens_CLA" (
	"ID"	INTEGER NOT NULL,
	"ID_Lens"	INTEGER,
	"CLA_reason"	TEXT,
	"CLA_warranty"	INTEGER,
	"CLA_serial_no"	TEXT,
	"CLA_date_shipment"	TEXT,
	"CLA_recipient"	TEXT,
	"CLA_eoc"	TEXT,
	"CLA_date_arrival"	TEXT,
	"CLA_actual_cost"	TEXT,
	"CLA_comments"	TEXT,
	"DateCreated"	TEXT,
	"DateChanged"	TEXT,
	PRIMARY KEY("ID" AUTOINCREMENT)
);
CREATE TABLE IF NOT EXISTS "Lens_ownership" (
	"ID"	INTEGER NOT NULL UNIQUE,
	"ID_Lens"	INTEGER,
	"Purchase_date"	TEXT,
	"Purchase_price"	TEXT,
	"Purchase_serial_no"	TEXT,
	"Purchase_from"	TEXT,
	"Purchase_lens_colour"	TEXT,
	"Purchase_lens_condition"	TEXT,
	"Purchase_comment"	TEXT,
	"DateCreated"	TEXT,
	"DateChanged"	TEXT,
	PRIMARY KEY("ID" AUTOINCREMENT)
);
CREATE TABLE IF NOT EXISTS "Lens_sale" (
	"ID"	INTEGER NOT NULL,
	"ID_Lens"	INTEGER,
	"Sale_date"	TEXT,
	"Sale_price"	TEXT,
	"Sale_serial_no"	TEXT,
	"Sale_to"	TEXT,
	"Sale_lens_colour"	TEXT,
	"Sale_lens_condition"	TEXT,
	"Sale__comment"	TEXT,
	"DateCreated"	TEXT,
	"DateChanged"	TEXT,
	PRIMARY KEY("ID" AUTOINCREMENT)
);
CREATE TABLE IF NOT EXISTS "Lenses" (
	"ID"	INTEGER NOT NULL,
	"MakerId"	INTEGER DEFAULT 1,
	"MountId"	INTEGER DEFAULT 2,
	"MaxAperture"	TEXT,
	"MinAperture"	TEXT,
	"FocalLength"	TEXT,
	"LensType"	TEXT,
	"LensLabel"	TEXT,
	"Order_No"	TEXT,
	"Production_era"	TEXT,
	"LensVariants"	TEXT,
	"Number_of_lenses_groups"	TEXT,
	"MFD"	TEXT,
	"Diaphragm_setting_type"	TEXT,
	"Angle_of_view"	TEXT,
	"Filter_type"	TEXT,
	"Accessories"	TEXT,
	"Materials"	TEXT,
	"Dimensions_diameter"	TEXT,
	"Weight"	TEXT,
	"Inscriptions"	TEXT,
	"Designer"	TEXT,
	"Information"	TEXT,
	"DateCreated"	TEXT,
	"DateChanged"	TEXT,
	"Aperture"	TEXT,
	"Smallest_object_field"	TEXT,
	"Largest_reproduction"	TEXT,
	"Position_of_entrance_pupil"	TEXT,
	"Scales"	TEXT,
	"Viewfinder"	TEXT,
	"Length_to_bayonet_flange"	TEXT,
	"Largest_diameter"	TEXT,
	"Tech_Data"	TEXT,
	"Focusing_range"	TEXT,
	"Lens_mount_description"	TEXT,
	"Maximum_magnification"	TEXT,
	"Compatibility"	TEXT,
	"Bayonet"	TEXT,
	"Dimension"	TEXT,
	"Special_editions"	TEXT,
	"Known_as"	TEXT,
	"Lens_Coding"	BLOB,
	"FocalLength_sort"	INT,
	"Focus_throw"	TEXT,
	"Type_of_focus_ring"	TEXT,
	"R_lens_spec_Id"	INTEGER DEFAULT 0,
	"Row_colour"	TEXT,
	"FocalLength_actual"	TEXT,
	"T_stop"	TEXT,
	PRIMARY KEY("ID" AUTOINCREMENT)
);
CREATE TABLE IF NOT EXISTS "Makers" (
	"ID"	INTEGER NOT NULL,
	"MakerName"	TEXT,
	"CountryId"	INT4,
	"LogoPath"	TEXT,
	"WebSite"	TEXT,
	"Information"	TEXT,
	"DateCreated"	TEXT DEFAULT CURRENT_TIMESTAMP,
	"DateChanged"	TEXT,
	"Toporder"	INTEGER DEFAULT 10000,
	PRIMARY KEY("ID" AUTOINCREMENT)
);
CREATE TABLE IF NOT EXISTS "Mount_types" (
	"ID"	INTEGER NOT NULL,
	"Mount_name"	TEXT,
	"Flange_focal_distance"	TEXT,
	"Frame_size"	TEXT,
	"Throat_or_thread_diameter"	TEXT,
	"Mount_thread_pitch"	TEXT,
	"Mount_type"	TEXT,
	"Primary_use"	TEXT,
	"Camera_lines"	TEXT,
	"Information"	TEXT,
	"DateCreated"	TEXT,
	"DateChanged"	TEXT,
	"Toporder"	INTEGER,
	PRIMARY KEY("ID" AUTOINCREMENT)
);
CREATE TABLE IF NOT EXISTS "Mounts" (
	"ID"	INTEGER NOT NULL,
	"MountName"	TEXT,
	"MakerId"	INT4,
	"Information"	TEXT,
	"DateCreated"	TEXT DEFAULT CURRENT_TIMESTAMP,
	"DateChanged"	TEXT,
	"Toporder"	INTEGER DEFAULT 10000,
	PRIMARY KEY("ID" AUTOINCREMENT)
);
CREATE TABLE IF NOT EXISTS "R_lens_spec_t" (
	"ID"	INTEGER NOT NULL,
	"Spec"	TEXT,
	"Toporder"	INTEGER DEFAULT 10000,
	PRIMARY KEY("ID")
);
CREATE TABLE IF NOT EXISTS "Serial_numbers" (
	"ID"	INTEGER NOT NULL,
	"ID_Lens"	INTEGER,
	"SN_Start"	TEXT,
	"SN_End"	TEXT,
	"Product"	TEXT,
	"Year"	TEXT,
	"Total"	TEXT,
	"Information"	TEXT,
	"DateCreated"	TEXT,
	"DateChanged"	TEXT,
	PRIMARY KEY("ID")
);
INSERT INTO "Administration" VALUES (1,'/home/det/Projects/Lenses/Images','/home/det','/home/det/Projects/Lenses/Images',1,1,NULL,NULL,NULL);
INSERT INTO "App_variables" VALUES (1,'LastCreateFTS','2025-03-18');
INSERT INTO "App_variables" VALUES (2,'FTS_Enabled','True');
INSERT INTO "Country" VALUES (1,'Afghanistan','AF',0);
INSERT INTO "Country" VALUES (2,'Albania','AL',0);
INSERT INTO "Country" VALUES (3,'Algeria','DZ',0);
INSERT INTO "Country" VALUES (4,'American Samoa','AS',0);
INSERT INTO "Country" VALUES (5,'Andorra','AD',0);
INSERT INTO "Country" VALUES (6,'Angola','AO',1);
INSERT INTO "Country" VALUES (7,'Anguilla','AI',0);
INSERT INTO "Country" VALUES (8,'Antarctica','AQ',0);
INSERT INTO "Country" VALUES (9,'Antigua and Barbuda','AG',0);
INSERT INTO "Country" VALUES (10,'Argentina','AR',0);
INSERT INTO "Country" VALUES (11,'Armenia','AM',0);
INSERT INTO "Country" VALUES (12,'Aruba','AW',0);
INSERT INTO "Country" VALUES (13,'Australia','AU',0);
INSERT INTO "Country" VALUES (14,'Austria','AT',0);
INSERT INTO "Country" VALUES (15,'Azerbaijan','AZ',0);
INSERT INTO "Country" VALUES (16,'Bahamas','BS',0);
INSERT INTO "Country" VALUES (17,'Bahrain','BH',0);
INSERT INTO "Country" VALUES (18,'Bangladesh','BD',0);
INSERT INTO "Country" VALUES (19,'Barbados','BB',0);
INSERT INTO "Country" VALUES (20,'Belarus','BY',0);
INSERT INTO "Country" VALUES (21,'Belgium','BE',0);
INSERT INTO "Country" VALUES (22,'Belize','BZ',0);
INSERT INTO "Country" VALUES (23,'Benin','BJ',0);
INSERT INTO "Country" VALUES (24,'Bermuda','BM',0);
INSERT INTO "Country" VALUES (25,'Bhutan','BT',0);
INSERT INTO "Country" VALUES (26,'Bolivia','BO',0);
INSERT INTO "Country" VALUES (27,'Bosnia and Herzegovina','BA',0);
INSERT INTO "Country" VALUES (28,'Botswana','BW',0);
INSERT INTO "Country" VALUES (29,'Bouvet Island','BV',0);
INSERT INTO "Country" VALUES (30,'Brazil','BR',0);
INSERT INTO "Country" VALUES (31,'British Antarctic Territory','BQ',0);
INSERT INTO "Country" VALUES (32,'British Indian Ocean Territory','IO',0);
INSERT INTO "Country" VALUES (33,'British Virgin Islands','VG',0);
INSERT INTO "Country" VALUES (34,'Brunei','BN',0);
INSERT INTO "Country" VALUES (35,'Bulgaria','BG',0);
INSERT INTO "Country" VALUES (36,'Burkina Faso','BF',0);
INSERT INTO "Country" VALUES (37,'Burundi','BI',0);
INSERT INTO "Country" VALUES (38,'Cambodia','KH',0);
INSERT INTO "Country" VALUES (39,'Cameroon','CM',0);
INSERT INTO "Country" VALUES (40,'Canada','CA',0);
INSERT INTO "Country" VALUES (41,'Canton and Enderbury Islands','CT',0);
INSERT INTO "Country" VALUES (42,'Cape Verde','CV',0);
INSERT INTO "Country" VALUES (43,'Cayman Islands','KY',0);
INSERT INTO "Country" VALUES (44,'Central African Republic','CF',0);
INSERT INTO "Country" VALUES (45,'Chad','TD',0);
INSERT INTO "Country" VALUES (46,'Chile','CL',0);
INSERT INTO "Country" VALUES (47,'China','CN',0);
INSERT INTO "Country" VALUES (48,'Christmas Island','CX',0);
INSERT INTO "Country" VALUES (49,'Cocos [Keeling] Islands','CC',0);
INSERT INTO "Country" VALUES (50,'Colombia','CO',0);
INSERT INTO "Country" VALUES (51,'Comoros','KM',0);
INSERT INTO "Country" VALUES (52,'Congo - Brazzaville','CG',0);
INSERT INTO "Country" VALUES (53,'Congo - Kinshasa','CD',0);
INSERT INTO "Country" VALUES (54,'Cook Islands','CK',0);
INSERT INTO "Country" VALUES (55,'Costa Rica','CR',0);
INSERT INTO "Country" VALUES (56,'Croatia','HR',0);
INSERT INTO "Country" VALUES (57,'Cuba','CU',0);
INSERT INTO "Country" VALUES (58,'Cyprus','CY',0);
INSERT INTO "Country" VALUES (59,'Czech Republic','CZ',0);
INSERT INTO "Country" VALUES (60,'Côte d’Ivoire','CI',0);
INSERT INTO "Country" VALUES (61,'Denmark','DK',0);
INSERT INTO "Country" VALUES (62,'Djibouti','DJ',0);
INSERT INTO "Country" VALUES (63,'Dominica','DM',0);
INSERT INTO "Country" VALUES (64,'Dominican Republic','DO',0);
INSERT INTO "Country" VALUES (65,'Dronning Maud Land','NQ',0);
INSERT INTO "Country" VALUES (66,'East Germany','DD',0);
INSERT INTO "Country" VALUES (67,'Ecuador','EC',0);
INSERT INTO "Country" VALUES (68,'Egypt','EG',0);
INSERT INTO "Country" VALUES (69,'El Salvador','SV',0);
INSERT INTO "Country" VALUES (70,'Equatorial Guinea','GQ',0);
INSERT INTO "Country" VALUES (71,'Eritrea','ER',0);
INSERT INTO "Country" VALUES (72,'Estonia','EE',0);
INSERT INTO "Country" VALUES (73,'Ethiopia','ET',0);
INSERT INTO "Country" VALUES (74,'Falkland Islands','FK',0);
INSERT INTO "Country" VALUES (75,'Faroe Islands','FO',0);
INSERT INTO "Country" VALUES (76,'Fiji','FJ',0);
INSERT INTO "Country" VALUES (77,'Finland','FI',0);
INSERT INTO "Country" VALUES (78,'France','FR',0);
INSERT INTO "Country" VALUES (79,'French Guiana','GF',0);
INSERT INTO "Country" VALUES (80,'French Polynesia','PF',0);
INSERT INTO "Country" VALUES (81,'French Southern Territories','TF',0);
INSERT INTO "Country" VALUES (82,'French Southern and Antarctic Territories','FQ',0);
INSERT INTO "Country" VALUES (83,'Gabon','GA',0);
INSERT INTO "Country" VALUES (84,'Gambia','GM',0);
INSERT INTO "Country" VALUES (85,'Georgia','GE',0);
INSERT INTO "Country" VALUES (86,'Germany','DE',1);
INSERT INTO "Country" VALUES (87,'Ghana','GH',0);
INSERT INTO "Country" VALUES (88,'Gibraltar','GI',0);
INSERT INTO "Country" VALUES (89,'Greece','GR',0);
INSERT INTO "Country" VALUES (90,'Greenland','GL',0);
INSERT INTO "Country" VALUES (91,'Grenada','GD',0);
INSERT INTO "Country" VALUES (92,'Guadeloupe','GP',0);
INSERT INTO "Country" VALUES (93,'Guam','GU',0);
INSERT INTO "Country" VALUES (94,'Guatemala','GT',0);
INSERT INTO "Country" VALUES (95,'Guernsey','GG',0);
INSERT INTO "Country" VALUES (96,'Guinea','GN',0);
INSERT INTO "Country" VALUES (97,'Guinea-Bissau','GW',0);
INSERT INTO "Country" VALUES (98,'Guyana','GY',0);
INSERT INTO "Country" VALUES (99,'Haiti','HT',0);
INSERT INTO "Country" VALUES (100,'Heard Island and McDonald Islands','HM',0);
INSERT INTO "Country" VALUES (101,'Honduras','HN',0);
INSERT INTO "Country" VALUES (102,'Hong Kong SAR China','HK',0);
INSERT INTO "Country" VALUES (103,'Hungary','HU',0);
INSERT INTO "Country" VALUES (104,'Iceland','IS',0);
INSERT INTO "Country" VALUES (105,'India','IN',0);
INSERT INTO "Country" VALUES (106,'Indonesia','ID',0);
INSERT INTO "Country" VALUES (107,'Iran','IR',0);
INSERT INTO "Country" VALUES (108,'Iraq','IQ',0);
INSERT INTO "Country" VALUES (109,'Ireland','IE',0);
INSERT INTO "Country" VALUES (110,'Isle of Man','IM',0);
INSERT INTO "Country" VALUES (111,'Israel','IL',0);
INSERT INTO "Country" VALUES (112,'Italy','IT',0);
INSERT INTO "Country" VALUES (113,'Jamaica','JM',0);
INSERT INTO "Country" VALUES (114,'Japan','JP',0);
INSERT INTO "Country" VALUES (115,'Jersey','JE',0);
INSERT INTO "Country" VALUES (116,'Johnston Island','JT',0);
INSERT INTO "Country" VALUES (117,'Jordan','JO',0);
INSERT INTO "Country" VALUES (118,'Kazakhstan','KZ',0);
INSERT INTO "Country" VALUES (119,'Kenya','KE',0);
INSERT INTO "Country" VALUES (120,'Kiribati','KI',0);
INSERT INTO "Country" VALUES (121,'Kuwait','KW',0);
INSERT INTO "Country" VALUES (122,'Kyrgyzstan','KG',0);
INSERT INTO "Country" VALUES (123,'Laos','LA',0);
INSERT INTO "Country" VALUES (124,'Latvia','LV',0);
INSERT INTO "Country" VALUES (125,'Lebanon','LB',0);
INSERT INTO "Country" VALUES (126,'Lesotho','LS',0);
INSERT INTO "Country" VALUES (127,'Liberia','LR',0);
INSERT INTO "Country" VALUES (128,'Libya','LY',0);
INSERT INTO "Country" VALUES (129,'Liechtenstein','LI',0);
INSERT INTO "Country" VALUES (130,'Lithuania','LT',0);
INSERT INTO "Country" VALUES (131,'Luxembourg','LU',0);
INSERT INTO "Country" VALUES (132,'Macau SAR China','MO',0);
INSERT INTO "Country" VALUES (133,'Macedonia','MK',0);
INSERT INTO "Country" VALUES (134,'Madagascar','MG',0);
INSERT INTO "Country" VALUES (135,'Malawi','MW',0);
INSERT INTO "Country" VALUES (136,'Malaysia','MY',0);
INSERT INTO "Country" VALUES (137,'Maldives','MV',0);
INSERT INTO "Country" VALUES (138,'Mali','ML',0);
INSERT INTO "Country" VALUES (139,'Malta','MT',0);
INSERT INTO "Country" VALUES (140,'Marshall Islands','MH',0);
INSERT INTO "Country" VALUES (141,'Martinique','MQ',0);
INSERT INTO "Country" VALUES (142,'Mauritania','MR',0);
INSERT INTO "Country" VALUES (143,'Mauritius','MU',0);
INSERT INTO "Country" VALUES (144,'Mayotte','YT',0);
INSERT INTO "Country" VALUES (145,'Metropolitan France','FX',0);
INSERT INTO "Country" VALUES (146,'Mexico','MX',0);
INSERT INTO "Country" VALUES (147,'Micronesia','FM',0);
INSERT INTO "Country" VALUES (148,'Midway Islands','MI',0);
INSERT INTO "Country" VALUES (149,'Moldova','MD',0);
INSERT INTO "Country" VALUES (150,'Monaco','MC',0);
INSERT INTO "Country" VALUES (151,'Mongolia','MN',0);
INSERT INTO "Country" VALUES (152,'Montenegro','ME',0);
INSERT INTO "Country" VALUES (153,'Montserrat','MS',0);
INSERT INTO "Country" VALUES (154,'Morocco','MA',0);
INSERT INTO "Country" VALUES (155,'Mozambique','MZ',0);
INSERT INTO "Country" VALUES (156,'Myanmar [Burma]','MM',0);
INSERT INTO "Country" VALUES (157,'Namibia','NA',0);
INSERT INTO "Country" VALUES (158,'Nauru','NR',0);
INSERT INTO "Country" VALUES (159,'Nepal','NP',0);
INSERT INTO "Country" VALUES (160,'Netherlands','NL',0);
INSERT INTO "Country" VALUES (161,'Netherlands Antilles','AN',0);
INSERT INTO "Country" VALUES (162,'Neutral Zone','NT',0);
INSERT INTO "Country" VALUES (163,'New Caledonia','NC',0);
INSERT INTO "Country" VALUES (164,'New Zealand','NZ',0);
INSERT INTO "Country" VALUES (165,'Nicaragua','NI',0);
INSERT INTO "Country" VALUES (166,'Niger','NE',0);
INSERT INTO "Country" VALUES (167,'Nigeria','NG',0);
INSERT INTO "Country" VALUES (168,'Niue','NU',0);
INSERT INTO "Country" VALUES (169,'Norfolk Island','NF',0);
INSERT INTO "Country" VALUES (170,'North Korea','KP',0);
INSERT INTO "Country" VALUES (171,'North Vietnam','VD',0);
INSERT INTO "Country" VALUES (172,'Northern Mariana Islands','MP',0);
INSERT INTO "Country" VALUES (173,'Norway','NO',0);
INSERT INTO "Country" VALUES (174,'Oman','OM',0);
INSERT INTO "Country" VALUES (175,'Pacific Islands Trust Territory','PC',0);
INSERT INTO "Country" VALUES (176,'Pakistan','PK',0);
INSERT INTO "Country" VALUES (177,'Palau','PW',0);
INSERT INTO "Country" VALUES (178,'Palestinian Territories','PS',0);
INSERT INTO "Country" VALUES (179,'Panama','PA',0);
INSERT INTO "Country" VALUES (180,'Panama Canal Zone','PZ',0);
INSERT INTO "Country" VALUES (181,'Papua New Guinea','PG',0);
INSERT INTO "Country" VALUES (182,'Paraguay','PY',0);
INSERT INTO "Country" VALUES (183,'Peoples Democratic Republic of Yemen','YD',0);
INSERT INTO "Country" VALUES (184,'Peru','PE',0);
INSERT INTO "Country" VALUES (185,'Philippines','PH',0);
INSERT INTO "Country" VALUES (186,'Pitcairn Islands','PN',0);
INSERT INTO "Country" VALUES (187,'Poland','PL',0);
INSERT INTO "Country" VALUES (188,'Portugal','PT',0);
INSERT INTO "Country" VALUES (189,'Puerto Rico','PR',0);
INSERT INTO "Country" VALUES (190,'Qatar','QA',0);
INSERT INTO "Country" VALUES (191,'Romania','RO',0);
INSERT INTO "Country" VALUES (192,'Russia','RU',0);
INSERT INTO "Country" VALUES (193,'Rwanda','RW',0);
INSERT INTO "Country" VALUES (194,'Réunion','RE',0);
INSERT INTO "Country" VALUES (195,'Saint Barthélemy','BL',0);
INSERT INTO "Country" VALUES (196,'Saint Helena','SH',0);
INSERT INTO "Country" VALUES (197,'Saint Kitts and Nevis','KN',0);
INSERT INTO "Country" VALUES (198,'Saint Lucia','LC',0);
INSERT INTO "Country" VALUES (199,'Saint Martin','MF',0);
INSERT INTO "Country" VALUES (200,'Saint Pierre and Miquelon','PM',0);
INSERT INTO "Country" VALUES (201,'Saint Vincent and the Grenadines','VC',0);
INSERT INTO "Country" VALUES (202,'Samoa','WS',0);
INSERT INTO "Country" VALUES (203,'San Marino','SM',0);
INSERT INTO "Country" VALUES (204,'Saudi Arabia','SA',0);
INSERT INTO "Country" VALUES (205,'Senegal','SN',0);
INSERT INTO "Country" VALUES (206,'Serbia','RS',0);
INSERT INTO "Country" VALUES (207,'Serbia and Montenegro','CS',0);
INSERT INTO "Country" VALUES (208,'Seychelles','SC',0);
INSERT INTO "Country" VALUES (209,'Sierra Leone','SL',0);
INSERT INTO "Country" VALUES (210,'Singapore','SG',0);
INSERT INTO "Country" VALUES (211,'Slovakia','SK',0);
INSERT INTO "Country" VALUES (212,'Slovenia','SI',0);
INSERT INTO "Country" VALUES (213,'Solomon Islands','SB',0);
INSERT INTO "Country" VALUES (214,'Somalia','SO',0);
INSERT INTO "Country" VALUES (215,'South Africa','ZA',0);
INSERT INTO "Country" VALUES (216,'South Georgia and the South Sandwich Islands','GS',0);
INSERT INTO "Country" VALUES (217,'South Korea','KR',0);
INSERT INTO "Country" VALUES (218,'Spain','ES',0);
INSERT INTO "Country" VALUES (219,'Sri Lanka','LK',0);
INSERT INTO "Country" VALUES (220,'Sudan','SD',0);
INSERT INTO "Country" VALUES (221,'Suriname','SR',0);
INSERT INTO "Country" VALUES (222,'Svalbard and Jan Mayen','SJ',0);
INSERT INTO "Country" VALUES (223,'Swaziland','SZ',0);
INSERT INTO "Country" VALUES (224,'Sweden','SE',0);
INSERT INTO "Country" VALUES (225,'Switzerland','CH',0);
INSERT INTO "Country" VALUES (226,'Syria','SY',0);
INSERT INTO "Country" VALUES (227,'São Tomé and Príncipe','ST',0);
INSERT INTO "Country" VALUES (228,'Taiwan','TW',0);
INSERT INTO "Country" VALUES (229,'Tajikistan','TJ',0);
INSERT INTO "Country" VALUES (230,'Tanzania','TZ',0);
INSERT INTO "Country" VALUES (231,'Thailand','TH',0);
INSERT INTO "Country" VALUES (232,'Timor-Leste','TL',0);
INSERT INTO "Country" VALUES (233,'Togo','TG',0);
INSERT INTO "Country" VALUES (234,'Tokelau','TK',0);
INSERT INTO "Country" VALUES (235,'Tonga','TO',0);
INSERT INTO "Country" VALUES (236,'Trinidad and Tobago','TT',0);
INSERT INTO "Country" VALUES (237,'Tunisia','TN',0);
INSERT INTO "Country" VALUES (238,'Turkey','TR',0);
INSERT INTO "Country" VALUES (239,'Turkmenistan','TM',0);
INSERT INTO "Country" VALUES (240,'Turks and Caicos Islands','TC',0);
INSERT INTO "Country" VALUES (241,'Tuvalu','TV',0);
INSERT INTO "Country" VALUES (242,'U.S. Minor Outlying Islands','UM',0);
INSERT INTO "Country" VALUES (243,'U.S. Miscellaneous Pacific Islands','PU',0);
INSERT INTO "Country" VALUES (244,'U.S. Virgin Islands','VI',0);
INSERT INTO "Country" VALUES (245,'Uganda','UG',0);
INSERT INTO "Country" VALUES (246,'Ukraine','UA',0);
INSERT INTO "Country" VALUES (247,'Union of Soviet Socialist Republics','SU',0);
INSERT INTO "Country" VALUES (248,'United Arab Emirates','AE',0);
INSERT INTO "Country" VALUES (249,'United Kingdom','GB',0);
INSERT INTO "Country" VALUES (250,'United States','US',0);
INSERT INTO "Country" VALUES (251,'Unknown or Invalid Region','ZZ',0);
INSERT INTO "Country" VALUES (252,'Uruguay','UY',0);
INSERT INTO "Country" VALUES (253,'Uzbekistan','UZ',0);
INSERT INTO "Country" VALUES (254,'Vanuatu','VU',0);
INSERT INTO "Country" VALUES (255,'Vatican City','VA',0);
INSERT INTO "Country" VALUES (256,'Venezuela','VE',0);
INSERT INTO "Country" VALUES (257,'Vietnam','VN',0);
INSERT INTO "Country" VALUES (258,'Wake Island','WK',0);
INSERT INTO "Country" VALUES (259,'Wallis and Futuna','WF',0);
INSERT INTO "Country" VALUES (260,'Western Sahara','EH',0);
INSERT INTO "Country" VALUES (261,'Yemen','YE',0);
INSERT INTO "Country" VALUES (262,'Zambia','ZM',0);
INSERT INTO "Country" VALUES (263,'Zimbabwe','ZW',0);
INSERT INTO "Country" VALUES (264,'Åland Islands','AX',0);
INSERT INTO "Lens_CLA" VALUES (2,68,'',1,'1234567','2021-02-18','Leica, Wetzlar. Mr. Bean','','2021-02-20','','Checked in on 02/17/2021 16:05:59.976 for ''Clean, Lubricate, Adjust'' (CLA) by det
Purchased: Dealer of Trust- from Dealer of Trust-
Colour: Black','2021-02-17 16:05:59','2025-04-20 13:15:02');
INSERT INTO "Lens_CLA" VALUES (3,68,NULL,-1,'1346987','2021-02-16','CAR Ltd. Special Services',NULL,'2021-02-21',NULL,'Checked in on 02/17/2021 16:06:58.142 for ''Clean, Lubricate, Adjust'' (CLA) by det
Purchased: Ebay from Ebay
Colour: Silver','2021-02-17 16:06:58','2021-02-19 15:15:56');
INSERT INTO "Lens_CLA" VALUES (4,2,NULL,0,'1747852',NULL,'n/a, please specify',NULL,NULL,NULL,'Checked in on 02/17/2021 16:14:45.438 for ''Clean, Lubricate, Adjust'' (CLA) by det
Purchased: My dealer just around the corner from My dealer just around the corner
Colour: Black','2021-02-17 16:14:45','2021-02-17 16:14:45');
INSERT INTO "Lens_CLA" VALUES (5,1,'Neew 18/2/2021',-1,'1233522','2021-02-18',NULL,NULL,'2021-02-19',NULL,NULL,'2021-02-18 11:27:40','2021-02-19 15:13:41');
INSERT INTO "Lens_CLA" VALUES (6,41,'Stiff focus ring shortly after purchase',-1,'3139751','2018-10-25','Leica Wetzlar via Leica Store Berlin',NULL,'2018-11-22',NULL,'Nice contact person. Good repair job with no cost since warranty case.','2021-02-20 19:07:20','2021-02-20 19:08:41');
INSERT INTO "Lens_CLA" VALUES (7,142,'Why not',1,'2311','2025-04-18','Leica Corp.','234',NULL,'654','adfadsfadsfa','2025-04-20 13:40:51','2025-04-20 13:40:51');
INSERT INTO "Lens_CLA" VALUES (8,142,'Number 2',NULL,NULL,'2025-04-03','adf','133',NULL,'544','adfavyyvarrival','2025-04-20 13:42:07','2025-04-20 13:42:07');
INSERT INTO "Lens_CLA" VALUES (9,142,'Stiff focal',0,'1236c2','','Hennesy, CA','CA $344',NULL,'','Not yet back from service','2025-04-21 13:01:46','2025-04-21 13:01:46');
INSERT INTO "Lens_ownership" VALUES (0,68,'2021-02-10','700 Peseta','400126122','Supermercado Astalavista','Black','Filthy
After cleaning looks like brand new','llksdfaop','2021-02-12 11:49:14','2021-02-18 16:06:31');
INSERT INTO "Lens_ownership" VALUES (1,20,'2021-02-10','Mille gracie','1234567','Dealer of Trust - or not','Black','As new, incl. original box...33','With trade-in CV Nokton 50/1.1','2021-02-10 11:31:10','2025-04-07 17:46:14');
INSERT INTO "Lens_ownership" VALUES (13,41,'2018-08-14','1300€','3139751','Leia Store Berlin','Black','Lens in excellent condition','Bundle with M10 camera','2021-02-19 10:35:18','2025-04-06 12:01:08');
INSERT INTO "Lens_ownership" VALUES (14,100,'2019-04-25','700€','159357','Fotomaxx Berlin','Black','Rosetta',NULL,'2021-02-25 10:41:37','2021-02-25 10:42:51');
INSERT INTO "Lens_ownership" VALUES (15,6,'2018-10-06','950€','','Hamburg Photohause.de','Black','New222','n/a','2021-03-06 15:10:23','2025-04-07 18:06:45');
INSERT INTO "Lens_ownership" VALUES (16,20,'2025-04-01','7000€','13456','My local trustee dealer of choices','','Perfect condition. Stiff aperture ring.','','2025-04-06T13:21:26.181','2025-04-07 13:22:33');
INSERT INTO "Lens_ownership" VALUES (17,20,'2023-03-27','US $3492','8765421','Leica Store New York','Black','save it.','','2025-04-06T14:13:20.917','2025-04-07 13:23:59');
INSERT INTO "Lens_ownership" VALUES (37,142,'2025-04-12','2344€','S/N951357','dealer','Chrome','Condition no purchase..','No comment	','2025-04-12 19:37:05','2025-04-12 19:56:26');
INSERT INTO "Lens_ownership" VALUES (38,142,'2025-04-01','900€','S/N852963','Nodealer','Black','Rusty','No bargain','2025-04-12 19:39:43','2025-04-12 19:39:43');
INSERT INTO "Lens_ownership" VALUES (39,150,'2025-04-01','adfcxbv','23df','Homebrew','34dfg','adfadgfahbxcvb','aewrfhdjfvs','2025-04-12 20:03:28','2025-04-12 20:03:28');
INSERT INTO "Lens_ownership" VALUES (40,142,'2025-04-18','799€','342g7c','Home town Photo Grimble Crumble','Chrome','New','Friendly dealer, good service','2025-04-21 12:58:38','2025-04-21 12:58:38');
INSERT INTO "Lens_ownership" VALUES (41,109,'2025-04-10','asdf','asdf','adfa','asdf','sdaf','dsf','2025-04-23 15:11:46','2025-04-23 15:11:46');
INSERT INTO "Lens_sale" VALUES (5,68,'2021-02-08','700 Peseta','400126122',NULL,'Black','Filthy
Brand new after cleaning job','Purchased from Supermercado Astalavista
Enregisterd for sale in 02/12/2021 11:49:23.678 by det','2021-02-12 11:49:23','2025-04-18 15:23:55');
INSERT INTO "Lens_sale" VALUES (6,97,'2021-02-08','700€','458525','Mr. Feelgood','Brown','As new =;)','Purchased from Ebay
Enregisterd for sale in 02/13/2021 20:22:00.159 by det','2021-02-13 20:22:00','2021-02-17 16:11:36');
INSERT INTO "Lens_sale" VALUES (7,2,'2021-02-17','25€','1747852',NULL,'Black','OK, some dents but lens are clear, mechanical perfect','Purchased from My dealer just around the corner
Enregisterd for sale in 02/17/2021 16:15:28.938 by det','2021-02-17 16:15:28','2021-02-17 16:45:56');
INSERT INTO "Lens_sale" VALUES (8,6,'2020-06-20',NULL,NULL,'Foto Mundus','Black','As new','Trade in deal with Noctilux 50mm f/1.0','2021-03-06 15:10:34','2021-03-06 15:12:16');
INSERT INTO "Lens_sale" VALUES (11,20,'2025-04-18','4564','3453f4','adsfycxv','badf','adf','ycvycv','2025-04-18 20:19:52','2025-04-18 20:19:52');
INSERT INTO "Lens_sale" VALUES (12,147,'2025-04-02','323','4567','bay','black','conditions on sale','Comment me','2025-04-19 12:34:24','2025-04-19 12:34:24');
INSERT INTO "Lens_sale" VALUES (13,142,'2025-04-01','234','2135','me','dfa','badadfa','adfrh4','2025-04-19 12:47:12','2025-04-19 12:47:12');
INSERT INTO "Lens_sale" VALUES (14,142,'2025-04-02','5446','9339x89','lkasdfol','Black','coadfljaösdfköjself.pb_sale_previous.clicked.connect(self.sale_goto_previous_record)','self.pb_sale_previous.clicked.connect(self.sale_goto_previous_record)','2025-04-19 12:47:51','2025-04-19 12:47:51');
INSERT INTO "Lenses" VALUES (6,3,1,'1.1','16.0','50.0','M','50mm Voigtländer Nokton 50/1.1 ',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'Updated by det on 02/14/2021 16:00:32.962','2021-02-02 13:22:38.147','2025-06-03 15:29:20',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'CV 50/1.1',NULL,50,NULL,NULL,0,'#CC00CC',NULL,NULL);
INSERT INTO "Lenses" VALUES (12,3,2,'1.4','16.0','55.0',NULL,'55mm Cosina Cosinon  1:1.4',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'Second hand but in a very good shape. Cost €35 on the Internet.
DOF and Bokeh is excellent at f1.4, very smooth and soft.','2021-02-02 13:22:38.147','2025-06-03 15:21:06',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,55,NULL,NULL,0,'#aa55ff',NULL,NULL);
INSERT INTO "Lenses" VALUES (15,2,1,'1.4','16.0','35.6 mm / 1.4 in','','35mm f/1.4 ASPH Summilux-M','11874-black - 11883-silver - 11859-titan - 11663-black . LLC - 158','1994-2010 - 18,404+ lenses','<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.0//EN" "http://www.w3.org/TR/REC-html40/strict.dtd">
<html><head><meta name="qrichtext" content="1" /><meta charset="utf-8" /><style type="text/css">
p, li { white-space: pre-wrap; }
hr { height: 1px; border-width: 0; }
li.unchecked::marker { content: "\2610"; }
li.checked::marker { content: "\2612"; }
</style></head><body style=" font-family:''Noto Sans''; font-size:19pt; font-weight:400; font-style:normal;">
<p style=" margin-top:0px; margin-bottom:0px; margin-left:0px; margin-right:0px; -qt-block-indent:0; text-indent:0px;">Black, Silver &amp; Titanium versions &quot;Ein Stuck Leica&quot; 504 unit special 1996 edition at initial public stock offering came with imprinted special edition M6 &quot;Borsengang&quot; camera.</p></body></html>','9 /5','','','63°, 54°, 38°','Internal thread for screw-in filters size E46 / separate, clip-on type, lockable','Hood: 12589 12466','Anodized aluminum and optical glass / Chrome plated brass and optical glass','53 mm / 2.1 in','approx. 250 g / 8.8 oz anodized, 415 g / 14.6 oz chrome & titanium','LEICA SUMMILUX-M ASPH. 1:1.4/35 E 46 (Serial No.)','Walter Watz - 1993','Source: https://www.l-camera-forum.com/leica-wiki.en/index.php/M_Lenses_x_Focal_Length as of 02/02/2021','2021-02-02 13:49:00.507','2025-06-03 15:21:33','f/1.4-f/16 - Setting/Function Preset, with click-stops, half values available, manual 9-blade diaphragm','','420 mm x 630 mm / 1:17.5','16.8 mm (related to the first lens surface in light direction)','Combined meter/feet graduation','Camera viewfinder','34.5 mm / 1.4 in','','35mm f/1.4 ASPH Summilux-M.pdf','0.7 m / 2.3 ft < ∞','Leica M quick-change bayonet ','','','','','','','',35,'','',0,NULL,NULL,NULL);
INSERT INTO "Lenses" VALUES (16,2,1,'2.8','16.0','21.3 mm',NULL,'21mm f/2.8 ASPH Elmarit-M','11897-silver, 11135-black . LLC - 140','1997-2010 7,250+ lenses','Silver and black versions','9 /7','0.7 m / 2.3 ft ','Manual with click-stops, (including half values) / 8-blade','92°, 81°, 59°','Internal thread for screw-in type filters, size E55','Hood: 12592; Viewfinder: 12024 or 12025','Anodized aluminum and optical glass / chrome plated brass and optical glass','46 x 58 mm','415 g / 300 g (chrome plated brass / black anodized aluminum)','LEICA ELMARIT-M 1:2.8/21 ASPH. E55 (serial no.)',NULL,'Source: https://www.l-camera-forum.com/leica-wiki.en/index.php/M_Lenses_x_Focal_Length  as of 02/02/2021','2021-02-02 12:14:02.302','2025-06-03 15:19:48','f/2.8-f/16','696 mm x 1.044 mm',NULL,'19.4 mm (related to the first lens surface in light direction)',NULL,NULL,NULL,NULL,'21mm f/2.8 ASPH Elmarit-M.pdf',NULL,'Leica M quick-change bayonet','1:29',NULL,NULL,NULL,NULL,NULL,NULL,21,NULL,NULL,0,NULL,NULL,NULL);
INSERT INTO "Lenses" VALUES (17,2,1,'4.0','16.0','21.6 mm',NULL,'21mm f/1.4 ASPH Summilux-M','11647','2008-Current',NULL,'10 /8',NULL,'Manual with click-stops including half values','92° / 81° / 59°','Series filter VIII in lens hood','Hood: 12461 - Front cap: 14482','Anodized aluminum and optical glass','approx. 69.5 mm / 2.74 in ','approx. 580 g / 20.46 oz','SUMMILUX-M 1:1.4/21 ASPH.',NULL,'Source: https://www.l-camera-forum.com/leica-wiki.en/index.php/M_Lenses_x_Focal_Length  as of 02/02/2021','2021-02-02 12:16:34.903','2025-06-03 15:19:48','f/1.4-f/16 ','685 mm x 1027 mm','1:29','24.4 mm (related to the first lens surface in light direction)','Combined meter/feet graduation','12024 or 12025','length - 66 > 77 mm / 2.60 > 3.03 in (without > with lens hood)',NULL,'21mm f/1.4 ASPH Summilux-M.pdf - courtesy Summilux.net','0.7 m / 2.3 ft < ∞','Leica M quick-change bayonet with 6 bit lens identification bar code for digital M models',NULL,NULL,NULL,NULL,NULL,NULL,NULL,21,NULL,NULL,0,NULL,NULL,NULL);
INSERT INTO "Lenses" VALUES (18,2,1,'4.0','22.0','16mm-18mm-21mm','','16mm-18mm-21mm f/4 ASPH Tri-Elmar-M','11606 - 11642 (also known as "WATE") ','2006-Current','','10 /7','','','24x36 35mm Film - 16 mm: 107°, 97°, 74° / 18 mm: 100°, 90°, 67° / 21 mm: 92°, 81°, 60° Angle of view (diagonal, horizontal, vertical) 18x25 Digital - 16 mm: 90°, 80°, 59° / 18 mm: 84°, 74°, 53° / 21 mm: 75°, 65°, 46°, corresponds approx. to a focal length of 21/24/28 mm with 35 mm-format','Male thread, non-rotating and with stop for filter holder or lens hood / Screw-on type 12458 lens hood (included in delivery)','Filter holder for E67 size filters - Polarizing filter 13407 w/ adapter 14473 - UVa filter 13329','Anodized aluminum and optical glass','54/58 mm, 2.1/2.3 in','335 g / 11.8 oz','LEICA TRI-ELMAR-M 1:4/ 16-18-21 ASPH. 4XXXXXX','Christoph Horneber - patent filed 12 Sep 2007','Source: https://www.l-camera-forum.com/leica-wiki.en/index.php/M_Lenses_x_Focal_Length','2021-02-02 12:24:09.775','2025-06-03 14:48:47','f/4-f/22 - Preset, with click-stops, half values available','24x36 35mm Film - 16 mm focal length: 915 x 1373 mm, 18 mm focal length: 833 x 1250 mm, 21 mm focal length: 725 x 1087 mm  Smallest object field 18x27 Digital - 16 mm focal length: 688 x 1032 mm, 18 mm focal length: 626 x 939 mm, 21 mm focal length: 545 x 817 mm ','0.7 m - 16 mm 1:38, 18 mm 1:35, 21 mm 1:30 ','408 mm / 16.0 in (related to the first lens surface in light direction)','Combined meter/feet graduation with uniform gray figures below 0.7 m','Universal Wideangle Finder M 12011 - with frames for 16, 18, 21, 24, and 28mm','62/72 mm, 2.4/2.8 in','','16mm-18mm-21mm f/4 ASPH Tri-Elmar-M.pdf','0.5 m / 1.64 ft < ∞ range from 0.5 to 0.7 m separated by index','Leica M quick-change bayonet with 6 bit lens identification bar code for digital M models','','','','','','','',16,'','',0,NULL,NULL,NULL);
INSERT INTO "Lenses" VALUES (19,2,1,'3.8','16.0','18mm',NULL,'18mm f/3.8 ASPH Super-Elmar-M','11606 - 11642 (also known as "WATE") ','2006-Current',NULL,'10 /7',NULL,NULL,'24x36 35mm Film - 16 mm: 107°, 97°, 74° / 18 mm: 100°, 90°, 67° / 21 mm: 92°, 81°, 60° Angle of view (diagonal, horizontal, vertical) 18x25 Digital - 16 mm: 90°, 80°, 59° / 18 mm: 84°, 74°, 53° / 21 mm: 75°, 65°, 46°, corresponds approx. to a focal length of 21/24/28 mm with 35 mm-format','Male thread, non-rotating and with stop for filter holder or lens hood / Screw-on type 12458 lens hood (included in delivery)','Filter holder for E67 size filters - Polarizing filter 13407 w/ adapter 14473 - UVa filter 13329','Anodized aluminum and optical glass','54/58 mm, 2.1/2.3 in','335 g / 11.8 oz','LEICA TRI-ELMAR-M 1:4/ 16-18-21 ASPH. 4XXXXXX','Christoph Horneber - patent filed 12 Sep 2007','Source: https://www.l-camera-forum.com/leica-wiki.en/index.php/M_Lenses_x_Focal_Length  as of 02/02/2021','2021-02-02 12:28:39.250','2025-06-03 14:48:49','f/4-f/22 - Preset, with click-stops, half values available','24x36 35mm Film - 16 mm focal length: 915 x 1373 mm, 18 mm focal length: 833 x 1250 mm, 21 mm focal length: 725 x 1087 mm  Smallest object field 18x27 Digital - 16 mm focal length: 688 x 1032 mm, 18 mm focal length: 626 x 939 mm, 21 mm focal length: 545 x 817 mm','0.7 m - 16 mm 1:38, 18 mm 1:35, 21 mm 1:30 ','408 mm / 16.0 in (related to the first lens surface in light direction)','Combined meter/feet graduation with uniform gray figures below 0.7 m','Universal Wideangle Finder M 12011 - with frames for 16, 18, 21, 24, and 28mm','62/72 mm, 2.4/2.8 in',NULL,'16mm-18mm-21mm f/4 ASPH Tri-Elmar-M.pdf','0.5 m / 1.64 ft < ∞ range from 0.5 to 0.7 m separated by index','Leica M quick-change bayonet with 6 bit lens identification bar code for digital M models',NULL,NULL,NULL,NULL,NULL,NULL,NULL,18,NULL,NULL,0,NULL,NULL,NULL);
INSERT INTO "Lenses" VALUES (20,2,1,'8.0','16.0','15mm','','15mm f/8 Hologon.','11003 . LLC - 135','','','3 /3','0.2 m /8 in','Fixed, 1:8','110 degrees','','','Anodized aluminum','','110 g /3.88 oz','Carl Zeiss in Oberkochen','Erhard Glatzel, Hans Schulz, Ris Ruth & Heinz-Dieter Schulz','Notes','2021-02-02 13:16:41.850','2025-06-03 14:48:30','f/8 - f/16','n/a','','','Scaling','','','','','','Leica M-bayonet','','Cannot be used on M8 or M9 cameras.','','','No editions','','',15,'','<unknown>',0,'#ffffff',NULL,NULL);
INSERT INTO "Lenses" VALUES (21,2,1,'2.8','16.0','21mm',NULL,'21mm f/2.8 Elmarit M 1997-1980','11134 . LLC - 139 ','1980-1997 < 13,930 lenses','Early version to Serial No. 3363299 (1985 < 5,500 lenses) with non-RF focusing from 16 to 28 inches; later version with RF focusing from 28 inches; ELC and Germany versions ','8 /6','0.4 m / 1.3 ft (non-RF version) 0.7 m /2.3 ft (RF focusing)','8 blade','92 degrees','E39 for early non-RF version; E60 for last version','Hood: 12537 for early version; 12543 for last version (after serial no. 3363299) - Viewfinder: 12008','Black chrome w/ optical glass','46.5 x 62 mm / 1.83 x 2.44 in','290 g /10.23 oz','LEITZ ELMARIT-M 1:2.8/21 [E 60] 3XXXXXX','Otto Zimmermann, Heinz Marquardt, Hermann Desch and Eugen Hermanni - 16 Apr 1960','Source: https://www.l-camera-forum.com/leica-wiki.en/index.php/M_Lenses_x_Focal_Length  as of 02/02/2021','2021-02-02 13:22:38.147','2025-06-03 14:48:32','f/2.8 - f/16','705 x 1058 mm (non-RF version) 380 x 570 mm (RF focusing)',NULL,NULL,NULL,NULL,NULL,NULL,'Erwin Puts (2002) Leica M-Lenses.pdf - pgs. 20 - 24',NULL,'Leica M-bayonet',NULL,NULL,NULL,NULL,NULL,NULL,NULL,21,NULL,NULL,0,NULL,NULL,NULL);
INSERT INTO "Lenses" VALUES (22,2,1,'3.4','16.0','21mm',NULL,'21mm f/3.4 ASPH Super-Elmar-M','11145','2011-current',NULL,'8 / 7 - Aspherical surfaces: 2',NULL,NULL,'for 35mm (24 x 36 mm) - 91°, 80°, 59°  for M8 (18 x 27 mm) - 74°, 64°, 46° (Equivalent focal length : approx. 28 mm)','Hood 12465 Non-rotating, Female thread - for screw-on filters E46, Male thread - with stop for lens hood (included in delivery)',NULL,NULL,'approx. 54 mm (early version 52 mm; revised version 54 mm to allow enough clearance)','approx. 279 g','LEICA SUPER-ELMAR-M 21mm 1 : 3.4 / 21 APSH. E46 4XXXXXX',NULL,'Source: https://www.l-camera-forum.com/leica-wiki.en/index.php/M_Lenses_x_Focal_Length  as of 02/02/2021','2021-02-02 13:49:00.507','2025-04-23 20:00:20','With click-stops, half values available, 9-blade manual diaphragm','706 mm x 1059 mm (35mm) / 530 mm x 795 mm (for M8)','1 : 29.4','15.6 mm (related to the first lens surface in light direction)','Combined meter /feet graduation',NULL,NULL,NULL,'21mm f/3.4 ASPH Super-Elmar-M.pdf','0.7 m - ∞',NULL,NULL,NULL,'Leica M quick-change bayonet with 6 bit lens identification bar code for digital M models','Length - ca. 43 /55 mm (with /without Lens hood)',NULL,NULL,NULL,21,NULL,NULL,0,NULL,NULL,NULL);
INSERT INTO "Lenses" VALUES (23,2,1,'3.4','16.0','21mm','','21mm f3.4 Super-Angulon','11103 . LLC - 138 ','1963-1980 < 5,970 lenses','Chrome until 1967 then all black; cutout version to fit M5 and CL from SN 2473251.','8 /4','0.4 m /16 in, 0.7 m /28 in, 1 m /40 in M3','Click stop 4-blade','92 degrees','Series VII, E48 - A52.5','Hood: 12501 - Viewfinders: SBKOO - 12012 - 12002','','51 x 52.5 mm / 2.01 x 2.07 in','301 g /10.62 oz','Schneider-Kreuznach','Werner Wagner of Schneider-Kreuznach - 14 Aug 1963','Source: https://www.l-camera-forum.com/leica-wiki.en/index.php/M_Lenses_x_Focal_Length','2021-02-02 13:53:24.603','2025-04-21 20:08:05','f/3.4-f/22','380 x 570 mm / 15 x 23 in','','','','','','','','','Leica Screw-thread & M-bayonet','','Can be used on M8 or M9 cameras (without exposure metering).','','','','','',21,'','',0,NULL,NULL,NULL);
INSERT INTO "Lenses" VALUES (24,2,1,'4.0','22.0','21mm',NULL,'21mm f/4 Super-Angulon','SUOON 11 002 (S), SUMOM 11 102 (M) LLC - 138 ','1958-1981, 1462 screw and 5292* M-bayonet < 27,000 lenses (*low number, perhaps ca.20,000 based on assigned s/n list below - or more of the 1:4 lenses should be listed as the 1:3.4 lens or as R lens - see s/n notes)',NULL,'9 /4','0.4 mm /16 in','9-blade','92 degrees','A42 - E39','Viewfinder: SBKOO; Hood: IWKOO 12502; Back cap: OIXMO','Chrome plated brass','51 x 27 mm / 2.01 x 1.06 in','250 g /8.82 oz','Schneider-Kreuznach','Guenther Klemt at Schneider Kreuznack','Source: https://www.l-camera-forum.com/leica-wiki.en/index.php/M_Lenses_x_Focal_Length  as of 02/02/2021','2021-02-02 13:58:53.784','2025-04-21 20:08:06','f/4-f/22 in full click-stops','380 x 570 mm',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'Leica Screw-thread and unique M-bayonet addaptor removable for screw-mount use',NULL,'Can be used on M8 or M9 cameras (without exposure metering).',NULL,NULL,NULL,NULL,NULL,21,NULL,NULL,0,NULL,NULL,NULL);
INSERT INTO "Lenses" VALUES (25,2,1,'1.4','16.0','24.3 / 0.96 in',NULL,'24mm f/1.4 ASPH Summilux-M','11601','2008-Current',NULL,'10 /8',NULL,'With click-stops, half values available, 11-blade manual diaphragm','84° / 74° / 53°','Series filter VII (24 mm) in lens hood / Separate, screw-on type','Hood: 12462 - Front cap: 14480','Anodized aluminum and optical glass','approx. 61.0 mm / 2.4 in ','approx. 500 g / 17.6 oz','SUMMILUX-M 1:1.4/24 ASPH. 4XXXXXX ',NULL,'Source: https://www.l-camera-forum.com/leica-wiki.en/index.php/M_Lenses_x_Focal_Length  as of 02/02/2021','2021-02-02 14:04:01.878','2025-04-21 20:08:07','f/1.4-f/16 ','609 x 914 mm',NULL,'(from apex of 1st lens element) 19.2 mm / 0.76 in','Combined meter /feet graduation','12019, 12011, 12026 or 12027','58.5 mm / 75.6 (without / with lens hood) - 2.3 / 3.0 in',NULL,'24mm f/1.4 ASPH Summilux-M.pdf','0.7 m / 2.3 ft < ∞','Leica M quick-change bayonet with 6 bit lens identification bar code for digital M models','1:25',NULL,NULL,NULL,NULL,NULL,NULL,24,NULL,NULL,0,NULL,NULL,NULL);
INSERT INTO "Lenses" VALUES (26,2,1,'2.8','16.0','24.4 mm ',NULL,'24mm f/2.8 ASPH Elmarit-M','11878-black - 11898-chrome . LLC - 141','1998-2010 ','Black and chrome versions','7 /5',NULL,NULL,'84°, 74°, 53°','Internal thread for screw-in filters size E55 ','Hood: 12464 or 12592',NULL,'58 mm / 2.3 in','approx. 290 g / 10.3 oz black anodized aluminum - 388 g / 13.7 oz chrome plated brass','ELMARIT-M ASPH. 1:2.8/24 ',NULL,'Source: https://www.l-camera-forum.com/leica-wiki.en/index.php/M_Lenses_x_Focal_Length  as of 02/02/2021','2021-02-02 14:13:21.078','2025-04-21 20:08:08','f/2.8 - f/16 - Setting/Function Preset, with click-stops, half values available, manual 8-blade diaphragm','630 mm x 950 mm','1:26','20.7 mm (related to the first lens surface in light direction)','Combined meter/feet graduation','12019, 12026 or 12027','46 mm / 1.8 in',NULL,'24mm f/2.8 ASPH Elmarit-M.pdf','0.7 m / 2.3 ft < ∞','Leica M quick-change bayonet ',NULL,NULL,NULL,NULL,NULL,NULL,NULL,24,NULL,NULL,0,'#00FF00',NULL,NULL);
INSERT INTO "Lenses" VALUES (27,2,1,'3.8','16.0','24.5 mm / 0.96 in','','24mm f/3.8 ASPH Elmar-M','11648','2008-Current','','8 /6','','With click-stops, half values available, manual diaphragm','84° / 74° / 53°','Non-rotating, female thread for filters E46, male thread for lens hood, screw-on type lens hood (included in delivery)','Viewfinder: 12019, 12026 or 12027 - Hood 12465','Anodized aluminum and optical glass','approx. 53 mm / 2.1 in ','approx. 260 g / 9.2 oz','LEICA ELMAR-M 1:3.8/24 ASPH. E46 (serial no.)','','Source: https://www.l-camera-forum.com/leica-wiki.en/index.php/M_Lenses_x_Focal_Length  as of 02/02/2021','2021-02-02 14:18:05.702','2025-04-21 20:08:28','f/3.8-f/16 ','615 x 922 mm','','(from apex of 1st lens element) 18.7 mm / 0.74 in','Combined meter/feet graduation','','40.6 / 56.6 mm (without / with lens hood) - 1.6 / 2.2 in.','','24mm f/3.8 ASPH Elmar-M.pdf','0.7 m / 2.3 ft < ∞','Leica M quick-change bayonet with 6 bit lens identification bar code for digital M models','1:25.6','','','','','','',24,'','',0,NULL,NULL,NULL);
INSERT INTO "Lenses" VALUES (28,2,1,'1.4','16.0','28.5 mm ',NULL,'28mm f/1.4 ASPH. Summilux-M','11668-black ','2015-Current ',NULL,'10 /7',NULL,NULL,'75°, 65°, 46° (M8: - 60°, 51°, 35° ','Internal thread for screw-on filters size E49, non-rotating / separate, clip-on type, lockable','Hood: Screw-on type 1246? lens hood (included in delivery) ','Black or clear anodized aluminum and anomalous partial dispersion glass','61 mm, 2.4 in','approx. 440 g, 15.5 oz','LEICA SUMMILUX-M ASPH. 1:1.4/28 E46 4XXXXXX',NULL,'Source: https://www.l-camera-forum.com/leica-wiki.en/index.php/M_Lenses_x_Focal_Length  as of 02/02/2021','2021-02-02 14:33:12.384','2025-04-21 20:11:02','f /1.4 - f /16 - Setting/Function Preset, with click-stops, half steps, ?-blade manual diaphragm','526 mm x 789 mm (M8: 395 x 592 mm)','1:21.9','31.9 mm (from bayonet flange)','Combined meter /feet graduation',NULL,'67 mm (81 mm w/ hood), 2.6 in (3.2 in w/ hood)',NULL,'Summilux-M 28mm f/1.4 Tech Data  Summilux-M 28mm f/1.4 Instructions','0.7 m, 2.3 ft < ∞','Leica M quick-change bayonet ',NULL,NULL,NULL,NULL,'1-101 (100 yr edition)-silver (shown) ',NULL,NULL,28,NULL,NULL,0,NULL,NULL,NULL);
INSERT INTO "Lenses" VALUES (30,2,1,'2.0','16.0','28.5 mm / 1.1 in',NULL,'28mm f/2 ASPH Summicron-M','11604-black 11661-silver . LLC - 147','2000-Current < 5,500 lenses to 2006 ',NULL,'9 /6',NULL,NULL,'75°, 65°, 46° (24x36 - 35 mm) - 60°, 51°, 36° (18x27 mm)','Internal thread for screw-on filters size E46, non-rotating / separate, clip-on type, lockable','Hood: 12451, 12466 or 12589','Black or clear anodized aluminum and optical glass','53 mm / 2.1 in','approx. 270 g / 9.5 oz','LEICA SUMMICRON-M ASPH. 1:2/28 E46 3XXXXXX','Michael Heiden','Source: https://www.l-camera-forum.com/leica-wiki.en/index.php/M_Lenses_x_Focal_Length  as of 02/02/2021','2021-02-02 14:42:41.181','2025-04-21 20:11:03','f/2 - f/16 - Setting/Function Preset, with click-stops, half values available, 10-blade manual diaphragm','528 mm x 793 mm','1:22','12.8 mm (related to the first lens surface in light direction)','Combined meter/feet graduation','Camera viewfinder','40.8 mm / 1.6 in',NULL,'28mm f/2 ASPH Summicron-M.pdf - courtesy Summilux.net','0.7 m / 2.3 ft < ∞','Leica M quick-change bayonet ',NULL,NULL,NULL,NULL,NULL,NULL,NULL,28,NULL,NULL,0,NULL,NULL,NULL);
INSERT INTO "Lenses" VALUES (31,2,1,'2.8','16.0','28.4 mm / 1.1 in',NULL,'28mm f/2.8 ASPH Elmarit-M','11606','2006-Current ',NULL,'8 /6',NULL,NULL,'for 35 mm (24 x 36 mm): 75°, 65°, 46° for digital (18 x 27 mm): 60°, 51°, 36°, corresponds to a focal length of approx. 37mm with 35mm-format','Internal thread for screw-on filters size E39 / Snap-on type (supplied)','Hoods: 12526, 12504 - Filters: UVA 13131, Polarizing 13356 - Cap (sans hood): 14038 ','Anodized aluminum and optical glass ','52 mm / 2.1 in','approx. 180 g / 6.3 oz','LEICA ELMARIT-M 1:2.8/28 ASPH. E39 XXXXXXX',NULL,'Source: https://www.l-camera-forum.com/leica-wiki.en/index.php/M_Lenses_x_Focal_Length  as of 02/02/2021','2021-02-02 14:44:08.236','2025-04-21 20:11:03','f/2.8-f/22 - Setting/Function Preset, with click-stops, half values available, 10-blade manual diaphragm','for 35 mm: 533 x 800mm, for digital: 400 x 600 mm','1:22','12.8 mm (related to the first lens surface in light direction)','Combined meter/feet graduation','Camera viewfinder','approx. 30/46 mm (with/without lens hood) - 1.2/1.8 in',NULL,'28mm f/2.8 ASPH Elmarit-M.pdf','0.7 m / 2.3 ft < ∞','Leica M quick-change bayonet with 6 bit identification bar code for digital M models',NULL,NULL,NULL,NULL,NULL,NULL,NULL,28,NULL,NULL,0,NULL,NULL,NULL);
INSERT INTO "Lenses" VALUES (33,2,1,'2.8','22.0','28.2 mm / 1.1 in',NULL,'28mm f/2.8 Elmarit-M IV','11809 . LLC - 146','1992-2006 < 10,130 lenses','With or without 6 bit coding','8 /7',NULL,NULL,'75°, 65°, 46°','Internal thread for screw-in filters size E46 / separate, clip-on type, lockable','Hood: 12547, 12451','Black anodized aluminum','53 mm / 2.1 in','approx. 260 g / 9.2 oz','LEICA ELMARIT-M 1:2.8/28 E46 (Serial No.)',NULL,'Source: https://www.l-camera-forum.com/leica-wiki.en/index.php/M_Lenses_x_Focal_Length  as of 02/02/2021','2021-02-02 14:50:45.338','2025-04-21 20:11:04','f/2.8 - f/22 - with clickstops (including half values), manual 8-blade diaphragm','533 mm x 800 mm','1:22.2','15.2 mm (related to the first lens surface in light direction)','Combined meter/feet graduation','Camera viewfinder','41.4 mm / 1.6 in',NULL,'28mm f/2.8 Elmarit-M IV.pdf - courtesy Summilux.net, Erwin Puts (2002) Leica M-Lenses.pdf','0.7 m / 2.3 ft < ∞','Leica M quick-change bayonet',NULL,NULL,NULL,NULL,NULL,NULL,NULL,28,NULL,NULL,0,NULL,NULL,NULL);
INSERT INTO "Lenses" VALUES (34,2,1,'2.8','16.0','28mm',NULL,'28mm f/2.8 Elmarit-M III','11804 . LLC - 145 ','1979-1993 < 17,116 lenses','1913-1983 anniversary edition and ELC versions ','8 /6','0.7 m /2.30 ft','8-blade','76 degrees','E39 internal thread M 49 x 0.75','Hood: 12536 - Viewfinder: SLOOZ','Black lacquered brass','�? x 51 mm','250 g /8.82 oz','LEITZ LENS MADE IN CANADA ELMARIT 1:2.8/28 LEITZ ELMARIT 1:2.8/28 3XXXXXX','Walter Mandler','Source: https://www.l-camera-forum.com/leica-wiki.en/index.php/M_Lenses_x_Focal_Length  as of 02/02/2021','2021-02-02 14:59:02.688','2025-04-21 20:11:04','f/2.8-f/22','553 x 800 mm',NULL,NULL,NULL,'SLOOZ',NULL,NULL,'Erwin Puts (2002) Leica M-Lenses.pdf ',NULL,'Leica M-bayonet',NULL,NULL,NULL,NULL,NULL,NULL,NULL,28,NULL,NULL,0,NULL,NULL,NULL);
INSERT INTO "Lenses" VALUES (35,2,1,'2.8','22.0','28mm',NULL,'28mm f/2.8 Elmarit II','11801 - 11802 . LLC - 145 ','1972-1979 < 7,050 lenses','The 1972 (Canada) version looks very similar to Elmarit I (Wetzlar), but has no deep intruding lens-element, so it can be used with M5 and all other Leicas with built-in meter.','8 /6','0.7 m /2.30 ft','8-blade ','76 degrees','Series VII - E48 ','Viewfinder: 12007 SLOOZ - Hood: 12501','Black lacquered brass',NULL,'300 g /10.7 oz','LEITZ CANADA ELMARIT 1:2.8/28 2XXXXXX','Walter Mandler, Garry Edwards & Erich Wagner - June 1968','Source: https://www.l-camera-forum.com/leica-wiki.en/index.php/M_Lenses_x_Focal_Length  as of 02/02/2021','2021-02-02 15:01:41.653','2025-04-21 20:11:09','f/2.8 - f/22',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'Leica M-bayonet including M5 + CL',NULL,'Can be used on M9 cameras (without exposure metering for early lens before s/n 2314921).',NULL,NULL,NULL,NULL,NULL,28,NULL,NULL,0,NULL,NULL,NULL);
INSERT INTO "Lenses" VALUES (36,2,1,'2.8','22.0','28mm',NULL,'28mm f/2.8 Elmarit I','11801 . LLC - 144 ','1965-1972 < 3,200 lenses','Yellow /white scale; red /white scale (RS); ELC /Wetzlar, this lens has a deep intruding back and can''t be used with built-in meter, on M5 the lightmeter won''t swing in working-position on newer or modified lenses. ','9 /6','0.7 m /2.30 ft - (M3 1 m)','10-blade','76 degrees','Series VII, E48','Viewfinder: SLOOZ; Hood: 12501',NULL,'56 x 52.5 mm / 2.20 x 2.07 in','225 g /7.93 oz','LEITZ WETZLAR ELMARIT 1:2.8/28 2XXXXXX LEITZ CANADA 2XXXXXX ELMARIT 1:2.8/28 ','Otto Zimmermann, Heinz Marquardt, Hermann Desch and Eugen Hermanni - 16 Apr 1960','Source: https://www.l-camera-forum.com/leica-wiki.en/index.php/M_Lenses_x_Focal_Length  as of 02/02/2021','2021-02-02 15:05:27.014','2025-04-21 20:11:28','f/2.8-f/22','533 x 800 mm',NULL,NULL,NULL,'SLOOZSLOOZ',NULL,NULL,NULL,NULL,'Leica M-bayonet',NULL,'Can be used on M8 or M9 cameras (without exposure metering).',NULL,NULL,NULL,NULL,NULL,28,NULL,NULL,0,NULL,NULL,NULL);
INSERT INTO "Lenses" VALUES (37,2,1,'4.0','22.0','28mm',NULL,'28mm-35mm-50mm f/4 ASPH Tri-Elmar-M','11890-1st - 11625-2nd - 11894-silver (also known as "MATE" as in Medium Angle Tri-Elmar . LLC - 132','1998-2007','E55 1st version; Body change 2nd version E49-A53, "Improved Mount Redesign" E49-A53 2nd version after Serial No. 3920101 - Black and Chrome versions (black lens shown on left is the E49-A53 version)','8 /6',NULL,'8-blade','28 mm: 75° / 65° / 46° - 35 mm: 63° / 54° / 38° - 50 mm: 47° / 40° / 27° ','E55 (1st) - E49-A53 (2nd-3rd)','Hood: 1st 12458 2nd version 12450 - Polarizing filter 13407 w/ adapter 14286 - UVa filter 13329','Anodized aluminum and optical glass','55 mm / 2.2 in','340 g / 12 oz','LEICA TRI-ELMAR-M 1:4/28-35-50 ASPH. (E55 or E49) (Serial No.)',NULL,'Source: https://www.l-camera-forum.com/leica-wiki.en/index.php/M_Lenses_x_Focal_Length  as of 02/02/2021','2021-02-02 15:12:19.112','2025-04-21 20:11:30','f/4 - f/22','28 mm focal length: 750 x 1130 mm, 35 mm focal length: 620 x 930 mm, 50 mm focal length: 430 x 650 mm ','28: 1:31 - 35: 1:26 - 50: 1:18','n/a','Combined meter/feet graduation ','12011','67.8 mm / 2.7 in',NULL,'28mm-35mm-50mm f/4 ASPH Tri-Elmar-M.pdf - courtesy Summilux.net, Erwin Puts (2002) Leica M-Lenses.pdf ','1 m / 3.3 ft < ∞ ','Leica M-bayonet ',NULL,NULL,NULL,NULL,NULL,NULL,NULL,28,NULL,NULL,0,NULL,NULL,NULL);
INSERT INTO "Lenses" VALUES (38,2,1,'1.4','16.0','35.6 mm, Aspherical surfaces – 1',NULL,'35mm f/1.4 ASPH.fle Summilux-M','11663-black (Mar 2010) - 11675-ss (Edition 600 Oct 2014)','2010-Current',NULL,'9 /5',NULL,NULL,'For 35 mm format (24 x 36 mm): 63°, 54°, 37°, for M8 & M8.2 (18 x 27 mm): 49°, 42°, 28°, equivalent to approx. 47 mm for 35 mm format','Inner threading for E46 screw-in filters, non-rotating front element','Hood: 12465 Full-metal, rectangular, screw-mount hood (12465-supplied with the lens - 12464-replacement hood)','Black and clear anodized aluminum','Approx. 56 mm','Approx. 320 g',NULL,NULL,'Source: https://www.l-camera-forum.com/leica-wiki.en/index.php/M_Lenses_x_Focal_Length  as of 02/02/2021','2021-02-02 17:03:57.651','2025-04-21 20:11:30','f/1.4-16 with click-stops, half values available / 9-blade','For 35 mm format: approx. 418 × 626 mm (for M8 approx. 313 × 470 mm)','For 35 mm format: 1:17.4 / for M8 1:17.4','16.6 mm from the apex of the first lens element ','Combined meter /feet graduation',NULL,'Approx. 46 /58 mm (with /without lens hood)',NULL,'35mm f/1.4 ASPH.fle Summilux-M.pdf','0.7 m to ∞','Leica M quick-change bayonet with 6-bit bar-coding for digital M-models',NULL,NULL,NULL,NULL,NULL,'FLE (floating element)',NULL,35,NULL,NULL,0,NULL,NULL,NULL);
INSERT INTO "Lenses" VALUES (39,2,1,'1.4','16.0','35.6 mm / 1.4 in',NULL,'35mm f/1.4 ASPH Summilux-M','11874-black - 11883-silver - 11859-titan - 11663-black . LLC - 158','1994-2010 - 18,404+ lenses','Black, Silver & Titanium versions, "Ein Stück Leica" 504 unit special 1996 edition at initial public stock offering came with imprinted special edition M6 "Borsengang" camera.','9 /5',NULL,NULL,'63°, 54°, 38°','Internal thread for screw-in filters size E46 / separate, clip-on type, lockable','Hood: 12589 12466','Anodized aluminum and optical glass / Chrome plated brass and optical glass','53 mm / 2.1 in','approx. 250 g / 8.8 oz anodized, 415 g / 14.6 oz chrome & titanium','LEICA SUMMILUX-M ASPH. 1:1.4/35 E 46 (Serial No.)','Walter Watz - 1993','Source: https://www.l-camera-forum.com/leica-wiki.en/index.php/M_Lenses_x_Focal_Length  as of 02/02/2021','2021-02-02 17:08:43.217','2025-04-21 20:11:31','f/1.4-f/16 - Setting/Function Preset, with click-stops, half values available, manual 9-blade diaphragm',NULL,'420 mm x 630 mm / 1:17.5','16.8 mm (related to the first lens surface in light direction)','Combined meter/feet graduation','Camera viewfinder','34.5 mm / 1.4 in',NULL,'35mm f/1.4 ASPH Summilux-M.pdf - courtesy Summilux.net, Erwin Puts (2002) Leica M-Lenses.pdf','0.7 m / 2.3 ft < ∞','Leica M quick-change bayonet ',NULL,NULL,NULL,NULL,NULL,NULL,NULL,35,NULL,NULL,0,NULL,NULL,NULL);
INSERT INTO "Lenses" VALUES (40,2,1,'1.4','16.0','35mm',NULL,'35mm f/1.4 Aspherical Summilux-M','11873 . LLC - 157 ','1991-1994 < 4,000 lenses',NULL,'9 /5','0.7 m /2.30 ft','10-blade','64 degrees','E46','Hood: 12587 or 12588',NULL,NULL,'300 g /10.58 oz','LEICA SUMMILUX-M 1:1.4/35 ASPHERICAL E46 3XXXXXX','Walter Watz - 15 Feb 1991','Source: https://www.l-camera-forum.com/leica-wiki.en/index.php/M_Lenses_x_Focal_Length  as of 02/02/2021','2021-02-02 17:12:03.848','2025-04-21 20:11:32','f/1.4 - f/16',NULL,NULL,NULL,NULL,NULL,NULL,NULL,'Erwin Puts (2002) Leica M-Lenses.pdf',NULL,'Leica M-bayonet',NULL,NULL,NULL,NULL,NULL,'"Double Aspherical" or AA version (w/ 2 aspherical elements)',NULL,35,NULL,NULL,0,NULL,NULL,NULL);
INSERT INTO "Lenses" VALUES (41,2,1,'1.4','16.0','35mm',NULL,'35mm f/1.4 Summilux II','11870-black - 11860-titan - 11871-M3 (w/ specs)','1967-1995 < 28,550 lenses','Black, titanium, M3, ELC, ELW and 1913-1983 anniversary versions','7 /5','1 m /3.28 ft - 0.65 m (M3)','10-blade','64 degrees','None (Series VII, E41 with 12504 hood)','Hood: 12504, 12526',NULL,'46.5 mm / 1.83 in','245 g /8.64 oz','LEITZ CANADA 2XXXXXX SUMMILUX 1:1.4/35 LEICA SUMMILUX-M 1:1.4/35 3XXXXXX ','Walter Mandler','Source: https://www.l-camera-forum.com/leica-wiki.en/index.php/M_Lenses_x_Focal_Length  as of 02/02/2021
Perfect travel lens','2021-02-02 13:49:00','2025-04-21 20:11:32','f/1.4 - f/16','630 x 950 mm - 390 x 590 mm (M3)',NULL,NULL,NULL,NULL,NULL,NULL,'Erwin Puts (2002) Leica M-Lenses.pdf',NULL,'Leica M-bayonet',NULL,'ELC versions cannot be used on M9 cameras without modification by Leica service facility.',NULL,NULL,NULL,'35mm Summilux II Pre Asph',NULL,35,NULL,NULL,0,'#00FF00',NULL,NULL);
INSERT INTO "Lenses" VALUES (42,2,1,'1.4','16.0','35mm',NULL,'35mm f/1.4 Summilux I','11869, 11870 (w/ specs), 11871 (w/ specs), 11872 . LLC - 156 ','1961-1966, 1,155 in black, 1,216 in chrome < 6,400 lenses','Black and chrome versions, both also for M3 with googles (specs) 11870','7 /5','1 m /3.28 ft - 0.65 m (M3)','Click stop 10-blade','64 degrees','E41 - A46.5','Hood: OLLUX 12522','Chrome plated brass (early); black lacquered alloy (late)','38 x 53 mm / 1.50 x 2.07 in','245 g /8.64 oz M3 - 195 g / 6.88 oz','LEITZ CANADA 1XXXXXX SUMMILUX-M 1:1.4/35 ','Walter Mandler and Erich Wagner - 30 Aug 1958','Source: https://www.l-camera-forum.com/leica-wiki.en/index.php/M_Lenses_x_Focal_Length  as of 02/02/2021','2021-02-02 17:22:02.449','2025-04-21 20:11:33','f/1.4-f/16','630 x 950 mm - 390 x 590 mm (M3)',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'Leica M-bayonet',NULL,'Cannot be used on M9 cameras without modification by Leica service facility.',NULL,NULL,NULL,NULL,NULL,35,NULL,NULL,0,NULL,NULL,NULL);
INSERT INTO "Lenses" VALUES (43,2,1,'2.0','16.0','35.3 mm / 1.4 in',NULL,'35mm f/2 ASPH Summicron-M','11879-black - 11882-silver - 11608-silver (S) - 11609-titan - 11611-black - 11616-LHSAchrom - 11696-gray - 11619-chrome (S) . LLC - 155','1997-Current - black chrome edition of 500 in 2015 (shown w/ hood)','Black, silver, S-silver, titanium and hammertone gray for the Leica Historical Society of America (LHSA)','7 / 5',NULL,NULL,'63°, 54°, 38°','Internal thread for screw-in filters size E39 ','Lens hood 12524, 12526, 12504 or 12528','Silver or titanium lacquered alloy / Black anodized aluminum / Chrome plated brass ','53 mm /2.1 in','approx. 255 g /9 oz alloy - 340 g /12 oz chrome plated - 225 g /7.9 oz black chrome','LEICA SUMMICRON-M ASPH. 1:2/35 E 39 XXXXXXX','Peter Karbe','Source: https://www.l-camera-forum.com/leica-wiki.en/index.php/M_Lenses_x_Focal_Length  as of 02/02/2021','2021-02-02 17:32:49.068','2025-04-21 20:11:35','f/2 - f/16 - Setting/Function Preset, with click-stops, half values available / 8-blade manual diaphragm','419 mm x 627 mm','1:17.5','10 mm (related to the first lens surface in light direction)','Combined meter/feet graduation','Camera viewfinder','34.5 mm / 1.4 in',NULL,'35mm f/2 ASPH Summicron-M.pdf - courtesy Summilux.net, Erwin Puts (2002) Leica M-Lenses.pdf','0.7 m / 2.3 ft < ∞','Leica M quick-change bayonet (Screw-mount in limited edition - see Forum discussion [1] [2] [3] below)',NULL,NULL,NULL,NULL,NULL,NULL,'011110',35,NULL,NULL,0,'#00FF00',NULL,NULL);
INSERT INTO "Lenses" VALUES (44,2,1,'2.0','16.0','35mm',NULL,'35mm f/2 Summicron-M IV','11310-black - 11311-chrome . LLC - 154 ','1979-1999 < 52,993 lenses','Yellow /white scale; red /white scale; black, silver, ELC, concave and convex focusing tab versions','7 /5','0.7 m /2.30 ft','10-blade','64 degrees','E39','Hood options: 12524, 12526, 12504, 12585','Black lacquered alloy or silver lacquered brass','26 x 52 mm / 1.02 x 2.05 in','160 g /5.64 oz; 260 g /9.17 oz in lacquered brass','LEITZ LENS MADE IN CANADA SUMMICRON-M 1:2/35 LEICA SUMMICRON-M 1:2/35 E39 3XXXXXX LEITZ SUMMICRON-M 1:2/35 E39 3XXXXXX','Walter Mandler','Source: https://www.l-camera-forum.com/leica-wiki.en/index.php/M_Lenses_x_Focal_Length  as of 02/02/2021','2021-02-02 17:37:19','2025-04-21 20:11:36','f/2 - f/16','430 x 640 mm',NULL,NULL,NULL,NULL,NULL,NULL,'Erwin Puts (2002) Leica M-Lenses.pdf',NULL,'Leica M-bayonet (special order screw-mount)',NULL,NULL,NULL,NULL,NULL,'King of Bokeh',NULL,35,NULL,NULL,0,NULL,NULL,NULL);
INSERT INTO "Lenses" VALUES (45,2,1,'2.0','16.0','35mm',NULL,'35mm f/2 Summicron III','11308 - 11309 . LLC - 154 ','1971-1979','Black only','6 /4','0.7 m /2.30 ft','10 blade','64 degrees','Series VII, E39','Hood: 12504 - 12524','Chrome mount rings',NULL,'170 g /6.00 oz','LEITZ LENS MADE IN CANADA 2XXXXXX SUMMICRON-M 1:2/35 LEITZ WETZLAR 3XXXXXX SUMMICRON-M 1:2/35 E39','Walter Mandler','Source: https://www.l-camera-forum.com/leica-wiki.en/index.php/M_Lenses_x_Focal_Length  as of 02/02/2021','2021-02-02 17:40:51.793','2025-04-21 20:11:36','f/2 - f/16','430 x 640 mm',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'Leica M-bayonet',NULL,NULL,NULL,NULL,NULL,NULL,NULL,35,NULL,NULL,0,NULL,NULL,NULL);
INSERT INTO "Lenses" VALUES (46,2,1,'2.0','16.0','35mm',NULL,'35mm f/2 Summicron II','11309-black - 11311-chrom . LLC - 153 ','1969-1971 - < 12,400 lenses','Chrome from 2316001; Wetzlar (rare) and ELC; thick and thin (rare) lever versions','6 /4','0.7 m /2.30 ft','10-blade','64 degrees','Series VII, E39','Hood: 12504 or 12585',NULL,'33 x 51 mm / 1.30 x 2.01 in','170 g /6.00 oz','LEITZ LENS MADE IN CANADA 2XXXXXX SUMMICRON 1:2/35 LEITZ WETZLAR 2XXXXXX SUMMICRON 1:2/35 E39','Walter Mandler','Source: https://www.l-camera-forum.com/leica-wiki.en/index.php/M_Lenses_x_Focal_Length  as of 02/02/2021','2021-02-02 17:43:36.318','2025-04-21 20:11:37','f/2-f/16','330 x 640 mm',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'Leica M-bayonet',NULL,NULL,NULL,NULL,NULL,NULL,NULL,35,NULL,NULL,0,NULL,NULL,NULL);
INSERT INTO "Lenses" VALUES (47,2,1,'2.0','16.0','35mm',NULL,'35mm f/2 Summicron (I) f= 3.5 cm 1:2','SAWOO 11008 (S), SAMWO 11108 (w/ specs), SAWOM 11308, 11104 11307-black LLC - 151','1958-1963, 577 screw lenses; 1958-1969 21,492 bayonet (9557 with goggles) < 36,150 total lenses','Black (rare) or silver, red or yellow scale (yellow after serial no. 219xxxx) M2 version without "eyes" and M3 version with "eyes"; Wetzlar and ELC versions','8 /6','0.7 m - 0.65 m (M3) - 1 m (S)','10-blade 11008 - 16-blade 11308 & 11108','64 degrees','E39 ','Finder: 12010 SBLOO - Hood: 12571 IROOA - 12585 - 12538 - 12021','Chrome plated brass','28.4 x 51 mm /1.12 x 2 in','150 g / 5.29 oz','SUMMICRON 1:2/3.5 LEITZ (WETZLAR or CANADA) 1XXXXXX ','Walter Mandler','Source: https://www.l-camera-forum.com/leica-wiki.en/index.php/M_Lenses_x_Focal_Length  as of 02/02/2021','2021-02-02 13:49:00.507','2025-04-21 20:11:37','f/2-f/16','430 x 640 mm - 390 x 590 mm (M3)',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'Leica M-bayonet (ca.500 in Screw-mount SAWOO see Forum discussion [2] #6 permalink below) ',NULL,NULL,NULL,NULL,NULL,NULL,NULL,35,NULL,NULL,0,NULL,NULL,NULL);
INSERT INTO "Lenses" VALUES (48,2,1,'2.4','16.0','35mm',NULL,'35mm f/2.4 Summarit-M ASPH.','11671-black - 11679-silver - red indicates change from 35mm f/2.5 Summarit-M','2014-Current',NULL,'6 /4',NULL,NULL,'For 35 mm (24 x 36 mm) : 63 deg, 54 deg, 38 deg, - for LEICA M8 (18 x 27 mm) : 50 deg, 42 deg, 29 deg, corresponds to a focal length of approx. 47 mm with 35 mm-format','Non-rotating, internal thread for screw-on filters size E46, external thread with stop for lens hood.','Replacement hood 12439-black, 12440-silver ','Anodized aluminum, brass and optical glass','approx. 52 mm / 2.05 in','approx. 197 g / 6.95 oz','43XXXXX LEICA E 46 SUMMARIT-M 1:2.4 /35 ASPH.',NULL,'Source: https://www.l-camera-forum.com/leica-wiki.en/index.php/M_Lenses_x_Focal_Length  as of 02/02/2021','2021-02-02 17:51:15.040','2025-04-21 20:11:38','f/2.4 - f/16 - Setting/Function Preset, with click-stops, half values available; 9-blade','For 35 mm, approx. 490 x 735 mm / for LEICA M8, approx. 367 x 551 mm','For 35 mm 1:20.4 / for LEICA M8 1:20.4','(related to the first lens surface in light direction) 9.3 mm','Combined meter /feet graduation',NULL,'approx. 34 mm',NULL,'35mm f/2.5 Summarit-M.pdf - not revised for f/2.4 series','0.8 m / 2.6 ft < ∞','Leica M quick-change bayonet with 6 bit lens identification bar code for digital M models',NULL,NULL,NULL,NULL,NULL,NULL,NULL,35,NULL,NULL,0,NULL,NULL,NULL);
INSERT INTO "Lenses" VALUES (49,2,1,'2.5','16.0','35mm',NULL,'35mm f/2.5 Summarit-M','11643','2007-2014 - superseded by 35mm f/2.4 Summarit-M ASPH.',NULL,'6 /4',NULL,NULL,'For 35 mm (24 x 36 mm) : 63 deg, 54 deg, 38 deg, - for LEICA M8 (18 x 27 mm) : 50 deg, 42 deg, 29 deg, corresponds to a focal length of approx. 47 mm with 35 mm-format','Non-rotating, internal thread for screw-on filters size E39, external thread with stop for lens hood, protection ring for external thread included in delivery','Hood: 12459','Anodized aluminum, brass and optical glass','approx. 51.4 mm / 2.02 in','approx. 220 g / 7.76 oz','LEICA SUMMARIT-M 1:2.5/35 E 39 (serial no.)',NULL,'Source: https://www.l-camera-forum.com/leica-wiki.en/index.php/M_Lenses_x_Focal_Length  as of 02/02/2021','2021-02-02 17:56:10.055','2025-04-21 20:11:42','f/2.5 - f/16 - Setting/Function Preset, with click-stops, half values available; 9-blade','For 35 mm, approx. 490 x 735 mm for LEICA M8, approx. 367 x 551 mm','For 35 mm 1:20.4 / for LEICA M8 1:20.4','(related to the first lens surface in light direction) 9.3 mm','Combined meter /feet graduation','Camera viewfinder','approx. 33.9 mm',NULL,'35mm f/2.5 Summarit-M.pdf','0.8 m / 2.62 ft < ∞','Leica M quick-change bayonet with 6 bit lens identification bar code for digital M models',NULL,NULL,NULL,NULL,NULL,NULL,NULL,35,NULL,NULL,0,NULL,NULL,NULL);
INSERT INTO "Lenses" VALUES (50,2,1,'2.8','22.0','35mm',NULL,'35mm f/2.8 Summaron f= 3.5 cm 1:2.8','SIMOO 11106 screw-lens; SIMOM 11306 M-version; SIMWO 11106 M3 version with "specs" and caps LLC - 151','1958-1963 - 5,289 screw lenses; 1958-1974 - 30,400 bayonet lenses','Screw, M-bayonet, M3 with "specs", 3-crown, "Post" and a few in black versions ','6 /4','1 m screw mount, 0.65 m M3, 0.7 m M2','Click stop 10-blade','64 degrees','A42, E39','Hood: IROOA 12571, 12585, 12526, 12538; Leather case for lens with goggles: 14552','Chrome plated brass and black paint','29 x 51 mm / 1.14 x 2.01 in','210 g / 7.41 oz','SUMMARON 1:2.8/3.5 LEITZ WETZLAR 1XXXXXX',NULL,'Source: https://www.l-camera-forum.com/leica-wiki.en/index.php/M_Lenses_x_Focal_Length  as of 02/02/2021','2021-02-02 13:49:00.507','2025-05-27 11:54:09','f/2.8-f/22','390 x 590 mm M3, 430 x 640 mm M2',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'Leica Screw and M-bayonet',NULL,NULL,NULL,NULL,NULL,NULL,NULL,35,NULL,NULL,0,NULL,NULL,NULL);
INSERT INTO "Lenses" VALUES (51,2,1,'3.5','22.0','35mm','','35mm f/3.5 Summaron f= 3.5 cm 1:3.5','SOONC, SOONC-M 11105 (1954), SOONC-MW 11107 (1956), SOONC-MT 11305 (1958), SOMWO LLC - 151','1946-1960 Screw-thread; 1956-1960 E39 and M-bayonet; < 122,021','A36 and E39; feet or metric scales; M3 versions with or without goggles ','6 /4','1 meter','10-blade','64 degrees','A36 and E39 /A42 versions','Viewfinder: SBLOO 12010; Hood: IROOA 12571, FLQOO, FOOKH 12505; Lens with finder: SOONC-MW for M3; Lens with finder: SOONC-MT for M2; leather case ETILA','chrome plated','n/a','195 g /6.88 oz','Summaron f = 3.5 1:3.5 Nr. 1xxxxxx Ernst Leitz [GmbH] Wetzlar',NULL,'Source: https://www.l-camera-forum.com/leica-wiki.en/index.php/M_Lenses_x_Focal_Length  as of 02/02/2021','2021-02-02 13:49:00.507','2025-05-27 11:59:41','f/3.5 - 4 - 5.6 - 8 - 11 - 16 - 22','35 mm',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'Leica Screw-thread and M-bayonet',NULL,NULL,NULL,NULL,NULL,NULL,NULL,35,NULL,NULL,0,NULL,NULL,NULL);
INSERT INTO "Lenses" VALUES (52,2,1,'3.5','22.0','50mm',NULL,'50mm f/3.5 Elmar (III) f= 5 cm 1:3.5','ELMAR, ELMAR-M - ELMAM 11110 11610 LLC - 113','1954-1961 M-bayonet < 47,364 lenses','Metric and foot scales, A36 and E39 versions','4 /3 ',NULL,'10-blade','45 degrees','A36, E39 ','Combination hood with diaphragm adjustment: VALOO; Hood for E39 version: ITOOY; Caps: ORVZO, ORVZO-CHROM',NULL,'n/a','125 g / 4.4 oz','Ernst Leitz GmbH Wetzlar - Elmar f=5cm 1:3.5 Nr.1XXXXXX',NULL,'Source: https://www.l-camera-forum.com/leica-wiki.en/index.php/M_Lenses_x_Focal_Length  as of 02/02/2021','2021-02-02 13:49:00.507','2025-04-21 20:11:49','f/3.5 > f/22 ','n/a',NULL,NULL,NULL,NULL,NULL,NULL,NULL,'1 m / 3.28 ft < ∞','Screw-thread and M-bayonet',NULL,NULL,NULL,NULL,NULL,NULL,NULL,50,NULL,NULL,0,'#00FF00',NULL,NULL);
INSERT INTO "Lenses" VALUES (53,2,1,'2.8','16.0','50mm',NULL,'50mm f/2.8 Elmar f= 5 cm 1:2.8','ELMOO 11112 11012-meter ELMOM 11612 11112-meter 11831-black, 11823-white LLC - 114','1957-1962 screw lenses; 1958-1966 bayonet < 74,000 lenses','Metric, foot, 3-crown (on bottom ring) for Swedish army versions','4 /3','1 m','15 blade','45 degrees','E39 - A42','Hood: 12585, 12549, ITOOY, VTOOX aperture setting ring','Chrome plated brass and Lanthanum glass (in 1st and last element)','collapsed flange 20.94 mm / 0.6 in x 50.96 mm/ 2.0 in','220 g /7.76 oz','Elmar f=5cm 1:2.8 Nr1XXXXXX Ernst Leitz GmbH Wetzlar ELMAR 1:2.8 F=5cm 1XXXXXX LEITZ WETZLAR','Max Berek','Source: https://www.l-camera-forum.com/leica-wiki.en/index.php/M_Lenses_x_Focal_Length  as of 02/02/2021','2021-02-02 13:49:00.507','2025-04-21 20:11:50','f/2.8-f/16','410 x 620 mm',NULL,NULL,NULL,NULL,NULL,NULL,'Erwin Puts (2002) Leica M-Lenses.pdf - pgs. 42 - 46',NULL,'Leica Screw-thread and M-bayonet',NULL,NULL,NULL,NULL,NULL,NULL,NULL,50,NULL,NULL,0,NULL,NULL,NULL);
INSERT INTO "Lenses" VALUES (54,2,1,'2.8','16.0','51.7 mm / 2 in',NULL,'50mm f/2.8 Elmar-M','11831-black - 11823-silver . LLC - 115','1994-2007 < 17,461 lenses','Black / Chrome ','4 /3',NULL,NULL,'47°, 40°, 27°','Internal thread for screw-in filters size E39 / separate, clip-on type, lockable','Lens hood 12550 Black / Lens hood 12549 Silver','Black anodized aluminum or silver lacquered brass','52 mm / 2.1 in','approx. 170 g / 6 oz anodized, 245 g / 8.6 oz silver lacquer','LEICA ELMAR-M 1:2.8/50 E39 3XXXXXX Ernst Leitz GmbH Wetzlar Elmar 1 = 5 cm 1:2,8 Nr. 1XXXXXX',NULL,'Source: https://www.l-camera-forum.com/leica-wiki.en/index.php/M_Lenses_x_Focal_Length  as of 02/02/2021','2021-02-02 13:49:00.507','2025-04-21 20:11:51','f/2.8 - f/16 - Setting /Function Preset, with click-stops, half values from f/2.8 - f/8, manual 6 blade diaphragm',NULL,'274 mm x 411 mm / 1:11.4','17.1 mm (related to the first lens surface in light direction)','Combined meter/feet graduation',NULL,'21.6 < 37.6 mm / 0.8" < 1.5 in',NULL,'50mm f/2.8 Elmar-M.pdf - courtesy Summilux.net, Erwin Puts (2002) Leica M-Lenses.pdf - pgs. 42 – 47','0.7 m / 2.3 ft < ∞','Leica M quick-change bayonet ',NULL,'M-cameras except cannot be collapsed into the M5 or CL. Mount or remove collapsible 50mm Elmar lenses, of any vintage, extended only (per Forum discussion 21 below).',NULL,NULL,NULL,NULL,NULL,50,NULL,NULL,0,NULL,NULL,NULL);
INSERT INTO "Lenses" VALUES (55,2,1,'2.5','16.0','50mm',NULL,'50mm f/2.5 Summarit-M','11644','2007-2014 - superseded by 50mm f/2.4 Summarit-M',NULL,'6 /4',NULL,NULL,'For 35 mm (24 x 36 mm) : 47 deg, 40 deg, 27 deg, - for LEICA M8 (18 x 27 mm) : 36 deg, 30 deg, 20 deg, corresponds to a focal length of approx. 67 mm with 35 mm-format','Non-rotating, internal thread for screw-on filters size E39, external thread with stop for lens hood, protection ring for external thread included in delivery','Hood: 12459','Anodized aluminum, brass and optical glass','approx. 51.5 mm / 2 in','approx. 230 g / 8.1 oz','LEICA SUMMARIT-M 1:2.5/50 E 39 (serial no.)',NULL,'Source: https://www.l-camera-forum.com/leica-wiki.en/index.php/M_Lenses_x_Focal_Length  as of 02/02/2021','2021-02-03 13:28:41.663','2025-04-21 20:12:17','f /2.5 - f /16 - Setting/Function Preset, with click-stops, half values available / 9-blade','For 35 mm, approx. 338 x 508 mm / for LEICA M8, approx. 254 x 380 mm','For 35 mm 1:14.1 / for LEICA M8 1:14.1','(from apex of 1st lens element) 28.0 mm / 1.1 in','Combined meter/feet graduation','Camera viewfinder','approx. 33.0 mm / 1.3 in',NULL,'50mm f/2.5 Summarit-M.pdf','0.8 / 2.6 ft to ∞','Leica M quick-change bayonet with 6 bit lens identification bar code for digital M models',NULL,NULL,NULL,NULL,NULL,NULL,NULL,50,NULL,NULL,0,NULL,NULL,NULL);
INSERT INTO "Lenses" VALUES (56,2,1,'2.4','16.0','50mm',NULL,'50mm f/2.4 Summarit-M','11680-black - 11681-silver - red indicates change from 50mm f/2.5 Summarit-M','2014-Current',NULL,'6 /4',NULL,NULL,'For 35 mm (24 x 36 mm) : 47 deg, 40 deg, 27 deg, - for LEICA M8 (18 x 27 mm) : 36 deg, 30 deg, 20 deg, corresponds to a focal length of approx. 67 mm with 35 mm-format','Lens hood - Non-rotating, internal thread for screw-on filters size E46, external thread with stop for lens hood.','Replacement hood: 12439-black - 12440-silver','Anodized aluminum, brass and optical glass','approx. 52 mm / 2 in','approx. 190 g / 6.7 oz','43XXXXX LEICA E46 SUMMARIT-M 1:2.5/50',NULL,'Source: https://www.l-camera-forum.com/leica-wiki.en/index.php/M_Lenses_x_Focal_Length  as of 02/02/2021','2021-02-03 13:30:45.363','2025-04-21 20:12:17','f /2.4 - f /16 - Setting/Function Preset, with click-stops, half values available / 9-blade',NULL,'For 35 mm, approx. 338 x 508 mm /1:14.1 = for LEICA M8, approx. 254 x 380 mm /1:14.1','(from apex of 1st lens element) 28.0 mm / 1.1 in','Combined meter /feet graduation','Camera viewfinder','approx. 33 mm / 1.3 in',NULL,'50mm f/2.5 Summarit-M.pdf - not revised for f/2.4 series','0.8 / 2.6 ft to ∞','Leica M quick-change bayonet with 6 bit lens identification bar code for digital M models',NULL,NULL,NULL,NULL,NULL,NULL,NULL,50,NULL,NULL,0,NULL,NULL,NULL);
INSERT INTO "Lenses" VALUES (57,2,1,'2.0','16.0','50mm',NULL,'50mm f/2 Summicron I','SOOIC, SOSTA, M-bayonet: SOOIC-M, 11117 (M-rigid-black), 11118 (M-rigid-chrom), SOSIC 11818 (M-rigid-chrom), SOMNI 11918 (M-DR-chrom), 11318 (M-DR-chrom), 14002 (M-DR-chrom specs w/o lens) LLC - 118','1951-1969 < 253,314 lenses per list below','Collapsible, rigid, rigid Dual Range (DR); Compur shutter (CS), chrome and black; duel lever (s/n 920022) ','7 /4 - 4 /4 (collapsible)','1 m','10-blade - 16-blade 11 918 & 11 818','45 degrees','E39 - A42','Hood: SOOFM - IROOA; Viewfinder: SBOOI 12015; Close-focus attachment for DR lens: SDPOO (for proper fit last 4 digits of serial nos. must match); close focus for collapsible or rigid lens: SOMKY+ UOORF','Chrome plated brass','n/a','220 g /7.76 oz screw, 285 g /10.06 oz bayonet ','Summicron f=5cm 1:2 9XXXXX Ernst Leitz [GmbH] Wetzlar','Gustav Kleinberg and Otto Zimmermann - 20 Jul 1950','Source: https://www.l-camera-forum.com/leica-wiki.en/index.php/M_Lenses_x_Focal_Length  as of 02/02/2021','2021-02-03 13:31:12.636','2025-04-21 20:12:20','f/2-f/16','410 x 620 mm',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'Leica Screw-thread and M-bayonet',NULL,'DR version cannot be used on M8 or M9 cameras and the collapsible type can only be used fully extended.',NULL,NULL,NULL,NULL,NULL,50,NULL,NULL,0,NULL,NULL,NULL);
INSERT INTO "Lenses" VALUES (58,2,1,'2.0','16.0','50mm',NULL,'50mm f/2 ELCAN','Type (276) sold w/ KE-7A (see M4)',NULL,'A collapsible version was developed in Germany, but never marketed (see Forum discussion #2 below)','4 /4','30 in /76.2 cm','10-blade','n/a',NULL,'n/a','Anodized aluminum, lanthanum infrared-absorbing glass and high refractive optical glass as used for heat control in Leitz projectors.',NULL,'n/a','ELCAN f/2 50 MM 276-0XXX','Garry Edwards, Walter Mandler and Erich Wagner - 08/1969','Source: https://www.l-camera-forum.com/leica-wiki.en/index.php/M_Lenses_x_Focal_Length  as of 02/02/2021','2021-02-03 13:33:29.943','2025-04-21 20:12:22','f /2 - f /16','n/a',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'M-bayonet w/ removable lens-head',NULL,'This lens came w/ the Leica KE-7A which was supplied to US Military by contract. Only 460 sets were produced for this purpose while another 55 were sold to the public. The lens has only air spaced elements and is thus suitable for extreme use. It has non-cemented glass, less problem in a high temperature range and nearby explosions.',NULL,NULL,NULL,'ELCAN (276)',NULL,50,NULL,NULL,0,'#ffffff',NULL,NULL);
INSERT INTO "Lenses" VALUES (59,2,1,'2.0','16.0','50mm',NULL,'50mm f/2 Summicron II','11817-black - 11819-black - [1117-black, 11318 (DR), 11918 (DR) concurrent in catalog] . LLC - 120 ','1968-1979 < 44,029 lenses','Cylindrical aluminum as shown - [Scalloped focusing knurl (SFK) and dual range (DR) close focus (with "eyes") plated brass versions were still available during the decade, per Forum discussions 3 & 4 below]','6 /5 (aluminum) - [a limited number of the earlier 7 /4 plated brass versions 1117, 1118, 11318 (DR) and 11918 (DR) occur in the serial nos. listed below]','0.7 m ','10-blade','45 degrees','E39','Hood: ITDOO 12585 ','Black anodized aluminum','50 x 51 mm / 1.97 x 2.01 in','240 g ','LEITZ WETZLAR 2XXXXXX SUMMICRON 1:2/50 ','Walter Mandler','Source: https://www.l-camera-forum.com/leica-wiki.en/index.php/M_Lenses_x_Focal_Length  as of 02/02/2021','2021-02-03 13:34:30.810','2025-04-21 20:12:25','f /2 - f /16','277 x 416 mm ',NULL,NULL,NULL,NULL,NULL,NULL,'Erwin Puts (2002) Leica M-Lenses.pdf - pgs. 43 - 48',NULL,'M-bayonet',NULL,NULL,NULL,NULL,NULL,NULL,NULL,50,NULL,NULL,0,NULL,NULL,NULL);
INSERT INTO "Lenses" VALUES (60,2,1,'2.0','16.0','52.3 mm / 2 in',NULL,'50mm f/2 Summicron-M','11819-black, 11826-black, 11825-silver, 11816-silver, 11624-titan, 11619-silver (S), 11615-silver-50yr . LLC - 123','1979-Current < 94,573+ lenses ','Black Serial Nos. 2,974,251 to ? - Chrome Serial Nos. 2,909,101- ? 500 Titanium Serial Nos. - pre-1984 have focus tab - 1913-1983, RPS Centenary & Dutch Flag (11 826-DF) & Colombo ''92 editions','6 /4',NULL,NULL,'47°, 40°, 27°','Internal thread for screw-in filters size E39 / built-in, telescopic','Hood: 12585, 12538, 12549, 12550 or 12539','Black anodized aluminum; silver or titanium lacquered brass','53 mm / 2.1 in','approx. 240 g - 8.5 oz (black or clear anodized) / 335 g - 11.8 oz (silver or titanium finish)','LEICA SUMMICRON-M 1:2/50 E39 XXXXXXX RPS ROYAL CENTENARY 1994 SUMMICRON-M 1:2/50','Walter Mandler, Erich Wagner and Garry Edwards - May 16, 1977','Source: https://www.l-camera-forum.com/leica-wiki.en/index.php/M_Lenses_x_Focal_Length  as of 02/02/2021','2021-02-03 13:35:26.670','2025-04-21 20:12:27','f/2-f/16 - with clickstops (including half values), 8 & 10-blade manual diaphragm',NULL,'277 mm x 416 mm / 1:11.5','25.1 mm (related to the first lens surface in light direction)','Combined meter/feet graduation','Camera viewfinder','43.5 mm / 1.7 in',NULL,'50mm f/2 Summicron-M.pdf - courtesy Summilux.net, Erwin Puts (2002) Leica M-Lenses.pdf - pgs. 42 – 49','0.7 m / 2.3 ft < ∞','Leica M quick-change bayonet (Screw-mount in 1999 limited edition - see Forum discussion [1] [2] [3] [23] [24] below) ',NULL,NULL,NULL,NULL,NULL,NULL,NULL,50,NULL,NULL,0,NULL,NULL,NULL);
INSERT INTO "Lenses" VALUES (61,2,1,'2.0','16.0','50mm',NULL,'50mm f/2 APO-Summicron-M ASPH.','11141','March 2013-',NULL,'8 / 5',NULL,NULL,'47° / 40° / 27° (with M8 + M8.2 : 36° / 30° / 20°)','Female thread for screw-on E39 filters, non-rotating / ','Aperture Setting / Function - 11-blade prefix with click-stops, half steps. Lens hood: Built-in, extendable by rotating ',NULL,'approx. 53 mm','approx. 300 g',NULL,NULL,'Source: https://www.l-camera-forum.com/leica-wiki.en/index.php/M_Lenses_x_Focal_Length  as of 02/02/2021','2021-02-03 13:38:26.890','2025-04-21 20:12:29','f/16-f/2','approx. 271 mm x 407 mm - (with M8 + M8.2 : 203 mm x 305 mm)','approx. 1:11.3','(from bayonet flange) 24.4 mm','Combined meter / graduation',NULL,NULL,NULL,'50mm f/2 APO-Summicron-M ASPH.Tech Data.pdf - courtesy Summilux.net, Leica Monochrom + 50apo2 Brochure.pdf','0.7 m to ∞','Leica M quick-change bayonet',NULL,NULL,NULL,'approx. 47 mm',NULL,NULL,NULL,50,NULL,NULL,0,NULL,NULL,NULL);
INSERT INTO "Lenses" VALUES (62,2,1,'1.5','16.0','50mm',NULL,'50mm f/1.5 Summarit','SOOIA, SOOIA-M 11 120 LLC - 124','1949-1960 < 74,643 lenses','Wetzlar, ELC and Taylor-Hobson versions (see Forum Discussion [7] #18 & [14 + 15] permalink below) ','7 /5','3.5 ft (for scale marked in feet)','16-blade','45 degrees','A43 or E41','Hood: XOONS 12150; Viewfinders: VIOOH and SBOOI 12015',NULL,NULL,'320 g /11.29 oz','Summarit f=5cm 1:1.5 Nr82XXXX Ernst Leitz GmbH Wetzlar','Otto Zimmermann','Source: https://www.l-camera-forum.com/leica-wiki.en/index.php/M_Lenses_x_Focal_Length  as of 02/02/2021','2021-02-03 13:38:46.947','2025-04-21 20:12:30','f/1.5-f/16',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'Leica Screw-thread and M-bayonet',NULL,'One of the very few lenses that can be used for UV photography - see Forum Discussion [1] #11 permalink (and following) below',NULL,NULL,NULL,NULL,NULL,50,NULL,NULL,0,NULL,NULL,NULL);
INSERT INTO "Lenses" VALUES (63,2,1,'1.4','16.0','50mm',NULL,'50mm f/1.4 Summilux I','SOWGE 11014, SOOME 11114 /LLC - 126 ','1959-1961 < 19,600 lenses (548 screw-mount lenses, per Schouten) ','Black and clear anodized, and scalloped focusing knurl (SKF) versions','7 /5','1 m','16-blade','45 degrees','E43 - A45','Hood: OLLUX 12522, 12586, XOOIM 12521 used with OROBA or ORNIO cap (see Forum discussion [1] below}','Lacquer on chrome plated brass','52 x 53 mm / 2.05 x 2.09 in','320 g /11.29 oz screw; 360 g /12.70 oz bayonet','LEICA SUMMILUX 1:1.4/50 E46 388XXXX, SUMMILUX 1:1.4/50 LEITZ WETZLAR 1XXXXXX','Walter Mandler and Erich Wagner - August 30, 1958','Source: https://www.l-camera-forum.com/leica-wiki.en/index.php/M_Lenses_x_Focal_Length  as of 02/02/2021','2021-02-03 13:46:12.972','2025-04-21 20:12:30','f/1.4-f/16 with full click-stops','410 x 620 mm',NULL,NULL,NULL,NULL,NULL,NULL,'Erwin Puts (2002) Leica M-Lenses.pdf - pgs. 43 - 50',NULL,'Leica Screw-thread and M-bayonet',NULL,NULL,NULL,NULL,NULL,NULL,NULL,50,NULL,NULL,0,NULL,NULL,NULL);
INSERT INTO "Lenses" VALUES (64,2,1,'1.4','16.0','50mm',NULL,'50mm f/1.4 Summilux-M II','11113-black - 11100-black - 11114-chrom+black . LLC - 127 ','1961-1991 < 43,505 lenses','Black, chrome, knurled (KFR, as shown) and un-knurled (UFR) focusing rings and 1913-1983 anniversary versions','7 /5','1 m /3.28 ft','With full click-stops > 2028001 < half click-stops / 12-blade','45 degrees','E43','Hood: - XOOIM - 12521 - 12586 ','Black anodized aluminum or chrome plated brass','54.5 x 47.7 mm /','275 g aluminum, 380 g /12.8 oz chrome ','LEITZ WETZLAR SUMMILUX 1:1.4/50 E46 388XXXX','Walter Mandler','Source: https://www.l-camera-forum.com/leica-wiki.en/index.php/M_Lenses_x_Focal_Length  as of 02/02/2021','2021-02-03 13:46:35.738','2025-04-21 20:12:31','f/1.4-f/16','277 x 416 mm / 18 x 27 in',NULL,NULL,NULL,NULL,NULL,'45mm according to the Leitz specs. ','Erwin Puts (2002) Leica M-Lenses.pdf - pgs. 43 - 50',NULL,'Leica M-bayonet',NULL,NULL,NULL,NULL,NULL,NULL,NULL,50,NULL,NULL,0,NULL,NULL,NULL);
INSERT INTO "Lenses" VALUES (65,2,1,'1.4','16.0','50mm',NULL,'50mm f/1.4 Summilux-M III','11855-silver - 11856-silver - 11868-black anodized - 11869-titan - 11623-black - 11621-silver-S-mount / LLC - 127 ','1992-2005, 18,132+ lenses','Black, chrome, titanium and scalloped focusing knurl (SFK) versions','7 /5','0.7 m /2.30 ft','12-blade','45 degrees','E46, Hood - Built-in telescoping hood',NULL,'Black anodized aluminum (known as black chrome); black, silver or titanium lacquered brass','54.5 x 47.7 mm / 2.15 x 1.88 in','275 g /9.70 oz in black; 380 g /13.4 oz in silver & titanium','LEICA SUMMILUX 1:1.4/50 E46 388XXXX','Peter Karbe (with telescoping hood by Rolf Crema) ','Source: https://www.l-camera-forum.com/leica-wiki.en/index.php/M_Lenses_x_Focal_Length  as of 02/02/2021','2021-02-03 13:48:22.694','2025-04-21 20:12:32','f/1.4-f/16 with half click-stops','277 x 416 mm',NULL,NULL,NULL,NULL,NULL,NULL,'Erwin Puts (2002) Leica M-Lenses.pdf - pgs. 43 - 51',NULL,'Leica M-bayonet (Screw-mount in limited edition - see Forum discussion [1] [2] [3] below)',NULL,NULL,NULL,NULL,NULL,NULL,NULL,50,NULL,NULL,0,NULL,NULL,NULL);
INSERT INTO "Lenses" VALUES (66,2,1,'1.4','16.0','51.6 mm / 2 in',NULL,'50mm f/1.4 ASPH Summilux-M','11891-black - 11892-silver - 11628-LHSAchrom.MP3','2006-Current - black chrome edition of 500 in 2015 (shown w/ hood) ','Black, Silver and limited edition MP3 versions in Black paint and Chrome (shown)','8 /5',NULL,NULL,'47°, 40°, 27°','Internal thread for screw-on filters size E46, non-rotating / Built-in, telescopic, lockable (except for limited edition MP 3 version w/43mm filter)',NULL,'Chrome plated brass - Black anodized aluminum - Black paint and chrome plated brass MP 3 limited editions','53.5 mm / 2.1 in','Chrome plated brass approx. 460 grams /16.2 oz - Black anodized /black chrome aluminum 335 grams /11.8 oz','LEICA SUMMILUX-M ASPH. 1:1.4/50 E46 4XXXXXX','Peter Karbe 22 Feb 2004','Source: https://www.l-camera-forum.com/leica-wiki.en/index.php/M_Lenses_x_Focal_Length  as of 02/02/2021','2021-02-03 13:48:42.296','2025-04-21 20:12:32','f/1.4 - f/16 - Setting /Function Preset, with click-stops, half values available, 9-blade manual diaphragm',NULL,'271 x 407 mm / 1:11.3','12.7 mm (related to the first lens surface in light direction)','Combined meter/feet graduation','Camera viewfinder','52.5 mm / 2.1 in',NULL,'50mm f/1.4 ASPH Summilux-M.pdf - courtesy Summilux.net','0.7 m / 2.3 ft < ∞','Leica M quick-change bayonet ',NULL,NULL,NULL,NULL,NULL,NULL,NULL,50,NULL,NULL,0,NULL,NULL,NULL);
INSERT INTO "Lenses" VALUES (67,2,1,'1.2','16.0','50mm',NULL,'50mm f/1.2 Noctilux (1966 to 1975)','11820 . LLC - 130','1966-1975 < 2,450 lenses ',NULL,'6 /4','1 m /3.28 ft','16-blade half and full stops','45 degrees','Series 8','Hood: 12503','Black anodized aluminum exterior w/ bronze and stainless steel interior','60 x 61 mm / 2.36 x 2.40 in','470 g /16.7 oz','LEITZ WETZLAR 2XXXXXX NOCTILUX 1:1.2/50 ','Helmut Marx and Paul Sindel 25 Apr 1964','Source: https://www.l-camera-forum.com/leica-wiki.en/index.php/M_Lenses_x_Focal_Length  as of 02/02/2021

The original Noctilux 50 f/1.2 was produced from 1966 to 1975 at a volume of 1757 units.','2021-02-17 10:32:50','2025-04-21 20:12:34','f/1.2 - f/16','410 x 620 mm',NULL,NULL,NULL,NULL,NULL,NULL,'Erwin Puts (2002) Leica M-Lenses.pdf - pgs. 44 - 52',NULL,'Leica M-bayonet',NULL,NULL,NULL,NULL,NULL,'Noctilux 1.2 "The Blurry"',NULL,50,NULL,NULL,0,NULL,NULL,NULL);
INSERT INTO "Lenses" VALUES (68,2,1,'1.0','16.0','52.4 mm / 2.06 in','','50mm f/1 Noctilux-M','11821 - 11822 - 11603 . LLC - 131 ','<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.0//EN" "http://www.w3.org/TR/REC-html40/strict.dtd">
<html><head><meta name="qrichtext" content="1" /><meta charset="utf-8" /><style type="text/css">
p, li { white-space: pre-wrap; }
hr { height: 1px; border-width: 0; }
li.unchecked::marker { content: "\2610"; }
li.checked::marker { content: "\2612"; }
</style></head><body style=" font-family:''Noto Sans''; font-size:19pt; font-weight:400; font-style:normal;">
<p style=" margin-top:0px; margin-bottom:0px; margin-left:0px; margin-right:0px; -qt-block-indent:0; text-indent:0px;">1976-2008 </p></body></html>','<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.0//EN" "http://www.w3.org/TR/REC-html40/strict.dtd">
<html><head><meta name="qrichtext" content="1" /><meta charset="utf-8" /><style type="text/css">
p, li { white-space: pre-wrap; }
hr { height: 1px; border-width: 0; }
li.unchecked::marker { content: "\2610"; }
li.checked::marker { content: "\2612"; }
</style></head><body style=" font-family:''Noto Sans''; font-size:19pt; font-weight:400; font-style:normal;">
<p style=" margin-top:0px; margin-bottom:0px; margin-left:0px; margin-right:0px; -qt-block-indent:0; text-indent:0px;">1st version has E58 filter size; 2 E60 versions come without hood; last E60 version has built-in hood </p></body></html>','7 /6','','With click-stops, half values available, 10-blade manual diaphragm','47°, 40°, 27°','internal thread for screw-in type filters E 60 / built-in, telescopic (1st version had E 58 filter size)','<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.0//EN" "http://www.w3.org/TR/REC-html40/strict.dtd">
<html><head><meta name="qrichtext" content="1" /><meta charset="utf-8" /><style type="text/css">
p, li { white-space: pre-wrap; }
hr { height: 1px; border-width: 0; }
li.unchecked::marker { content: "\2610"; }
li.checked::marker { content: "\2612"; }
</style></head><body style=" font-family:''Noto Sans''; font-size:19pt; font-weight:400; font-style:normal;">
<p style=" margin-top:0px; margin-bottom:0px; margin-left:0px; margin-right:0px; -qt-block-indent:0; text-indent:0px;">Leica M Viewfinder Magnifiers 1.25x &amp; 1.4x; Hood: 12519, 12539, 12544; Cap: 14205</p></body></html>','Anodized aluminum and optical glass','approx. 69 mm / 2.7 in ','580 g (1st version), 630 g / 20.5, 24.7 oz','NOCTILUX 1:1/50 LEITZ CANADA 2XXXXXX, LEICA NOCTILUX-M 1:1/50 E 60 3XXXXXX','Walter Mandler and Gerhardt Bechmann Aug 1970','Buildin lens hood. 
Source: https://www.l-camera-forum.com/leica-wiki.en/index.php/M_Lenses_x_Focal_Length as of 02/02/2021.','2021-02-03 13:49:46','2025-06-03 14:47:46','f/1-f/16 in 1 /2 and full click stops','410 mm x 615 mm','','42.9 mm (related to the first lens surface in light direction)','<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.0//EN" "http://www.w3.org/TR/REC-html40/strict.dtd">
<html><head><meta name="qrichtext" content="1" /><meta charset="utf-8" /><style type="text/css">
p, li { white-space: pre-wrap; }
hr { height: 1px; border-width: 0; }
li.unchecked::marker { content: "\2610"; }
li.checked::marker { content: "\2612"; }
</style></head><body style=" font-family:''Noto Sans''; font-size:19pt; font-weight:400; font-style:normal;">
<p style=" margin-top:0px; margin-bottom:0px; margin-left:0px; margin-right:0px; -qt-block-indent:0; text-indent:0px;">Combined meter/feet graduation</p></body></html>','Perfect match with Leica Visoflex type 020','62 mm - 2.4 in','','<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.0//EN" "http://www.w3.org/TR/REC-html40/strict.dtd">
<html><head><meta name="qrichtext" content="1" /><meta charset="utf-8" /><style type="text/css">
p, li { white-space: pre-wrap; }
hr { height: 1px; border-width: 0; }
li.unchecked::marker { content: "\2610"; }
li.checked::marker { content: "\2612"; }
</style></head><body style=" font-family:''Noto Sans''; font-size:19pt; font-weight:400; font-style:normal;">
<p style=" margin-top:0px; margin-bottom:0px; margin-left:0px; margin-right:0px; -qt-block-indent:0; text-indent:0px;">50mm f/1 Noctilux-M.pdf - courtesy Summilux.net, Erwin Puts (2002) Leica M-Lenses.pdf - pgs. 44 – 53</p></body></html>','1 m / 3.28 ft < ∞','Leica M-bayonet','1:17','','','','','Noctilux v4','',50,'','',0,'#FF8000',NULL,NULL);
INSERT INTO "Lenses" VALUES (69,2,1,'0.95','16.0','52.3 / 2.06 in',NULL,'50mm f/0.95 ASPH Noctilux-M','11602-black - 11667-silver','2008-Current','Black + first 20 in silver anodized (4120526-4120545) + released for general production in 2014','8 /5',NULL,'With click-stops, half values available, 11-blade manual diaphragm','47° / 40° / 27°','Lens hood - Screw-on filter E60 with accessory E82 filter holder 14485 /Yes, extendable','Leica M Viewfinder Magnifiers 1.25x & 1.4x','Anodized aluminum and optical glass','approx. 73 mm / 2.87 in ','approx. 700 g / 24.7 oz','LEICA NOCTILUX-M 1:0.95/50 ASPH. E 60 4XXXXXX','Peter Karbe','Source: https://www.l-camera-forum.com/leica-wiki.en/index.php/M_Lenses_x_Focal_Length  as of 02/02/2021
GMT','2021-02-03 13:52:46.357','2025-04-18 15:25:27','f/0.95-f/16 ','406 mm x 608 mm',NULL,'(from apex of 1st lens element) 50.6 mm / 1.99 in','Combined meter/feet graduation','Camera viewfinder','75.1 mm - 2.96 in',NULL,'50mm f/0.95 ASPH Noctilux-M.pdf - courtesy Summilux.net','1 m / 3.28 ft < ∞','Leica M quick-change bayonet with 6 bit lens identification bar code for digital M models','1:17',NULL,NULL,NULL,NULL,NULL,NULL,50,NULL,NULL,0,NULL,NULL,NULL);
INSERT INTO "Lenses" VALUES (72,2,1,'2.5','16.0','75mm',NULL,'75mm f/2.5 Summarit-M','11645','2007-2014 - superseded by 75mm f/2.4 Summarit-M',NULL,'6 /4',NULL,NULL,'For 35 mm (24 x 36 mm) : 32 deg, 27 deg, 18 deg, - for LEICA M8 (18 x 27 mm) : 24.4 deg, 20.4 deg, 13.7 deg, corresponds to a focal length of approx. 100 mm with 35 mm-format','Non-rotating, internal thread for screw-on filters size E46 / external thread for lens hood, protection ring for external thread included in delivery','Hood: 12460 - Leica M Viewfinder Magnifiers 1.25x & 1.4x 12004 - 12006','Anodized aluminum, brass and optical glass','approx. 55 mm / 2.2 in','approx. 345 g / 12.2 oz','LEICA SUMMARIT-M 1:2.5/75 E 46 4XXXXXX',NULL,'Source: https://www.l-camera-forum.com/leica-wiki.en/index.php/M_Lenses_x_Focal_Length  as of 02/02/2021','2021-02-02 13:49:00.507','2025-04-18 15:25:26','f/2.5-f/16 - Setting/Function Preset, with click-stops, half values available; 11-blade ','For 35 mm, approx. 338 x 357 mm /for LEICA M8, approx. 254 x 380 mm','For 35 mm 1:14.1 / for LEICA M8 1:9.9','(from apex of 1st lens element) 29.9 mm / 1.2 in','Combined meter/feet graduation','Camera viewfinder','approx. 60.5 mm / 2.4 in',NULL,'75mm f/2.5 Summarit-M.pdf','0.9 / 3 ft to ∞','Leica M quick-change bayonet with 6 bit lens identification bar code for digital M models',NULL,NULL,NULL,NULL,NULL,NULL,NULL,75,NULL,NULL,0,NULL,NULL,NULL);
INSERT INTO "Lenses" VALUES (73,2,1,'2.4','16.0','75mm',NULL,'75mm f/2.4 Summarit-M','11682-black - 11683-silver - red indicates changes from 75mm f/2.4 Summarit-M ','2014-Current',NULL,'6 /4',NULL,NULL,'For 35 mm (24 x 36 mm) : 32 deg, 27 deg, 18 deg, - for LEICA M8 (18 x 27 mm) : 24.4 deg, 20.4 deg, 13.7 deg, corresponds to a focal length of approx. 100 mm with 35 mm-format','Non-rotating, internal thread for screw-on filters size E46 / external thread for lens hood, protection ring for external thread included in delivery','Replacement hood: 12460-black 12441-silver - Leica M Viewfinder Magnifiers 1.25x & 1.4x 12004 - 12006','Anodized aluminum, brass and optical glass','approx. 55 mm / 2.2 in','approx. 325 g / 11.5 oz','43XXXXX LEICA E46 SUMMARIT-M 1:2.4/75',NULL,'Source: https://www.l-camera-forum.com/leica-wiki.en/index.php/M_Lenses_x_Focal_Length  as of 02/02/2021','2021-02-02 13:49:00.507','2025-04-18 15:25:08','f/2.4 - f/16 - Setting/Function Preset, with click-stops, half values available; 11-blade ',NULL,'For 35 mm, approx. 338 x 357 mm /1:14.1 = for LEICA M8, approx. 254 x 380 mm /1:9.9','(from apex of 1st lens element) 29.9 mm / 1.2 in','Combined meter/feet graduation','Camera viewfinder','approx. 60.5 mm / 2.4 in',NULL,'75mm f/2.5 Summarit-M.pdf - not revised for f/2.4 series','0.7 m / 2.3 ft to ∞','Leica M quick-change bayonet with 6 bit lens identification bar code for digital M models',NULL,NULL,NULL,NULL,NULL,NULL,NULL,75,NULL,NULL,0,NULL,NULL,NULL);
INSERT INTO "Lenses" VALUES (74,2,1,'2.0','16.0','75mm',NULL,'75mm f/2 ASPH Apo-Summicron-M','11637','2005-Current < 1,653+ lenses',NULL,'7 /5','0.7 m / 2.3 ft','Preset 9-blade, with click-stops, half values available','32°, 27°, 18°','Internal thread for screw-on filters size E49, non-rotating','UVa Filter E49 13328, Universal Polarizing Filter 13356, Polarizing Filter 14418, Leica M Viewfinder Magnifiers 1.25x & 1.4x 12004 - 12006','Anodized aluminum, brass, and optical glass','66.8 x 58 mm / 2.6 x 2.3 in','430 g / 15.2 oz','APO-SUMMICRON-M 1:2/75 ASPH. E49',NULL,'Source: https://www.l-camera-forum.com/leica-wiki.en/index.php/M_Lenses_x_Focal_Length  as of 02/02/2021','2021-02-02 13:49:00.507','2025-04-18 15:25:08','f/2-f/16','169 x 254 mm',NULL,'30.1 mm (related to the first lens surface in light direction)',NULL,NULL,NULL,NULL,'75mm f/2 ASPH Apo-Summicron-M.pdf',NULL,'Built-in lens hood , telescopic, lockable','1:7',NULL,NULL,NULL,NULL,NULL,NULL,75,NULL,NULL,0,NULL,NULL,NULL);
INSERT INTO "Lenses" VALUES (75,2,1,'1.4','16.0','75mm',NULL,'75mm f/1.4 Summilux-M','11814 - 11815-built-in hood - 11810 . LLC - 165 ','1980-2007 < 14,752 lenses','Black, titanium, ELC, ELW, 1913-1983 anniversary edition; after 1982 built-in hood version 11815 ','7 /5','0.75 m /2.46 ft','with clickstops from serial No. 2048701 onwards including half values / 10-blade','32°, 27°, 18°','E60','Hood for 1st version: 12539','n/a','80 x 69 mm /3.15 x 2.72 in','560 g /19.75','LEICA LENS MADE IN CANADA 1:1.4/75 E60 SUMMILUX-M XXXXXXX, LEITZ SUMMILUX-M 1:1.4/75 E60 325XXXX, LEICA SUMMILUX-M 1:1.4/75 E60 395XXXX','Walter Mandler "his favorite lens"','Source: https://www.l-camera-forum.com/leica-wiki.en/index.php/M_Lenses_x_Focal_Length  as of 02/02/2021','2021-02-02 13:49:00.507','2025-04-18 15:25:08','f/1.4 - f/16','192 mm x 288 mm /1:8',NULL,NULL,NULL,NULL,NULL,NULL,'75mm f/1.4 Summilux-M.pdf - courtesy Summilux.net, Erwin Puts (2002) Leica M-Lenses.pdf - pgs. 60 – 63',NULL,'Leica M-bayonet',NULL,NULL,NULL,NULL,NULL,NULL,NULL,75,NULL,NULL,0,NULL,NULL,NULL);
INSERT INTO "Lenses" VALUES (76,2,1,'2.0','16.0','90.9 mm / 3.6 in',NULL,'90mm f/2 ASPH Apo-Summicron-M','11884-black - 11885-chrom - 11632-titan - 11636-black paint . LLC - 177','1998-Current 14,820+ lenses','Black, silver and titanium versions','5 /5',NULL,NULL,'27°, 23°, 15°','Internal thread for screw-in filters size E55 / built-in, telescopic','Leica M Viewfinder Magnifiers 1.25x & 1.4x','Anodized aluminum and optical glass','64 mm / 2.5 in','660 g / 1.46 lb','APO SUMMICRON-M 1:2/90 ASPH.',NULL,'Source: https://www.l-camera-forum.com/leica-wiki.en/index.php/M_Lenses_x_Focal_Length  as of 02/02/2021','2021-02-02 13:49:00.507','2025-04-18 15:25:08','f/2 - f/16 - Setting/Function Preset, with click-stops, half values available, 11-blade manual diaphragm',NULL,'220 mm x 330 mm / 1:9','58.6 mm (related to the first lens surface in light direction)','Combined meter/feet graduation',NULL,'78 mm / 3.1 in',NULL,'90mm f/2 ASPH Apo-Summicron-M.pdf - courtesy Summilux.net, Erwin Puts (2002) Leica M-Lenses.pdf - pgs. 66 – 71','1 m / 3.3 ft < ∞','Leica M quick-change bayonet ',NULL,NULL,NULL,NULL,NULL,NULL,NULL,90,NULL,NULL,0,NULL,NULL,NULL);
INSERT INTO "Lenses" VALUES (77,2,1,'2.8','22.0','90mm',NULL,'90mm f/2 Summicron-M III','11137-silver - 11136-black','1980-1998 < 29,853 lenses','Black, silver, ELC; 1st version with telescoping shade that covers f-stop ring when not deployed','5 /4','1 m','11-blade, E49 Dimensions length x diameter - 79 x 67 mm / 3.11 x 2.64 in, E55 Dimensions length x diameter - 77 x 63.5 mm / 3.03 x 2.50 in','27 degrees','E49 (1st) - E55 (2nd)','E55 Cap 14289 - Rear Cap 14269','Black anodized aluminum or silver lacquered brass ',NULL,'475 g /1.05 lb in black; 690 g / 1.52 lb in silver','LEITZ SUMMICRON-M 1:2/90 3XXXXXX, LEICA SUMMICRON-M 1:2/90 E55 3XXXXXX','Walter Mandler','Source: https://www.l-camera-forum.com/leica-wiki.en/index.php/M_Lenses_x_Focal_Length  as of 02/02/2021','2021-02-02 13:49:00.507','2025-04-18 15:25:07','f/2.8 - f/22','220 x 330 mm',NULL,NULL,NULL,NULL,NULL,NULL,'Erwin Puts (2002) Leica M-Lenses.pdf - pgs. 65 - 70',NULL,'Leica M-bayonet',NULL,NULL,NULL,NULL,NULL,NULL,NULL,90,NULL,NULL,0,NULL,NULL,NULL);
INSERT INTO "Lenses" VALUES (78,2,1,'4.5','32.0','135mm',NULL,'135mm f/4.5 Hektor','HEFAR, KUP or CHROM, HEFAR-M, 11 135, COOHS + CHEBO (short-focus mount) LLC - 182','1933-1959 screw-thread, 1954-1960 M-bayonet < 108,088 lenses','All black, black w/ chrome band, grey and chrome, clear anodized aluminum; coated lens after serial no. 590,550 (1946); short focusing mount OHEBO version for Ploot or with OUBIO adaptor for Visoflex; military engravings Luftwaffen-Eigentum, MF 690, M and Reichsadler','4 /3','1.5 m /4.92 ft','15-blade','19 degrees','A36 and E39','Viewfinder: SYEOO Hood: IUFOO 12575, FIKUS and 12585','Lacquered brass, or later, clear anodized aluminum with black sharkskin','5.02 x 2.01 in','440-555 g /0.97-1.22 lb','Hektor f=13.5cm 1:4.5 Nr.1xxxxxx - Ernst Leitz GmbH Wetzlar',NULL,'Source: https://www.l-camera-forum.com/leica-wiki.en/index.php/M_Lenses_x_Focal_Length  as of 02/02/2021','2021-02-02 13:49:00.507','2025-04-18 15:25:07','f/4.5-f/32',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'Leica Screw-thread and M-bayonet',NULL,'As camera lens + optical cell unscrews for use with focusing adapter 16464 on Visoflex',NULL,NULL,NULL,NULL,NULL,135,NULL,NULL,0,NULL,NULL,NULL);
INSERT INTO "Lenses" VALUES (79,2,1,'4.0','22.0','135mm',NULL,'135mm f/4 Elmar','11750, 11850, 11951-head only LLC - 183','1960-1965, 3282 screw and 20,396 bayonet < 25,900 lenses',NULL,'4 /4','1.5 m /4.82 ft','12-blade','18 degrees','E39','Hood: IUFOO 12575; for use with Visoflex see forum discussion [1] below','Clear anodized aluminum and leatheret ','122.7 x 53 mm /4.8 x 2.1 in','440 g /0.97 lb','ELMAR 1:4/135 LEITZ WETZLAR 1XXXXXX','Walter Mandler','Source: https://www.l-camera-forum.com/leica-wiki.en/index.php/M_Lenses_x_Focal_Length  as of 02/02/2021','2021-02-02 13:49:00.507','2025-04-18 15:25:07','f/4-f/22','219 x 321 mm/ 8.75 x 13 in',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'Leica Screw-thread and M-bayonet',NULL,'As camera lens + optical cell unscrews for use with focusing adapter 16464 on Visoflex',NULL,NULL,NULL,NULL,NULL,135,NULL,NULL,0,NULL,NULL,NULL);
INSERT INTO "Lenses" VALUES (80,2,1,'4.0','22.0','135mm',NULL,'135mm f/4 Tele-Elmar','11851 (Tele-Elmar), 11852 (lens head only), 11861 (Tele-Elmar-M) . LLC - 183','1965-1998 < 28,300 lenses','Red scale (RS), yellow scale, scalloped (SFK) or unscalloped (UFK) focusing knurl, 1992-1998 telescoping hood version Tele-Elmar-M < 2,700 lenses ','5 /3','1.5 m /4.92 ft',NULL,'18 degrees','E39, E46','Hood: 12585 - The first 2 have removable heads used with Visoflex II & III with OTZFO + extension tube OTRPO or Bellows II','Black anodized aluminum','112 x 59 mm / 4.41 x 2.32 in; 107 x 56 mm (tapered version 11 851) / 4.21 x 2.20 in ','510 g / 1.12 lb (tapered version 11 851); 550 g /1.21 lb ','TELE-ELMAR 1:4/135 LEITZ WETZLAR 2XXXXXX, TELE-ELMAR-M 1:4/135 LEITZ WETZLAR 3XXXXXX','Walter Mandler','Source: https://www.l-camera-forum.com/leica-wiki.en/index.php/M_Lenses_x_Focal_Length  as of 02/02/2021','2021-02-02 13:49:00.507','2025-04-18 15:25:06','f/4-f/22','220 x 330 mm; 1:9',NULL,NULL,NULL,NULL,NULL,NULL,'Erwin Puts (2002) Leica M-Lenses.pdf - pgs. 72 - 74',NULL,'Leica M-bayonet',NULL,'As camera lens + optical cell unscrews for use with focusing adapter 16464 on Visoflex',NULL,NULL,NULL,NULL,NULL,135,NULL,NULL,0,NULL,NULL,NULL);
INSERT INTO "Lenses" VALUES (81,2,1,'3.4','22.0','135mm',NULL,'135mm f/3.4 ASPH Apo-Telyt-M','11889 . LLC - 184','1998-Current 4,500+ lenses',NULL,'5 /4','Extension factor 1:33',NULL,'18°, 15°, 10.2°','Internal thread for screw-on filters size E49 / built-in, telescopic','Leica M Viewfinder Magnifiers 1.25x & 1.4x; Polfilter M 14418','Anodized aluminum and optical glass','58.5 mm / 2.3 in','approx. 450 g / 15.9 oz','APO-TELYT-M 1:3.4/135 ',NULL,'Source: https://www.l-camera-forum.com/leica-wiki.en/index.php/M_Lenses_x_Focal_Length  as of 02/02/2021','2021-02-02 13:49:00.507','2025-04-18 15:25:06','f/3.4 - f/22 - Setting/Function Preset, with click-stops, half values available, manual diaphragm','220 mm x 330 mm','1:9','68 mm (related to the first lens surface in light direction)','Combined meter/feet graduation','Camera viewfinder','104.7 mm / 4.1 in',NULL,'135mm f/3.4 ASPH Apo-Telyt-M.pdf - courtesy Summilux.net, Erwin Puts (2002) Leica M-Lenses.pdf - pgs. 73 – 76','1.5 m / 4.9 ft < ∞','Leica M-bayonet / Photokina 2012 - "Will there be a 6 bit code for the 1:3.4 /135mm lens?" Jesko v. Oeynhausen: "Yes, we will repair this oversight."',NULL,NULL,NULL,NULL,NULL,NULL,NULL,135,NULL,NULL,0,NULL,NULL,NULL);
INSERT INTO "Lenses" VALUES (82,2,1,'2.8','32.0','135mm',NULL,'135mm f/2.8 Elmarit-M I','11827 . LLC - 184','1963-1964 < 2,400 lenses',NULL,'5 /3','1.55 m /5 ft',NULL,'18 degrees','Series VII - A63.7','14129 lower portion as shown with M-bayonet & eyes','Black anodized aluminum','120 x 66 mm / 4.72 x 2.60 in','730 g /1.61 lb','ELMARIT-M 1:2.8/135 LEITZ CANADA 1XXXXXX','Walter Mandler','Source: https://www.l-camera-forum.com/leica-wiki.en/index.php/M_Lenses_x_Focal_Length  as of 02/02/2021','2021-02-02 13:49:00.507','2025-04-18 15:25:06','f/2.8-f/32','220 x 330 mm',NULL,NULL,NULL,NULL,NULL,NULL,'Erwin Puts (2002) Leica M-Lenses.pdf - pgs. 72 - 75',NULL,'Leica M-bayonet - Visoflex II & III',NULL,'As camera lens + optical cell unscrews for use with focusing adapter 16464 on Visoflex',NULL,NULL,NULL,NULL,NULL,135,NULL,NULL,0,NULL,NULL,NULL);
INSERT INTO "Lenses" VALUES (83,2,1,'2.8','32.0','135mm',NULL,'135mm f/2.8 Elmarit-M II','11829 . LLC - 184','1964-1973 < 10,301 lenses',NULL,'5 /3','1.5 m /4.92 ft',NULL,'18 degrees','E55 - A63.7','Filter-ring: 14161','Black anodized aluminum',NULL,'730 g /1.61 lb','ELMARIT-M 1:2.8/135 LEITZ CANADA 1XXXXXX','Walter Mandler','Source: https://www.l-camera-forum.com/leica-wiki.en/index.php/M_Lenses_x_Focal_Length  as of 02/02/2021','2021-02-02 13:49:00.507','2025-04-18 15:25:06','f/2.8-f/32','220 x 330 mm',NULL,NULL,NULL,NULL,NULL,NULL,'Erwin Puts (2002) Leica M-Lenses.pdf - pgs. 72 - 75',NULL,'Leica M-bayonet',NULL,'As camera lens + optical cell unscrews for use with focusing adapter 16464 on Visoflex',NULL,NULL,NULL,NULL,NULL,135,NULL,NULL,0,NULL,NULL,NULL);
INSERT INTO "Lenses" VALUES (84,2,1,'2.8','32.0','135mm',NULL,'135mm f/2.8 Elmarit-M III','11829 . LLC - 184','1976-1996 < 9,850 lenses',NULL,'5 /3','1.5 m /4.92 ft','Click half and full stop','18 degrees','E55',NULL,'Black anodized aluminum','114 x 66 mm / 4.49 x 2.60 in','780 g /1.72 lb','ELMARIT-M 1:2.8/135 LEITZ CANADA 3XXXXXX',NULL,'Source: https://www.l-camera-forum.com/leica-wiki.en/index.php/M_Lenses_x_Focal_Length  as of 02/02/2021','2021-02-02 13:49:00.507','2025-04-18 15:25:05','f/2.8-f/32','220 x 330 mm / 8.75 x 13 in',NULL,NULL,NULL,NULL,NULL,NULL,'Erwin Puts (2002) Leica M-Lenses.pdf - pgs. 72 - 75',NULL,'Leica M-bayonet',NULL,'As camera lens + optical cell unscrews for use with focusing adapter 16464 on Visoflex',NULL,NULL,NULL,NULL,NULL,135,NULL,NULL,0,NULL,NULL,NULL);
INSERT INTO "Lenses" VALUES (85,2,1,'4.0','22.0','90mm',NULL,'90mm f/4 Elmar III','ELANG 11 730 (S), ELANG-M 11 830 (M) LLC - 168','1964-1965 < 9,400 lenses with < 500 in screw-mount (per Westlicht)','n/a','3 /3','1 m /3.28 ft','n/a','27 degrees','n/a','Hood: IUFOO 12575 ','Clear anodized aluminum ',NULL,'300 g /10.58 lb','Leitz Wetzlar 169XXXX Elmar f=9cm 1:4 or some with Ernst Leitz GmbH Wetzlar',NULL,'Source: https://www.l-camera-forum.com/leica-wiki.en/index.php/M_Lenses_x_Focal_Length  as of 02/02/2021','2021-02-02 13:49:00.507','2025-04-18 15:25:05','f/4-f/32','n/a',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'Leica Screw-thread and M-bayonet',NULL,NULL,NULL,NULL,NULL,NULL,NULL,90,NULL,NULL,0,NULL,NULL,NULL);
INSERT INTO "Lenses" VALUES (86,2,1,'4.0','32.0','90mm',NULL,'90mm f/4 Elmar','ILNOO 11 631 - 11 830 rigid, later 11 131 - 11 130 rigid LLC - 168','1954-1968 < 79,605 lenses','Collapsible and rigid versions with or without "eyes"; Scalloped focusing knurl (SFK)','4 /3','1 m /3.28 ft','Click full stop','27 degrees','n/a','Hood for collapsible lens: IUFOO, Close focusing device OMIFO for rigid lens (shown) - Cap: 14321 silver chrome /14285 black chrome ','Clear anodized aluminum ',NULL,'9.5 & 12 oz (rigid)','Ernst Leitz GmbH Wetzlar Elmar f=9cm 1:4 Nr.1XXXXXX',NULL,'Source: https://www.l-camera-forum.com/leica-wiki.en/index.php/M_Lenses_x_Focal_Length  as of 02/02/2021','2021-02-02 13:49:00.507','2025-04-18 15:25:05','f/4-f/32','9.5 x 14.25 in / 8.75 x 13 in viso',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'Leica M-bayonet and screw-mount',NULL,'Never try to collapse on digital Leica-Ms. It will ruin the sensor with its long tube (per Forum discussion 8 #20 below).',NULL,NULL,NULL,NULL,NULL,90,NULL,NULL,0,NULL,NULL,NULL);
INSERT INTO "Lenses" VALUES (87,2,1,'4.0','22.0','90.0 mm / 3.54 in',NULL,'90mm f/4 Macro-Elmar-M','11633-black - 11634-silver - 11629-black set MACRO-ADAPTER-M - 11670-black "big top" version','2004-Current - "big top" version introduced 2014 (shown at right)','Black and chrome versions ','4 /4',NULL,'10-blade','27°, 23°, 15°','Non-rotating, internal thread for screw-on filters size E39','Hood: IUFOO 12575 (can be attached in reverse for storage) - screw-in hoods per comment #[26]: 12549-silver 12550-black - 12517 (rubber hood per [27]#18) / MACRO-ADAPTER-M 14409 *eyes" version (14652 "universal" version) / ANGLEFINDER-M / Leica M Viewfinder Magnifiers 1.25x & 1.4x / Cap: 14321 silver chrome 14285 black chrome','Anodized aluminum and optical glass / Chrome-plated brass and optical glass','52 mm / 2.05 in','230 g - 8.11 oz black anodized aluminum / 320 g - 11.29 oz chrome plated brass ','LEICA MACRO-ELMAR-M 1:4/90 E39 3XXXXXX',NULL,'Source: https://www.l-camera-forum.com/leica-wiki.en/index.php/M_Lenses_x_Focal_Length  as of 02/02/2021','2021-02-02 13:49:00.507','2025-04-18 15:25:05','f/4-f/22 - with click-stops, half values available','160 mm x 240 mm (with LEICA MACRO-ADAPTER-M: 72 x 108 mm)','1:6.7 (with LEICA MACRO-ADAPTER-M: 1:3)','32.3 mm / 1.27 in - ("big top" version 22 mm / 0.67 in) related to the first lens surface in light direction','Combined meter/feet graduation','Camera viewfinder','41 < 59 mm / 1.61 < 2.32 in',NULL,'90mm f/4 Macro-Elmar-M.pdf - courtesy Summilux.net, 90mm f/4 "big top".pdf','0.77 m / 2.5 ft < ∞ (with Leica MACRO-ADAPTER-M: 0.5 < 0.76 m / 1.6 < 2.5 ft)','Leica M quick-change bayonet ',NULL,'Unlike other collapsible lenses, 90mm f/4 Macro-Elmar-M can be used on M8 or M9 cameras without restriction, as the extension tube does not extend into the camera.',NULL,NULL,NULL,NULL,NULL,90,NULL,NULL,0,NULL,NULL,NULL);
INSERT INTO "Lenses" VALUES (88,2,1,'2.8','22.0','90mm',NULL,'90mm f/2.8 Elmarit ELRIT','ELRIT 11029, ELRIM 11039 11129-black LLC - 171','1959-1974 2,067 screw lens, 28,527 bayonet lens < 43,290 lenses','Black or chrome and lenshead 11026 version','5 /3','1 m','12-blade','27 degrees','E39 - A42','Hood: IUFOO 12575 Viewfinder: SGVOO Viso focusing mount: OTZFO 16464 ','Black or clear anodized aluminum','94 x 53 mm / 3.70 x 2.09 in','330 g / 11.64 oz','Elmarit f=9cm 1:2.8 1XXXXXX','Walter Mandler','Source: https://www.l-camera-forum.com/leica-wiki.en/index.php/M_Lenses_x_Focal_Length  as of 02/02/2021','2021-02-02 13:49:00.507','2025-04-18 15:25:05','f/2.8-f/22','220 x 330 mm / 9.5 x 14.25 in',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'Leica Screw-thread & M-bayonet',NULL,'As camera lens + optical cell unscrews for use with focusing adapter 16464 on Visoflex II & III',NULL,NULL,NULL,NULL,NULL,90,NULL,NULL,0,NULL,NULL,NULL);
INSERT INTO "Lenses" VALUES (89,2,1,'2.8','16.0','90mm',NULL,'90mm f/2.8 Tele-Elmarit Fat','11807, 11899, 11800, 11129-black . LLC - 171','1964-1974 < 11,900 lenses ','Black and silver, ELC and ELW versions','5 /3','1 m /3.28 ft','Click half and full stops, 10-blade','27 degrees','E39 - A42','Hood: IUFOO 12575','Black or clear anodized aluminum ','60 mm x ?','355 g /12.52 oz','LEITZ WETZLAR 1XXXXXX TELE-ELMARIT 1:2.8/90, LEITZ CANADA 2XXXXXX TELE-ELMARIT 1:2.8/90','Walter Mandler','Source: https://www.l-camera-forum.com/leica-wiki.en/index.php/M_Lenses_x_Focal_Length  as of 02/02/2021','2021-02-02 13:49:00.507','2025-04-18 15:25:04','f/2.8-f/16','220 x 330 mm / 8.6 x 13 in',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'Leica M-bayonet',NULL,NULL,NULL,NULL,NULL,'"FAT" Tele-Elmarit',NULL,90,NULL,NULL,0,NULL,NULL,NULL);
INSERT INTO "Lenses" VALUES (90,2,1,'2.8','16.0','90mm',NULL,'90mm f/2.8 Tele-Elmarit-M','11800 also known as "THIN" Tele-Elmarit . LLC - 172','1974-1990 < 27,950 lenses ','6 bit encoded or uncoded, Canadian (until 1986), German, and 1913-1983 versions','4 /4','1 m /3.28 ft','10-blade','27 degrees','E39','Hood: IUFOO 12575, 11250, 12585','Black anodized aluminum, chromed brass ','67 x 53 mm / 2.64 x 2.09 in','225 g / 7.94 oz','TELE-ELMARIT-M 1:2.8/90 LEITZ LENS MADE IN CANADA (or GERMANY)','Garry Edwards, Walter Mandler and Erich Wagner - July 30, 1970','Source: https://www.l-camera-forum.com/leica-wiki.en/index.php/M_Lenses_x_Focal_Length  as of 02/02/2021','2021-02-02 13:49:00.507','2025-04-18 15:25:04','f/2.8 - f/16 with half-stop clicks','220 x 330 mm',NULL,NULL,NULL,NULL,NULL,NULL,'Erwin Puts (2002) Leica M-Lenses.pdf - pgs. 65 - 68',NULL,'Leica M-bayonet',NULL,NULL,NULL,NULL,NULL,NULL,NULL,90,NULL,NULL,0,NULL,NULL,NULL);
INSERT INTO "Lenses" VALUES (91,2,1,'2.8','22.0','90mm',NULL,'90mm f/2.8 Elmarit-M','11807-black, 11808-chrom, 11899-titan . LLC - 173','1990-2007 < 24,520 lenses ','Black, chrome and titanium','4 /4','1 m /3.28 ft','with clickstops (including half values), manual diaphragm / 10-blade','27°, 23°, 15°','E46',NULL,'Black anodized aluminum or chrome plated brass ','76 x 56.5 mm /2.99 x 2.22 in','410 g black, 560 g chrome /0.90 lb black, 1.23 lb chrome','LEICA ELMARIT-M 1:2.8/90 E46 3XXXXXX','Walter Mandler','Source: https://www.l-camera-forum.com/leica-wiki.en/index.php/M_Lenses_x_Focal_Length  as of 02/02/2021','2021-02-02 13:49:00.507','2025-04-18 15:25:03','f/2.8 - f/22','220 x 330 mm /1:9',NULL,NULL,NULL,NULL,NULL,NULL,'90mm f/2.8 Elmarit-M.pdf - courtesy Summilux.net, Erwin Puts (2002) Leica M-Lenses.pdf - pgs. 64 – 69',NULL,'Leica M-bayonet',NULL,NULL,NULL,NULL,NULL,NULL,NULL,90,NULL,NULL,0,NULL,NULL,NULL);
INSERT INTO "Lenses" VALUES (92,2,1,'2.5','16.0','90mm',NULL,'90mm f/2.5 Summarit-M','11646 ','2007-2014 - superseded by 90mm f/2.4 Summarit-M',NULL,'5 /4',NULL,NULL,'For 35 mm (24 x 36 mm) : 27 deg, 22.6 deg, 15.2 deg, - for LEICA M8 (18 x 27 mm) : 20.4 deg, 17.1 deg, 11.4 deg, corresponds to a focal length of approx. 120 mm with 35 mm-format','Non-rotating, internal thread for screw-on filters size E46, external thread for lens hood, protection ring for external thread included in delivery, lens hood available as accessory ','Hood: 12460 - Leica M Viewfinder Magnifiers 1.25x & 1.4x 12004 - 12006','Anodized aluminum, brass and optical glass','approx. 55 mm / 2.17 in','approx. 360 g / 12.7 oz','LEICA SUMMARIT-M 1:2.5/90 E 46 4XXXXXX',NULL,'Source: https://www.l-camera-forum.com/leica-wiki.en/index.php/M_Lenses_x_Focal_Length  as of 02/02/2021','2021-02-02 13:49:00.507','2025-04-18 15:25:03','f/2.5-f/16 setting/Function Preset, with click-stops, half values available; 11-blade','For 35 mm, approx. 213 x 320 mm / for LEICA M8, approx. 160 x 240 mm','For 35 mm1:8.9 / for LEICA M8 1:8.9','(from apex of 1st lens element) 54.8 mm','Combined meter/feet graduation','Camera viewfinder','approx. 66.5 mm / 2.8 in',NULL,'90mm f/2.5 Summarit-M.pdf','1 m / 3.28 ft to ∞','Leica M quick-change bayonet with 6 bit lens identification bar code for digital M models',NULL,NULL,NULL,NULL,NULL,NULL,NULL,90,NULL,NULL,0,NULL,NULL,NULL);
INSERT INTO "Lenses" VALUES (93,2,1,'2.4','16.0','90mm',NULL,'90mm f/2.4 Summarit-M','11684-black - 11685-silver - red indicates revision from 90mm f/2.5 Summarit-M','2014-Current',NULL,'5 /4',NULL,NULL,'For 35 mm (24 x 36 mm) : 27 deg, 22.6 deg, 15.2 deg, - for LEICA M8 (18 x 27 mm) : 20.4 deg, 17.1 deg, 11.4 deg, corresponds to a focal length of approx. 120 mm with 35 mm-format','Non-rotating, internal thread for screw-on filters size E46, external thread for lens hood, protection ring for external thread included in delivery, lens hood available as accessory ','Replacement hood: 12460-black 12441-silver - Leica M Viewfinder Magnifiers 1.25x & 1.4x 12004 - 12006','Anodized aluminum, brass and optical glass','approx. 55 mm / 2.17 in','approx. 346 g / 12.2 oz','43XXXXX LEICA E46 SUMMARIT-M 1:2.4/90',NULL,'Source: https://www.l-camera-forum.com/leica-wiki.en/index.php/M_Lenses_x_Focal_Length  as of 02/02/2021','2021-02-02 13:49:00.507','2025-04-18 15:25:03','f/2.4 - f/16 setting/Function Preset, with click-stops, half values available; 11-blade','For 35 mm, approx. 213 x 320 mm / for LEICA M8, approx. 160 x 240 mm','For 35 mm 1:8.9 / for LEICA M8 1:8.9','(from apex of 1st lens element) 54.8 mm','Combined meter/feet graduation','Camera viewfinder','approx. 67 mm / 2.64 in',NULL,'90mm f/2.5 Summarit-M.pdf - not revised for f/2.4 series ','0.9 m / 2.95 ft to ∞','Leica M quick-change bayonet with 6 bit lens identification bar code for digital M models',NULL,NULL,NULL,NULL,NULL,NULL,NULL,90,NULL,NULL,0,NULL,NULL,NULL);
INSERT INTO "Lenses" VALUES (94,2,1,'2.0','16.0','90mm',NULL,'90mm f/2 Summicron-M I','SOOZI, SOOZI-M, SEOOM 11123, SEEOF 11023, SEEOF-M, SEEOM, INVOO-preset diaphram (special order) LLC - 174','1957-1962, 490 screw lens, 4430 bayonet lens < 15,500 lenses','All black, all chrome, and black and chrome versions; preset ring with f/16 or f/22 minimum aperture; unscalloped focusing knurl (UFK) and w/ or w/o tripod mount versions; lenshead 11133 version','6 /5','1 m','15-blade','27 degrees','E48 - A63.7','Hood: HMOOD','Early chrome plated brass; later anodized aluminum (w/ built-in hood)','110 x 66 mm / 4.33 x 2.60 in','660 g /1.46 lb','LEITZ CANADA 165XXXX SUMMICRON 1:2/90, Ernst Leitz Canada Ltd. Midland Summicron f = 9cm 1:2 Nr. 158xxxx','Walter Mandler','Source: https://www.l-camera-forum.com/leica-wiki.en/index.php/M_Lenses_x_Focal_Length  as of 02/02/2021','2021-02-02 13:49:00.507','2025-04-18 15:25:03','f/2-f/22 or f/2-f/16','220 x 330 mm',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'Leica Screw-thread and M-bayonet',NULL,'As camera lens + optical cell unscrews for use with focusing adapter 16464 on Visoflex',NULL,NULL,NULL,NULL,NULL,90,NULL,NULL,0,NULL,NULL,NULL);
INSERT INTO "Lenses" VALUES (95,2,1,'2.0','22.0','90mm',NULL,'90mm f/2 Summicron-M II','SEEOF, SEEOF-M or SEEOM, 11123-chrom, 11132-head only-ZOOEP, pre-set diaphram, 11133-head only LLC - 175','1963-1980 < 5,430 lenses ','Black and chrome, f/16, f/22, scalloped focusing knurl (SFK), and preset diaphragm head only (PHO) for use with Visoflex ',NULL,'1 m','Click half and full stops, 12-blade','27 degrees','E49 ','Visoflex adapter ZOOEP 16462; Bellows II adapter UOOZK 16598; Close focus ring OUEPO 16474 ','Clear and black anodized aluminum ',NULL,'685 g /1.51 lb','Ernst Leitz Canada Summicron f-9cm 1:2 Nr.158xxxx, LEITZ CANADA 2XXXXXX SUMMICRON 1:2 / 90','Walter Mandler','Source: https://www.l-camera-forum.com/leica-wiki.en/index.php/M_Lenses_x_Focal_Length  as of 02/02/2021','2021-02-02 13:49:00.507','2025-04-21 13:54:58','f/2-f/16 or f/22 (early)','24.1 x 36.8 cm / 9.5 x 14.5 in',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'Leica Screw-thread, M-bayonet and preset diaphragm in short mount for use with Visoflex ',NULL,NULL,NULL,'length 112 mm / 4.4 in',NULL,NULL,NULL,90,NULL,NULL,0,NULL,NULL,NULL);
INSERT INTO "Lenses" VALUES (96,4,3,'1.2','16.0','35mm','','35mm f/1.2 Carl Zeiss Jena Optik Sigurd','Fag. Nr. 8559','','','','','','','46 mm','','','','402g','','Josef Konrad sen.','Updated by det on 02/13/2021 18:39:02.302
Dagobert','2021-02-02 13:49:00','2025-04-21 13:54:57',NULL,'','','','','','','','','','','','','','','','Der große Sigurd','',35,'','',0,'#aa55ff',NULL,NULL);
INSERT INTO "Lenses" VALUES (99,11,1,'1.2','22.0','35mm',NULL,'35mm Voigtlander Nokton f/1.2 Aspherical II Lens',NULL,NULL,NULL,'10 Elements in 7 Groups','1.6'' / 50 cm','Diaphragm Blades: 12','63°','Size 52 mm (Front)',NULL,NULL,NULL,'1 lb / 470 g','Voigtländer Nokton 35mm F1.2 ASPHERICAL',NULL,'Updated by det on 02/17/2021 17:03:38.37','2021-02-03 13:52:46','2025-04-21 13:54:55','f1.2 - f/22',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'Leica M','2.4 x 2.4" / 60.8 x 62 mm',NULL,'CV 35 f/1.2 Version II',NULL,35,NULL,'Manual Focus',0,'#00FF00',NULL,NULL);
INSERT INTO "Lenses" VALUES (100,6,1,'2.8','22.0','28mm',NULL,'28mm ZEISS Biogon T* f/2.8 ZM Lens',NULL,NULL,NULL,'8 Elements in 6 Groups','1.6'' / 50 cm / Macro: 1:16','Diaphragm Blades 10','75°','Filter Size 46 mm (Front)',NULL,NULL,NULL,'7.8 oz / 220 g',NULL,NULL,'Updated by det on 02/17/2021 17:10:17.15','2021-02-03 13:52:46','2025-04-21 13:54:55','f/2.8 - f/22',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'2.02 x 2" / 51.3 x 51 mm',NULL,'Biogon 28mm',NULL,28,NULL,NULL,0,'#00FF00',NULL,NULL);
INSERT INTO "Lenses" VALUES (101,11,1,'4.5','22.0','15mm','','15mm Voigtlander Super Wide-Heliar f/4.5 Aspherical III Lens','','','','11 Elements in 9 Groups','1.6'' / 50 cm','Diaphragm Blades: 10, Rounded','110°','Filter Size: 58 mm (Front)','','','','8.7 oz / 247 g','','','','2021-02-03 13:52:46','2025-05-22 12:54:07','f/4.5 - f/22','','','','','','','','','0.5m -','','','','','2.6 x 2.2" / 64.8 x 55.2 mm','','CV 15mm Version III','',15,'','',0,'#ffaa00',NULL,NULL);
INSERT INTO "Lenses" VALUES (102,2,1,'1.2','16.0','50mm',NULL,'50mm f/1.2 Noctilux-M ASPH. (2021-)','Black, anodized: 11 686 / Silver, chrome-plated: 11 702',NULL,'Black, anodized
Silver, chrome-plated','6/4','1 m',NULL,'Full-frame: 45.6°/38.6°/26.3° / M8: 35.0°/29.4°/19.9°, equivalent focal length approx. 68.6 mm','E49',NULL,NULL,NULL,NULL,NULL,NULL,'Number of aspherical surfaces: 2
Setting/Function: Lock blade, with half-increment lock settings
Number of aspherical surfaces: 2
Lens hood: Click-on (included in the scope of delivery)','2021-02-03 13:52:46','2025-04-21 13:54:52','f/1.2 - f/16
Number of aperture blades: 16','Full-frame: 425 × 637 mm, M8: 319 × 478 mm',NULL,'12.4 mm','Combined scale meter (m)/foot (ft)
Largest scale 1:17.7',NULL,NULL,NULL,NULL,'1 m to infinity',NULL,NULL,NULL,'Leica M bayonet with 6-bit encoding',NULL,NULL,'NOCTILUX-M 50 f/1.2 ',NULL,50,NULL,NULL,0,NULL,NULL,NULL);
INSERT INTO "Lenses" VALUES (104,6,1,'1.4','16.0','35mm',NULL,'35mm ZEISS Distagon T* 1.4/35 ZM',NULL,NULL,NULL,'10 | 7','0,61 m (24.01") - ∞',NULL,'Angular field** (diag. horiz. vert.): 62° | 53° | 37°','Filter thread:

M49 x 0.75',NULL,NULL,'43 mm (1.69") / Diameter max.
63 mm (2.49") / Diameter of focusing ring:
60 mm (2.39")','381 g (13.4 oz)',NULL,NULL,'Coverage at close range (MOD): 609 x 406 mm (24.00 x 16.00")
Flange focal distance: 28 mm (1.09")','2021-02-03 13:52:46','2025-04-21 13:54:48',' f/1.4 – f/16',NULL,NULL,'63 mm (2.48")',NULL,NULL,NULL,NULL,'https://www.zeiss.com/consumer-products/int/photography/zm/distagon-1435-zm.html#accessories','0,70 m (27.56") - ∞',NULL,NULL,'Full Frame',NULL,'Length (with lens caps): 87 mm (3.30") / Length (without lens caps):
65 mm (2.57")',NULL,'35mm Distagon, The Fat',NULL,35,'Rotation angle of focusing ring: 90°',NULL,0,'#0080FF',NULL,NULL);
INSERT INTO "Lenses" VALUES (105,2,1,'2.0','16.0','50mm',NULL,'50mm f/2 Summicron IV','n/a','1968-1979 < 44,029 lenses',NULL,'6 /5 (aluminum) - [a limited number of the earlier 7 /4 plated brass versions 1117, 1118, 11318 (DR) and 11918 (DR) occur in the serial nos. listed below]','0.7 m ','10-blade','45 degrees','E39','Hood: ITDOO 12585 ','Black anodized aluminum','50 x 51 mm / 1.97 x 2.01 in','240 g ','LEITZ WETZLAR 2XXXXXX SUMMICRON 1:2/50 ','Walter Mandler','Lens details require a decent validation','2021-02-19 16:24:59','2025-06-02 20:05:34','f /2 - f /16','277 x 416 mm ',NULL,NULL,NULL,NULL,NULL,NULL,'Erwin Puts (2002) Leica M-Lenses.pdf - pgs. 43 - 48',NULL,'M-bayonet',NULL,NULL,NULL,NULL,NULL,NULL,NULL,50,NULL,NULL,0,'#00FF00',NULL,NULL);
INSERT INTO "Lenses" VALUES (106,2,1,'2.0','16.0','50mm',NULL,'50mm f/2 Summicron V','n/a','1968-1979 < 44,029 lenses',NULL,'6 /5 (aluminum) - [a limited number of the earlier 7 /4 plated brass versions 1117, 1118, 11318 (DR) and 11918 (DR) occur in the serial nos. listed below]','0.7 m ','10-blade','45 degrees','E39','Hood: ITDOO 12585 ','Black anodized aluminum','50 x 51 mm / 1.97 x 2.01 in','240 g ','LEITZ WETZLAR 2XXXXXX SUMMICRON 1:2/50 ','Walter Mandler','Lens details require a decent validation','2021-02-19 16:26:18','2025-06-02 20:05:33','f /2 - f /16','277 x 416 mm ',NULL,NULL,NULL,NULL,NULL,NULL,'Erwin Puts (2002) Leica M-Lenses.pdf - pgs. 43 - 48',NULL,'M-bayonet',NULL,NULL,NULL,NULL,NULL,NULL,NULL,50,NULL,NULL,0,'#00FF00',NULL,NULL);
INSERT INTO "Lenses" VALUES (107,2,1,'2.0','16.0','50mm',NULL,'50mm f/2 Summicron III',NULL,'1968-1979 < 44,029 lenses','Cylindrical aluminum as shown - [Scalloped focusing knurl (SFK) and dual range (DR) close focus (with "eyes") plated brass versions were still available during the decade, per Forum discussions 3 & 4 below]','6 /5 (aluminum) - [a limited number of the earlier 7 /4 plated brass versions 1117, 1118, 11318 (DR) and 11918 (DR) occur in the serial nos. listed below]','0.7 m ','10-blade','45 degrees','E39','Hood: ITDOO 12585 ','Black anodized aluminum','50 x 51 mm / 1.97 x 2.01 in','240 g ','LEITZ WETZLAR 2XXXXXX SUMMICRON 1:2/50 ','Walter Mandler','Lens details require a decent validation','2021-02-19 16:27:12','2025-06-02 20:05:32','f /2 - f /16','277 x 416 mm ',NULL,NULL,NULL,NULL,NULL,NULL,'Erwin Puts (2002) Leica M-Lenses.pdf - pgs. 43 - 48',NULL,'M-bayonet',NULL,NULL,NULL,NULL,NULL,NULL,NULL,50,NULL,NULL,0,NULL,NULL,NULL);
INSERT INTO "Lenses" VALUES (108,2,1,'2.0','16.0','35mm',NULL,'35mm APO-Summicron-M f/2 ASPH. black anodized finish','11699',NULL,NULL,'10/5','30cm',NULL,'62.5°/53.6°/37.2° ','Filter thread: E39',NULL,NULL,'approx. 53 mm (without lens hood) ','320g',NULL,NULL,'Updated on 03/04/2021 16:54:47.854
Lens hood: Screw-on','2021-03-04 16:54:47','2025-06-02 20:05:30','f/2.0 - f/16.0 - Lock blade, with half-increment lock settings
Number of aperture blades: 11',NULL,NULL,'13.8mm ','Combined scale meter (m)/foot (ft)',NULL,NULL,NULL,NULL,'30cm to infinity',NULL,NULL,NULL,'Leica M bayonet with 6-bit encoding','Length: 40.9/49.3 mm (without/with lens hood)',NULL,'35mm APO-Cron','yes',35,'300°','Tab',0,NULL,NULL,NULL);
INSERT INTO "Lenses" VALUES (109,1,1,'2.0','','','','Test Record to delete','','','','','','','','','','','','','','','','2025-04-09 08:28:27','2025-06-02 20:05:23','','','','','','','','','','','','','','','','','Record','',14,'','',0,'#aaaa00',NULL,NULL);
INSERT INTO "Lenses" VALUES (139,3,1,'','','','','9 GUI Test Insert record','9 GUI Test Insert record','','','','','','','','','','','','','','9 GUI Test Insert record9 GUI Test Insert record','2025-04-09 15:07:33','2025-06-02 20:06:01','','','','','','','','','','','','','','','','','9 GUI Test Insert record','','','','',0,NULL,NULL,NULL);
INSERT INTO "Lenses" VALUES (140,3,2,'1.2','22','60mm','','10 GUI Test Insert record','10 GUI Test Insert record','','','','','','','','','','','','','','10 GUI Test Insert record','2025-04-09 15:11:23','2025-06-02 20:06:04','','','','','','','','','','','','','','','','','10 GUI Test Insert records','',60,'','',0,'#aa55ff',NULL,NULL);
INSERT INTO "Lenses" VALUES (141,6,1,'1.5','16.0','50mm','','50mm f/1.5 ZEISS C Sonnar T* 1.5/50 ZM','','','','6 | 4','0,90m','','46° | 39° | 27°','','','Filter thread: M46 x 0.75','','250 g (8.82 oz)','','without lens caps:
45 mm (1.77")','A lens with relatively few glass-air surfaces, it was developed by Dr. Ludwig Bertele at ZEISS in 1930. At the time it was one of the fastest high-speed lenses for 35 mm photography, with apertures as large as 1:1.5 and high contrast thanks to effective stray light reduction. Its high speed and high contrast helped give the lens its name, which is derived from the word “sun,” the symbol of maximum brightness. You continue to find the aforementioned benefits with modern lenses in the normal and telephoto ranges whose optical design is based on this basic type. 
Image ratio at minimum object distance: 1 : 15','2025-04-11 12:33:46','2025-06-02 20:06:05','f/1.5 – f/16','','','','','','','','','0,90m (35.43") – ∞','','','','','','','Sonnar','',50,'','',0,'#55ff00',NULL,NULL);
INSERT INTO "Lenses" VALUES (142,2,1,'f1.7','f22.0','13mm','Non-military use','12 GUI Test','','1953 - 1989','None of them are for public','4/3','0.9m','?','96°','E39','accessories','Steel','7cm','289g','Mgnificent Lens Manufacturer','Gerald Gräbner','New insert code','2025-04-11 13:53:00','2025-06-10 19:26:34','f1.7','16','389 items','5"','87%','Voigländer C-05','14mm','7cm','not available','62mm','M - Standard Leica mount','0.8','M - Leica standard mount','?','15"x6"','Young American Edition','aka','None',13,'172°','',0,NULL,NULL,NULL);
INSERT INTO "Lenses" VALUES (143,1,2,'1.5','16.0','14mm','','13 GUI Test','','','','','','','','','','','','','','','No related image ','2025-04-11 13:55:43','2025-06-03 14:53:21','','','','','','','','','','','','','','','','','aka2','',14,'','',0,NULL,NULL,NULL);
INSERT INTO "Lenses" VALUES (144,1,2,'','','14mm','','14 GUI Test','324234','','','','','','','','','','','','','','Test','2025-04-11 13:56:43','2025-06-03 14:53:20','','','','','','','','','','','','','','','','','akak4','','','','',0,NULL,NULL,NULL);
INSERT INTO "Lenses" VALUES (145,1,2,'','','14mm','','15 GUI Test','12','','','','','','','','','','','','','','clear image','2025-04-11 13:58:54','2025-06-03 14:53:19','','','','','','','','','','','','','','','','','aka 15','',14,'','',0,NULL,NULL,NULL);
INSERT INTO "Lenses" VALUES (146,2,2,'','','14mm','','16a GUI Test ','addf','','','','','','','','','','','','','','adsfa','2025-04-11 14:00:42','2025-06-03 20:01:19','','','','','','','','','','','','','','','','','adsfadf','',14,'','',0,NULL,NULL,NULL);
INSERT INTO "Lenses" VALUES (147,1,2,'','','14mm','','16 GUI Test','adsfa','','','','','','','','','','','','','','dsfaöjsdöflkjasdlöfj','2025-04-11 14:02:39','2025-06-03 19:58:13','','','','','','','','','','','','','','','','','adfsa','',14,'','',0,NULL,NULL,NULL);
INSERT INTO "Lenses" VALUES (148,1,2,'','','14mm','','17 GUI Test','adfadf','','','','','','','','','','','','','','adfadsfadf','2025-04-11 14:04:43','2025-06-03 19:50:01','','','','','','','','','','','','','','','','','adf','',14,'','',0,NULL,NULL,NULL);
INSERT INTO "Lenses" VALUES (149,1,2,NULL,NULL,'14mm',NULL,'18 GUI Test','adsfadf',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'adfef','2025-04-11 14:06:45','2025-06-03 19:53:55',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'adsf',NULL,14,NULL,NULL,0,NULL,NULL,NULL);
INSERT INTO "Lenses" VALUES (150,1,2,'','','14mm','','19 GUI Test ','adf','','','','','','','','','','','','','','dfasdfwer','2025-04-11 18:17:08','2025-06-03 19:53:59','','','','','','','','','','','','','','','','','adsf','',14,'','',0,'#ff6721',NULL,NULL);
INSERT INTO "Lenses" VALUES (151,12,1,'1.4','16.0','35mm','','35mm f/1.4 Artizlab Classic by Funleader','','2025 - First batch is currently sold out (May 2025). The next batch will be available in July 2025.
€477,46 EUR = US$539.00','','','1m (3.28ft)','','','','In the box:
1 x Aritzlab Classic 35mm F/1.4 for M
1 x UV Filter
1 x Lens Hood
1 x Front and rear lens caps','Aluminum and Copper','','157g（5.54oz）','ARTIZLAB 1:1.4/35mm for M Classic A11050','','https://myfunleader.com/products/aritzlab-classic-35mm-f-1-4-for-m-lens

The Classic 35mm f/1.4 for M Lens 
Inspired by Leica’s legendary 1960s 35mm f/1.4 V2 lens, the Aritzlab Classic 35mm f/1.4 for M Lens is a tribute to timeless design and optical excellence. This lens retains the compact and elegant aesthetic of its predecessor, exuding sophistication and fine craftsmanship. Every detail is thoughtfully designed to evoke a sense of classic elegance, while the integration of modern optical technologies enhances its performance for contemporary photographers. ','2025-05-22 13:10:39','2025-06-07 09:34:02','f/1.4 - f/16','','','','','','','','','','Mount: M','','','','Including Lens Hood: 64mm × 44mm (2.52’x 1.73’) / without Lens Hood: 52mm × 28mm (2.05’x 1.1’)','First batch sold out','','',35,'','',0,NULL,NULL,NULL);
INSERT INTO "Lenses" VALUES (152,2,3,'3.5','16.0','50mm','','50mm f/3.5 Elmar (I) f= 5 cm 1:3.5 LTM','','','Nickel, chrome, metric, foot, heavy cam 7 o''clock and 11 o''clock bell push (11-BP) versions','5 /3','1m / 3.28','','','A36','FISON (https://wiki.l-camera-forum.com/leica-wiki.en/index.php/FISON)','','','125 g / 4.4 oz','','','Serial numbers compiled from known lenses and Puts Pocket Pod.pdf
* Lens 812349 is Elmar 5 cm 1:3.5

SN Start 	SN End 	Product 	Year 	Total
-564 	892- 	Elmar 5 cm 1:3.5 (KUP) 	1930 	unknown
-43114 	53034- 	Elmar 5 cm 1:3.5 (KUP.11) 	1930 	unknown
-unknown 	92939- 	Elmar 5 cm 1:3.5 (KUP.11) 	1930 	unknown
-93118 	99900- 	Elmar 5 cm 1:3.5 (KUP.11) 	1930 	unknown
-122718 	124870- 	Elmar 5 cm 1:3.5 (KUP.11-BP) 	1931 	unknown
-130248 	133506- 	Elmar 5 cm 1:3.5 (KUP.11-BP+7) 	1931 	unknown
-144221 	151035- 	Elmar 5 cm 1:3.5 (KUP.7+CHROM.7) 	1932 	unknown
156501 	157000 	Elmar 5 cm 1:3.5 	1933 	500
157001 	160000 	Elmar 5 cm 1:3.5 (KUP.7) 	1933 	3000
163101 	165000 	Elmar 5 cm 1:3.5 (KUP.7) 	1933 	1900
169001 	171000 	Elmar 5 cm 1:3.5 	1933 	2000
172501 	176000 	Elmar 5 cm 1:3.5 (KUP.7) 	1933 	3500
179001 	182000 	Elmar 5 cm 1:35 (KUP.7) 	1933 	3000
183101 	186000 	Elmar 5 cm 1:3.5 (CHROM.7) 	1933 	2900
187001 	190000 	Elmar 5 cm 1:3.5 	1933 	3000
200001 	205000 	Elmar 5 cm 1:35 	1934 	5000
211101 	214000 	Elmar 5 cm 1:3.5 	1934 	2900
222001 	225000 	Elmar 5 cm 1:3.5 	1934 	3000
230301 	235000 	Elmar 5 cm 1:35 	1934 	4700
242001 	245000 	Elmar 5 cm 1:3.5 (KUP.7) 	1935 	3000
253001 	256000 	Elmar 5 cm 1:3.5 	1935 	3000
261001 	265000 	Elmar 5 cm 1:3.5 	1935 	4000
275001 	280000 	Elmar 5 cm 1:3.5 (CHROM + KUP.7) 	1936 	5000
290001 	295000 	Elmar 5 cm 1:3.5 (KUP.7) 	1936 	5000
304001 	310000 	Elmar 5 cm 1:35 	1934 	6000
311501 	315000 	Elmar 5 cm 1:35 	1934 	3500
315101 	320000 	Elmar 5 cm 1:35 	1936 	4900
322001 	325000 	Elmar 5 cm 1:35 	1936 	3000
327001 	332000 	Elmar 5 cm 1:35 	1936 	5000
338001 	345000 	Elmar 5 cm 1:35 	1936 	7000
358001 	365000 	Elmar 5 cm 1:35 	1937 	7000
390001 	400000 	Elmar 5 cm 1:35 	1937 	10000
427001 	437000 	Elmar 5 cm 1:35 	1938 	10000
460301 	465000 	Elmar 5 cm 1:35 	1938 	4700
473001 	480000 	Elmar 5 cm 1:35 (CHROM.7) 	1938 	7000
498001 	503000 	Elmar 5 cm 1:35 	1939 	5000
510001 	515000 	Elmar 5 cm 1:35 	1939 	5000
533001 	538000 	Elmar 5 cm 1:35 	1939 	5500
542001 	550000 	Elmar 5 cm 1:35 (Luftwaffen) 	1940 	8000
567101 	570000 	Elmar 5 cm 1:35 	1941 	2900
571301 	573000 	Elmar 5 cm 1:35 (Luftwaffen) 	1941 	1700
573401 	575000 	Elmar 5 cm 1:35 	1941 	1600
582301 	583500 	Elmar 5 cm 1:35 	1942 	1200
583501 	584500 	Elmar 5 cm 1:35 (WH) 	1942 	1000
591001 	592000 	Elmar 5 cm 1:35 	1942 	1000
593501 	594500 	Elmar 5 cm 1:35 (WH) 	1943 	1000
595000 	596000 	Elmar 5 cm 1:35 	1945 	1001
597001 	600000 	Elmar 5 cm 1:35 	1945 	3000
601001 	603000 	Elmar 5 cm 1:35 	1946 	2000
609001 	610000 	Elmar 5 cm 1:35 	1946 	1000
612001 	615000 	Elmar 5 cm 1:35 	1946 	3000
630001 	633000 	Elmar 5 cm 1:35 	1946 	3000
633101 	635000 	Elmar 5 cm 1:35 	1947 	1900
638001 	643000 	Elmar 5 cm 1:35 	1947 	5000
647001 	652000 	Elmar 5 cm 1:35 	1948 	5000
670001 	675000 	Elmar 5 cm 1:35 	1948 	5000
688001 	693000 	Elmar 5 cm 1:35 	1949 	5000
707001 	712000 	Elmar 5 cm 1:35 	1949 	5000
727001 	732000 	Elmar 5 cm 1:35 	1949 	5000
741001 	750000 	Elmar 5 cm 1:35 	1949 	9000
769001 	775000 	Elmar 5 cm 1:35 	1950 	6000
790020 	790036 	Elmar 5 cm 1:35 	1950 	17
802001 	807000 	Elmar 5 cm 1:35 	1950 	5000
810001* 	820000 	*Summitar f= 5 cm 1:2 	1950 	[10000]
826001 	836000 	Elmar 5 cm 1:35 	1950 	10000
866001 	872000 	Elmar 5 cm 1:35 	1951 	6000
893001 	898000 	Elmar 5 cm 1:35 	1951 	5000
904001 	910000 	Elmar 5 cm 1:35 	1951 	6000
941001 	950000 	Elmar 5 cm 1:35 	1951 	9000
TOTAL 	ASSIGNED 	SERIAL NUMBERS 	1933-1951 	36,000 ','2025-05-27 12:09:32','2025-06-03 19:51:10','f/3.5 - f/16','','','','','','','','','1 m / 3.28 ft - ∞','Screw-thread','','','','','','ELMAR , ELMAR CHROM LLC - 113','',50,'','',0,NULL,NULL,NULL);
INSERT INTO "Makers" VALUES (1,'<unknown>',-1,'','www.google.com','This is a placeholder for all unknown manufacturer. 
Please specify.','2025-04-09 07:34:53','2025-06-10 11:27:00',10001);
INSERT INTO "Makers" VALUES (2,'Leica',86,'https://leica-camera.com','https://leica-camera.com/en-int/photography/lenses/m','Leica Camera AG (/ˈlaɪkʌ/) is a German company that manufactures cameras, lenses, binoculars, rifle scopes, microscopes and ophthalmic lenses. The company was founded by Ernst Leitz in 1869 (Ernst Leitz Wetzlar), in Wetzlar, Germany.

In 1986, the Leitz company changed its name to Leica, due to the fame of the Leica trade-name, the name Leica is derived from the first three letters of his surname (Leitz) and the first two of the word camera: lei-ca (LEItz CAmera). At this time, Leica relocated its factory from Wetzlar to the nearby town of Solms.

Leica Camera AG is 45% owned by The Blackstone Group which licenses the Leica brand name from the independently owned Leica Microsystems GmbH.
Source: Wikipedia','2021-02-17 10:33:51','2025-06-08 15:10:16',1);
INSERT INTO "Makers" VALUES (3,'Cosina',114,NULL,'http://www.cosina.co.jp/','Cosina','2021-02-17 10:33:51','2021-02-17 10:34:12',501);
INSERT INTO "Makers" VALUES (4,'Carl Zeiss Jena (East Germany, GDR)',86,NULL,'https://camera-wiki.org/wiki/Carl_Zeiss','Carl Zeiss Jena (East Germany, GDR)

Post World War II
After World War II, Jena being in the Eastern part of Germany, the company split in two. One part was recreated in West Germany and based in Oberkochen, and kept within the Zeiss Foundation. The other part remained in Jena, but soon lost the right to use the traditional names, like the brand name Zeiss and the related famous lens names. In the Western countries it was known as aus Jena (means from Jena), and used obvious abbreviations, or other names reminding the past (for ex. T for Tessar, S for Sonnar). In the countries of the Eastern block, they continued to use the full names. 

Source: https://camera-wiki.org/wiki/Carl_Zeiss','2021-02-17 10:33:51','2025-06-10 11:25:03',5000);
INSERT INTO "Makers" VALUES (6,'Zeiss (West Germany)',86,NULL,'https://www.zeiss.com/corporate/int/home.html','Carl Zeiss, Oberkochen, West Germany
aka Opton (brand name in East Germany)','2021-02-17 10:33:51','2021-02-17 10:34:12',100);
INSERT INTO "Makers" VALUES (7,'Yashica - Yashima Seiki Company',114,NULL,NULL,'Late in 1953, Yashima Seiki Company became Yashima Optical Industry Company, Ltd.','2021-02-17 10:33:51','2021-02-17 10:34:12',2000);
INSERT INTO "Makers" VALUES (10,'Minolta',114,'https://www.minoltadigital.com/','https://www.minoltadigital.com/','Mintolta, Made in Japan

Minolta Co., Ltd. (ミノルタ, Minoruta) was a Japanese manufacturer of cameras, lenses, camera accessories, photocopiers, fax machines, and laser printers. Minolta Co., Ltd., which is also known simply as Minolta, was founded in Osaka, Japan, in 1928 as Nichi-Doku Shashinki Shōten (日独写真機商店, meaning Japanese-German camera shop). It made the first integrated autofocus 35 mm SLR camera system. In 1931, the company adopted its final name, an acronym for "Mechanism, Instruments, Optics, and Lenses by Tashima".[1][independent source needed]

In 2003, Minolta merged with Konica to form Konica Minolta. On 19 January 2006, Konica Minolta announced that it was leaving the camera and photo business,[2] and that it would sell a portion of its SLR camera business to Sony as part of its move to pull completely out of the business of selling cameras and photographic film.[3] 

Source: https://en.wikipedia.org/wiki/Minolta','2021-02-17 10:33:51','2025-06-10 11:15:44',10000);
INSERT INTO "Makers" VALUES (11,'Voigtländer',114,NULL,'https://www.voigtlaender.de/?lang=en','aka Cosina Voigtländer

Voigtländer (German pronunciation: [ˈfoːktlɛndɐ]) was a significant long-established company within the optics and photographic industry, headquartered in Braunschweig, Germany,[1] and today continues as a trademark for a range of photographic products.

History
Voigtländer was founded in Vienna, Archduchy of Austria, in 1756, by Johann Christoph Voigtländer [de]. Voigtländer produced mathematical instruments, precision mechanical products, optical instruments, including optical measuring instruments and opera glasses, and is the oldest name in cameras.

Current Status
Since 1999, Voigtländer-branded products have been manufactured and marketed by the Japanese optics and camera company Cosina, under license from Ringfoto GmbH & Co. ALFO Marketing KG; for these, see Cosina Voigtländer. 

Source: https://en.wikipedia.org/wiki/Voigtl%C3%A4nder','2021-02-17 10:33:51','2025-06-10 11:18:10',20);
INSERT INTO "Makers" VALUES (12,'Funleader by Artizlab',102,NULL,'https://myfunleader.com',NULL,'2025-05-22 11:18:40',NULL,10000);
INSERT INTO "Makers" VALUES (13,'FED - Kharkiv Engineering Plant',192,'https://www.fed.com.ua/','https://www.fed.com.ua/','The FED factory in Kharkov in Ukraine was founded as a children''s commune, for children orphaned or displaced by the combined upheavals of the First World War, the Revolution and the subsequent civil war.[1] It was founded in 1926, immediately after the death of Felix E. Dzerzhinsky (founder of the Soviet secret police, the Cheka (ЧК, for чрезвыча́йная коми́ссия or ''emergency commission''), which later became the GPU, part of the NKVD), and named in his honour. Dzerzhinsky had used the power of the secret police to bring about government action to help children, so the naming is not as strange as it may seem.

The Dzerzhinsky commune was set up and directed by educationalist Anton Makarenko, who had previously run the Gorky Colony, also a commune for children, combining education and practical training. Whereas the Gorky Colony had been mostly agricultural, the Dzerzhinsky Commune trained children in skills such as carpentry, sewing, shoemaking and locksmithing. The products were sold, and the children were paid wages. In 1932 a new workshop was opened, making electric drills, the first in the Soviet Union.

Also in 1932, a work unit was set up to plan the production of cameras. The first three examples were made in October of that year, with lenses made by VOOMP in Leningrad, and the feat was reported in the national newspaper Izvestiya, where the cameras were described only as ''Soviet Leicas''. These were copies of the Leica A, with an uncoupled rangefinder only as an accessory. However, Leitz had meanwhile produced the Leica II, with a built-in coupled rangefinder. By the end of 1933, the factory had made only about 30 of its cameras. In 1934, true production began of a Leica II copy, now with lenses made by FED; about 4000 were made in the first year.

Source: https://camera-wiki.org/wiki/FED','2025-06-10 08:18:06',NULL,10001);
INSERT INTO "Makers" VALUES (14,'Elcan - Ernst Leitz Canada',40,'','https://web.archive.org/web/20050319151305/https://www.leica-camera.com/discus_e/messages/2/64789.html?1083882061','Elcan stands for Ernst Leitz Canada. The company, a subsidiary of Leitz, was founded in Midland (Ontario) to serve the North American market and began their own lens development under the renowned German expert Dr. Walter Mandler. It made special military lenses with the ELCAN name, see Leica M lenses and Leicaflex lenses. The company also manufactured the M4-2. It developed the first lens with two aspherical elements, the Noctilux 1:1.2/50mm, and the world''s fastest tele lens Elcan 1:1.0/90mm. Today Elcan belongs to the Raytheon group but still makes some of the best Leica M-mount lenses like the Noctilux 1:1.0/50 mm.
Source: https://camera-wiki.org/wiki/Elcan

Lenses
    Telyt 1:4.8/280 mm
    Summicron 1:2.0/90 mm
    Summicron 1:2.0/35 mm
    Elcan 1:2.0/50 mm (military budget Summicron 1:2.0/50 mm)
    Summilux 1:1.4/35 mm
    Telyt 1:4.8/280 mm
    Elmarit 1:2.8/28 mm for Leica M
    Noctilux 1:1.0/50 mm
    Apo-Telyt-R 1:3.4/180 mm
    Noctilux 1:1.2/50mm
    Telyt 1:4.0/200 mm
    Hektor 1:2.5/125 mm
    Elcan 1:1.0/90 mm
    Elcan 1:4.0/21 mm
    Elcan 1:2.8/16 mm.

Cameras
    Leica IIf
    Leica IIIf
    Leica KE7 (military Leica M4)
    Leica M4-2
    Leica M4-P
    Leica MD-2
    Leica KE7a
    Midland Leica 72 (half-frame)','2025-06-10 09:05:34','2025-06-10 14:34:24',10000);
INSERT INTO "Makers" VALUES (15,'Konica ',114,NULL,'https://en.wikipedia.org/wiki/Konica','
Konica (コニカ, Konika) was a Japanese manufacturer of, among other products, film, film cameras, camera accessories, photographic and photo-processing equipment, photocopiers, fax machines and laser printers, founded in 1873. The company merged with Japanese peer Minolta in 2003, forming Konica Minolta. 

Industry			Manufacturing
Founded			1873
Defunct			5 August 2003
Fate				Merged with Minolta
Successor			Konica Minolta
Headquarters		26-2, Nishishinjuku 1-chome, Shinjuku-ku, Tokyo 163-052 Japan (1998)
Products			Cameras, film cameras, camera accessories, photocopiers, laser printers
Number of employees	17,319 (2002)

Source: https://en.wikipedia.org/wiki/Konica

Lenses with the Hexar RF:
    21mm/35mm f/3.4 / f/4
    28mm f/2.8
    35mm f/2
    50mm f/2
    50mm f/1.2
    90mm f/2.8','2025-06-10 09:12:29',NULL,10000);
INSERT INTO "Makers" VALUES (16,'Rollei',86,NULL,'https://www.rollei.de/','Rollei (German pronunciation: [ˈʁɔlaɪ]) was a German manufacturer of optical instruments founded in 1920 by Paul Franke [de] and Reinhold Heidecke [de] in Braunschweig,[a] Lower Saxony, and maker of the Rolleiflex and Rolleicord series of cameras. Later products included specialty and nostalgic type films for the photo hobbyist market.

Originally named Werkstatt für Feinmechanik und Optik, Franke & Heidecke, the company renamed into Rollei-Werke Franke & Heidecke GmbH in 1972, Rollei-Werke Franke & Heidecke GmbH & Co. KG, in 1979, and Rollei Fototechnic GmbH & Co. KG in 1981.

After being purchased in 1995 by Samsung Techwin,[1] part of the South Korean Samsung Group, it was sold back to its internal management in 1999.[2] In 2002, it was bought by a Danish investment group, and renamed Rollei GmbH in 2004. 

New owners
Hamburg-based RCP-Technik GmbH & Co. KG, which has been selling Rollei-branded consumer products since 2007 under the terms of a Europe-wide licensing agreement, purchased the Rollei brand on 1 January 2010, thereby extending its rights to the brand world-wide.

Rollei''s product portfolio within RCP-Technik included compact digital cameras (Compactline, Flexline, Powerflex, Sportsline), camcorders (Movieline), digital picture frames, slide and photo scanners, as well as tripods (FotoPro).

Rollei''s latest products are currently available in Switzerland, Austria, Italy, France, Portugal, Great Britain, Greece, Sweden, Denmark and the Netherlands. RCP-Technik GmbH established its first subsidiary in Budapest, Hungary on 1 March 2010. Soon thereafter, it opened its second subsidiary in Istanbul, Turkey on 1 April 2010.[34]

On 1 January 2015, RCP-Technik GmbH refirmed as Rollei GmbH & Co. KG.','2025-06-10 09:22:30',NULL,10000);
INSERT INTO "Mount_types" VALUES (1,'1/2" bayonet mount ','37.80 mm ','1/2" (6.97x3.92) ','','','Bayonet ','Video ','Non-Sony professional video cameras ',NULL,'2025-06-10 19:57:36','2025-06-10 19:57:36',10000);
INSERT INTO "Mount_types" VALUES (2,'1/3" bayonet mount ','25 mm ','1/3" (5.24x2.94) ','','','Bayonet ','Video ','JVC professional video cameras ',NULL,'2025-06-10 19:57:36','2025-06-10 19:57:36',10000);
INSERT INTO "Mount_types" VALUES (3,'Aaton universal ','40 mm ','16 mm ','50 mm ','','Breech lock ','Cinematography ','',NULL,'2025-06-10 19:57:36','2025-06-10 19:57:36',10000);
INSERT INTO "Mount_types" VALUES (4,'Adapt-A-Matic ','50.7 mm ','35 mm ','54 mm ','','Bayonet ','Photography ','Tamron ',NULL,'2025-06-10 19:57:36','2025-06-10 19:57:36',10000);
INSERT INTO "Mount_types" VALUES (5,'Adaptall & Adaptall-2 ','50.7 mm ','35 mm ','54 mm ','','Bayonet ','Photography ','Tamron ',NULL,'2025-06-10 19:57:36','2025-06-10 19:57:36',10000);
INSERT INTO "Mount_types" VALUES (6,'Alpa ','37.80 mm ','35 mm ','42 mm ','','Bayonet ','Photography ','',NULL,'2025-06-10 19:57:36','2025-06-10 19:57:36',10000);
INSERT INTO "Mount_types" VALUES (7,'Argus C3 ','40.3 mm ','35 mm ','34 mm ','20 TPI ','Screw ','Photography ','Argus C3 ',NULL,'2025-06-10 19:57:36','2025-06-10 19:57:36',10000);
INSERT INTO "Mount_types" VALUES (8,'Arri bayonet ','52 mm ','35 mm and 16 mm ','64 mm ','','Bayonet ','Cinematography ','',NULL,'2025-06-10 19:57:36','2025-06-10 19:57:36',10000);
INSERT INTO "Mount_types" VALUES (9,'Arri LPL ','44 mm ','Arri LF ','62 mm ','','Breech lock ','Cinematography ','',NULL,'2025-06-10 19:57:36','2025-06-10 19:57:36',10000);
INSERT INTO "Mount_types" VALUES (10,'Arri Maxi PL ','52 mm ','70 mm ','64 mm ','','','Cinematography ','',NULL,'2025-06-10 19:57:36','2025-06-10 19:57:36',10000);
INSERT INTO "Mount_types" VALUES (11,'Arri PL ','52 mm ','35 mm and 16 mm ','54 mm ','','Breech lock ','Cinematography ','',NULL,'2025-06-10 19:57:36','2025-06-10 19:57:36',10000);
INSERT INTO "Mount_types" VALUES (12,'Arri standard ','52 mm ','35 mm and 16 mm ','64 mm ','','Tab lock ','Cinematography ','',NULL,'2025-06-10 19:57:36','2025-06-10 19:57:36',10000);
INSERT INTO "Mount_types" VALUES (13,'B3-mount ','58 mm ','2/3" ','','','Reverse bayonet ','Video ','Ikegami ',NULL,'2025-06-10 19:57:36','2025-06-10 19:57:36',10000);
INSERT INTO "Mount_types" VALUES (14,'B4-mount ','48 mm ','2/3" (9.6x5.4) ','','','Bayonet ','Video ','Professional and broadcast video cameras ',NULL,'2025-06-10 19:57:36','2025-06-10 19:57:36',10000);
INSERT INTO "Mount_types" VALUES (15,'BD Mount ','Unknown ','','M26 ','0.7 mm ','Screw ','Microscope ','Mitutoyo
Olympus BD
Nikon BD ',NULL,'2025-06-10 19:57:36','2025-06-10 19:57:36',10000);
INSERT INTO "Mount_types" VALUES (16,'Bolex Bajonet ','23.22 mm ','16 mm ','','','Breech lock ','Cinematography ','effective focal distance 17.526 mm (0.69 inches) due to beam splitter behind mount flange (accepts C-mount lenses with adapter) ',NULL,'2025-06-10 19:57:36','2025-06-10 19:57:36',10000);
INSERT INTO "Mount_types" VALUES (17,'Bronica ETR ','69 mm ','6×4.5 ','','','Bayonet ','Photography ','',NULL,'2025-06-10 19:57:36','2025-06-10 19:57:36',10000);
INSERT INTO "Mount_types" VALUES (18,'Bronica GS1 ','85 mm ','6×7 ','80.5 mm ','','Bayonet ','Photography ','',NULL,'2025-06-10 19:57:36','2025-06-10 19:57:36',10000);
INSERT INTO "Mount_types" VALUES (19,'Bronica RF ','','6×4.5 ','','','Bayonet ','Photography ','',NULL,'2025-06-10 19:57:36','2025-06-10 19:57:36',10000);
INSERT INTO "Mount_types" VALUES (20,'Bronica SQA ','101.7 mm ','6×6 ','57 mm ','','Bayonet ','Photography ','',NULL,'2025-06-10 19:57:36','2025-06-10 19:57:36',10000);
INSERT INTO "Mount_types" VALUES (21,'C ','17.526 mm (0.69 inches) ','1/2", 16 mm, 2/3", 1" ','25.40 mm (1 inch) ','32 TPI ','Screw ','Cinematography / Industrial / Machine Vision ','',NULL,'2025-06-10 19:57:36','2025-06-10 19:57:36',10000);
INSERT INTO "Mount_types" VALUES (22,'Canon EF ','44.00 mm ','35 mm ','54 mm[6] ','','Bayonet ','Photography ','Canon EOS 35mm film SLR, Full Frame & APS-H DSLR ',NULL,'2025-06-10 19:57:36','2025-06-10 19:57:36',10000);
INSERT INTO "Mount_types" VALUES (23,'Canon EF-M ','18 mm ','APS-C ','47 mm ','','Bayonet ','Photography (Digital) ','Canon EOS M series Mirrorless APS-C Cameras ',NULL,'2025-06-10 19:57:36','2025-06-10 19:57:36',10000);
INSERT INTO "Mount_types" VALUES (24,'Canon EF-S ','44.00 mm ','APS-C ','54 mm ','','Bayonet ','Photography (Digital) ','Canon EOS APS-C DSLR ',NULL,'2025-06-10 19:57:36','2025-06-10 19:57:36',10000);
INSERT INTO "Mount_types" VALUES (25,'Canon EX ','20 mm ','1/2" ','','','Bayonet ','Photography ','',NULL,'2025-06-10 19:57:36','2025-06-10 19:57:36',10000);
INSERT INTO "Mount_types" VALUES (26,'Canon FD ','42 mm ','35 mm ','48 mm ','','Breech lock ','Photography ','Canon F series, A series, and T series SLRs ',NULL,'2025-06-10 19:57:36','2025-06-10 19:57:36',10000);
INSERT INTO "Mount_types" VALUES (27,'Canon FDn (a.k.a. "New FD") ','42 mm ','35 mm ','48 mm ','','Bayonet ','Photography ','completely interchangeable with earlier FD lenses ',NULL,'2025-06-10 19:57:36','2025-06-10 19:57:36',10000);
INSERT INTO "Mount_types" VALUES (28,'Canon FL ','42 mm ','35 mm ','48 mm ','','Breech lock ','Photography ','',NULL,'2025-06-10 19:57:36','2025-06-10 19:57:36',10000);
INSERT INTO "Mount_types" VALUES (29,'Canon RF ','20 mm ','35 mm and APS-C ','54 mm ','','Bayonet ','Photography (Digital) ','Canon EOS R series full-frame and APS-C mirrorless cameras; lenses designated as RF-S are optimized for APS-C sensors, but will mount on full-frame bodies ',NULL,'2025-06-10 19:57:36','2025-06-10 19:57:36',10000);
INSERT INTO "Mount_types" VALUES (30,'Canon SV ','32.00 mm ','','','','Bayonet ','Photography (Digital) ','Canon RC-701 & 760 ',NULL,'2025-06-10 19:57:36','2025-06-10 19:57:36',10000);
INSERT INTO "Mount_types" VALUES (31,'Contax G ','29.00 mm ','35 mm ','44 mm ','','Breech lock ','Photography ','',NULL,'2025-06-10 19:57:36','2025-06-10 19:57:36',10000);
INSERT INTO "Mount_types" VALUES (32,'Contax N ','48 mm ','35 mm ','55 mm ','','Bayonet ','Photography ','',NULL,'2025-06-10 19:57:36','2025-06-10 19:57:36',10000);
INSERT INTO "Mount_types" VALUES (33,'Contax RF ','34.85 mm ','35 mm ','44 mm ','','Double bayonet ','Photography ','Contax I, II, III, IIa, IIIa
Kiev rangefinders ',NULL,'2025-06-10 19:57:36','2025-06-10 19:57:36',10000);
INSERT INTO "Mount_types" VALUES (34,'Contax/Yashica ','45.5 mm ','35 mm ','48 mm ','','Bayonet ','Photography ','Yashica/Contax ',NULL,'2025-06-10 19:57:36','2025-06-10 19:57:36',10000);
INSERT INTO "Mount_types" VALUES (35,'CS ','12.526 mm[10] ','1/3", 1/2" ','25.40 mm (1 inch) ','32 TPI ','Screw ','Cinematography / Industrial ','',NULL,'2025-06-10 19:57:36','2025-06-10 19:57:36',10000);
INSERT INTO "Mount_types" VALUES (36,'D ','12.29 mm ','8 mm ','15.88 mm (0.625 inch) ','32 TPI ','Screw ','Cinematography ','',NULL,'2025-06-10 19:57:36','2025-06-10 19:57:36',10000);
INSERT INTO "Mount_types" VALUES (37,'DJI DL ','16.84 mm[9] ','35 mm and APS-C ','58 mm[9] ','','Bayonet ','Photography (Digital), Cinematography ','For aerial drone and gimbal use; DJI Zenmuse X7, X9 and DJI Ronin 4D X9 cameras. ',NULL,'2025-06-10 19:57:36','2025-06-10 19:57:36',10000);
INSERT INTO "Mount_types" VALUES (38,'Exakta, Topcon RE ','44.7 mm ','35 mm ','46 mm ','','Bayonet ','Photography ','',NULL,'2025-06-10 19:57:36','2025-06-10 19:57:36',10000);
INSERT INTO "Mount_types" VALUES (39,'Four Thirds ','38.67 mm ','17.3 mm × 12.98 mm ','~44 mm[A] ','','Bayonet ','Photography (Digital) ','Olympus E
Panasonic Lumix DMC-L
Leica Digilux ',NULL,'2025-06-10 19:57:36','2025-06-10 19:57:36',10000);
INSERT INTO "Mount_types" VALUES (40,'Fujica X ','43.5 mm ','35 mm ','49 mm ','','Bayonet ','Photography ','Fujica-X ',NULL,'2025-06-10 19:57:36','2025-06-10 19:57:36',10000);
INSERT INTO "Mount_types" VALUES (41,'Fujifilm G ','26.7 mm ','43.8x32.9 mm ','65 mm[14] ','','Bayonet ','Photography (Digital) ','Fujifilm GFX series ',NULL,'2025-06-10 19:57:36','2025-06-10 19:57:36',10000);
INSERT INTO "Mount_types" VALUES (42,'Fujifilm X ','17.7 mm ','APS-C ','44 mm ','','Bayonet ','Photography (Digital) ','Fujifilm X series mirrorless ',NULL,'2025-06-10 19:57:36','2025-06-10 19:57:36',10000);
INSERT INTO "Mount_types" VALUES (43,'H-Mount ','55 mm ','35 mm ','47 mm ','0.75 mm ','Screw ','Photography ','Hanimex (rebranding of Tokina M47) ',NULL,'2025-06-10 19:57:36','2025-06-10 19:57:36',10000);
INSERT INTO "Mount_types" VALUES (44,'Hasselblad ','74.9 mm ','6×6 ','69 mm ','','Bayonet ','Photography ','',NULL,'2025-06-10 19:57:36','2025-06-10 19:57:36',10000);
INSERT INTO "Mount_types" VALUES (45,'Hasselblad Xpan ','34.27 mm ','35 mm panoramic ','46 mm ','','Bayonet ','Photography ','',NULL,'2025-06-10 19:57:36','2025-06-10 19:57:36',10000);
INSERT INTO "Mount_types" VALUES (46,'Icarex BM ','48.00 mm ','35 mm ','','','Breech lock ','Photography ','Icarex 35S ',NULL,'2025-06-10 19:57:36','2025-06-10 19:57:36',10000);
INSERT INTO "Mount_types" VALUES (47,'Kiev-16C ','17.35 mm[5] ','16 mm ','27 mm ','0.75mm ','Screw ','','Kiev-1C 16mm movie camera ',NULL,'2025-06-10 19:57:36','2025-06-10 19:57:36',10000);
INSERT INTO "Mount_types" VALUES (48,'Kiev-16U ','31 mm[5] ','16 mm ','32 mm ','0.5 mm ','Screw ','Cinematography ','Kiev-16U/UE 16mm movie cameras ',NULL,'2025-06-10 19:57:36','2025-06-10 19:57:36',10000);
INSERT INTO "Mount_types" VALUES (49,'Kinor 16SP ','52 mm[1] ','16 mm ','43 mm ','','Breech lock ','Cinematography ','Kinor 16SP, Krasnogorsk-1, -2, -3[2][3] 16mm movie cameras ',NULL,'2025-06-10 19:57:36','2025-06-10 19:57:36',10000);
INSERT INTO "Mount_types" VALUES (50,'Kinor 16SX ','52 mm[4] ','16 mm ','43 mm ','','Breech lock ','Cinematography ','Kinor 16SX-1M,-2M 16mm movie camera ',NULL,'2025-06-10 19:57:36','2025-06-10 19:57:36',10000);
INSERT INTO "Mount_types" VALUES (51,'KM ','28 mm (27.80 mm?) ','35 mm ','44 mm ','','Bayonet ','Photography ','Konica Hexar RF ',NULL,'2025-06-10 19:57:36','2025-06-10 19:57:36',10000);
INSERT INTO "Mount_types" VALUES (52,'Konica AR ','40.50 mm ','35 mm ','47 mm ','','Bayonet ','Photography ','Konica Autoreflex ',NULL,'2025-06-10 19:57:36','2025-06-10 19:57:36',10000);
INSERT INTO "Mount_types" VALUES (53,'Konica F ','40.50 mm ','35 mm ','40 mm ','','Bayonet ','Photography ','Konica F ',NULL,'2025-06-10 19:57:36','2025-06-10 19:57:36',10000);
INSERT INTO "Mount_types" VALUES (54,'Kowa Six/Super 66 ','79 mm ','6×6 ','','','Breech lock ','Photography ','',NULL,'2025-06-10 19:57:36','2025-06-10 19:57:36',10000);
INSERT INTO "Mount_types" VALUES (55,'Leica
Nikon Biological ','Unknown ','','M25 ','0.75 mm ','Screw ','Microscope ','',NULL,'2025-06-10 19:57:36','2025-06-10 19:57:36',10000);
INSERT INTO "Mount_types" VALUES (56,'Leica L ','20 mm ','35 mm and APS-C ','51.6 mm ','','Bayonet ','Photography (Digital) ','L-Mount Alliance (Leica, Panasonic, Sigma, DJI and Blackmagic Design cameras) ','The Leica L-Mount is a bayonet mount developed by Leica Camera AG for interchangeable-lens autofocus digital cameras.

The L-Mount has an inner diameter of 51.6 mm[1] and a flange depth of 20.0 mm.[2] The L-mount exists in two versions, an APS-C version (TL) and a full-frame version (SL). The two versions are mechanically and electronically compatible. TL lenses mounted on full-frame cameras will cause the camera to use a crop mode from the center of the sensor, corresponding to the APS-C coverage of the lens. SL lenses mounted on TL cameras function normally, providing a 1.5x crop field of view, as is typical with APS-C cameras.

In 2018 Leica formed the L-Mount Alliance, licensing Sigma, Panasonic in the same year, to use an upgraded version of the mount for their own products, opening the way for a more extensive system of fully compatible cameras and lenses.[3]

Ernst Leitz Wetzlar GmbH, the cine lens business of Leica, joined the L-Mount Alliance in 2021,[4] DJI followed in 2022,[5] Samyang, Astrodesign,[6] Blackmagic Design in 2023[7] and Sirui in 2025.

Source: https://en.wikipedia.org/wiki/Leica_L-Mount
','2025-06-10 19:57:36','2025-06-10 19:57:36',50);
INSERT INTO "Mount_types" VALUES (57,'Leica M ','27.80 mm ','35 mm ','44 mm ','','Bayonet ','Photography ','Leica M series
Leica CL
Minolta CLE ','The Leica M mount was introduced in 1954 at that year''s Photokina show, with the Leica M3 as its first camera. The ''M'' stands for Messsucher or rangefinder in German. This new camera abandoned the M39 lens mount in favour of a new bayonet mount. The bayonet mount allowed lenses to be changed more quickly and made the fitting more secure. Other innovations introduced by the M3 included a single window for the viewfinder (for composition) and the rangefinder (for focusing). With a double-stroke film advance lever (later models have a single-stroke lever). The M3 was a success and over 220,000 units were sold, by the time production ended in 1966. It remains the best-selling M mount camera ever made. The M3 uses 135 film (or 35 mm film), with the canister being loaded behind a detachable bottom plate. The M3 was followed by many other M mount cameras, released over 40 years, with many of the basic concepts remaining in these designs. With the introduction of the Through-the-lens metering (TTL) in the Leica M5 and the digital Leica M8 being the most notable innovations since then.[2]

The lenses for the M mount were also introduced in 1954 and were based on the earlier M39 thread mount. Almost all M mount lenses are Prime lenses. These lenses are divided by Leica based on their maximum aperture number (also known as f-number). They are distinguished by their names:
Name 			f-number
Noctilux 		f/0.95 or f/1.0 or f/1.2 or f/1.25
Summilux 		f/1.4
Summicron 		f/2
Summarit 		f/2.4 or f/2.5
Elmarit 		f/2.8
Elmar, Super Elmar 	f/2.8 or f/3.4 or f/3.8 or f/4
Summaron 		f/3.5 or f/5.6
Hektor 		f/4.5

Source: https://en.wikipedia.org/wiki/Leica_M_mount','2025-06-10 19:57:36','2025-06-10 19:57:36',10);
INSERT INTO "Mount_types" VALUES (58,'Leica R ','47.00 mm ','35 mm ','49 mm ','','Bayonet ','Photography ','','The Leica R bayonet mount is a camera lens mount system introduced by Leitz in 1964. The R mount is the standard method of connecting a lens to the Leica R series of 35 mm single-lens reflex cameras. The mount is descended from those used for the Leicaflex, Leicaflex SL and Leicaflex SL2 SLR cameras, but differs in the cams used to communicate lens aperture information to the camera. 3 cam lenses are compatible with all of the Leica SLR cameras, while R-only lenses have a slightly different mount shape that will not fit on the earlier cameras.[1][2]

The flange focal distance between mount and film is 47 mm.[3]

On 5 March 2009, Leica announced plans to cease production of its R-Series manual focus SLR and lenses.

Source: https://en.wikipedia.org/wiki/Leica_R_bayonet','2025-06-10 19:57:36','2025-06-10 19:57:36',100);
INSERT INTO "Mount_types" VALUES (59,'Leitz Visoflex I ','91.3 mm ','35 mm ','M39 ','26 TPI ','Screw ','Photography ','',NULL,'2025-06-10 19:57:36','2025-06-10 19:57:36',10000);
INSERT INTO "Mount_types" VALUES (60,'Leitz Visoflex II/III ','67.8 mm ','35 mm ','44 mm ','','Bayonet (Leica M) ','Photography ','',NULL,'2025-06-10 19:57:36','2025-06-10 19:57:36',10000);
INSERT INTO "Mount_types" VALUES (61,'M37 ','45.46 mm ','35 mm ','37 mm ','1 mm ','Screw ','Photography ','Asahiflex ',NULL,'2025-06-10 19:57:36','2025-06-10 19:57:36',10000);
INSERT INTO "Mount_types" VALUES (62,'M39 (a.k.a. LTM) ','28.80 mm ','35 mm ','M39 ','26 TPI ','Screw ','Photography ','Leica M39 screw mount ','The M39 lens mount is a screw thread mounting system for attaching lenses to 35 mm cameras, primarily rangefinder (RF) Leicas. It is also the most common mount for Photographic enlarger lenses.

True Leica Thread-Mount (LTM) is 39 mm in diameter and has a thread of 26 turns-per-inch or threads-per-inch (tpi) (approximately 0.977 mm pitch) of Whitworth thread form. Whitworth threads were then the norm in microscope manufacture. The Royal Microscopical Society (RMS) thread, also known as society thread, is a special 0.8" diameter x 36 tpi Whitworth thread used for microscope objective lenses and Leitz was a major manufacturer of microscopes, so the tooling at the plant was already set up to produce the Whitworth thread form. The Soviets in the 1930s produced their early FED cameras in M39×1 (39 mm by 1 mm DIN thread). Early Canon cameras also used a different M39 × 24 tpi thread mount, called "J-mount". 

Source: https://en.wikipedia.org/wiki/M39_lens_mount
','2025-06-10 19:57:36','2025-06-10 19:57:36',150);
INSERT INTO "Mount_types" VALUES (63,'M42 ','45.46 mm ','35 mm ','42 mm ','1 mm ','Screw ','Photography ','Praktica, Pentax, Zenit ','The M42 lens mount is a screw thread mounting standard for attaching lenses to 35 mm cameras, primarily single-lens reflex models. It is more accurately known as the M42 × 1 mm standard, which means that it is a metric screw thread of 42 mm diameter and 1 mm thread pitch. (The M42 lens mount should not be confused with the T-mount, which shares the 42 mm throat diameter, but differs by having a 0.75 mm thread pitch.)

It was first used by the East German brands VEB Zeiss Ikon in the Contax S of 1949, and KW in the Praktica of the same year. VEB Zeiss Ikon and KW were merged into the Pentacon brand in 1959, along with several other East German camera makers.

M42 thread mount cameras first became well known under the Praktica brand, and thus the M42 mount is known as the Praktica thread mount.[1] Since there were no proprietary elements to the M42 mount, many other manufacturers used it; this has led to it being called the Universal thread mount or Universal screw mount by many. The M42 mount was also used by Pentax; thus, it is also commonly known as the Pentax thread mount, despite the fact that Pentax did not originate it. 

Source: https://en.wikipedia.org/wiki/M42_lens_mount','2025-06-10 19:57:36','2025-06-10 19:57:36',500);
INSERT INTO "Mount_types" VALUES (64,'Mamiya 6 ','56.2 mm (approx.)[12] ','6×6 ','','','Bayonet ','Photography ','',NULL,'2025-06-10 19:57:36','2025-06-10 19:57:36',10000);
INSERT INTO "Mount_types" VALUES (65,'Mamiya 645 ','63.3 mm ','6×4.5 ','62 mm ','','Bayonet ','Photography ','',NULL,'2025-06-10 19:57:36','2025-06-10 19:57:36',10000);
INSERT INTO "Mount_types" VALUES (66,'Mamiya 7/7II ','59 mm (approx.) ','6×7 ','49 mm[13] ','','Bayonet ','Photography ','',NULL,'2025-06-10 19:57:36','2025-06-10 19:57:36',10000);
INSERT INTO "Mount_types" VALUES (67,'Mamiya RB67 ','112 mm ','6×7 ','60 mm ','','Bayonet ','Photography ','',NULL,'2025-06-10 19:57:36','2025-06-10 19:57:36',10000);
INSERT INTO "Mount_types" VALUES (68,'Mamiya RZ67 ','105 mm ','6×7 ','60 mm ','','Bayonet ','Photography ','',NULL,'2025-06-10 19:57:36','2025-06-10 19:57:36',10000);
INSERT INTO "Mount_types" VALUES (69,'Mamiya ZE ','45.5 mm ','35 mm ','','','Bayonet ','Photography ','',NULL,'2025-06-10 19:57:36','2025-06-10 19:57:36',10000);
INSERT INTO "Mount_types" VALUES (70,'Mamiya/Sekor E ','43.5 mm ','35 mm ','49 mm ','','Bayonet ','Photography ','',NULL,'2025-06-10 19:57:36','2025-06-10 19:57:36',10000);
INSERT INTO "Mount_types" VALUES (71,'Micro Four Thirds ','19.25 mm ','17.3 mm × 12.98 mm ','~38 mm[A] ','','Bayonet ','Photography (Digital) ','Olympus Pen & OM-D series
Panasonic G, GF, GX & GH Series
Blackmagic Design Cinema Camera ',NULL,'2025-06-10 19:57:36','2025-06-10 19:57:36',10000);
INSERT INTO "Mount_types" VALUES (72,'Minolta A ','44.50 mm ','35 mm and APS-C ','49.7 mm (1.939 inch) ','','Bayonet (54°) ','Photography ','Minolta DSLR AF/Alpha/Dynax/Maxxum
Sony DSLR Alpha (α) A Mount ',NULL,'2025-06-10 19:57:36','2025-06-10 19:57:36',10000);
INSERT INTO "Mount_types" VALUES (73,'Minolta SR ','43.50 mm ','35 mm ','44.97 mm ','','Bayonet (54°) ','Photography ','Minolta SR/MC/MD ',NULL,'2025-06-10 19:57:36','2025-06-10 19:57:36',10000);
INSERT INTO "Mount_types" VALUES (74,'Minolta V ','38.00 mm ','APS-H ','39.7 mm ','','Bayonet ','Photography ','Minolta Vectis ',NULL,'2025-06-10 19:57:36','2025-06-10 19:57:36',10000);
INSERT INTO "Mount_types" VALUES (75,'Miranda bayonet/M44 ','41.5 mm ','35 mm and APS-C ','','','Bayonet ','Photography ','Miranda Camera Company ',NULL,'2025-06-10 19:57:36','2025-06-10 19:57:36',10000);
INSERT INTO "Mount_types" VALUES (76,'Mitchell BNCR ','61.468 mm ','35 mm ','68 mm ','','Breech lock ','Cinematography ','',NULL,'2025-06-10 19:57:36','2025-06-10 19:57:36',10000);
INSERT INTO "Mount_types" VALUES (77,'Narciss ','28.8 mm ','16 mm ','M24 ','1 mm ','Screw ','Photography ','',NULL,'2025-06-10 19:57:36','2025-06-10 19:57:36',10000);
INSERT INTO "Mount_types" VALUES (78,'Nikon 1 ','17 mm ','13.2 x 8.8mm ','40 mm ','','Bayonet ','Photography (Digital) ','Nikon 1 series ',NULL,'2025-06-10 19:57:36','2025-06-10 19:57:36',10000);
INSERT INTO "Mount_types" VALUES (79,'Nikon F ','46.5 mm ','35 mm ','44 mm[8] ','','Bayonet ','Photography ','Nikon F 35mm film SLR, Full Frame & APS-C DSLR ',NULL,'2025-06-10 19:57:36','2025-06-10 19:57:36',10000);
INSERT INTO "Mount_types" VALUES (80,'Nikon S ','34.85 mm ','35 mm ','34 mm[7] ','','Bayonet ','Photography ','Nikon Rangefinder ',NULL,'2025-06-10 19:57:36','2025-06-10 19:57:36',10000);
INSERT INTO "Mount_types" VALUES (81,'Nikon Z ','16 mm ','35 mm ','55 mm ','','Bayonet ','Photography (Digital) ','Nikon Z - Mirrorless Full Frame & APS-C ',NULL,'2025-06-10 19:57:36','2025-06-10 19:57:36',10000);
INSERT INTO "Mount_types" VALUES (82,'Olympus OM ','46 mm ','35 mm ','46 mm ','','Bayonet ','Photography ','',NULL,'2025-06-10 19:57:36','2025-06-10 19:57:36',10000);
INSERT INTO "Mount_types" VALUES (83,'Olympus Pen F ','28.95 mm ','35 mm half-frame ','','','Bayonet ','Photography ','',NULL,'2025-06-10 19:57:36','2025-06-10 19:57:36',10000);
INSERT INTO "Mount_types" VALUES (84,'OST/OCT-19 ','68 mm[4] ','35 mm ','61 mm ','','Breech lock ','Cinematography ','Konvas-2M, Kinor-35H 35mm movie cameras ',NULL,'2025-06-10 19:57:36','2025-06-10 19:57:36',10000);
INSERT INTO "Mount_types" VALUES (85,'Panavision PV ','57.15 mm ','35 mm ','49.5 mm ','','Breech lock ','Cinematography ','',NULL,'2025-06-10 19:57:36','2025-06-10 19:57:36',10000);
INSERT INTO "Mount_types" VALUES (86,'Paxette ','44 mm ','35 mm ','M39 ','1 mm ','Screw ','Photography ','',NULL,'2025-06-10 19:57:36','2025-06-10 19:57:36',10000);
INSERT INTO "Mount_types" VALUES (87,'Pentacon Six ','74.1 mm ','6×6 ','60 mm ','','Breech lock ','Photography ','',NULL,'2025-06-10 19:57:36','2025-06-10 19:57:36',10000);
INSERT INTO "Mount_types" VALUES (88,'Pentax 645 ','70.87 mm ','6×4.5 ','61.2 mm ','','Bayonet ','Photography ','',NULL,'2025-06-10 19:57:36','2025-06-10 19:57:36',10000);
INSERT INTO "Mount_types" VALUES (89,'Pentax 6x7 ','84.95 mm ','6×7 ','72 mm ','','Bayonet ','Photography ','',NULL,'2025-06-10 19:57:36','2025-06-10 19:57:36',10000);
INSERT INTO "Mount_types" VALUES (90,'Pentax Auto 110 ','27 mm ','110 film ','19.5 mm ','','Bayonet ','Photography ','Pentax Auto 110 and Auto 110 Super ',NULL,'2025-06-10 19:57:36','2025-06-10 19:57:36',10000);
INSERT INTO "Mount_types" VALUES (91,'Pentax Auto 110 ','27 mm[16] ','110 Film ','20.6 mm[17] ','','Bayonet ','Photography ','Auto 110 ',NULL,'2025-06-10 19:57:36','2025-06-10 19:57:36',10000);
INSERT INTO "Mount_types" VALUES (92,'Pentax K ','45.46 mm ','35 mm and APS-C ','44 mm ','','Bayonet ','Photography ','Used also by Ricoh, Chinon, Agfa, Vivitar and KMZ Zenit cameras ',NULL,'2025-06-10 19:57:36','2025-06-10 19:57:36',10000);
INSERT INTO "Mount_types" VALUES (93,'Pentax Q ','9.2 mm ','1/2.3", 1/1.7" ','31 mm ','','Bayonet ','Photography (Digital) ','',NULL,'2025-06-10 19:57:36','2025-06-10 19:57:36',10000);
INSERT INTO "Mount_types" VALUES (94,'Petriflex ','43.5 mm ','35 mm ','','','Breech lock ','Photography ','',NULL,'2025-06-10 19:57:36','2025-06-10 19:57:36',10000);
INSERT INTO "Mount_types" VALUES (95,'Praktica ','44.40 mm ','35 mm ','42 mm ','','Bayonet ','Photography ','',NULL,'2025-06-10 19:57:36','2025-06-10 19:57:36',10000);
INSERT INTO "Mount_types" VALUES (96,'Praktiflex ','44 mm ','35 mm ','M40 ','1 mm ','Screw ','Photography ','',NULL,'2025-06-10 19:57:36','2025-06-10 19:57:36',10000);
INSERT INTO "Mount_types" VALUES (97,'Praktina ','50 mm ','35 mm ','46 mm ','','Breech lock ','Photography ','',NULL,'2025-06-10 19:57:36','2025-06-10 19:57:36',10000);
INSERT INTO "Mount_types" VALUES (98,'RMS thread, society thread ','150/180 mm ','','0.8", Whitworth ','36 tpi ','Screw ','Microscope ','older microscopes ',NULL,'2025-06-10 19:57:36','2025-06-10 19:57:36',10000);
INSERT INTO "Mount_types" VALUES (99,'Rolleiflex SL35 ','44.46 mm ','35 mm ','46 mm ','','Bayonet ','Photography ','',NULL,'2025-06-10 19:57:36','2025-06-10 19:57:36',10000);
INSERT INTO "Mount_types" VALUES (100,'Rolleiflex SL66 ','102.8 mm ','6×6 ','','','Bayonet ','Photography ','',NULL,'2025-06-10 19:57:36','2025-06-10 19:57:36',10000);
INSERT INTO "Mount_types" VALUES (101,'S (a.k.a. M12) ','N/A. Screw mount must be adjusted manually for back focus. Back focal distance from <1mm to 12mm. ','1/6" to 1" ','12 mm ','0.5 mm pitch ','Screw ','CCTV, PCB ','Edmund Optics μ-Video ',NULL,'2025-06-10 19:57:36','2025-06-10 19:57:36',10000);
INSERT INTO "Mount_types" VALUES (102,'Samsung Kenox ','44.5 mm ','35 mm ','','','Bayonet ','Photography ','Manual focus only; there is only one compatible camera - Samsung Kenox GX-1/Samsung SR4000. ',NULL,'2025-06-10 19:57:36','2025-06-10 19:57:36',10000);
INSERT INTO "Mount_types" VALUES (103,'Samsung NX ','25.5 mm ','APS-C ','42 mm ','','Bayonet ','Photography (Digital) ','',NULL,'2025-06-10 19:57:36','2025-06-10 19:57:36',10000);
INSERT INTO "Mount_types" VALUES (104,'Samsung NX mini ','6.95 mm ','1" ','38 mm ','','Bayonet ','photography (Digital) ','',NULL,'2025-06-10 19:57:36','2025-06-10 19:57:36',10000);
INSERT INTO "Mount_types" VALUES (105,'Sigma SA ','44.00 mm ','35 mm ','44 mm ','','Bayonet ','Photography ','Sigma SA ',NULL,'2025-06-10 19:57:36','2025-06-10 19:57:36',10000);
INSERT INTO "Mount_types" VALUES (106,'Sony 1/2" Video ','38 mm ','1/2" (6.97x3.92) ','','','Bayonet ','Video ','Sony professional video cameras ',NULL,'2025-06-10 19:57:36','2025-06-10 19:57:36',10000);
INSERT INTO "Mount_types" VALUES (107,'Sony E | FE ','18 mm ','35 mm and APS-C ','46.1 mm (1.815 inch) ','','Bayonet ','Photography (Digital) ','Sony E/FE Mount Alpha Mirrorless Full Frame / APS-C| Sony NEX Mirrorless APS-C ',NULL,'2025-06-10 19:57:36','2025-06-10 19:57:36',10000);
INSERT INTO "Mount_types" VALUES (108,'Sony Mavica ','57 mm ','','','','Bayonet ','Photography (Digital) ','',NULL,'2025-06-10 19:57:36','2025-06-10 19:57:36',10000);
INSERT INTO "Mount_types" VALUES (109,'T ','55 mm ','35 mm ','42 mm ','0.75 mm ','Screw ','Photography ','Tamron ',NULL,'2025-06-10 19:57:36','2025-06-10 19:57:36',10000);
INSERT INTO "Mount_types" VALUES (110,'T-thread ','55 mm ','35 mm ','47 mm ','0.75 mm ','Screw ','Photography ','Tokina ',NULL,'2025-06-10 19:57:36','2025-06-10 19:57:36',10000);
INSERT INTO "Mount_types" VALUES (111,'T-Thread (Very earliest type) ','50.7 mm ','35 mm ','M37 ','0.75mm ','Screw ','Photography ','Tamron ',NULL,'2025-06-10 19:57:36','2025-06-10 19:57:36',10000);
INSERT INTO "Mount_types" VALUES (112,'TFL II[15] ','17.526 mm ','35 mm ','M48 ','0.75 mm ','Screw ','Machine Vision ','',NULL,'2025-06-10 19:57:36','2025-06-10 19:57:36',10000);
INSERT INTO "Mount_types" VALUES (113,'TFL[15] ','17.526 mm ','28 mm ','M35 ','0.75 mm ','Screw ','Machine Vision ','',NULL,'2025-06-10 19:57:36','2025-06-10 19:57:36',10000);
INSERT INTO "Mount_types" VALUES (114,'Yashica MA ','~45.8 mm ','35 mm ','','','Bayonet ','Photography ','Kyocera Yashica 230 AF etc. ',NULL,'2025-06-10 19:57:36','2025-06-10 19:57:36',10000);
INSERT INTO "Mount_types" VALUES (115,'YS Auto T-Thread ','55 mm ','35 mm ','42 mm ','0.75 mm ','Screw ','Photography ','Sigma Corporation ',NULL,'2025-06-10 19:57:36','2025-06-10 19:57:36',10000);
INSERT INTO "Mount_types" VALUES (116,'Zeiss ','Unknown ','','M27 ','0.75 mm ','Screw ','Microscope ','',NULL,'2025-06-10 19:57:36','2025-06-10 19:57:36',10000);
INSERT INTO "Mount_types" VALUES (117,'Zeiss Panflex 5522/23 for Contax RF ','64.50 mm ','35 mm ','','','Double bayonet ','Photography ','',NULL,'2025-06-10 19:57:36','2025-06-10 19:57:36',10000);
INSERT INTO "Mount_types" VALUES (118,'Zenit M39 ','45.2 mm ','35 mm ','M39 ','1 mm ','Screw ','Photography ','',NULL,'2025-06-10 19:57:36','2025-06-10 19:57:36',10000);
INSERT INTO "Mounts" VALUES (1,'M',2,'The Leica M mount is a camera lens mount introduced in 1954 with the Leica M3, and a range of lenses. It has been used on all the Leica M-series cameras and certain accessories (e.g. Visoflex reflex viewing attachment) up to the current film Leica M-A and digital Leica M10 (P, R, D, ...) cameras. (Source: Wikipedia)','2021-01-30 00:00:00','2021-01-30 00:00:00',1);
INSERT INTO "Mounts" VALUES (2,'M42',0,'The M42 lens mount is a screw thread mounting standard for attaching lenses to 35 mm cameras, primarily single-lens reflex models. It is more accurately known as the M42 × 1 mm standard, which means that it is a metric screw thread of 42 mm diameter and 1 mm thread pitch. (The M42 lens mount should not be confused with the T-mount, which shares the 42mm throat diameter, but differs by having a 0.75mm thread pitch.)

The M42 mount was first developed by Carl Zeiss at their Jena plant in 1938 at the request of the KW camera company for their Praktica line, which had previously used M40 (40 mm by 1 mm DIN). 

It was first used by the East German brands VEB Zeiss Ikon in the Contax S of 1949, and KW in the Praktica of the same year. VEB Zeiss Ikon and KW were merged into the Pentacon brand in 1959, along with several other East German camera makers.','2021-01-30 00:00:00','2021-01-30 00:00:00',10000);
INSERT INTO "Mounts" VALUES (3,'LTM',2,'True Leica Thread-Mount (LTM) is 39 mm in diameter and has a thread of 26 turns-per-inch or threads-per-inch (tpi) (approximately 0.977 mm pitch) of Whitworth thread form.

The mount was developed by Oskar Barnack at Leica to provide a system that would allow for the exchange of lenses on their new small film cameras (Leica Type 1 and Leica Type 2), as Zeiss Ikon had indicated that their forthcoming Contax rangefinder cameras would have interchangeable lenses. The LTM system was tested at the request of Leitz on lenses manufactured in small batches by Hugo Meyer in Germany and marketed with a run of Leitz cameras by A. O. Roth in London. The test marketing program was a success, so regular production with Leitz camera bodies and lenses was introduced on the Leica II, and featured on the Leica Standard and Leica III. (Source: Wikipedia)','2021-01-30 00:00:00','2021-01-30 00:00:00',20);
INSERT INTO "Mounts" VALUES (4,'R (Leica)',2,'The Leica R bayonet mount is a camera lens mount system introduced by Leitz in 1964. The R mount is the standard method of connecting a lens to the Leica R series of 35 mm single-lens reflex cameras. The mount is descended from those used for the Leicaflex, Leicaflex SL and Leicaflex SL2 SLR cameras, but differs in the cams used to communicate lens aperture information to the camera. 3 cam lenses are compatible with all of the Leica SLR cameras, while R-only lenses have a slightly different mount shape that will not fit on the earlier cameras. The flange focal distance between mount and film is 47 mm. 
On 5 March 2009, Leica announced plans to cease production of its R-Series manual focus SLR and lenses. (Source: Wikipedia)','2021-02-16 18:59:44','2021-02-16 19:04:00',30);
INSERT INTO "Mounts" VALUES (5,'L-Mount',2,'The Leica L-Mount is a bayonet mount developed by Leica Camera AG for interchangeable-lens autofocus digital cameras.

The L-Mount has an inner diameter of 51.6 mm and a flange depth of 20.0 mm. The L-mount exists in two versions, an APS-C version (TL) and a full-frame version (SL). The two versions are mechanically and electronically compatible. TL lenses mounted on full-frame cameras will cause the camera to use a crop mode from the center of the sensor, corresponding to the APS-C coverage of the lens. SL lenses mounted on TL cameras function normally, providing a 1.5x crop field of view, as is typical with APS-C cameras.

In 2018 Leica formed the L-Mount Alliance, licensing Sigma and Panasonic to use an upgraded version of the mount for their own products, opening the way for a more extensive system of fully compatible cameras and lenses.
Source: Wikipedia','2021-02-16 19:03:25','2021-02-16 19:33:12',5001);
INSERT INTO "R_lens_spec_t" VALUES (0,'',99999);
INSERT INTO "R_lens_spec_t" VALUES (1,'Single Cam',10000);
INSERT INTO "R_lens_spec_t" VALUES (2,'Twin Cam',10000);
INSERT INTO "R_lens_spec_t" VALUES (3,'Triple Cam',10000);
INSERT INTO "R_lens_spec_t" VALUES (4,'ROM',10000);
INSERT INTO "Serial_numbers" VALUES (1,22,'-4108622','4108934-','Super-Elmar-M ASPH f= 21mm 1:3.4 ','2011','313+ ',NULL,'2021-02-09 15:34:52','2021-02-09 15:34:52');
INSERT INTO "Serial_numbers" VALUES (2,22,'-4121216','unknown','Super-Elmar-M ASPH f= 21mm 1:3.4 ','2012','unknown ',NULL,'2021-02-09 15:36:00','2021-02-09 15:36:00');
INSERT INTO "Serial_numbers" VALUES (3,22,'-unknown','4230826~ ','Super-Elmar-M ASPH f= 21mm 1:3.4 ','2013','unknown ',NULL,'2021-02-09 15:36:00','2021-02-09 15:36:00');
INSERT INTO "Serial_numbers" VALUES (4,19,'-4077785','4089272-','Super-Elmar-M f= 18mm 1:3.8 ','2009','11,488+ ',NULL,'2021-02-09 15:36:00','2021-02-09 15:36:00');
INSERT INTO "Serial_numbers" VALUES (5,19,'-4112585','4140675- ','Super-Elmar-M f= 18mm 1:3.8 ','2011-2012','unknown ',NULL,'2021-02-09 15:36:00','2021-02-09 15:36:00');
INSERT INTO "Serial_numbers" VALUES (6,19,'-unknown','4209285~ ','Super-Elmar-M f= 18mm 1:3.8 ','2013-2015','unknown ',NULL,'2021-02-09 15:36:00','2021-02-09 15:36:00');
INSERT INTO "Serial_numbers" VALUES (7,18,'-3995104','4061739-','16mm-18mm-21mm f/4 ASPH Tri-Elmar-M ','2006-2010','66,636+ ',NULL,'2021-02-09 15:36:00','2021-02-09 15:36:00');
INSERT INTO "Serial_numbers" VALUES (8,17,'-4083319','unknown-','Summilux-M f= 21mm 1:1.4 ','2008-2010','unknown ',NULL,'2021-02-09 15:36:00','2021-02-09 15:36:00');
INSERT INTO "Serial_numbers" VALUES (9,17,'~ 4188538','~ 4257612','Summilux-M f= 21mm 1:1.4 ','2011-2013','69,075+ ',NULL,'2021-02-09 15:36:00','2021-02-09 15:36:00');
INSERT INTO "Serial_numbers" VALUES (10,16,'3780530','3781029','21mm f/2.8 ASPH Elmarit-M ','1997','500',NULL,'2021-02-09 15:36:00','2021-02-09 15:36:00');
INSERT INTO "Serial_numbers" VALUES (11,16,'3786860','3787359','21mm f/2.8 ASPH Elmarit-M (black+silver)','1997','500',NULL,'2021-02-09 15:36:00','2021-02-09 15:36:00');
INSERT INTO "Serial_numbers" VALUES (12,16,'3796510','3797509','21mm f/2.8 ASPH Elmarit-M ','1997','1000',NULL,'2021-02-09 15:36:00','2021-02-09 15:36:00');
INSERT INTO "Serial_numbers" VALUES (13,16,'3822625','3823624','21mm f/2.8 ASPH Elmarit-M (silver)','1998','1000',NULL,'2021-02-09 15:36:00','2021-02-09 15:36:00');
INSERT INTO "Serial_numbers" VALUES (14,16,'3846000','3846499','21mm f/2.8 ASPH Elmarit-M ','1998','500',NULL,'2021-02-09 15:36:00','2021-02-09 15:36:00');
INSERT INTO "Serial_numbers" VALUES (15,16,'3848500 ^','3849499','21mm f/2.8 ASPH Elmarit-M (black+silver) ','1998','1000 ~3849445 ',NULL,'2021-02-09 15:36:00','2021-02-09 15:36:00');
INSERT INTO "Serial_numbers" VALUES (16,16,'3885207','3886206','21mm f/2.8 ASPH Elmarit-M (silver)','2000','1000',NULL,'2021-02-09 15:36:00','2021-02-09 15:36:00');
INSERT INTO "Serial_numbers" VALUES (17,16,'3924921','3925420','21mm f/2.8 ASPH Elmarit-M (black+silver)','2001','500',NULL,'2021-02-09 15:36:00','2021-02-09 15:36:00');
INSERT INTO "Serial_numbers" VALUES (18,16,'3946864','3947863','21mm f/2.8 ASPH Elmarit-M (black+silver)','2002','1000 ~3947004 ',NULL,'2021-02-09 15:36:00','2021-02-09 15:36:00');
INSERT INTO "Serial_numbers" VALUES (19,16,'3991119','3991368','21mm f/2.8 ASPH Elmarit-M ','2005','250',NULL,'2021-02-09 15:36:00','2021-02-09 15:36:00');
INSERT INTO "Serial_numbers" VALUES (20,16,'-4005115','4038722-','21mm f/2.8 ASPH Elmarit-M (black)','2006-2009 ','33,608+ ',NULL,'2021-02-09 15:36:00','2021-02-09 15:36:00');
INSERT INTO "Serial_numbers" VALUES (21,16,'-4068052','4068193-','21mm f/2.8 ASPH Elmarit-M (black)','2010','unknown ',NULL,'2021-02-09 15:36:00','2021-02-09 15:36:00');
INSERT INTO "Serial_numbers" VALUES (22,39,'3636101','3637100','35mm f/1.4 ASPH Summilux-M (black)','1993','1000',NULL,'2021-02-09 15:36:00','2021-02-09 15:36:00');
INSERT INTO "Serial_numbers" VALUES (23,39,'3659331','3660330','35mm f/1.4 ASPH Summilux-M (black)','1994','1000',NULL,'2021-02-09 15:36:00','2021-02-09 15:36:00');
INSERT INTO "Serial_numbers" VALUES (24,39,'3670031','3671030','35mm f/1.4 ASPH Summilux-M (black)','1995','1000',NULL,'2021-02-09 15:36:00','2021-02-09 15:36:00');
INSERT INTO "Serial_numbers" VALUES (25,39,'3704803','3705802','35mm f/1.4 ASPH Summilux-M (black)','1995','1000',NULL,'2021-02-09 15:36:00','2021-02-09 15:36:00');
INSERT INTO "Serial_numbers" VALUES (26,39,'3710003','3711002','35mm f/1.4 ASPH Summilux-M (titan)','1995','1000',NULL,'2021-02-09 15:36:00','2021-02-09 15:36:00');
INSERT INTO "Serial_numbers" VALUES (27,39,'3730291','3731290','35mm f/1.4 ASPH Summilux-M (silver)','1996','1000',NULL,'2021-02-09 15:36:00','2021-02-09 15:36:00');
INSERT INTO "Serial_numbers" VALUES (28,39,'3741589','3742588','35mm f/1.4 ASPH Summilux-M (black+silver)','1996','1000',NULL,'2021-02-09 15:36:00','2021-02-09 15:36:00');
INSERT INTO "Serial_numbers" VALUES (29,39,'3748119','3749118','35mm f/1.4 ASPH Summilux-M (titan+silver)','1996','1000',NULL,'2021-02-09 15:36:00','2021-02-09 15:36:00');
INSERT INTO "Serial_numbers" VALUES (30,39,'3750000','3750125','35mm f/1.4 ASPH Summilux-M . M6 ','1996','126',NULL,'2021-02-09 15:36:00','2021-02-09 15:36:00');
INSERT INTO "Serial_numbers" VALUES (31,39,'3751000','3751125','35mm f/1.4 ASPH Summilux-M . M6 ','1996','126',NULL,'2021-02-09 15:36:00','2021-02-09 15:36:00');
INSERT INTO "Serial_numbers" VALUES (32,39,'3752000','3752125','35mm f/1.4 ASPH Summilux-M . M6 ','1996','126',NULL,'2021-02-09 15:36:00','2021-02-09 15:36:00');
INSERT INTO "Serial_numbers" VALUES (33,39,'3753000','3753125','35mm f/1.4 ASPH Summilux-M . M6 ','1996','126',NULL,'2021-02-09 15:36:00','2021-02-09 15:36:00');
INSERT INTO "Serial_numbers" VALUES (34,39,'3758000','3758999','35mm f/1.4 ASPH Summilux-M "Ein Stuck"','1996','1000',NULL,'2021-02-09 15:36:00','2021-02-09 15:36:00');
INSERT INTO "Serial_numbers" VALUES (35,39,'3795010','3796009','35mm f/1.4 ASPH Summilux-M (black)','1997','1000',NULL,'2021-02-09 15:36:00','2021-02-09 15:36:00');
INSERT INTO "Serial_numbers" VALUES (36,39,'3810860','3811859','35mm f/1.4 ASPH Summilux-M (black)','1997','1000 ~3811132 ',NULL,'2021-02-09 15:36:00','2021-02-09 15:36:00');
INSERT INTO "Serial_numbers" VALUES (37,39,'3859127','3860126','35mm f/1.4 ASPH Summilux-M (silver+black)','1999','1000',NULL,'2021-02-09 15:36:00','2021-02-09 15:36:00');
INSERT INTO "Serial_numbers" VALUES (38,39,'3888707','3889706','35mm f/1.4 ASPH Summilux-M ','2000','1000',NULL,'2021-02-09 15:36:00','2021-02-09 15:36:00');
INSERT INTO "Serial_numbers" VALUES (39,39,'3905626','3906625','35mm f/1.4 ASPH Summilux-M (black)','2000','1000',NULL,'2021-02-09 15:36:00','2021-02-09 15:36:00');
INSERT INTO "Serial_numbers" VALUES (40,39,'3921101','3922100','35mm f/1.4 ASPH Summilux-M (silver)','2001','1000',NULL,'2021-02-09 15:36:00','2021-02-09 15:36:00');
INSERT INTO "Serial_numbers" VALUES (41,39,'3936764','3937763','35mm f/1.4 ASPH Summilux-M (black)','2002','1000',NULL,'2021-02-09 15:36:00','2021-02-09 15:36:00');
INSERT INTO "Serial_numbers" VALUES (42,39,'3961511','3962510','35mm f/1.4 ASPH Summilux-M (silver+black)','2003','1000',NULL,'2021-02-09 15:36:00','2021-02-09 15:36:00');
INSERT INTO "Serial_numbers" VALUES (43,39,'3976589','3977088','35mm f/1.4 ASPH Summilux-M ','2004','500',NULL,'2021-02-09 15:36:00','2021-02-09 15:36:00');
INSERT INTO "Serial_numbers" VALUES (44,39,'3986844','3987143','35mm f/1.4 ASPH Summilux-M ','2005','300',NULL,'2021-02-09 15:36:00','2021-02-09 15:36:00');
INSERT INTO "Serial_numbers" VALUES (45,39,'3987144','3987243','35mm f/1.4 ASPH Summilux-M','2005','100',NULL,'2021-02-09 15:36:00','2021-02-09 15:36:00');
INSERT INTO "Serial_numbers" VALUES (46,39,'-3992145','4006677- ','35mm f/1.4 ASPH Summilux-M (black)','2006','14,533+ ',NULL,'2021-02-09 15:36:00','2021-02-09 15:36:00');
INSERT INTO "Serial_numbers" VALUES (47,39,'-4074683','4083334- ','35mm f/1.4 ASPH Summilux-M (black)','2007','8,652+ ',NULL,'2021-02-09 15:36:00','2021-02-09 15:36:00');
INSERT INTO "Serial_numbers" VALUES (48,68,'2749631','2750630','50mm f/1 Noctilux (11 821-1st)','1975','1000 ~2750503 ',NULL,'2021-02-09 15:36:00','2021-02-09 15:36:00');
INSERT INTO "Serial_numbers" VALUES (49,68,'2853851','2854850','50mm f/1 Noctilux (11 821-1st)','1977','1000',NULL,'2021-02-09 15:36:00','2021-02-09 15:36:00');
INSERT INTO "Serial_numbers" VALUES (50,68,'2913801','2914800','50mm f/1 Noctilux (11 821-1st)','1978','1000',NULL,'2021-02-09 15:36:00','2021-02-09 15:36:00');
INSERT INTO "Serial_numbers" VALUES (51,68,'2918901','2919900','50mm f/1 Noctilux (11 821-1st+2nd)','1978','1000',NULL,'2021-02-09 15:36:00','2021-02-09 15:36:00');
INSERT INTO "Serial_numbers" VALUES (52,68,'3114001','3114700','50mm f/1 Noctilux (11 821+822-1st+2nd)','1981','700',NULL,'2021-02-09 15:36:00','2021-02-09 15:36:00');
INSERT INTO "Serial_numbers" VALUES (53,68,'3153501','3154500','50mm f/1 Noctilux (11 821-2nd)','1981','1000',NULL,'2021-02-09 15:36:00','2021-02-09 15:36:00');
INSERT INTO "Serial_numbers" VALUES (54,68,'3220001','3221000','50mm f/1 Noctilux (11 821-2nd+3rd)','1982','1000',NULL,'2021-02-09 15:36:00','2021-02-09 15:36:00');
INSERT INTO "Serial_numbers" VALUES (55,68,'3406201','3406700','50mm f/1 Noctilux-M (11 821-3rd)','1986','500',NULL,'2021-02-09 15:36:00','2021-02-09 15:36:00');
INSERT INTO "Serial_numbers" VALUES (56,68,'3434501','3435000','50mm f/1 Noctilux (11 821-3rd)','1986','500',NULL,'2021-02-09 15:36:00','2021-02-09 15:36:00');
INSERT INTO "Serial_numbers" VALUES (57,68,'3442401','3442900','50mm f/1 Noctilux (11 821-3rd)','1987','500 ~3442659 ',NULL,'2021-02-09 15:36:00','2021-02-09 15:36:00');
INSERT INTO "Serial_numbers" VALUES (58,68,'3478151','3478650','50mm f/1 Noctilux-M (11 821-3rd)','1988','500',NULL,'2021-02-09 15:36:00','2021-02-09 15:36:00');
INSERT INTO "Serial_numbers" VALUES (59,68,'3497901','3498200','50mm f/1 Noctilux (3rd)','1989','300',NULL,'2021-02-09 15:36:00','2021-02-09 15:36:00');
INSERT INTO "Serial_numbers" VALUES (60,68,'3510296','3510795','50mm f/1 Noctilux-M (3rd)','1990','500',NULL,'2021-02-09 15:36:00','2021-02-09 15:36:00');
INSERT INTO "Serial_numbers" VALUES (61,68,'3533468','3533967','50mm f/1 Noctilux-M (3rd)','1990','500',NULL,'2021-02-09 15:36:00','2021-02-09 15:36:00');
INSERT INTO "Serial_numbers" VALUES (62,68,'3569473','3569972','50mm f/1 Noctilux-M (3rd)','1991','500',NULL,'2021-02-09 15:36:00','2021-02-09 15:36:00');
INSERT INTO "Serial_numbers" VALUES (63,68,'3603070','3603669','50mm f/1 Noctilux-M (3rd)','1992','600',NULL,'2021-02-09 15:36:00','2021-02-09 15:36:00');
INSERT INTO "Serial_numbers" VALUES (64,68,'3617898','3617899','50mm f/1 Noctilux-M (11 822-4th)','1993','2',NULL,'2021-02-09 15:36:00','2021-02-09 15:36:00');
INSERT INTO "Serial_numbers" VALUES (65,68,'3637776','3637925','50mm f/1 Noctilux-M (11 822-4th)','1993','150',NULL,'2021-02-09 15:36:00','2021-02-09 15:36:00');
INSERT INTO "Serial_numbers" VALUES (66,68,'3680931','3681530','50mm f/1 Noctilux-M (11 822-4th)','1995','600',NULL,'2021-02-09 15:36:00','2021-02-09 15:36:00');
INSERT INTO "Serial_numbers" VALUES (67,68,'3737701','3738700','50mm f/1 Noctilux-M (11 822-4th)','1996','1000',NULL,'2021-02-09 15:36:00','2021-02-09 15:36:00');
INSERT INTO "Serial_numbers" VALUES (68,68,'3813125','3815124','50mm f/1 Noctilux-M (11 822-4th)','1997','2000',NULL,'2021-02-09 15:36:00','2021-02-09 15:36:00');
INSERT INTO "Serial_numbers" VALUES (69,68,'3913143','3913222','50mm f/1 Noctilux-M (11 822-4th)','2001','80',NULL,'2021-02-09 15:36:00','2021-02-09 15:36:00');
INSERT INTO "Serial_numbers" VALUES (70,68,'3928201','3928463','50mm f/1 Noctilux-M (11 822-4th)','2001','263',NULL,'2021-02-09 15:36:00','2021-02-09 15:36:00');
INSERT INTO "Serial_numbers" VALUES (71,68,'3940114','3940613','50mm f/1 Noctilux-M (11 822-4th)','2002','500',NULL,'2021-02-09 15:36:00','2021-02-09 15:36:00');
INSERT INTO "Serial_numbers" VALUES (72,68,'3956561','3957060','50mm f/1 Noctilux-M (11 822-4th)','2002','500',NULL,'2021-02-09 15:36:00','2021-02-09 15:36:00');
INSERT INTO "Serial_numbers" VALUES (73,68,'3978039','3978538','50mm f/1 Noctilux-M (11 822-4th)','2004','500',NULL,'2021-02-09 15:36:00','2021-02-09 15:36:00');
INSERT INTO "Serial_numbers" VALUES (74,68,'3984534','3985033','50mm f/1 Noctilux-M (11 822-4th)','2004','500',NULL,'2021-02-09 15:36:00','2021-02-09 15:36:00');
INSERT INTO "Serial_numbers" VALUES (75,68,'-3985143','3985747-','50mm f/1 Noctilux-M (11 603)','2006-2008','500+ ',NULL,'2021-02-09 15:36:00','2021-02-09 15:36:00');
INSERT INTO "Serial_numbers" VALUES (76,20,'-5735868','5736336-','15mm f/8 Hologon','1972','469+ ',NULL,'2021-02-09 15:36:00','2021-02-09 15:36:00');
INSERT INTO "Serial_numbers" VALUES (77,20,'2590501','^ 2600500','40mm f/2 Summicron-C ^','1973','[10000] ',NULL,'2021-02-09 15:36:00','2021-02-09 15:36:00');
INSERT INTO "Serial_numbers" VALUES (78,20,'-7988846-','unknown','15mm f/8 Hologon','1974','unknown ',NULL,'2021-02-09 15:36:00','2021-02-09 15:36:00');
INSERT INTO "Serial_numbers" VALUES (79,20,'-15640504-','-15640667-','15mm f/8 Hologon','1976','258+ ',NULL,'2021-02-09 15:36:00','2021-02-09 15:36:00');
INSERT INTO "Serial_numbers" VALUES (80,16,'2993701','2994700','21mm f/2.8 Elmarit-M (non-RF w/ + w/o goggles)','1979','1000',NULL,'2021-02-09 15:36:00','2021-02-09 15:36:00');
INSERT INTO "Serial_numbers" VALUES (81,16,'3194701','3195700','21mm f/2.8 Elmarit-M (non-RF)','1982','1000',NULL,'2021-02-09 15:36:00','2021-02-09 15:36:00');
INSERT INTO "Serial_numbers" VALUES (82,16,'3211801','3212800','21mm f/2.8 Elmarit-M (non-RF)','1982','1000',NULL,'2021-02-09 15:36:00','2021-02-09 15:36:00');
INSERT INTO "Serial_numbers" VALUES (83,16,'3267401','3269400','21mm f/2.8 Elmarit-M (non-RF)','1983','2000',NULL,'2021-02-09 15:36:00','2021-02-09 15:36:00');
INSERT INTO "Serial_numbers" VALUES (84,16,'3362801','3363800','21mm f/2.8 Elmarit-M (500 non-RF)','1985','1000',NULL,'2021-02-09 15:36:00','2021-02-09 15:36:00');
INSERT INTO "Serial_numbers" VALUES (85,16,'3425091','3425690','21mm f/2.8 Elmarit-M ','1987','600',NULL,'2021-02-09 15:36:00','2021-02-09 15:36:00');
INSERT INTO "Serial_numbers" VALUES (86,16,'3455871','3456870','21mm f/2.8 Elmarit-M ','1988','1000',NULL,'2021-02-09 15:36:00','2021-02-09 15:36:00');
INSERT INTO "Serial_numbers" VALUES (87,16,'3481601','3481900','21mm f/2.8 Elmarit-M ','1988','300',NULL,'2021-02-09 15:36:00','2021-02-09 15:36:00');
INSERT INTO "Serial_numbers" VALUES (88,16,'3492001','3492300','21mm f/2.8 Elmarit-M (ELC)','1989','300',NULL,'2021-02-09 15:36:00','2021-02-09 15:36:00');
INSERT INTO "Serial_numbers" VALUES (89,16,'3507451','3507630','21mm f/2.8 Elmarit-M ','1990','180',NULL,'2021-02-09 15:36:00','2021-02-09 15:36:00');
INSERT INTO "Serial_numbers" VALUES (90,16,'3518296','3518795','21mm f/2.8 Elmarit-M (ELW)','1990','500',NULL,'2021-02-09 15:36:00','2021-02-09 15:36:00');
INSERT INTO "Serial_numbers" VALUES (91,16,'3524796','3525295','21mm f/2.8 Elmarit-M ','1990','500',NULL,'2021-02-09 15:36:00','2021-02-09 15:36:00');
INSERT INTO "Serial_numbers" VALUES (92,16,'3561368','3562167','21mm f/2.8 Elmarit-M ','1991','800',NULL,'2021-02-09 15:36:00','2021-02-09 15:36:00');
INSERT INTO "Serial_numbers" VALUES (93,16,'3576534','3577533','21mm f/2.8 Elmarit-M ','1991','1000',NULL,'2021-02-09 15:36:00','2021-02-09 15:36:00');
INSERT INTO "Serial_numbers" VALUES (94,16,'3606720','3607319','21mm f/2.8 Elmarit-M (ELC)','1992','600',NULL,'2021-02-09 15:36:00','2021-02-09 15:36:00');
INSERT INTO "Serial_numbers" VALUES (95,16,'3641426','3641575','21mm f/2.8 Elmarit-M ','1993','150',NULL,'2021-02-09 15:36:00','2021-02-09 15:36:00');
INSERT INTO "Serial_numbers" VALUES (96,16,'3684931','3685730','21mm f/2.8 Elmarit-M ','1995','800',NULL,'2021-02-09 15:36:00','2021-02-09 15:36:00');
INSERT INTO "Serial_numbers" VALUES (97,16,'3717903','3719102','21mm f/2.8 Elmarit-M ','1995','1200',NULL,'2021-02-09 15:36:00','2021-02-09 15:36:00');
INSERT INTO "Serial_numbers" VALUES (98,23,'1967101*','1968100','Super-Angulon f= 2.1 cm 1:4* (M-chrom) ','1962','1000',NULL,'2021-02-09 15:36:00','2021-02-09 15:36:00');
INSERT INTO "Serial_numbers" VALUES (99,23,'2027501^','2028000','Super-Angulon f= 2.1 cm 1:4^ (M+S-chrom)','1964','500',NULL,'2021-02-09 15:36:00','2021-02-09 15:36:00');
INSERT INTO "Serial_numbers" VALUES (100,23,'2035001^','2036000','Super-Angulon f= 2.1 cm 1:4^ (M+S-chrom) ','1964','1000',NULL,'2021-02-09 15:36:00','2021-02-09 15:36:00');
INSERT INTO "Serial_numbers" VALUES (101,23,'2054001^','2056000','Super-Angulon f= 2.1 cm 1:4^ (M+S-chrom+M-black) ','1964','2000',NULL,'2021-02-09 15:36:00','2021-02-09 15:36:00');
INSERT INTO "Serial_numbers" VALUES (102,23,'2247151','2247650','21mm f/3.4 Super-Angulon (M+S-black) ','1967','500',NULL,'2021-02-09 15:36:00','2021-02-09 15:36:00');
INSERT INTO "Serial_numbers" VALUES (103,23,'2292051','2292800','21mm f/3.4 Super-Angulon (M+S-black) ','1968','750',NULL,'2021-02-09 15:36:00','2021-02-09 15:36:00');
INSERT INTO "Serial_numbers" VALUES (104,23,'2327801','2328300','21mm f/3.4 Super-Angulon (M-black)','1969','500',NULL,'2021-02-09 15:36:00','2021-02-09 15:36:00');
INSERT INTO "Serial_numbers" VALUES (105,23,'2372301','2372800','21mm f/3.4 Super-Angulon (M+S-black)','1969','500',NULL,'2021-02-09 15:36:00','2021-02-09 15:36:00');
INSERT INTO "Serial_numbers" VALUES (106,23,'2417201','2417700','21mm f/3.4 Super-Angulon (M-black)','1970','500',NULL,'2021-02-09 15:36:00','2021-02-09 15:36:00');
INSERT INTO "Serial_numbers" VALUES (107,23,'2473251','2473750','21mm f/3.4 Super-Angulon (M-black) ','1971','500','HAVE CUTOUT FOR USE WITH  21mm f/3.4 Super-Angulon (M-black) ','2021-02-09 15:36:00','2021-02-09 15:36:00');
INSERT INTO "Serial_numbers" VALUES (108,23,'2522501','2522800','21mm f/3.4 Super-Angulon (M-black)','1972','300','HAVE CUTOUT FOR USE WITH  21mm f/3.4 Super-Angulon (M-black)','2021-02-09 15:36:00','2021-02-09 15:36:00');
INSERT INTO "Serial_numbers" VALUES (109,23,'2583001','2583500','21mm f/3.4 Super-Angulon (M-black)','1973','500','HAVE CUTOUT FOR USE WITH  21mm f/3.4 Super-Angulon (M-black)','2021-02-09 15:36:00','2021-02-09 15:36:00');
INSERT INTO "Serial_numbers" VALUES (110,23,'2672701','2673200','21mm f/3.4 Super-Angulon (black) ','1974','500','HAVE CUTOUT FOR USE WITH  21mm f/3.4 Super-Angulon (black) ','2021-02-09 15:36:00','2021-02-09 15:36:00');
INSERT INTO "Serial_numbers" VALUES (111,23,'2750631','2750750','21mm f/3.4 Super-Angulon . ','1975','120','HAVE CUTOUT FOR USE WITH  21mm f/3.4 Super-Angulon . ','2021-02-09 15:36:00','2021-02-09 15:36:00');
INSERT INTO "Serial_numbers" VALUES (112,23,'2783351','2783650','21mm f/3.4 Super-Angulon . ','1976','300','HAVE CUTOUT FOR USE WITH  21mm f/3.4 Super-Angulon . ','2021-02-09 15:36:00','2021-02-09 15:36:00');
INSERT INTO "Serial_numbers" VALUES (113,23,'2783651^^','2785650','^^ Elmarit-R 28mm f/2.8 ^^','1976','[2000] ','HAVE CUTOUT FOR USE WITH  ^^ Elmarit-R 28mm f/2.8 ^^','2021-02-09 15:36:00','2021-02-09 15:36:00');
INSERT INTO "Serial_numbers" VALUES (114,23,'2917001','^ 2917150','21mm f/4 ^ Super-Angulon-R ^','1978','[150] ','HAVE CUTOUT FOR USE WITH  21mm f/4 ^ Super-Angulon-R ^','2021-02-09 15:36:00','2021-02-09 15:36:00');
INSERT INTO "Serial_numbers" VALUES (115,24,'1583001','1583100','Super-Angulon f= 2.1 cm 1:4','1958','100',NULL,'2021-02-09 15:36:00','2021-02-09 15:36:00');
INSERT INTO "Serial_numbers" VALUES (116,24,'1604001','1605000','Super-Angulon f= 2.1 cm 1:4 (S)','1958','1000',NULL,'2021-02-09 15:36:00','2021-02-09 15:36:00');
INSERT INTO "Serial_numbers" VALUES (117,24,'1645301','1647000','Super-Angulon f= 2.1 cm 1:4 (M)','1959','1700',NULL,'2021-02-09 15:36:00','2021-02-09 15:36:00');
INSERT INTO "Serial_numbers" VALUES (118,24,'1672501','1673500','Super-Angulon f= 2.1 cm 1:4 (S+M)','1959','1000',NULL,'2021-02-09 15:36:00','2021-02-09 15:36:00');
INSERT INTO "Serial_numbers" VALUES (119,24,'1674501','1675500','Super-Angulon f= 2.1 cm 1:4 (S+M)','1959','1000',NULL,'2021-02-09 15:36:00','2021-02-09 15:36:00');
INSERT INTO "Serial_numbers" VALUES (120,24,'1676001','1677000','Super-Angulon f= 2.1 cm 1:4 (S+M)','1959','1000',NULL,'2021-02-09 15:36:00','2021-02-09 15:36:00');
INSERT INTO "Serial_numbers" VALUES (121,24,'1714501','1717000','Super-Angulon f= 2.1 cm 1:4 (M)','1959','2500',NULL,'2021-02-09 15:36:00','2021-02-09 15:36:00');
INSERT INTO "Serial_numbers" VALUES (122,24,'1967101*','1968100','Super-Angulon f= 2.1 cm 1:4* ','1962','1000',NULL,'2021-02-09 15:36:00','2021-02-09 15:36:00');
INSERT INTO "Serial_numbers" VALUES (123,24,'2027501^','2028000','Super-Angulon f= 2.1 cm 1:4^ (S)','1964','500',NULL,'2021-02-09 15:36:00','2021-02-09 15:36:00');
INSERT INTO "Serial_numbers" VALUES (124,24,'2035001^','2036000','Super-Angulon f= 2.1 cm 1:4^ (S) ','1964','1000',NULL,'2021-02-09 15:36:00','2021-02-09 15:36:00');
INSERT INTO "Serial_numbers" VALUES (125,24,'2054001','2056000','Super-Angulon f= 2.1 cm 1:4 ','1964','2000',NULL,'2021-02-09 15:36:00','2021-02-09 15:36:00');
INSERT INTO "Serial_numbers" VALUES (126,24,'2057501','2059500','Super-Angulon f= 2.1 cm 1:4 ','1964','2000',NULL,'2021-02-09 15:36:00','2021-02-09 15:36:00');
INSERT INTO "Serial_numbers" VALUES (127,24,'2283351','2283950','Super-Angulon f= 2.1 cm 1:4 ','1968','600',NULL,'2021-02-09 15:36:00','2021-02-09 15:36:00');
INSERT INTO "Serial_numbers" VALUES (128,24,'2318401','2319000','Super-Angulon f= 2.1 cm 1:4 ','1969','600',NULL,'2021-02-09 15:36:00','2021-02-09 15:36:00');
INSERT INTO "Serial_numbers" VALUES (129,24,'2353301','2354300','Super-Angulon f= 2.1 cm 1:4 ','1969','1000',NULL,'2021-02-09 15:36:00','2021-02-09 15:36:00');
INSERT INTO "Serial_numbers" VALUES (130,24,'2396401','2398400','Super-Angulon f= 2.1 cm 1:4','1970','2000',NULL,'2021-02-09 15:36:00','2021-02-09 15:36:00');
INSERT INTO "Serial_numbers" VALUES (131,24,'2448001','2450000','Super-Angulon f= 2.1 cm 1:4 ','1970','2000',NULL,'2021-02-09 15:36:00','2021-02-09 15:36:00');
INSERT INTO "Serial_numbers" VALUES (132,24,'2485201','2487200','Super-Angulon f= 2.1 cm 1:4 ','1971','2000',NULL,'2021-02-09 15:36:00','2021-02-09 15:36:00');
INSERT INTO "Serial_numbers" VALUES (133,24,'2613101','2615100','Super-Angulon f= 2.1 cm 1:4 ','1973','2000',NULL,'2021-02-09 15:36:00','2021-02-09 15:36:00');
INSERT INTO "Serial_numbers" VALUES (134,24,'2820351','2821350','Super-Angulon f= 2.1 cm 1:4 ','1977','1000',NULL,'2021-02-09 15:36:00','2021-02-09 15:36:00');
INSERT INTO "Serial_numbers" VALUES (135,24,'2982601','2983100','Super-Angulon f= 2.1 cm 1:4 ','1979','500** ',NULL,'2021-02-09 15:36:00','2021-02-09 15:36:00');
INSERT INTO "Serial_numbers" VALUES (136,24,'3105001','3105500','Super-Angulon f= 2.1 cm 1:4 ','1981','500',NULL,'2021-02-09 15:36:00','2021-02-09 15:36:00');
INSERT INTO "Serial_numbers" VALUES (137,25,'-4079764','4088299-','24mm f/1.4 ASPH Summilux-M ','2008-2010','8,536+ ',NULL,'2021-02-09 15:36:00','2021-02-09 15:36:00');
INSERT INTO "Serial_numbers" VALUES (138,25,'-4106908','unknown','24mm f/1.4 ASPH Summilux-M ','2011-2012','unknown ',NULL,'2021-02-09 15:36:00','2021-02-09 15:36:00');
INSERT INTO "Serial_numbers" VALUES (139,25,'~4188538','4188880-','24mm f/1.4 ASPH Summilux-M ','2013-2014','unknown ',NULL,'2021-02-09 15:36:00','2021-02-09 15:36:00');
INSERT INTO "Serial_numbers" VALUES (140,26,'3737201','3737700','24mm f/2.8 *Elmarit-M (black)','1996','500',NULL,'2021-02-09 15:36:00','2021-02-09 15:36:00');
INSERT INTO "Serial_numbers" VALUES (141,26,'3755026','3755525','24mm f/2.8 *Elmarit-M (black)','1996','500',NULL,'2021-02-09 15:36:00','2021-02-09 15:36:00');
INSERT INTO "Serial_numbers" VALUES (142,26,'3769930','3770929','24mm f/2.8 *Elmarit-M (black)','1996','1000',NULL,'2021-02-09 15:36:00','2021-02-09 15:36:00');
INSERT INTO "Serial_numbers" VALUES (143,26,'3782330','3783329','24mm f/2.8 *Elmarit-M (black)','1997','1000',NULL,'2021-02-09 15:36:00','2021-02-09 15:36:00');
INSERT INTO "Serial_numbers" VALUES (144,26,'3808860','3809859','24mm f/2.8 *Elmarit-M (black+chrom)','1997','1000',NULL,'2021-02-09 15:36:00','2021-02-09 15:36:00');
INSERT INTO "Serial_numbers" VALUES (145,26,'3844000','3844999','24mm f/2.8 *Elmarit-M ','1998','1000',NULL,'2021-02-09 15:36:00','2021-02-09 15:36:00');
INSERT INTO "Serial_numbers" VALUES (146,26,'3848500^','3849499','^21mm f/2.8 ASPH Elmarit-M (black)','1998','[1000] ',NULL,'2021-02-09 15:36:00','2021-02-09 15:36:00');
INSERT INTO "Serial_numbers" VALUES (147,26,'3871667','3872666','24mm f/2.8 *Elmarit-M (black+chrom)','1999','1000 ~ 3872553 chrom ',NULL,'2021-02-09 15:36:00','2021-02-09 15:36:00');
INSERT INTO "Serial_numbers" VALUES (148,26,'3913126','3913126','24mm f/2.8 ASPH Elmarit-M ','2001','1',NULL,'2021-02-09 15:36:00','2021-02-09 15:36:00');
INSERT INTO "Serial_numbers" VALUES (149,26,'3949534','3950033','24mm f/2.8 ASPH Elmarit-M ','2002','500',NULL,'2021-02-09 15:36:00','2021-02-09 15:36:00');
INSERT INTO "Serial_numbers" VALUES (150,26,'3957161','3958160','24mm f/2.8 ASPH Elmarit-M (black)','2002','1000',NULL,'2021-02-09 15:36:00','2021-02-09 15:36:00');
INSERT INTO "Serial_numbers" VALUES (151,26,'-4036206','4041627-','24mm f/2.8 ASPH Elmarit-M (black)','2006- ','5,422+ ',NULL,'2021-02-09 15:36:00','2021-02-09 15:36:00');
INSERT INTO "Serial_numbers" VALUES (152,26,'-4068998','4074758-','24mm f/2.8 ASPH Elmarit-M (black)','2009- ','5,761+ ',NULL,'2021-02-09 15:36:00','2021-02-09 15:36:00');
INSERT INTO "Serial_numbers" VALUES (153,27,'-4077785','4082943-','24mm f/3.8 ASPH Elmar-M ','2008','5,149+ ',NULL,'2021-02-09 15:36:00','2021-02-09 15:36:00');
INSERT INTO "Serial_numbers" VALUES (154,27,'-4087862','unknown-','24mm f/3.8 ASPH Elmar-M ','2011','unknown ',NULL,'2021-02-09 15:36:00','2021-02-09 15:36:00');
INSERT INTO "Serial_numbers" VALUES (155,27,'-unknown','4141380-','24mm f/3.8 ASPH Elmar-M ','2012','unknown ',NULL,'2021-02-09 15:36:00','2021-02-09 15:36:00');
INSERT INTO "Serial_numbers" VALUES (156,37,'3753126','3754125','ASPH Tri-Elmar-M (11 890-black)','1996','1000',NULL,'2021-02-09 15:36:00','2021-02-09 15:36:00');
INSERT INTO "Serial_numbers" VALUES (157,37,'3771930','3772929','ASPH Tri-Elmar-M (11 890-black)','1997','1000',NULL,'2021-02-09 15:36:00','2021-02-09 15:36:00');
INSERT INTO "Serial_numbers" VALUES (158,37,'3799910','3800909','ASPH Tri-Elmar-M (11 890+894-black+silver)','1997','1000',NULL,'2021-02-09 15:36:00','2021-02-09 15:36:00');
INSERT INTO "Serial_numbers" VALUES (159,37,'3812125','3813124','ASPH Tri-Elmar-M (silver)','1997','1000',NULL,'2021-02-09 15:36:00','2021-02-09 15:36:00');
INSERT INTO "Serial_numbers" VALUES (160,37,'3857850','3858849','ASPH Tri-Elmar-M (silver+black)','1999','1000',NULL,'2021-02-09 15:36:00','2021-02-09 15:36:00');
INSERT INTO "Serial_numbers" VALUES (161,37,'3860377','3861376','ASPH Tri-Elmar-M ','1999','1000',NULL,'2021-02-09 15:36:00','2021-02-09 15:36:00');
INSERT INTO "Serial_numbers" VALUES (162,37,'3891001','3891074','ASPH Tri-Elmar-M ','2000','74',NULL,'2021-02-09 15:36:00','2021-02-09 15:36:00');
INSERT INTO "Serial_numbers" VALUES (163,37,'3891150','3891150','ASPH Tri-Elmar-M ','2000','1',NULL,'2021-02-09 15:36:00','2021-02-09 15:36:00');
INSERT INTO "Serial_numbers" VALUES (164,37,'3891851','3892350','ASPH Tri-Elmar-M (black)','2000','500',NULL,'2021-02-09 15:36:00','2021-02-09 15:36:00');
INSERT INTO "Serial_numbers" VALUES (165,37,'^ 3896051','^ 3897500','^ ASPH Tri-Elmar-M (black)','2000','^ [1450] ',NULL,'2021-02-09 15:36:00','2021-02-09 15:36:00');
INSERT INTO "Serial_numbers" VALUES (166,37,'3920101','3921100','ASPH Tri-Elmar-M Redesign ','2001','1000',NULL,'2021-02-09 15:36:00','2021-02-09 15:36:00');
INSERT INTO "Serial_numbers" VALUES (167,37,'3948134','3949133','ASPH Tri-Elmar-M Redesign (black)','2002','1000 ~3948204 ',NULL,'2021-02-09 15:36:00','2021-02-09 15:36:00');
INSERT INTO "Serial_numbers" VALUES (168,37,'unknown','unknown','ASPH Tri-Elmar-M Redesign ','2005-2007','unknown ',NULL,'2021-02-09 15:36:00','2021-02-09 15:36:00');
INSERT INTO "Serial_numbers" VALUES (169,28,'-unknown','unknown-','28mm f/1.4 ASPH. Summicron-M (black)','2015','unknown ',NULL,'2021-02-09 15:36:00','2021-02-09 15:36:00');
INSERT INTO "Serial_numbers" VALUES (170,30,'3900076','3901075','28mm f/2 ASPH Summicron-M (black)','2000','1000',NULL,'2021-02-09 15:36:00','2021-02-09 15:36:00');
INSERT INTO "Serial_numbers" VALUES (171,30,'3913223','3914222','28mm f/2 ASPH Summicron-M (black)','2001','1000',NULL,'2021-02-09 15:36:00','2021-02-09 15:36:00');
INSERT INTO "Serial_numbers" VALUES (172,30,'3922101','3923100','28mm f/2 ASPH Summicron-M (black)','2001','1000',NULL,'2021-02-09 15:36:00','2021-02-09 15:36:00');
INSERT INTO "Serial_numbers" VALUES (173,30,'3928464','3929463','28mm f/2 ASPH Summicron-M (black)','2001','1000',NULL,'2021-02-09 15:36:00','2021-02-09 15:36:00');
INSERT INTO "Serial_numbers" VALUES (174,30,'3945564','3946563','28mm f/2 ASPH Summicron-M (black)','2002','1000',NULL,'2021-02-09 15:36:00','2021-02-09 15:36:00');
INSERT INTO "Serial_numbers" VALUES (175,30,'3981089','3981588','28mm f/2 ASPH Summicron-M (black)','2004','500',NULL,'2021-02-09 15:36:00','2021-02-09 15:36:00');
INSERT INTO "Serial_numbers" VALUES (176,30,'-4007536','4039429-','28mm f/2 ASPH Summicron-M (black+silver)','2005','31,894+ ~ 4007584 (silver) ',NULL,'2021-02-09 15:36:00','2021-02-09 15:36:00');
INSERT INTO "Serial_numbers" VALUES (177,30,'-unknown','4068606-','28mm f/2 ASPH Summicron-M (black)','2007','unknown ',NULL,'2021-02-09 15:36:00','2021-02-09 15:36:00');
INSERT INTO "Serial_numbers" VALUES (178,30,'-4072410','4076272- ','28mm f/2 ASPH Summicron-M (silver+black)','2008','3,863+ ',NULL,'2021-02-09 15:36:00','2021-02-09 15:36:00');
INSERT INTO "Serial_numbers" VALUES (179,30,'-4097174','4109653-','28mm f/2 ASPH Summicron-M (black)','2009','12,480+ ',NULL,'2021-02-09 15:36:00','2021-02-09 15:36:00');
INSERT INTO "Serial_numbers" VALUES (180,30,'-4161473','4161617-','28mm f/2 ASPH Summicron-M (silver+black)','2010','unknown ',NULL,'2021-02-09 15:36:00','2021-02-09 15:36:00');
INSERT INTO "Serial_numbers" VALUES (181,30,'-4185203','unknown-','28mm f/2 ASPH Summicron-M (black)','2011','unknown ',NULL,'2021-02-09 15:36:00','2021-02-09 15:36:00');
INSERT INTO "Serial_numbers" VALUES (182,31,'-3928917','unknown- ','28mm f/2.8 ASPH Elmarit-M ','2006','unknown ',NULL,'2021-02-09 15:36:00','2021-02-09 15:36:00');
INSERT INTO "Serial_numbers" VALUES (183,31,'-3997682','3999025- ','28mm f/2.8 ASPH Elmarit-M ','2007','1,344+ ',NULL,'2021-02-09 15:36:00','2021-02-09 15:36:00');
INSERT INTO "Serial_numbers" VALUES (184,31,'-4005877','4007583-','28mm f/2.8 ASPH Elmarit-M ','2008','1707+ ',NULL,'2021-02-09 15:36:00','2021-02-09 15:36:00');
INSERT INTO "Serial_numbers" VALUES (185,31,'~4037099','4043484-','28mm f/2.8 ASPH Elmarit-M ','2009','6,386+ ',NULL,'2021-02-09 15:36:00','2021-02-09 15:36:00');
INSERT INTO "Serial_numbers" VALUES (186,31,'-4086805','4100089-','28mm f/2.8 ASPH Elmarit-M ','2010','13,285+ ',NULL,'2021-02-09 15:36:00','2021-02-09 15:36:00');
INSERT INTO "Serial_numbers" VALUES (187,31,'-4118183','4136266-','28mm f/2.8 ASPH Elmarit-M ','2011','18,084+ ',NULL,'2021-02-09 15:36:00','2021-02-09 15:36:00');
INSERT INTO "Serial_numbers" VALUES (188,31,'-unknown','4191851-','28mm f/2.8 ASPH Elmarit-M ','2012','unknown ',NULL,'2021-02-09 15:36:00','2021-02-09 15:36:00');
INSERT INTO "Serial_numbers" VALUES (189,33,'3585865','3586379','28mm f/2.8 Elmarit-M ','1992','515',NULL,'2021-02-09 15:36:00','2021-02-09 15:36:00');
INSERT INTO "Serial_numbers" VALUES (190,33,'3608370','3608929','28mm f/2.8 Elmarit-M ','1992','560',NULL,'2021-02-09 15:36:00','2021-02-09 15:36:00');
INSERT INTO "Serial_numbers" VALUES (191,33,'3617890','3617894','28mm f/2.8 Elmarit-M ','1993','5',NULL,'2021-02-09 15:36:00','2021-02-09 15:36:00');
INSERT INTO "Serial_numbers" VALUES (192,33,'3633901','3634900','28mm f/2.8 Elmarit-M ','1993','1000',NULL,'2021-02-09 15:36:00','2021-02-09 15:36:00');
INSERT INTO "Serial_numbers" VALUES (193,33,'3662831','3663830','28mm f/2.8 Elmarit-M ','1994','1000',NULL,'2021-02-09 15:36:00','2021-02-09 15:36:00');
INSERT INTO "Serial_numbers" VALUES (194,33,'3671031','3672030','28mm f/2.8 Elmarit-M ','1994','1000',NULL,'2021-02-09 15:36:00','2021-02-09 15:36:00');
INSERT INTO "Serial_numbers" VALUES (195,33,'3708803','3709802','28mm f/2.8 Elmarit-M ','1995','1000',NULL,'2021-02-09 15:36:00','2021-02-09 15:36:00');
INSERT INTO "Serial_numbers" VALUES (196,33,'3743089','3744088','28mm f/2.8 Elmarit-M ','1996','1000',NULL,'2021-02-09 15:36:00','2021-02-09 15:36:00');
INSERT INTO "Serial_numbers" VALUES (197,33,'3768220','3769219','28mm f/2.8 Elmarit-M ','1996','1000',NULL,'2021-02-09 15:36:00','2021-02-09 15:36:00');
INSERT INTO "Serial_numbers" VALUES (198,33,'3793010','3794009','28mm f/2.8 Elmarit-M ','1997','1000',NULL,'2021-02-09 15:36:00','2021-02-09 15:36:00');
INSERT INTO "Serial_numbers" VALUES (199,33,'3847500','3848499','28mm f/2.8 Elmarit-M ','1998','1000',NULL,'2021-02-09 15:36:00','2021-02-09 15:36:00');
INSERT INTO "Serial_numbers" VALUES (200,33,'3895051','3896050','28mm f/2.8 Elmarit-M ','2000','1000',NULL,'2021-02-09 15:36:00','2021-02-09 15:36:00');
INSERT INTO "Serial_numbers" VALUES (201,33,'3979539','3979588','28mm f/2.8 Elmarit-M ','2004','50',NULL,'2021-02-09 15:36:00','2021-02-09 15:36:00');
INSERT INTO "Serial_numbers" VALUES (202,34,'2977551','2978550','28mm f/2.8 Elmarit-R* ','1979','[1000] ',NULL,'2021-02-09 15:36:00','2021-02-09 15:36:00');
INSERT INTO "Serial_numbers" VALUES (203,34,'3037401','3038400','28mm f/2.8 Elmarit-M (ELC)','1980','1000',NULL,'2021-02-09 15:36:00','2021-02-09 15:36:00');
INSERT INTO "Serial_numbers" VALUES (204,34,'3041001','3042000','28mm f/2.8 Elmarit-M ','1980','1000',NULL,'2021-02-09 15:36:00','2021-02-09 15:36:00');
INSERT INTO "Serial_numbers" VALUES (205,34,'3154501','3155500','28mm f/2.8 Elmarit-M ','1981','1000',NULL,'2021-02-09 15:36:00','2021-02-09 15:36:00');
INSERT INTO "Serial_numbers" VALUES (206,34,'3168001','3169000','28mm f/2.8 Elmarit-M (13-83)','1982','1000',NULL,'2021-02-09 15:36:00','2021-02-09 15:36:00');
INSERT INTO "Serial_numbers" VALUES (207,34,'3189701','3190700','28mm f/2.8 Elmarit-M (13-83)','1982','1000',NULL,'2021-02-09 15:36:00','2021-02-09 15:36:00');
INSERT INTO "Serial_numbers" VALUES (208,34,'3205801','3206800','28mm f/2.8 Elmarit-M (13-83+ELC)','1982','1000',NULL,'2021-02-09 15:36:00','2021-02-09 15:36:00');
INSERT INTO "Serial_numbers" VALUES (209,34,'3245101','3246100','28mm f/2.8 Elmarit-M ','1982','1000',NULL,'2021-02-09 15:36:00','2021-02-09 15:36:00');
INSERT INTO "Serial_numbers" VALUES (210,34,'3276401','3277400','28mm f/2.8 Elmarit-M (ELW)','1983','1000',NULL,'2021-02-09 15:36:00','2021-02-09 15:36:00');
INSERT INTO "Serial_numbers" VALUES (211,34,'3293401','3294400','28mm f/2.8 Elmarit-M ','1983','1000',NULL,'2021-02-09 15:36:00','2021-02-09 15:36:00');
INSERT INTO "Serial_numbers" VALUES (212,34,'3392801','3393300','28mm f/2.8 Elmarit-M ','1986','500',NULL,'2021-02-09 15:36:00','2021-02-09 15:36:00');
INSERT INTO "Serial_numbers" VALUES (213,34,'3425691','3426690','28mm f/2.8 Elmarit-M (ELC)','1987','1000',NULL,'2021-02-09 15:36:00','2021-02-09 15:36:00');
INSERT INTO "Serial_numbers" VALUES (214,34,'3438501','3439500','28mm f/2.8 Elmarit-M (ELW+ELC)','1987','1000',NULL,'2021-02-09 15:36:00','2021-02-09 15:36:00');
INSERT INTO "Serial_numbers" VALUES (215,34,'3466571','3467070','28mm f/2.8 Elmarit-M ','1988','500',NULL,'2021-02-09 15:36:00','2021-02-09 15:36:00');
INSERT INTO "Serial_numbers" VALUES (216,34,'3487551','3488550','28mm f/2.8 Elmarit-M (ELW)','1989','1000',NULL,'2021-02-09 15:36:00','2021-02-09 15:36:00');
INSERT INTO "Serial_numbers" VALUES (217,34,'3507631','3507845','28mm f/2.8 Elmarit-M ','1990','215',NULL,'2021-02-09 15:36:00','2021-02-09 15:36:00');
INSERT INTO "Serial_numbers" VALUES (218,34,'3518796','3519795','28mm f/2.8 Elmarit-M ','1990','1000',NULL,'2021-02-09 15:36:00','2021-02-09 15:36:00');
INSERT INTO "Serial_numbers" VALUES (219,34,'3558368','3559367','28mm f/2.8 Elmarit-M (ELC)','1991','1000',NULL,'2021-02-09 15:36:00','2021-02-09 15:36:00');
INSERT INTO "Serial_numbers" VALUES (220,34,'3575634','3576533','28mm f/2.8 Elmarit-M ','1991','900',NULL,'2021-02-09 15:36:00','2021-02-09 15:36:00');
INSERT INTO "Serial_numbers" VALUES (221,35,'2314801','2316000','28mm f/2.8 Elmarit (ELC)','1969','1200',NULL,'2021-02-09 15:36:00','2021-02-09 15:36:00');
INSERT INTO "Serial_numbers" VALUES (222,35,'2459501','2460500','28mm f/2.8 Elmarit (ELC-11801)','1970','1000',NULL,'2021-02-09 15:36:00','2021-02-09 15:36:00');
INSERT INTO "Serial_numbers" VALUES (223,35,'2523801','2524800','28mm f/2.8 Elmarit (ELC-11801)','1972','1000',NULL,'2021-02-09 15:36:00','2021-02-09 15:36:00');
INSERT INTO "Serial_numbers" VALUES (224,35,'2543501','2544500','28mm f/2.8 Elmarit (ELC)','1972','1000',NULL,'2021-02-09 15:36:00','2021-02-09 15:36:00');
INSERT INTO "Serial_numbers" VALUES (225,35,'2733951','2734950','28mm f/2.8 Elmarit (ELC-11801)','1975','1000',NULL,'2021-02-09 15:36:00','2021-02-09 15:36:00');
INSERT INTO "Serial_numbers" VALUES (226,35,'2757901','2758150','28mm f/2.8 Elmarit','1975','250',NULL,'2021-02-09 15:36:00','2021-02-09 15:36:00');
INSERT INTO "Serial_numbers" VALUES (227,35,'2768001','2768500','28mm f/2.8 Elmarit','1976','500',NULL,'2021-02-09 15:36:00','2021-02-09 15:36:00');
INSERT INTO "Serial_numbers" VALUES (228,35,'2880201','2880600','28mm f/2.8 Elmarit (ELC-11801)','1977','400',NULL,'2021-02-09 15:36:00','2021-02-09 15:36:00');
INSERT INTO "Serial_numbers" VALUES (229,35,'2885701','2886400','28mm f/2.8 Elmarit (ELC)','1978','700',NULL,'2021-02-09 15:36:00','2021-02-09 15:36:00');
INSERT INTO "Serial_numbers" VALUES (230,36,'2061501','2063500','28mm f/2.8 Elmarit (ELC+ELW-RS)','1964','2000',NULL,'2021-02-09 15:36:00','2021-02-09 15:36:00');
INSERT INTO "Serial_numbers" VALUES (231,36,'2196901','2198100','28mm f/2.8 Elmarit (ELC-RS+YS)','1966','1200',NULL,'2021-02-09 15:36:00','2021-02-09 15:36:00');
INSERT INTO "Serial_numbers" VALUES (232,38,'-4006688','4099313-','Summilux-M 35mm f/1.4 ASPH. ','2010','92,696+ ~4074699 ',NULL,'2021-02-09 15:36:00','2021-02-09 15:36:00');
INSERT INTO "Serial_numbers" VALUES (233,38,'-4101380','4139941-','Summilux-M 35mm f/1.4 ASPH. ','2011','38,562+ ',NULL,'2021-02-09 15:36:00','2021-02-09 15:36:00');
INSERT INTO "Serial_numbers" VALUES (234,38,'-4152171','4194109-','Summilux-M 35mm f/1.4 ASPH. ','2012','41,939+ ',NULL,'2021-02-09 15:36:00','2021-02-09 15:36:00');
INSERT INTO "Serial_numbers" VALUES (235,38,'-4213204','4236795-','Summilux-M 35mm f/1.4 ASPH. ','2013','23,592+ ',NULL,'2021-02-09 15:36:00','2021-02-09 15:36:00');
INSERT INTO "Serial_numbers" VALUES (236,38,'-4300338','4307609','Summilux-M 35mm f/1.4 ASPH. ','2013','7,272+ ',NULL,'2021-02-09 15:36:00','2021-02-09 15:36:00');
INSERT INTO "Serial_numbers" VALUES (237,38,'4307610','4308210','Summilux-M 35mm f/1.4 ASPH. (SS) ','2014','600',NULL,'2021-02-09 15:36:00','2021-02-09 15:36:00');
INSERT INTO "Serial_numbers" VALUES (238,39,'3636101','3637100','35mm f/1.4 ASPH Summilux-M (black)','1993','1000',NULL,'2021-02-09 15:36:00','2021-02-09 15:36:00');
INSERT INTO "Serial_numbers" VALUES (239,39,'3659331','3660330','35mm f/1.4 ASPH Summilux-M (black)','1994','1000',NULL,'2021-02-09 15:36:00','2021-02-09 15:36:00');
INSERT INTO "Serial_numbers" VALUES (240,39,'3670031','3671030','35mm f/1.4 ASPH Summilux-M (black)','1995','1000',NULL,'2021-02-09 15:36:00','2021-02-09 15:36:00');
INSERT INTO "Serial_numbers" VALUES (241,39,'3704803','3705802','35mm f/1.4 ASPH Summilux-M (black)','1995','1000',NULL,'2021-02-09 15:36:00','2021-02-09 15:36:00');
INSERT INTO "Serial_numbers" VALUES (242,39,'3710003','3711002','35mm f/1.4 ASPH Summilux-M (titan)','1995','1000',NULL,'2021-02-09 15:36:00','2021-02-09 15:36:00');
INSERT INTO "Serial_numbers" VALUES (243,39,'3730291','3731290','35mm f/1.4 ASPH Summilux-M (silver)','1996','1000',NULL,'2021-02-09 15:36:00','2021-02-09 15:36:00');
INSERT INTO "Serial_numbers" VALUES (244,39,'3741589','3742588','35mm f/1.4 ASPH Summilux-M (black+silver)','1996','1000',NULL,'2021-02-09 15:36:00','2021-02-09 15:36:00');
INSERT INTO "Serial_numbers" VALUES (245,39,'3748119','3749118','35mm f/1.4 ASPH Summilux-M (titan+silver)','1996','1000',NULL,'2021-02-09 15:36:00','2021-02-09 15:36:00');
INSERT INTO "Serial_numbers" VALUES (246,39,'3750000','3750125','35mm f/1.4 ASPH Summilux-M . M6 ','1996','126',NULL,'2021-02-09 15:36:00','2021-02-09 15:36:00');
INSERT INTO "Serial_numbers" VALUES (247,39,'3751000','3751125','35mm f/1.4 ASPH Summilux-M . M6 ','1996','126',NULL,'2021-02-09 15:36:00','2021-02-09 15:36:00');
INSERT INTO "Serial_numbers" VALUES (248,39,'3752000','3752125','35mm f/1.4 ASPH Summilux-M . M6 ','1996','126',NULL,'2021-02-09 15:36:00','2021-02-09 15:36:00');
INSERT INTO "Serial_numbers" VALUES (249,39,'3753000','3753125','35mm f/1.4 ASPH Summilux-M . M6 ','1996','126',NULL,'2021-02-09 15:36:00','2021-02-09 15:36:00');
INSERT INTO "Serial_numbers" VALUES (250,39,'3758000','3758999','35mm f/1.4 ASPH Summilux-M "Ein Stuck"','1996','1000',NULL,'2021-02-09 15:36:00','2021-02-09 15:36:00');
INSERT INTO "Serial_numbers" VALUES (251,39,'3795010','3796009','35mm f/1.4 ASPH Summilux-M (black)','1997','1000',NULL,'2021-02-09 15:36:00','2021-02-09 15:36:00');
INSERT INTO "Serial_numbers" VALUES (252,39,'3810860','3811859','35mm f/1.4 ASPH Summilux-M (black)','1997','1000 ~3811132 ',NULL,'2021-02-09 15:36:00','2021-02-09 15:36:00');
INSERT INTO "Serial_numbers" VALUES (253,39,'3859127','3860126','35mm f/1.4 ASPH Summilux-M (silver+black)','1999','1000',NULL,'2021-02-09 15:36:00','2021-02-09 15:36:00');
INSERT INTO "Serial_numbers" VALUES (254,39,'3888707','3889706','35mm f/1.4 ASPH Summilux-M ','2000','1000',NULL,'2021-02-09 15:36:00','2021-02-09 15:36:00');
INSERT INTO "Serial_numbers" VALUES (255,39,'3905626','3906625','35mm f/1.4 ASPH Summilux-M (black)','2000','1000',NULL,'2021-02-09 15:36:00','2021-02-09 15:36:00');
INSERT INTO "Serial_numbers" VALUES (256,39,'3921101','3922100','35mm f/1.4 ASPH Summilux-M (silver)','2001','1000',NULL,'2021-02-09 15:36:00','2021-02-09 15:36:00');
INSERT INTO "Serial_numbers" VALUES (257,39,'3936764','3937763','35mm f/1.4 ASPH Summilux-M (black)','2002','1000',NULL,'2021-02-09 15:36:00','2021-02-09 15:36:00');
INSERT INTO "Serial_numbers" VALUES (258,39,'3961511','3962510','35mm f/1.4 ASPH Summilux-M (silver+black)','2003','1000',NULL,'2021-02-09 15:36:00','2021-02-09 15:36:00');
INSERT INTO "Serial_numbers" VALUES (259,39,'3976589','3977088','35mm f/1.4 ASPH Summilux-M ','2004','500',NULL,'2021-02-09 15:36:00','2021-02-09 15:36:00');
INSERT INTO "Serial_numbers" VALUES (260,39,'3986844','3987143','35mm f/1.4 ASPH Summilux-M ','2005','300',NULL,'2021-02-09 15:36:00','2021-02-09 15:36:00');
INSERT INTO "Serial_numbers" VALUES (261,39,'3987144','3987243','35mm f/1.4 ASPH Summilux-M','2005','100',NULL,'2021-02-09 15:36:00','2021-02-09 15:36:00');
INSERT INTO "Serial_numbers" VALUES (262,39,'-3992145','4006677- ','35mm f/1.4 ASPH Summilux-M (black)','2006','14,533+ ',NULL,'2021-02-09 15:36:00','2021-02-09 15:36:00');
INSERT INTO "Serial_numbers" VALUES (263,39,'-4074683','4083334- ','35mm f/1.4 ASPH Summilux-M (black)','2007','8,652+ ',NULL,'2021-02-09 15:36:00','2021-02-09 15:36:00');
INSERT INTO "Serial_numbers" VALUES (264,40,'3459071','3462070','35mm f/1.4 Aspherical Summilux-M ','1988','3000',NULL,'2021-02-09 15:36:00','2021-02-09 15:36:00');
INSERT INTO "Serial_numbers" VALUES (265,40,'3627901','3628400','35mm f/1.4 Aspherical Summilux-M ','1993','500',NULL,'2021-02-09 15:36:00','2021-02-09 15:36:00');
INSERT INTO "Serial_numbers" VALUES (266,40,'3635601','3636100','35mm f/1.4 Aspherical Summilux-M ','1993','500',NULL,'2021-02-09 15:36:00','2021-02-09 15:36:00');
INSERT INTO "Serial_numbers" VALUES (267,41,'2221201','2222200','35mm f/1.4 Summilux (ELW+ELC.black)','1967','1000',NULL,'2021-02-09 15:36:00','2021-02-09 15:36:00');
INSERT INTO "Serial_numbers" VALUES (268,41,'2289951','2290950','35mm f/1.4 Summilux (M3+M-ELC+ELW.black)','1968','1000',NULL,'2021-02-09 15:36:00','2021-02-09 15:36:00');
INSERT INTO "Serial_numbers" VALUES (269,41,'2347301','2348300','35mm f/1.4 Summilux (M3-ELW+M-ELC.black) ','1969','1000',NULL,'2021-02-09 15:36:00','2021-02-09 15:36:00');
INSERT INTO "Serial_numbers" VALUES (270,41,'2391201','2393400','35mm f/1.4 Summilux (ELC.black) ','1970','2200',NULL,'2021-02-09 15:36:00','2021-02-09 15:36:00');
INSERT INTO "Serial_numbers" VALUES (271,41,'2547551','2549550','35mm f/1.4 Summilux (ELC.black)','1972','2000',NULL,'2021-02-09 15:36:00','2021-02-09 15:36:00');
INSERT INTO "Serial_numbers" VALUES (272,41,'2625601','2626600','35mm f/1.4 Summilux (M3-ELC.black)','1973','1000',NULL,'2021-02-09 15:36:00','2021-02-09 15:36:00');
INSERT INTO "Serial_numbers" VALUES (273,41,'2679701','2680700','35mm f/1.4 Summilux (ELC.black)','1974','1000',NULL,'2021-02-09 15:36:00','2021-02-09 15:36:00');
INSERT INTO "Serial_numbers" VALUES (274,41,'2721821','2722620','35mm f/1.4 Summilux ','1974','800',NULL,'2021-02-09 15:36:00','2021-02-09 15:36:00');
INSERT INTO "Serial_numbers" VALUES (275,41,'2768501','2768900','35mm f/1.4 Summilux ','1976','400',NULL,'2021-02-09 15:36:00','2021-02-09 15:36:00');
INSERT INTO "Serial_numbers" VALUES (276,41,'2802401','2803400','35mm f/1.4 Summilux (ELC+ELW.black)','1976','1000',NULL,'2021-02-09 15:36:00','2021-02-09 15:36:00');
INSERT INTO "Serial_numbers" VALUES (277,41,'2870001','2870600','35mm f/1.4 Summilux (ELC.black)','1977','600',NULL,'2021-02-09 15:36:00','2021-02-09 15:36:00');
INSERT INTO "Serial_numbers" VALUES (278,41,'2899401','2899800','35mm f/1.4 Summilux (ELC.black)','1978','400',NULL,'2021-02-09 15:36:00','2021-02-09 15:36:00');
INSERT INTO "Serial_numbers" VALUES (279,41,'2991701','*2992700','Summilux-M f= *5 cm 1:1.4 (ELC.black)','1979','[1000] ',NULL,'2021-02-09 15:36:00','2021-02-09 15:36:00');
INSERT INTO "Serial_numbers" VALUES (280,41,'3051101','3051600','35mm f/1.4 Summilux-M ','1980','500',NULL,'2021-02-09 15:36:00','2021-02-09 15:36:00');
INSERT INTO "Serial_numbers" VALUES (281,41,'3081001','3082000','35mm f/1.4 Summilux-M (ELC.black)','1980','1000',NULL,'2021-02-09 15:36:00','2021-02-09 15:36:00');
INSERT INTO "Serial_numbers" VALUES (282,41,'3139301','3140300','35mm f/1.4 Summilux-M (ELC.black+13-83)','1981','1000',NULL,'2021-02-09 15:36:00','2021-02-09 15:36:00');
INSERT INTO "Serial_numbers" VALUES (283,41,'3191701','3192700','35mm f/1.4 Summilux (ELC.black+13-83)','1982','1000',NULL,'2021-02-09 15:36:00','2021-02-09 15:36:00');
INSERT INTO "Serial_numbers" VALUES (284,41,'3253101','3254100','35mm f/1.4 Summilux-M (ELC.black+13-83)','1983','1000',NULL,'2021-02-09 15:36:00','2021-02-09 15:36:00');
INSERT INTO "Serial_numbers" VALUES (285,41,'3281401','3282400','35mm f/1.4 Summilux-M (ELC.black) ','1983','1000 ~ 3281473 ',NULL,'2021-02-09 15:36:00','2021-02-09 15:36:00');
INSERT INTO "Serial_numbers" VALUES (286,41,'3375001','3375500','35mm f/1.4 Summilux-M (ELC.black)','1985','500',NULL,'2021-02-09 15:36:00','2021-02-09 15:36:00');
INSERT INTO "Serial_numbers" VALUES (287,41,'3394601','3395600','35mm f/1.4 Summilux-M (ELW.black)','1986','1000',NULL,'2021-02-09 15:36:00','2021-02-09 15:36:00');
INSERT INTO "Serial_numbers" VALUES (288,41,'3433001','3434500','35mm f/1.4 Summilux-M ','1987','1500',NULL,'2021-02-09 15:36:00','2021-02-09 15:36:00');
INSERT INTO "Serial_numbers" VALUES (289,41,'3467071','3467570','35mm f/1.4 Summilux-M ','1988','500',NULL,'2021-02-09 15:36:00','2021-02-09 15:36:00');
INSERT INTO "Serial_numbers" VALUES (290,41,'3474701','3475150','35mm f/1.4 Summilux-M (ELW.black)','1988','450',NULL,'2021-02-09 15:36:00','2021-02-09 15:36:00');
INSERT INTO "Serial_numbers" VALUES (291,41,'3501201','3501700','35mm f/1.4 Summilux-M (ELW.black)','1989','500',NULL,'2021-02-09 15:36:00','2021-02-09 15:36:00');
INSERT INTO "Serial_numbers" VALUES (292,41,'3519796','3520295','35mm f/1.4 Summilux-M (ELW.black+titan)','1990','500',NULL,'2021-02-09 15:36:00','2021-02-09 15:36:00');
INSERT INTO "Serial_numbers" VALUES (293,41,'3537468','3538467','35mm f/1.4 Summilux-M ','1990','1000',NULL,'2021-02-09 15:36:00','2021-02-09 15:36:00');
INSERT INTO "Serial_numbers" VALUES (294,41,'3570133','3571132','35mm f/1.4 Summilux-M (titanium)','1991','1000',NULL,'2021-02-09 15:36:00','2021-02-09 15:36:00');
INSERT INTO "Serial_numbers" VALUES (295,41,'3599720','3602719','35mm f/1.4 Summilux-M (ELW.black+titanium)','1992','3000',NULL,'2021-02-09 15:36:00','2021-02-09 15:36:00');
INSERT INTO "Serial_numbers" VALUES (296,41,'3637326','3637625','35mm f/1.4 Summilux-M ','1993','300',NULL,'2021-02-09 15:36:00','2021-02-09 15:36:00');
INSERT INTO "Serial_numbers" VALUES (297,41,'3709803','3710002','35mm f/1.4 Summilux-M ','1995','200',NULL,'2021-02-09 15:36:00','2021-02-09 15:36:00');
INSERT INTO "Serial_numbers" VALUES (298,42,'1730001^','1731100','Summilux f= 5^ cm 1:1.4 (M3+M-chrome)','1960','1100',NULL,'2021-02-09 15:36:00','2021-02-09 15:36:00');
INSERT INTO "Serial_numbers" VALUES (299,42,'1765001^','1766200','Summilux f= 5^ cm 1:1.4 (M3+M-chrome+black)','1960','1200',NULL,'2021-02-09 15:36:00','2021-02-09 15:36:00');
INSERT INTO "Serial_numbers" VALUES (300,42,'1777001','1780000','Summilux f= 5^ cm 1:1.4 (M3+M-chrome+black)','1960','3000',NULL,'2021-02-09 15:36:00','2021-02-09 15:36:00');
INSERT INTO "Serial_numbers" VALUES (301,42,'2060501','2061500','35mm f/1.4 Summilux (M3+M-chrome+S-black) ','1964','1000',NULL,'2021-02-09 15:36:00','2021-02-09 15:36:00');
INSERT INTO "Serial_numbers" VALUES (302,42,'2166501','2167700','35mm f/1.4 Summilux (M3-black+chrom)','1966','1200',NULL,'2021-02-09 15:36:00','2021-02-09 15:36:00');
INSERT INTO "Serial_numbers" VALUES (303,43,'3731291','3731300','35mm f/2 ASPH Summicron-M ','1996','10',NULL,'2021-02-09 15:36:00','2021-02-09 15:36:00');
INSERT INTO "Serial_numbers" VALUES (304,43,'3767100','3768099','35mm f/2 ASPH Summicron-M (black)','1996','1000',NULL,'2021-02-09 15:36:00','2021-02-09 15:36:00');
INSERT INTO "Serial_numbers" VALUES (305,43,'3770930','3771929','35mm f/2 ASPH Summicron-M ','1997','1000',NULL,'2021-02-09 15:36:00','2021-02-09 15:36:00');
INSERT INTO "Serial_numbers" VALUES (306,43,'3785360','3786359','35mm f/2 ASPH Summicron-M (black)','1997','1000',NULL,'2021-02-09 15:36:00','2021-02-09 15:36:00');
INSERT INTO "Serial_numbers" VALUES (307,43,'3800910','3801909','35mm f/2 ASPH Summicron-M ','1997','1000',NULL,'2021-02-09 15:36:00','2021-02-09 15:36:00');
INSERT INTO "Serial_numbers" VALUES (308,43,'3809860','3810859','35mm f/2 ASPH Summicron-M ','1997','1000',NULL,'2021-02-09 15:36:00','2021-02-09 15:36:00');
INSERT INTO "Serial_numbers" VALUES (309,43,'3821625','3822624','35mm f/2 ASPH Summicron-M (silver)','1998','1000',NULL,'2021-02-09 15:36:00','2021-02-09 15:36:00');
INSERT INTO "Serial_numbers" VALUES (310,43,'3845000','3845999','35mm f/2 ASPH Summicron-M (black)','1998','1000',NULL,'2021-02-09 15:36:00','2021-02-09 15:36:00');
INSERT INTO "Serial_numbers" VALUES (311,43,'3846500','3847499','35mm f/2 ASPH Summicron-M (silver)','1998','1000',NULL,'2021-02-09 15:36:00','2021-02-09 15:36:00');
INSERT INTO "Serial_numbers" VALUES (312,43,'3854600','3855599','35mm f/2 ASPH Summicron-M (black)','1998','1000',NULL,'2021-02-09 15:36:00','2021-02-09 15:36:00');
INSERT INTO "Serial_numbers" VALUES (313,43,'3861377','3862376','35mm f/2 ASPH Summicron-M (black)','1999','1000',NULL,'2021-02-09 15:36:00','2021-02-09 15:36:00');
INSERT INTO "Serial_numbers" VALUES (314,43,'3864967*','3865966','35mm f/2 ASPH Summicron-M ','1999','1000',NULL,'2021-02-09 15:36:00','2021-02-09 15:36:00');
INSERT INTO "Serial_numbers" VALUES (315,43,'3867717**','3868266','**Summicron-M 3.5 cm 1:2 (S-silver)','1999','(550) ',NULL,'2021-02-09 15:36:00','2021-02-09 15:36:00');
INSERT INTO "Serial_numbers" VALUES (316,43,'3879377','3880376','35mm f/2 ASPH Summicron-M (S-silver)','1999','1000',NULL,'2021-02-09 15:36:00','2021-02-09 15:36:00');
INSERT INTO "Serial_numbers" VALUES (317,43,'3880747**','3880946','**Summicron-M 3.5 cm 1:2 (S-silver)','1999','(200) ',NULL,'2021-02-09 15:36:00','2021-02-09 15:36:00');
INSERT INTO "Serial_numbers" VALUES (318,43,'3886207','3887206','35mm f/2 ASPH Summicron-M (titan)','2000','1000',NULL,'2021-02-09 15:36:00','2021-02-09 15:36:00');
INSERT INTO "Serial_numbers" VALUES (319,43,'3887707','3888706','35mm f/2 ASPH Summicron-M (black)','2000','1000',NULL,'2021-02-09 15:36:00','2021-02-09 15:36:00');
INSERT INTO "Serial_numbers" VALUES (320,43,'3892351','3893350','35mm f/2 ASPH Summicron-M (black)','2000','1000',NULL,'2021-02-09 15:36:00','2021-02-09 15:36:00');
INSERT INTO "Serial_numbers" VALUES (321,43,'3903076','3904075','35mm f/2 ASPH Summicron-M','2000','1000',NULL,'2021-02-09 15:36:00','2021-02-09 15:36:00');
INSERT INTO "Serial_numbers" VALUES (322,43,'3906626','3907625','35mm f/2 ASPH Summicron-M (silver)','2000','1000',NULL,'2021-02-09 15:36:00','2021-02-09 15:36:00');
INSERT INTO "Serial_numbers" VALUES (323,43,'3912126','3913125','35mm f/2 ASPH Summicron-M ','2001','1000',NULL,'2021-02-09 15:36:00','2021-02-09 15:36:00');
INSERT INTO "Serial_numbers" VALUES (324,43,'3919101','3920100','35mm f/2 ASPH Summicron-M (black+silver)','2001','1000',NULL,'2021-02-09 15:36:00','2021-02-09 15:36:00');
INSERT INTO "Serial_numbers" VALUES (325,43,'3927001','3927200','35mm f/2 ASPH Summicron-M ','2001','200',NULL,'2021-02-09 15:36:00','2021-02-09 15:36:00');
INSERT INTO "Serial_numbers" VALUES (326,43,'3927201','3928000','35mm f/2 ASPH Summicron-M','2001','800',NULL,'2021-02-09 15:36:00','2021-02-09 15:36:00');
INSERT INTO "Serial_numbers" VALUES (327,43,'3934014','3935013','35mm f/2 ASPH Summicron-M (11 879)','2002','1000',NULL,'2021-02-09 15:36:00','2021-02-09 15:36:00');
INSERT INTO "Serial_numbers" VALUES (328,43,'3938514','3939513','35mm f/2 ASPH Summicron-M (11 882+879)','2002','1000',NULL,'2021-02-09 15:36:00','2021-02-09 15:36:00');
INSERT INTO "Serial_numbers" VALUES (329,43,'3944564','3945563','35mm f/2 ASPH Summicron-M ','2002','1000',NULL,'2021-02-09 15:36:00','2021-02-09 15:36:00');
INSERT INTO "Serial_numbers" VALUES (330,43,'3962511','3963510','35mm f/2 ASPH Summicron-M ','2003','1000',NULL,'2021-02-09 15:36:00','2021-02-09 15:36:00');
INSERT INTO "Serial_numbers" VALUES (331,43,'3966511','3967510','35mm f/2 ASPH Summicron-M (LHSA+silver)','2003','1000',NULL,'2021-02-09 15:36:00','2021-02-09 15:36:00');
INSERT INTO "Serial_numbers" VALUES (332,43,'3972486','3973485','35mm f/2 ASPH Summicron-M (LHSAchrom+black)','2003','1000',NULL,'2021-02-09 15:36:00','2021-02-09 15:36:00');
INSERT INTO "Serial_numbers" VALUES (333,43,'3978539','3979538','35mm f/2 ASPH Summicron-M ','2004','1000',NULL,'2021-02-09 15:36:00','2021-02-09 15:36:00');
INSERT INTO "Serial_numbers" VALUES (334,43,'3994221','3997001- ','35mm f/2 ASPH Summicron-M (silver+black)','2004','2,781+ ',NULL,'2021-02-09 15:36:00','2021-02-09 15:36:00');
INSERT INTO "Serial_numbers" VALUES (335,43,'4000001','4010985-','35mm f/2 ASPH Summicron-M (11 879+611)','2005','10,985+ ',NULL,'2021-02-09 15:36:00','2021-02-09 15:36:00');
INSERT INTO "Serial_numbers" VALUES (336,43,'-4044112','4047561-','35mm f/2 ASPH Summicron-M (11 882+611)','2006','3450+ ',NULL,'2021-02-09 15:36:00','2021-02-09 15:36:00');
INSERT INTO "Serial_numbers" VALUES (337,43,'-4066977','4067591-','35mm f/2 ASPH Summicron-M ','2008','615+ ',NULL,'2021-02-09 15:36:00','2021-02-09 15:36:00');
INSERT INTO "Serial_numbers" VALUES (338,43,'-4091269','4110930-','35mm f/2 ASPH Summicron-M (black)','2009','19,662+ 4100261~ ',NULL,'2021-02-09 15:36:00','2021-02-09 15:36:00');
INSERT INTO "Serial_numbers" VALUES (339,43,'-4124393','4135418-','35mm f/2 ASPH Summicron-M (silver+black)','2010','11,026+ ',NULL,'2021-02-09 15:36:00','2021-02-09 15:36:00');
INSERT INTO "Serial_numbers" VALUES (340,43,'-4147543','4147881-','35mm f/2 ASPH Summicron-M (silver)','2011','339+ ',NULL,'2021-02-09 15:36:00','2021-02-09 15:36:00');
INSERT INTO "Serial_numbers" VALUES (341,43,'-4148018','4176365-','35mm f/2 ASPH Summicron-M (black)','2012','28,348+ ',NULL,'2021-02-09 15:36:00','2021-02-09 15:36:00');
INSERT INTO "Serial_numbers" VALUES (342,43,'-4176964','unknown-','35mm f/2 ASPH Summicron-M (silver)','2013','unknown+ ',NULL,'2021-02-09 15:36:00','2021-02-09 15:36:00');
INSERT INTO "Serial_numbers" VALUES (343,43,'-4217388','4225661-','35mm f/2 ASPH Summicron-M (silver)','2014','8274+ ',NULL,'2021-02-09 15:36:00','2021-02-09 15:36:00');
INSERT INTO "Serial_numbers" VALUES (344,43,'-4225979','unknown-','35mm f/2 ASPH Summicron-M (blackchrom)','2015','500',NULL,'2021-02-09 15:36:00','2021-02-09 15:36:00');
INSERT INTO "Serial_numbers" VALUES (345,44,'2974251','2976250','Summicron-M 3.5 cm 1:2 (black)','1979','2000',NULL,'2021-02-09 15:36:00','2021-02-09 15:36:00');
INSERT INTO "Serial_numbers" VALUES (346,44,'3017751','3019750','Summicron-M 3.5 cm 1:2 (black.ELC)','1980','2000',NULL,'2021-02-09 15:36:00','2021-02-09 15:36:00');
INSERT INTO "Serial_numbers" VALUES (347,44,'3061301','3063300','Summicron-M 3.5 cm 1:2 (black)','1980','2000',NULL,'2021-02-09 15:36:00','2021-02-09 15:36:00');
INSERT INTO "Serial_numbers" VALUES (348,44,'3115701','3116700','Summicron-M 3.5 cm 1:2 (black.ELC)','1981','1000',NULL,'2021-02-09 15:36:00','2021-02-09 15:36:00');
INSERT INTO "Serial_numbers" VALUES (349,44,'3145501','3146500','Summicron-M 3.5 cm 1:2 (black.ELC)','1981','1000',NULL,'2021-02-09 15:36:00','2021-02-09 15:36:00');
INSERT INTO "Serial_numbers" VALUES (350,44,'3165001','3166000','Summicron-M 3.5 cm 1:2 (black.ELC)','1982','1000',NULL,'2021-02-09 15:36:00','2021-02-09 15:36:00');
INSERT INTO "Serial_numbers" VALUES (351,44,'3181201','3183200','Summicron-M 3.5 cm 1:2 (13-83+black.ELC)','1982','2000',NULL,'2021-02-09 15:36:00','2021-02-09 15:36:00');
INSERT INTO "Serial_numbers" VALUES (352,44,'3240501','3241700','Summicron-M 3.5 cm 1:2 (13-83+black.ELC)','1982','1200',NULL,'2021-02-09 15:36:00','2021-02-09 15:36:00');
INSERT INTO "Serial_numbers" VALUES (353,44,'3306201','3308200','Summicron-M 3.5 cm 1:2 ','1984','2000',NULL,'2021-02-09 15:36:00','2021-02-09 15:36:00');
INSERT INTO "Serial_numbers" VALUES (354,44,'3354801','3356800','Summicron-M 3.5 cm 1:2 ','1985','2000',NULL,'2021-02-09 15:36:00','2021-02-09 15:36:00');
INSERT INTO "Serial_numbers" VALUES (355,44,'3395601','3397600','Summicron-M 3.5 cm 1:2 (black.ELC)','1986','2000',NULL,'2021-02-09 15:36:00','2021-02-09 15:36:00');
INSERT INTO "Serial_numbers" VALUES (356,44,'3416891','3418890','Summicron-M 3.5 cm 1:2 (black.ELC)','1986','2000',NULL,'2021-02-09 15:36:00','2021-02-09 15:36:00');
INSERT INTO "Serial_numbers" VALUES (357,44,'3440001','3441000','Summicron-M 3.5 cm 1:2 (black.ELC)','1987','1000',NULL,'2021-02-09 15:36:00','2021-02-09 15:36:00');
INSERT INTO "Serial_numbers" VALUES (358,44,'3453071','3454070','Summicron-M 3.5 cm 1:2 (black.ELW)','1987','1000',NULL,'2021-02-09 15:36:00','2021-02-09 15:36:00');
INSERT INTO "Serial_numbers" VALUES (359,44,'3456871','3457370','Summicron-M 3.5 cm 1:2 (black)','1988','500',NULL,'2021-02-09 15:36:00','2021-02-09 15:36:00');
INSERT INTO "Serial_numbers" VALUES (360,44,'3465071','3466070','Summicron-M 3.5 cm 1:2 (black.ELW) ','1988','1000',NULL,'2021-02-09 15:36:00','2021-02-09 15:36:00');
INSERT INTO "Serial_numbers" VALUES (361,44,'3485401','3486400','Summicron-M 3.5 cm 1:2 (black.ELC+ELW)','1989','1000',NULL,'2021-02-09 15:36:00','2021-02-09 15:36:00');
INSERT INTO "Serial_numbers" VALUES (362,44,'3495661','3495900','Summicron-M 3.5 cm 1:2 ','1989','240',NULL,'2021-02-09 15:36:00','2021-02-09 15:36:00');
INSERT INTO "Serial_numbers" VALUES (363,44,'3505151','3506150','Summicron-M 3.5 cm 1:2 ','1990','1000',NULL,'2021-02-09 15:36:00','2021-02-09 15:36:00');
INSERT INTO "Serial_numbers" VALUES (364,44,'3507996','3508995','Summicron-M 3.5 cm 1:2 ','1990','1000',NULL,'2021-02-09 15:36:00','2021-02-09 15:36:00');
INSERT INTO "Serial_numbers" VALUES (365,44,'3521296','3523295','Summicron-M 3.5 cm 1:2 (black)','1990','2000',NULL,'2021-02-09 15:36:00','2021-02-09 15:36:00');
INSERT INTO "Serial_numbers" VALUES (366,44,'3553468','3555467','Summicron-M 3.5 cm 1:2 (black.ELC+ELW)','1991','2000',NULL,'2021-02-09 15:36:00','2021-02-09 15:36:00');
INSERT INTO "Serial_numbers" VALUES (367,44,'3577534','3579533','Summicron-M 3.5 cm 1:2 ','1991','2000',NULL,'2021-02-09 15:36:00','2021-02-09 15:36:00');
INSERT INTO "Serial_numbers" VALUES (368,44,'3590460','3592459','Summicron-M 3.5 cm 1:2 (chrome+black.ELW)','1992','2000',NULL,'2021-02-09 15:36:00','2021-02-09 15:36:00');
INSERT INTO "Serial_numbers" VALUES (369,44,'3603670','3606169','Summicron-M 3.5 cm 1:2 ','1992','2500',NULL,'2021-02-09 15:36:00','2021-02-09 15:36:00');
INSERT INTO "Serial_numbers" VALUES (370,44,'3610980','3613479','Summicron-M 3.5 cm 1:2 (chrome)','1993','2500',NULL,'2021-02-09 15:36:00','2021-02-09 15:36:00');
INSERT INTO "Serial_numbers" VALUES (371,44,'3617895','3617897','Summicron-M 3.5 cm 1:2 ','1993','3',NULL,'2021-02-09 15:36:00','2021-02-09 15:36:00');
INSERT INTO "Serial_numbers" VALUES (372,44,'3637926','3639725','Summicron-M 3.5 cm 1:2 (black.ELW)','1993','1800',NULL,'2021-02-09 15:36:00','2021-02-09 15:36:00');
INSERT INTO "Serial_numbers" VALUES (373,44,'3639726','3641425','Summicron-M 3.5 cm 1:2 (chrome) ','1993','1700',NULL,'2021-02-09 15:36:00','2021-02-09 15:36:00');
INSERT INTO "Serial_numbers" VALUES (374,44,'3681531','3683730','Summicron-M 3.5 cm 1:2 (black)','1995','2200',NULL,'2021-02-09 15:36:00','2021-02-09 15:36:00');
INSERT INTO "Serial_numbers" VALUES (375,44,'3683731','3684930','Summicron-M 3.5 cm 1:2 (chrome)','1995','1200',NULL,'2021-02-09 15:36:00','2021-02-09 15:36:00');
INSERT INTO "Serial_numbers" VALUES (376,44,'3712903','3715402','Summicron-M 3.5 cm 1:2 ','1995','2500',NULL,'2021-02-09 15:36:00','2021-02-09 15:36:00');
INSERT INTO "Serial_numbers" VALUES (377,44,'3715403','3717902','Summicron-M 3.5 cm 1:2 ','1995','2500',NULL,'2021-02-09 15:36:00','2021-02-09 15:36:00');
INSERT INTO "Serial_numbers" VALUES (378,44,'3867717','^ 3868266','Summicron-M 3.5 cm 1:2 ','1999','550',NULL,'2021-02-09 15:36:00','2021-02-09 15:36:00');
INSERT INTO "Serial_numbers" VALUES (379,44,'3878467','3878866','Summicron-M 3.5 cm 1:2 ','1999','400',NULL,'2021-02-09 15:36:00','2021-02-09 15:36:00');
INSERT INTO "Serial_numbers" VALUES (380,44,'3880747','3880946','Summicron-M 3.5 cm 1:2 ','1999','200',NULL,'2021-02-09 15:36:00','2021-02-09 15:36:00');
INSERT INTO "Serial_numbers" VALUES (381,45,'2538251','2542250','Summicron 3.5 cm 1:2 (M-ELC.11 309)','1972','4000',NULL,'2021-02-09 15:36:00','2021-02-09 15:36:00');
INSERT INTO "Serial_numbers" VALUES (382,45,'2610501^^','2613000','^^Elmarit-R 13.5 cm 1:2.8 ','1973','[2500] ',NULL,'2021-02-09 15:36:00','2021-02-09 15:36:00');
INSERT INTO "Serial_numbers" VALUES (383,45,'2661451','2663450','Summicron-M 3.5 cm 1:2 (M-ELC)','1973','2000',NULL,'2021-02-09 15:36:00','2021-02-09 15:36:00');
INSERT INTO "Serial_numbers" VALUES (384,45,'2711351','2713350','Summicron-M 3.5 cm 1:2 (M3+M-ELC)','1974','2000',NULL,'2021-02-09 15:36:00','2021-02-09 15:36:00');
INSERT INTO "Serial_numbers" VALUES (385,45,'2739631','2741630','Summicron 3.5 cm 1:2 (M-ELC.11 309)','1975','2000',NULL,'2021-02-09 15:36:00','2021-02-09 15:36:00');
INSERT INTO "Serial_numbers" VALUES (386,45,'2750631','2750750','Summicron-M 3.5 cm 1:2 (M-ELW)','1975','120',NULL,'2021-02-09 15:36:00','2021-02-09 15:36:00');
INSERT INTO "Serial_numbers" VALUES (387,45,'2773851','2775850','Summicron 3.5 cm 1:2 (M-ELC.11 309)','1976','2000',NULL,'2021-02-09 15:36:00','2021-02-09 15:36:00');
INSERT INTO "Serial_numbers" VALUES (388,45,'2813401','2814900','Summicron 3.5 cm 1:2 ','1977','1500',NULL,'2021-02-09 15:36:00','2021-02-09 15:36:00');
INSERT INTO "Serial_numbers" VALUES (389,45,'2826351','2827350','Summicron 3.5 cm 1:2 (M-ELC)','1977','1000',NULL,'2021-02-09 15:36:00','2021-02-09 15:36:00');
INSERT INTO "Serial_numbers" VALUES (390,45,'2870601','2871600','Summicron 3.5 cm 1:2 ','1977','1000',NULL,'2021-02-09 15:36:00','2021-02-09 15:36:00');
INSERT INTO "Serial_numbers" VALUES (391,45,'2897401','2899400','^Focotar 4.0 cm 1:2.8 ','1977','[2000] ',NULL,'2021-02-09 15:36:00','2021-02-09 15:36:00');
INSERT INTO "Serial_numbers" VALUES (392,46,'2316001','2318400','Summicron 3.5 cm 1:2 (M-black.ELC)','1969','2400',NULL,'2021-02-09 15:36:00','2021-02-09 15:36:00');
INSERT INTO "Serial_numbers" VALUES (393,46,'2328801','2330800','Summicron 3.5 cm 1:2 ','1969','2000',NULL,'2021-02-09 15:36:00','2021-02-09 15:36:00');
INSERT INTO "Serial_numbers" VALUES (394,46,'2358301*','2360000','Summicron-R* 5 cm 1:2 ','1970','[1700] ',NULL,'2021-02-09 15:36:00','2021-02-09 15:36:00');
INSERT INTO "Serial_numbers" VALUES (395,46,'2393401','2395400','Summicron 3.5 cm 1:2 (M-black.ELW)','1970','2000',NULL,'2021-02-09 15:36:00','2021-02-09 15:36:00');
INSERT INTO "Serial_numbers" VALUES (396,46,'2446001','2448000','Summicron 3.5 cm 1:2 (M-black.ELC)','1970','2000',NULL,'2021-02-09 15:36:00','2021-02-09 15:36:00');
INSERT INTO "Serial_numbers" VALUES (397,46,'2460501','2462500','Summicron 3.5 cm 1:2 (M+S-black.ELC)','1970','2000',NULL,'2021-02-09 15:36:00','2021-02-09 15:36:00');
INSERT INTO "Serial_numbers" VALUES (398,46,'2483201','2485200','Summicron 3.5 cm 1:2 (M-black.ELC)','1971','2000',NULL,'2021-02-09 15:36:00','2021-02-09 15:36:00');
INSERT INTO "Serial_numbers" VALUES (399,47,'1567001','^1572000','Summicron ^5 cm 1:2 ','1958','[5000] ',NULL,'2021-02-09 15:36:00','2021-02-09 15:36:00');
INSERT INTO "Serial_numbers" VALUES (400,47,'1630501','1632500','Summicron 3.5 cm 1:2 (M3+M-chrome+black)','1958','2000',NULL,'2021-02-09 15:36:00','2021-02-09 15:36:00');
INSERT INTO "Serial_numbers" VALUES (401,47,'1652001','1652450','Summicron 3.5 cm 1:2 (S-chrome.ELC)','1959','450',NULL,'2021-02-09 15:36:00','2021-02-09 15:36:00');
INSERT INTO "Serial_numbers" VALUES (402,47,'1653451','1657450','Summicron 3.5 cm 1:2 (ELC.M3+M+S-chrome+M-black)','1959','4000',NULL,'2021-02-09 15:36:00','2021-02-09 15:36:00');
INSERT INTO "Serial_numbers" VALUES (403,47,'1671001','1672500','Summicron 3.5 cm 1:2 (S-ELC+M3-ELW.chrome)','1959','1500',NULL,'2021-02-09 15:36:00','2021-02-09 15:36:00');
INSERT INTO "Serial_numbers" VALUES (404,47,'1686001','1688000','Summicron 3.5 cm 1:2 (ELC+ELW-M3+ELW-S.chrom) ','1959','2000',NULL,'2021-02-09 15:36:00','2021-02-09 15:36:00');
INSERT INTO "Serial_numbers" VALUES (405,47,'1740001*','1746500','Summicron f= 9* cm 1:2 (ELC.M-black+chrom)','1960','[6500] ',NULL,'2021-02-09 15:36:00','2021-02-09 15:36:00');
INSERT INTO "Serial_numbers" VALUES (406,47,'1780001','1782000','Summicron 3.5 cm 1:2 (M+S-chrome)','1960','2000',NULL,'2021-02-09 15:36:00','2021-02-09 15:36:00');
INSERT INTO "Serial_numbers" VALUES (407,47,'1852001','1854000','Summicron 3.5 cm 1:2 (M-chrome+M.S-black)','1961','2000',NULL,'2021-02-09 15:36:00','2021-02-09 15:36:00');
INSERT INTO "Serial_numbers" VALUES (408,47,'1854111','**1875000','**Dygon-Vorsatz 9 cm 1:2 ','1961','[20890] ',NULL,'2021-02-09 15:36:00','2021-02-09 15:36:00');
INSERT INTO "Serial_numbers" VALUES (409,47,'1929001','1930200','Summicron 3.5 cm 1:2 (ELW.M3+M-black 11 108)','1962','1200',NULL,'2021-02-09 15:36:00','2021-02-09 15:36:00');
INSERT INTO "Serial_numbers" VALUES (410,47,'1970501','1972000','Summicron 3.5 cm 1:2 (ELW+ELC.M3+M-black+chrome)','1963','1500',NULL,'2021-02-09 15:36:00','2021-02-09 15:36:00');
INSERT INTO "Serial_numbers" VALUES (411,47,'1996001','1999000','Summicron 3.5 cm 1:2 (ELW.M3+M-black+chrom)','1963','3000',NULL,'2021-02-09 15:36:00','2021-02-09 15:36:00');
INSERT INTO "Serial_numbers" VALUES (412,47,'2009501','2011000','Summicron 3.5 cm 1:2 (11 108)','1963','1500',NULL,'2021-02-09 15:36:00','2021-02-09 15:36:00');
INSERT INTO "Serial_numbers" VALUES (413,47,'2047001','2048500','Summicron 3.5 cm 1:2 (M3-chrome)','1964','1500',NULL,'2021-02-09 15:36:00','2021-02-09 15:36:00');
INSERT INTO "Serial_numbers" VALUES (414,47,'2065501','2067000','Summicron 3.5 cm 1:2 (ELC.M-chrome)','1964','1500',NULL,'2021-02-09 15:36:00','2021-02-09 15:36:00');
INSERT INTO "Serial_numbers" VALUES (415,47,'2097901','2099900','Summicron 3.5 cm 1:2 (ELC.M-chrome)','1965','2000',NULL,'2021-02-09 15:36:00','2021-02-09 15:36:00');
INSERT INTO "Serial_numbers" VALUES (416,47,'2102901','2103900','Summicron 3.5 cm 1:2 (ELC.M-chrome)','1965','1000',NULL,'2021-02-09 15:36:00','2021-02-09 15:36:00');
INSERT INTO "Serial_numbers" VALUES (417,47,'2132951','2134950','Summicron 3.5 cm 1:2 (M3+M-chrome)','1966','2000',NULL,'2021-02-09 15:36:00','2021-02-09 15:36:00');
INSERT INTO "Serial_numbers" VALUES (418,47,'2167701','2168700','Summicron 3.5 cm 1:2 (ELC-chrom)','1966','1000',NULL,'2021-02-09 15:36:00','2021-02-09 15:36:00');
INSERT INTO "Serial_numbers" VALUES (419,47,'2194901','2196900','Summicron 3.5 cm 1:2 (M-chrome+black)','1966','2000',NULL,'2021-02-09 15:36:00','2021-02-09 15:36:00');
INSERT INTO "Serial_numbers" VALUES (420,47,'2222201','2223200','Summicron 3.5 cm 1:2 (ELC.M-chrome)','1967','1000',NULL,'2021-02-09 15:36:00','2021-02-09 15:36:00');
INSERT INTO "Serial_numbers" VALUES (421,47,'2274251','2276250','Summicron 3.5 cm 1:2 (M-chrome+black)','1968','2000',NULL,'2021-02-09 15:36:00','2021-02-09 15:36:00');
INSERT INTO "Serial_numbers" VALUES (422,47,'2285451','2286450','Summicron 3.5 cm 1:2 (ELC.M-chrome)','1968','1000',NULL,'2021-02-09 15:36:00','2021-02-09 15:36:00');
INSERT INTO "Serial_numbers" VALUES (423,47,'2307451','2307750','Summicron 3.5 cm 1:2 (M-black.ELW)','1968','300',NULL,'2021-02-09 15:36:00','2021-02-09 15:36:00');
INSERT INTO "Serial_numbers" VALUES (424,47,'2312751','2314750','Summicron 3.5 cm 1:2 (M-chrom+black.ELW)','1969','2000',NULL,'2021-02-09 15:36:00','2021-02-09 15:36:00');
INSERT INTO "Serial_numbers" VALUES (425,48,'-unknown','4302424-','35mm f/2.4 ASPH. Summarit-M (black)','2014','unknown ',NULL,'2021-02-09 15:36:00','2021-02-09 15:36:00');
INSERT INTO "Serial_numbers" VALUES (426,48,'-4302427','unknown-','35mm f/2.4 ASPH. Summarit-M (silver)','2014','unknown ',NULL,'2021-02-09 15:36:00','2021-02-09 15:36:00');
INSERT INTO "Serial_numbers" VALUES (427,49,'-4049183','4063533-','35mm f/2.5 Summarit-M ','2007-08','14,351+ ',NULL,'2021-02-09 15:36:00','2021-02-09 15:36:00');
INSERT INTO "Serial_numbers" VALUES (428,49,'-4102070','4125785-','35mm f/2.5 Summarit-M ','2009-12','23,716+ ',NULL,'2021-02-09 15:36:00','2021-02-09 15:36:00');
INSERT INTO "Serial_numbers" VALUES (429,49,'-4151005','4168648-','35mm f/2.5 Summarit-M ','2013','17,644+ ',NULL,'2021-02-09 15:36:00','2021-02-09 15:36:00');
INSERT INTO "Serial_numbers" VALUES (430,49,'-unknown','4233953-','35mm f/2.5 Summarit-M ','2014','unknown+ ',NULL,'2021-02-09 15:36:00','2021-02-09 15:36:00');
INSERT INTO "Serial_numbers" VALUES (431,50,'1423001**','1426000','Summaron 3.5 cm 1:3.5** ','1958','[3000] ',NULL,'2021-02-09 15:36:00','2021-02-09 15:36:00');
INSERT INTO "Serial_numbers" VALUES (432,50,'1594001**','1597000','Summaron 3.5 cm 1:3.5** ','1958','[3000] ',NULL,'2021-02-09 15:36:00','2021-02-09 15:36:00');
INSERT INTO "Serial_numbers" VALUES (433,50,'1615001','1616000','Summaron 3.5 cm 1:2.8 (M)','1958','1000',NULL,'2021-02-09 15:36:00','2021-02-09 15:36:00');
INSERT INTO "Serial_numbers" VALUES (434,50,'1627001','1630000','Summaron 3.5 cm 1:2.8 (M3+M+S)','1958','3000',NULL,'2021-02-09 15:36:00','2021-02-09 15:36:00');
INSERT INTO "Serial_numbers" VALUES (435,50,'1662001','1668000','Summaron 3.5 cm 1:2.8 (M3+S)','1959','6000',NULL,'2021-02-09 15:36:00','2021-02-09 15:36:00');
INSERT INTO "Serial_numbers" VALUES (436,50,'1677001','1680000','Summaron *5.6 cm 1:2.8 (M3+M+S+3crown)','1959','3000',NULL,'2021-02-09 15:36:00','2021-02-09 15:36:00');
INSERT INTO "Serial_numbers" VALUES (437,50,'1694001','1697000','Summaron 3.5 cm 1:2.8 (M3+M+S)','1959','3000',NULL,'2021-02-09 15:36:00','2021-02-09 15:36:00');
INSERT INTO "Serial_numbers" VALUES (438,50,'1730001^','1731100','^Summilux 5 cm 1:1.4 ','1960','[1100] ',NULL,'2021-02-09 15:36:00','2021-02-09 15:36:00');
INSERT INTO "Serial_numbers" VALUES (439,50,'1731101','1733000','Summaron 3.5 cm 1:2.8 (M3)','1960','1900',NULL,'2021-02-09 15:36:00','2021-02-09 15:36:00');
INSERT INTO "Serial_numbers" VALUES (440,50,'1754001','1756000','Summaron 3.5 cm 1:2.8 (S)','1960','2000',NULL,'2021-02-09 15:36:00','2021-02-09 15:36:00');
INSERT INTO "Serial_numbers" VALUES (441,50,'1782001','1784000','Summaron 3.5 cm 1:2.8 (M3+M)','1960','2000',NULL,'2021-02-09 15:36:00','2021-02-09 15:36:00');
INSERT INTO "Serial_numbers" VALUES (442,50,'1808001','1809000','Summaron 3.5 cm 1:2.8 (M3) ','1960','1000',NULL,'2021-02-09 15:36:00','2021-02-09 15:36:00');
INSERT INTO "Serial_numbers" VALUES (443,50,'1810001','1811000','Summaron 3.5 cm 1:2.8 (M3+M1-oliv)','1960','1000',NULL,'2021-02-09 15:36:00','2021-02-09 15:36:00');
INSERT INTO "Serial_numbers" VALUES (444,50,'1814001','1816000','Summaron 3.5 cm 1:2.8 (M)','1960','2000',NULL,'2021-02-09 15:36:00','2021-02-09 15:36:00');
INSERT INTO "Serial_numbers" VALUES (445,50,'1903001','1906000','Summaron 3.5 cm 1:2.8 (M3+M+S)','1961','3000',NULL,'2021-02-09 15:36:00','2021-02-09 15:36:00');
INSERT INTO "Serial_numbers" VALUES (446,50,'1921001','1924000','Summaron 3.5 cm 1:2.8 (M3+M+S)','1962','3000',NULL,'2021-02-09 15:36:00','2021-02-09 15:36:00');
INSERT INTO "Serial_numbers" VALUES (447,50,'1930201','1932700','Summaron 3.5 cm 1:2.8 (M3+M+S)','1962','2500',NULL,'2021-02-09 15:36:00','2021-02-09 15:36:00');
INSERT INTO "Serial_numbers" VALUES (448,50,'1947001','1950000','Summaron 3.5 cm 1:2.8 (M3+M)','1962','3000',NULL,'2021-02-09 15:36:00','2021-02-09 15:36:00');
INSERT INTO "Serial_numbers" VALUES (449,50,'2006001','2007500','Summaron 3.5 cm 1:2.8 (M3)','1963','1500',NULL,'2021-02-09 15:36:00','2021-02-09 15:36:00');
INSERT INTO "Serial_numbers" VALUES (450,50,'2049501','2051000','Summaron 3.5 cm 1:2.8 (M3+M)','1964','1500',NULL,'2021-02-09 15:36:00','2021-02-09 15:36:00');
INSERT INTO "Serial_numbers" VALUES (451,50,'2080501','2082500','Summaron 3.5 cm 1:2.8 (M3+M+black) ','1965','2000',NULL,'2021-02-09 15:36:00','2021-02-09 15:36:00');
INSERT INTO "Serial_numbers" VALUES (452,50,'2100901','2102900','Summaron 3.5 cm 1:2.8 (M3+M) ','1965','2000',NULL,'2021-02-09 15:36:00','2021-02-09 15:36:00');
INSERT INTO "Serial_numbers" VALUES (453,50,'2152551','2154550','Summaron 3.5 cm 1:2.8 (M) ','1965','2000',NULL,'2021-02-09 15:36:00','2021-02-09 15:36:00');
INSERT INTO "Serial_numbers" VALUES (454,50,'2217201','2219200','Summaron 3.5 cm 1:2.8 (M3+M)','1967','2000',NULL,'2021-02-09 15:36:00','2021-02-09 15:36:00');
INSERT INTO "Serial_numbers" VALUES (455,50,'2240001','2241000','Summaron 3.5 cm 1:2.8 ','1967','1000',NULL,'2021-02-09 15:36:00','2021-02-09 15:36:00');
INSERT INTO "Serial_numbers" VALUES (456,50,'2309751','2312750','Summaron 3.5 cm 1:2.8 (M3+M-black+M-chrom)','1968','3000',NULL,'2021-02-09 15:36:00','2021-02-09 15:36:00');
INSERT INTO "Serial_numbers" VALUES (457,51,'706001','707000','Summaron 3.5 cm 1:3.5 ','1949','1000',NULL,'2021-02-09 15:36:00','2021-02-09 15:36:00');
INSERT INTO "Serial_numbers" VALUES (458,51,'712001','715000','Summaron 3.5 cm 1:3.5 (S)','1949','3000',NULL,'2021-02-09 15:36:00','2021-02-09 15:36:00');
INSERT INTO "Serial_numbers" VALUES (459,51,'750001','753000','Summaron 3.5 cm 1:3.5 (S)','1949','3000',NULL,'2021-02-09 15:36:00','2021-02-09 15:36:00');
INSERT INTO "Serial_numbers" VALUES (460,51,'765001','768000','Summaron 3.5 cm 1:3.5 (S)','1950','3000',NULL,'2021-02-09 15:36:00','2021-02-09 15:36:00');
INSERT INTO "Serial_numbers" VALUES (461,51,'775001','782000','Summaron 3.5 cm 1:3.5 (S)','1950','7000',NULL,'2021-02-09 15:36:00','2021-02-09 15:36:00');
INSERT INTO "Serial_numbers" VALUES (462,51,'840001','845000','Summaron 3.5 cm 1:3.5 (S+M3-w/o-specs)','1951','5000',NULL,'2021-02-09 15:36:00','2021-02-09 15:36:00');
INSERT INTO "Serial_numbers" VALUES (463,51,'880001','890000','Summaron 3.5 cm 1:3.5 (S)','1951','10000',NULL,'2021-02-09 15:36:00','2021-02-09 15:36:00');
INSERT INTO "Serial_numbers" VALUES (464,51,'956501','957500','Summaron 3.5 cm 1:3.5 ','1952','1000',NULL,'2021-02-09 15:36:00','2021-02-09 15:36:00');
INSERT INTO "Serial_numbers" VALUES (465,51,'972001','977000','Summaron 3.5 cm 1:3.5 (S)','1952','5000',NULL,'2021-02-09 15:36:00','2021-02-09 15:36:00');
INSERT INTO "Serial_numbers" VALUES (466,51,'1004001','1008000','Summaron 3.5 cm 1:3.5 (S)','1952','4000',NULL,'2021-02-09 15:36:00','2021-02-09 15:36:00');
INSERT INTO "Serial_numbers" VALUES (467,51,'1015001','1020000','Summaron 3.5 cm 1:3.5 (S)','1952','5000',NULL,'2021-02-09 15:36:00','2021-02-09 15:36:00');
INSERT INTO "Serial_numbers" VALUES (468,51,'1058001','1063000','Summaron 3.5 cm 1:3.5 (S)','1953','5000',NULL,'2021-02-09 15:36:00','2021-02-09 15:36:00');
INSERT INTO "Serial_numbers" VALUES (469,51,'1106001','1110000','Summaron 3.5 cm 1:3.5 (S)','1953','4000',NULL,'2021-02-09 15:36:00','2021-02-09 15:36:00');
INSERT INTO "Serial_numbers" VALUES (470,51,'1148001','1148221','Summaron 3.5 cm 1:3.5 ','1954','221',NULL,'2021-02-09 15:36:00','2021-02-09 15:36:00');
INSERT INTO "Serial_numbers" VALUES (471,51,'1148222^','1149100','^Elmar 5 cm 1:3.5 ','1954','[879] ',NULL,'2021-02-09 15:36:00','2021-02-09 15:36:00');
INSERT INTO "Serial_numbers" VALUES (472,51,'1149101','1151000','Summaron 3.5 cm 1:3.5 (M3-w/o-specs)','1954','1900',NULL,'2021-02-09 15:36:00','2021-02-09 15:36:00');
INSERT INTO "Serial_numbers" VALUES (473,51,'1157001','1160500','Summaron 3.5 cm 1:3.5 (S)','1954','3500',NULL,'2021-02-09 15:36:00','2021-02-09 15:36:00');
INSERT INTO "Serial_numbers" VALUES (474,51,'1175501','**1178000','**Summicron 5 cm 1:2 (M)','1954','[2500] ',NULL,'2021-02-09 15:36:00','2021-02-09 15:36:00');
INSERT INTO "Serial_numbers" VALUES (475,51,'1178501','1182000','Summaron 3.5 cm 1:3.5 (M)','1954','3500',NULL,'2021-02-09 15:36:00','2021-02-09 15:36:00');
INSERT INTO "Serial_numbers" VALUES (476,51,'1220001','1223000','Summaron 3.5 cm 1:3.5 (S)','1954','3000',NULL,'2021-02-09 15:36:00','2021-02-09 15:36:00');
INSERT INTO "Serial_numbers" VALUES (477,51,'1224201','1228000','Summaron 3.5 cm 1:3.5 (M+S)','1954','3800',NULL,'2021-02-09 15:36:00','2021-02-09 15:36:00');
INSERT INTO "Serial_numbers" VALUES (478,51,'1257001','1260000','Summaron 3.5 cm 1:3.5 ','1955','3000',NULL,'2021-02-09 15:36:00','2021-02-09 15:36:00');
INSERT INTO "Serial_numbers" VALUES (479,51,'1272001','1275000','Summaron 3.5 cm 1:3.5 (M3+M)','1955','3000',NULL,'2021-02-09 15:36:00','2021-02-09 15:36:00');
INSERT INTO "Serial_numbers" VALUES (480,51,'1282001','1285000','Summaron 3.5 cm 1:3.5 (M3)','1955','3000',NULL,'2021-02-09 15:36:00','2021-02-09 15:36:00');
INSERT INTO "Serial_numbers" VALUES (481,51,'1288001','*1291000','Summaron 3.5 cm 1:3.5 (M3+M)','1955','3000',NULL,'2021-02-09 15:36:00','2021-02-09 15:36:00');
INSERT INTO "Serial_numbers" VALUES (482,51,'1300001','1300700','Summaron 3.5 cm 1:3.5 ','1955','700',NULL,'2021-02-09 15:36:00','2021-02-09 15:36:00');
INSERT INTO "Serial_numbers" VALUES (483,51,'1305501','1309000','Summaron 3.5 cm 1:3.5 (S-chrom)','1955','3500',NULL,'2021-02-09 15:36:00','2021-02-09 15:36:00');
INSERT INTO "Serial_numbers" VALUES (484,51,'1360001','1363000','Summaron 3.5 cm 1:3.5 (M3.11107.chrom+black-specs) ','1956','3000',NULL,'2021-02-09 15:36:00','2021-02-09 15:36:00');
INSERT INTO "Serial_numbers" VALUES (485,51,'1423001','1426000','Summaron 3.5 cm 1:3.5 ','1956','3000',NULL,'2021-02-09 15:36:00','2021-02-09 15:36:00');
INSERT INTO "Serial_numbers" VALUES (486,51,'1435001','1438000','Summaron 3.5 cm 1:3.5 (M3-chrom)','1956','3000',NULL,'2021-02-09 15:36:00','2021-02-09 15:36:00');
INSERT INTO "Serial_numbers" VALUES (487,51,'1483701','1486000','Summaron 3.5 cm 1:3.5 (M3+S-chrom)','1957','2300',NULL,'2021-02-09 15:36:00','2021-02-09 15:36:00');
INSERT INTO "Serial_numbers" VALUES (488,51,'1486701','1490000','Summaron 3.5 cm 1:3.5 (M3-chrom)','1957','3300',NULL,'2021-02-09 15:36:00','2021-02-09 15:36:00');
INSERT INTO "Serial_numbers" VALUES (489,51,'1518001','1521000','Summaron 3.5 cm 1:3.5 (M3+S-chrom)','1957','3000',NULL,'2021-02-09 15:36:00','2021-02-09 15:36:00');
INSERT INTO "Serial_numbers" VALUES (490,51,'1552001','1557000','Summaron 3.5 cm 1:3.5 (S+M+M3-chrom+specs)','1958','5000',NULL,'2021-02-09 15:36:00','2021-02-09 15:36:00');
INSERT INTO "Serial_numbers" VALUES (491,51,'1562001','1566000','Summaron 3.5 cm 1:3.5 (M+M3-chrom.11105)','1958','4000',NULL,'2021-02-09 15:36:00','2021-02-09 15:36:00');
INSERT INTO "Serial_numbers" VALUES (492,51,'1594001','1597000','Summaron 3.5 cm 1:3.5 (S)','1958','3000',NULL,'2021-02-09 15:36:00','2021-02-09 15:36:00');
INSERT INTO "Serial_numbers" VALUES (493,51,'1613001','1615000','Summaron 3.5 cm 1:3.5 (S+M-chrom)','1958','2000',NULL,'2021-02-09 15:36:00','2021-02-09 15:36:00');
INSERT INTO "Serial_numbers" VALUES (494,51,'1638501','1640500','Summaron 3.5 cm 1:3.5 (S+M-chrom)','1958','2000',NULL,'2021-02-09 15:36:00','2021-02-09 15:36:00');
INSERT INTO "Serial_numbers" VALUES (495,51,'1690501','1690800','Summaron 3.5 cm 1:3.5 ','1959','300',NULL,'2021-02-09 15:36:00','2021-02-09 15:36:00');
INSERT INTO "Serial_numbers" VALUES (496,69,'-4078794','4117764-','50mm f/0.95 ASPH Noctilux-M (black)','2008-2010','38,971+ ~4104688 ',NULL,'2021-02-09 15:36:00','2021-02-09 15:36:00');
INSERT INTO "Serial_numbers" VALUES (497,69,'-4137638','4146436-','50mm f/0.95 ASPH Noctilux-M (black)','2011-2012','8,799+ ~4138043 ',NULL,'2021-02-09 15:36:00','2021-02-09 15:36:00');
INSERT INTO "Serial_numbers" VALUES (498,69,'-4205351','4221670-','50mm f/0.95 ASPH Noctilux-M (black + silver)','2013','16,320+ ',NULL,'2021-02-09 15:36:00','2021-02-09 15:36:00');
INSERT INTO "Serial_numbers" VALUES (499,69,'~4240704 ','4240781~ ','50mm f/0.95 ASPH Noctilux-M (black + silver)','2014','78+ ',NULL,'2021-02-09 15:36:00','2021-02-09 15:36:00');
INSERT INTO "Serial_numbers" VALUES (500,68,'2749631','2750630','50mm f/1 Noctilux (11 821-1st)','1975','1000 ~2750503 ',NULL,'2021-02-09 15:36:00','2021-02-09 15:36:00');
INSERT INTO "Serial_numbers" VALUES (501,68,'2853851','2854850','50mm f/1 Noctilux (11 821-1st)','1977','1000',NULL,'2021-02-09 15:36:00','2021-02-09 15:36:00');
INSERT INTO "Serial_numbers" VALUES (502,68,'2913801','2914800','50mm f/1 Noctilux (11 821-1st)','1978','1000',NULL,'2021-02-09 15:36:00','2021-02-09 15:36:00');
INSERT INTO "Serial_numbers" VALUES (503,68,'2918901','2919900','50mm f/1 Noctilux (11 821-1st+2nd)','1978','1000',NULL,'2021-02-09 15:36:00','2021-02-09 15:36:00');
INSERT INTO "Serial_numbers" VALUES (504,68,'3114001','3114700','50mm f/1 Noctilux (11 821+822-1st+2nd)','1981','700',NULL,'2021-02-09 15:36:00','2021-02-09 15:36:00');
INSERT INTO "Serial_numbers" VALUES (505,68,'3153501','3154500','50mm f/1 Noctilux (11 821-2nd)','1981','1000',NULL,'2021-02-09 15:36:00','2021-02-09 15:36:00');
INSERT INTO "Serial_numbers" VALUES (506,68,'3220001','3221000','50mm f/1 Noctilux (11 821-2nd+3rd)','1982','1000',NULL,'2021-02-09 15:36:00','2021-02-09 15:36:00');
INSERT INTO "Serial_numbers" VALUES (507,68,'3406201','3406700','50mm f/1 Noctilux-M (11 821-3rd)','1986','500',NULL,'2021-02-09 15:36:00','2021-02-09 15:36:00');
INSERT INTO "Serial_numbers" VALUES (508,68,'3434501','3435000','50mm f/1 Noctilux (11 821-3rd)','1986','500',NULL,'2021-02-09 15:36:00','2021-02-09 15:36:00');
INSERT INTO "Serial_numbers" VALUES (509,68,'3442401','3442900','50mm f/1 Noctilux (11 821-3rd)','1987','500 ~3442659 ',NULL,'2021-02-09 15:36:00','2021-02-09 15:36:00');
INSERT INTO "Serial_numbers" VALUES (510,68,'3478151','3478650','50mm f/1 Noctilux-M (11 821-3rd)','1988','500',NULL,'2021-02-09 15:36:00','2021-02-09 15:36:00');
INSERT INTO "Serial_numbers" VALUES (511,68,'3497901','3498200','50mm f/1 Noctilux (3rd)','1989','300',NULL,'2021-02-09 15:36:00','2021-02-09 15:36:00');
INSERT INTO "Serial_numbers" VALUES (512,68,'3510296','3510795','50mm f/1 Noctilux-M (3rd)','1990','500',NULL,'2021-02-09 15:36:00','2021-02-09 15:36:00');
INSERT INTO "Serial_numbers" VALUES (513,68,'3533468','3533967','50mm f/1 Noctilux-M (3rd)','1990','500',NULL,'2021-02-09 15:36:00','2021-02-09 15:36:00');
INSERT INTO "Serial_numbers" VALUES (514,68,'3569473','3569972','50mm f/1 Noctilux-M (3rd)','1991','500',NULL,'2021-02-09 15:36:00','2021-02-09 15:36:00');
INSERT INTO "Serial_numbers" VALUES (515,68,'3603070','3603669','50mm f/1 Noctilux-M (3rd)','1992','600',NULL,'2021-02-09 15:36:00','2021-02-09 15:36:00');
INSERT INTO "Serial_numbers" VALUES (516,68,'3617898','3617899','50mm f/1 Noctilux-M (11 822-4th)','1993','2',NULL,'2021-02-09 15:36:00','2021-02-09 15:36:00');
INSERT INTO "Serial_numbers" VALUES (517,68,'3637776','3637925','50mm f/1 Noctilux-M (11 822-4th)','1993','150',NULL,'2021-02-09 15:36:00','2021-02-09 15:36:00');
INSERT INTO "Serial_numbers" VALUES (518,68,'3680931','3681530','50mm f/1 Noctilux-M (11 822-4th)','1995','600',NULL,'2021-02-09 15:36:00','2021-02-09 15:36:00');
INSERT INTO "Serial_numbers" VALUES (519,68,'3737701','3738700','50mm f/1 Noctilux-M (11 822-4th)','1996','1000',NULL,'2021-02-09 15:36:00','2021-02-09 15:36:00');
INSERT INTO "Serial_numbers" VALUES (520,68,'3813125','3815124','50mm f/1 Noctilux-M (11 822-4th)','1997','2000',NULL,'2021-02-09 15:36:00','2021-02-09 15:36:00');
INSERT INTO "Serial_numbers" VALUES (521,68,'3913143','3913222','50mm f/1 Noctilux-M (11 822-4th)','2001','80',NULL,'2021-02-09 15:36:00','2021-02-09 15:36:00');
INSERT INTO "Serial_numbers" VALUES (522,68,'3928201','3928463','50mm f/1 Noctilux-M (11 822-4th)','2001','263',NULL,'2021-02-09 15:36:00','2021-02-09 15:36:00');
INSERT INTO "Serial_numbers" VALUES (523,68,'3940114','3940613','50mm f/1 Noctilux-M (11 822-4th)','2002','500',NULL,'2021-02-09 15:36:00','2021-02-09 15:36:00');
INSERT INTO "Serial_numbers" VALUES (524,68,'3956561','3957060','50mm f/1 Noctilux-M (11 822-4th)','2002','500',NULL,'2021-02-09 15:36:00','2021-02-09 15:36:00');
INSERT INTO "Serial_numbers" VALUES (525,68,'3978039','3978538','50mm f/1 Noctilux-M (11 822-4th)','2004','500',NULL,'2021-02-09 15:36:00','2021-02-09 15:36:00');
INSERT INTO "Serial_numbers" VALUES (526,68,'3984534','3985033','50mm f/1 Noctilux-M (11 822-4th)','2004','500',NULL,'2021-02-09 15:36:00','2021-02-09 15:36:00');
INSERT INTO "Serial_numbers" VALUES (527,68,'-3985143','3985747-','50mm f/1 Noctilux-M (11 603)','2006-2008','500+ ',NULL,'2021-02-09 15:36:00','2021-02-09 15:36:00');
INSERT INTO "Serial_numbers" VALUES (528,67,'2176701','2176900','50mm f/1.2 Noctilux ','1966','200',NULL,'2021-02-09 15:36:00','2021-02-09 15:36:00');
INSERT INTO "Serial_numbers" VALUES (529,67,'2247651','2247900','50mm f/1.2 Noctilux ','1967','250',NULL,'2021-02-09 15:36:00','2021-02-09 15:36:00');
INSERT INTO "Serial_numbers" VALUES (530,67,'2254401','2255400','50mm f/1.2 Noctilux ','1968','1000',NULL,'2021-02-09 15:36:00','2021-02-09 15:36:00');
INSERT INTO "Serial_numbers" VALUES (531,67,'2556551','2557550','50mm f/1.2 Noctilux ','1973','1000',NULL,'2021-02-09 15:36:00','2021-02-09 15:36:00');
INSERT INTO "Serial_numbers" VALUES (532,66,'-3979722','3992771-','Summilux-M f= 5 cm 1:1.4 (black+titan+chrom.MP3)','2006','13,050+ ~ 3992701 (silver) ',NULL,'2021-02-09 15:36:00','2021-02-09 15:36:00');
INSERT INTO "Serial_numbers" VALUES (533,66,'-4000044','4011769-','Summilux-M f= 5 cm 1:1.4 (black+silver)','2007','11,726+ ',NULL,'2021-02-09 15:36:00','2021-02-09 15:36:00');
INSERT INTO "Serial_numbers" VALUES (534,66,'-4038335','4069477-','Summilux-M f= 5 cm 1:1.4 (black)','2008','31,143+ ~4038372 ',NULL,'2021-02-09 15:36:00','2021-02-09 15:36:00');
INSERT INTO "Serial_numbers" VALUES (535,66,'-4069765','4102485-','Summilux-M f= 5 cm 1:1.4 (black+silver)','2009','32,721+ ',NULL,'2021-02-09 15:36:00','2021-02-09 15:36:00');
INSERT INTO "Serial_numbers" VALUES (536,66,'-4102545','4116998-','Summilux-M f= 5 cm 1:1.4 (black+silver)','2010','14,454+ ~4104176 ',NULL,'2021-02-09 15:36:00','2021-02-09 15:36:00');
INSERT INTO "Serial_numbers" VALUES (537,66,'-4123003','4127983-','Summilux-M f= 5 cm 1:1.4 (black+silver)','2011','4,981+ ',NULL,'2021-02-09 15:36:00','2021-02-09 15:36:00');
INSERT INTO "Serial_numbers" VALUES (538,66,'-4132495','4162622-','Summilux-M f= 5 cm 1:1.4 (black+silver)','2012','30,128+ ',NULL,'2021-02-09 15:36:00','2021-02-09 15:36:00');
INSERT INTO "Serial_numbers" VALUES (539,66,'-4203402','4214858-','Summilux-M f= 5 cm 1:1.4 (black)','2013','11,457+ ~4203502 ',NULL,'2021-02-09 15:36:00','2021-02-09 15:36:00');
INSERT INTO "Serial_numbers" VALUES (540,66,'-4244010','~ 4245234 ','Summilux-M f= 5 cm 1:1.4 (silver)','2013','1,225+ ',NULL,'2021-02-09 15:36:00','2021-02-09 15:36:00');
INSERT INTO "Serial_numbers" VALUES (541,66,'unknown','~ 4264495 ','Summilux-M f= 5 cm 1:1.4 (black)','2014','unknown ',NULL,'2021-02-09 15:36:00','2021-02-09 15:36:00');
INSERT INTO "Serial_numbers" VALUES (542,66,'-4296628','unknown ','Summilux-M f= 5 cm 1:1.4 (silver)','2015','unknown ',NULL,'2021-02-09 15:36:00','2021-02-09 15:36:00');
INSERT INTO "Serial_numbers" VALUES (543,66,'-4316136','4317002- ','Summilux-M f= 5 cm 1:1.4 (blackchrom)','2015','500',NULL,'2021-02-09 15:36:00','2021-02-09 15:36:00');
INSERT INTO "Serial_numbers" VALUES (544,65,'3588960','3590459','Summilux-M f= 5 cm 1:1.4 (black-11114+silver-11855)','1992','1500',NULL,'2021-02-09 15:36:00','2021-02-09 15:36:00');
INSERT INTO "Serial_numbers" VALUES (545,65,'3653421','3653695','Summilux-M f= 5 cm 1:1.4 ','1994','275',NULL,'2021-02-09 15:36:00','2021-02-09 15:36:00');
INSERT INTO "Serial_numbers" VALUES (546,65,'3655716','3655821','Summilux-M f= 5 cm 1:1.4 ','1994','106',NULL,'2021-02-09 15:36:00','2021-02-09 15:36:00');
INSERT INTO "Serial_numbers" VALUES (547,65,'3660831','3661830','Summilux-M f= 5 cm 1:1.4 (titan+black)','1994','1000',NULL,'2021-02-09 15:36:00','2021-02-09 15:36:00');
INSERT INTO "Serial_numbers" VALUES (548,65,'3675531','3676530','Summilux-M f= 5 cm 1:1.4 (titan+black)','1994','1000 ~ 3676430 (black) ',NULL,'2021-02-09 15:36:00','2021-02-09 15:36:00');
INSERT INTO "Serial_numbers" VALUES (549,65,'3689931','3690930','Summilux-M f= 5 cm 1:1.4 (titan)','1995','1000',NULL,'2021-02-09 15:36:00','2021-02-09 15:36:00');
INSERT INTO "Serial_numbers" VALUES (550,65,'3693931','3694930','Summilux-M f= 5 cm 1:1.4 (titan+silver+black)','1995','1000',NULL,'2021-02-09 15:36:00','2021-02-09 15:36:00');
INSERT INTO "Serial_numbers" VALUES (551,65,'3726303','3726553','Summilux-M f= 5 cm 1:1.4 ','1995','251',NULL,'2021-02-09 15:36:00','2021-02-09 15:36:00');
INSERT INTO "Serial_numbers" VALUES (552,65,'3760000','3760999','Summilux-M f= 5 cm 1:1.4 (black)','1996','1000',NULL,'2021-02-09 15:36:00','2021-02-09 15:36:00');
INSERT INTO "Serial_numbers" VALUES (553,65,'3772930','3773929','Summilux-M f= 5 cm 1:1.4 (black)','1997','1000',NULL,'2021-02-09 15:36:00','2021-02-09 15:36:00');
INSERT INTO "Serial_numbers" VALUES (554,65,'3868267','3868616','Summilux-M f= 5 cm 1:1.4 (silver-S-mount)','1999','350',NULL,'2021-02-09 15:36:00','2021-02-09 15:36:00');
INSERT INTO "Serial_numbers" VALUES (555,65,'3870167','3871166','Summilux-M f= 5 cm 1:1.4 (black)','1999','1000',NULL,'2021-02-09 15:36:00','2021-02-09 15:36:00');
INSERT INTO "Serial_numbers" VALUES (556,65,'3877167','3877466','Summilux-M f= 5 cm 1:1.4 (silver-S-mount)','1999','300',NULL,'2021-02-09 15:36:00','2021-02-09 15:36:00');
INSERT INTO "Serial_numbers" VALUES (557,65,'3881947','3882246','Summilux-M f= 5 cm 1:1.4 (silver-S-mount)','1999','300',NULL,'2021-02-09 15:36:00','2021-02-09 15:36:00');
INSERT INTO "Serial_numbers" VALUES (558,65,'3902076','3903075','Summilux-M f= 5 cm 1:1.4 (black)','2000','1000',NULL,'2021-02-09 15:36:00','2021-02-09 15:36:00');
INSERT INTO "Serial_numbers" VALUES (559,65,'3929514','3930513','Summilux-M f= 5 cm 1:1.4 ','2001','1000',NULL,'2021-02-09 15:36:00','2021-02-09 15:36:00');
INSERT INTO "Serial_numbers" VALUES (560,65,'3964511','3965510','Summilux-M f= 5 cm 1:1.4 (black+silver)','2003','1000 ~ 3965097 (silver) ',NULL,'2021-02-09 15:36:00','2021-02-09 15:36:00');
INSERT INTO "Serial_numbers" VALUES (561,65,'3977089','3977588','Summilux-M f= 5 cm 1:1.4 ','2004','500',NULL,'2021-02-09 15:36:00','2021-02-09 15:36:00');
INSERT INTO "Serial_numbers" VALUES (562,65,'3979589','3980088','Summilux-M f= 5 cm 1:1.4 ','2004','500',NULL,'2021-02-09 15:36:00','2021-02-09 15:36:00');
INSERT INTO "Serial_numbers" VALUES (563,65,'3982051','3982550','Summilux-M Titan 5 cm 1:1.4 (titanium)','2004','500',NULL,'2021-02-09 15:36:00','2021-02-09 15:36:00');
INSERT INTO "Serial_numbers" VALUES (564,65,'3982551','3983050','Summilux-M Schw 5 cm 1:1.4 (black)','2004','500',NULL,'2021-02-09 15:36:00','2021-02-09 15:36:00');
INSERT INTO "Serial_numbers" VALUES (565,65,'3985034','3985533','Summilux-M f= 5 cm 1:1.4 ','2004','500',NULL,'2021-02-09 15:36:00','2021-02-09 15:36:00');
INSERT INTO "Serial_numbers" VALUES (566,65,'3988719','3989218','Summilux-M f= 5 cm 1:1.4 ','2005','500',NULL,'2021-02-09 15:36:00','2021-02-09 15:36:00');
INSERT INTO "Serial_numbers" VALUES (567,65,'3990069','3991118','Summilux-M f= 5 cm 1:1.4 (silver)','2005','1050',NULL,'2021-02-09 15:36:00','2021-02-09 15:36:00');
INSERT INTO "Serial_numbers" VALUES (568,65,'3991869','3992870','Summilux-M f= 5 cm 1:1.4 ','2005','1000',NULL,'2021-02-09 15:36:00','2021-02-09 15:36:00');
INSERT INTO "Serial_numbers" VALUES (569,65,'-4010031','4011798-','Summilux-M f= 5 cm 1:1.4 (11 623-black)','2006','1768+ ',NULL,'2021-02-09 15:36:00','2021-02-09 15:36:00');
INSERT INTO "Serial_numbers" VALUES (570,64,'1844001','1846000','Summilux f= 5 cm 1:1.4 (M+S-chrom)','1961','2000',NULL,'2021-02-09 15:36:00','2021-02-09 15:36:00');
INSERT INTO "Serial_numbers" VALUES (571,64,'1883001','1884000','Summilux f= 5 cm 1:1.4 (chrom)','1961','1000',NULL,'2021-02-09 15:36:00','2021-02-09 15:36:00');
INSERT INTO "Serial_numbers" VALUES (572,64,'1884101','1885000','Summilux f= 5 cm 1:1.4 ','1961','900',NULL,'2021-02-09 15:36:00','2021-02-09 15:36:00');
INSERT INTO "Serial_numbers" VALUES (573,64,'1897001','1899000','Summilux f= 5 cm 1:1.4 (chrom)','1961','2000',NULL,'2021-02-09 15:36:00','2021-02-09 15:36:00');
INSERT INTO "Serial_numbers" VALUES (574,64,'1927001','1929000','Summilux f= 5 cm 1:1.4 (chrom)','1962','2000',NULL,'2021-02-09 15:36:00','2021-02-09 15:36:00');
INSERT INTO "Serial_numbers" VALUES (575,64,'1945001','1947000','Summilux f= 5 cm 1:1.4 (chrom)','1962','2000',NULL,'2021-02-09 15:36:00','2021-02-09 15:36:00');
INSERT INTO "Serial_numbers" VALUES (576,64,'1999999','2000001','Summilux f= 5 cm 1:1.4 ','1963','3',NULL,'2021-02-09 15:36:00','2021-02-09 15:36:00');
INSERT INTO "Serial_numbers" VALUES (577,64,'2028001','2029000','Summilux f= 5 cm 1:1.4 (black+chrom)','1964','1000',NULL,'2021-02-09 15:36:00','2021-02-09 15:36:00');
INSERT INTO "Serial_numbers" VALUES (578,64,'2039701','2040700','Summilux f= 5 cm 1:1.4 (black)','1964','1000',NULL,'2021-02-09 15:36:00','2021-02-09 15:36:00');
INSERT INTO "Serial_numbers" VALUES (579,64,'2048501','2049500','Summilux f= 5 cm 1:1.4 (chrom-KFR)','1964','1000',NULL,'2021-02-09 15:36:00','2021-02-09 15:36:00');
INSERT INTO "Serial_numbers" VALUES (580,64,'2071501','2073500','Summilux f= 5 cm 1:1.4 (black+chrom)','1964','2000',NULL,'2021-02-09 15:36:00','2021-02-09 15:36:00');
INSERT INTO "Serial_numbers" VALUES (581,64,'2198101 ^','2199100','Summilux f= 5 cm 1:1.4 (black+chrom)','1966','1000',NULL,'2021-02-09 15:36:00','2021-02-09 15:36:00');
INSERT INTO "Serial_numbers" VALUES (582,64,'2220201','2221200','Summilux f= 5 cm 1:1.4 (chrom-UFR)','1967','1000',NULL,'2021-02-09 15:36:00','2021-02-09 15:36:00');
INSERT INTO "Serial_numbers" VALUES (583,64,'2308251','2309750','Summilux f= 5 cm 1:1.4 (black-UFR)','1968','1500',NULL,'2021-02-09 15:36:00','2021-02-09 15:36:00');
INSERT INTO "Serial_numbers" VALUES (584,64,'2345301','2347300','Summilux f= 5 cm 1:1.4 (black-KFR+UFR)','1969','2000',NULL,'2021-02-09 15:36:00','2021-02-09 15:36:00');
INSERT INTO "Serial_numbers" VALUES (585,64,'2418201','2420200','Summilux f= 5 cm 1:1.4 (black-UFR)','1970','2000',NULL,'2021-02-09 15:36:00','2021-02-09 15:36:00');
INSERT INTO "Serial_numbers" VALUES (586,64,'2503101','2505100','Summilux f= 5 cm 1:1.4 (black)','1972','2000',NULL,'2021-02-09 15:36:00','2021-02-09 15:36:00');
INSERT INTO "Serial_numbers" VALUES (587,64,'2568551','2570550','Summilux f= 5 cm 1:1.4 (black-UFR)','1973','2000',NULL,'2021-02-09 15:36:00','2021-02-09 15:36:00');
INSERT INTO "Serial_numbers" VALUES (588,64,'2624601','2625600','Summilux f= 5 cm 1:1.4 (black-UFR)','1973','1000',NULL,'2021-02-09 15:36:00','2021-02-09 15:36:00');
INSERT INTO "Serial_numbers" VALUES (589,64,'2628051','2629600','Summilux f= 5 cm 1:1.4 ','1973','1550',NULL,'2021-02-09 15:36:00','2021-02-09 15:36:00');
INSERT INTO "Serial_numbers" VALUES (590,64,'2821351','2822350','Summilux f= 5 cm 1:1.4 ','1977','1000',NULL,'2021-02-09 15:36:00','2021-02-09 15:36:00');
INSERT INTO "Serial_numbers" VALUES (591,64,'2848051','2849050','Summilux f= 5 cm 1:1.4 (11 114+gold)','1977','1000',NULL,'2021-02-09 15:36:00','2021-02-09 15:36:00');
INSERT INTO "Serial_numbers" VALUES (592,64,'2980551','2981000','Summilux f= 5 cm 1:1.4 ','1979','450',NULL,'2021-02-09 15:36:00','2021-02-09 15:36:00');
INSERT INTO "Serial_numbers" VALUES (593,64,'2991701','*2992700','Summilux-M f= 5 cm 1:1.4 ','1979','1000',NULL,'2021-02-09 15:36:00','2021-02-09 15:36:00');
INSERT INTO "Serial_numbers" VALUES (594,64,'3033901','3034400','Summilux f= 5 cm 1:1.4 ','1980','500',NULL,'2021-02-09 15:36:00','2021-02-09 15:36:00');
INSERT INTO "Serial_numbers" VALUES (595,64,'3076301','3076800','Summilux-M f= 5 cm 1:1.4 (black-11100)','1980','500',NULL,'2021-02-09 15:36:00','2021-02-09 15:36:00');
INSERT INTO "Serial_numbers" VALUES (596,64,'3156501**','3158500','Summilux f= 5 cm 1:1.4 (black+13-83)','1981','2000',NULL,'2021-02-09 15:36:00','2021-02-09 15:36:00');
INSERT INTO "Serial_numbers" VALUES (597,64,'3251101','3252100','Summilux-M f= 5 cm 1:1.4 (black-UFR)','1983','1000',NULL,'2021-02-09 15:36:00','2021-02-09 15:36:00');
INSERT INTO "Serial_numbers" VALUES (598,64,'3340201','3341200','Summilux-M f= 5 cm 1:1.4 (black-11868)','1984','1000',NULL,'2021-02-09 15:36:00','2021-02-09 15:36:00');
INSERT INTO "Serial_numbers" VALUES (599,64,'3415891','3416890','Summilux-M f= 5 cm 1:1.4 (black)','1986','1000',NULL,'2021-02-09 15:36:00','2021-02-09 15:36:00');
INSERT INTO "Serial_numbers" VALUES (600,64,'3444901','3445900','Summilux-M f= 5 cm 1:1.4 (black-UFR)','1987','1000',NULL,'2021-02-09 15:36:00','2021-02-09 15:36:00');
INSERT INTO "Serial_numbers" VALUES (601,64,'3481901','3482900','Summilux f= 5 cm 1:1.4 ','1989','1000',NULL,'2021-02-09 15:36:00','2021-02-09 15:36:00');
INSERT INTO "Serial_numbers" VALUES (602,64,'3483501','3484600','Summilux f= 5 cm 1:1.4 (platinum.150 yr+black-11114)','1989','1100',NULL,'2021-02-09 15:36:00','2021-02-09 15:36:00');
INSERT INTO "Serial_numbers" VALUES (603,64,'3493301','3495300','Summilux f= 5 cm 1:1.4 (black)','1989','2000',NULL,'2021-02-09 15:36:00','2021-02-09 15:36:00');
INSERT INTO "Serial_numbers" VALUES (604,64,'34950XX','3558910','Summilux f= 5 cm 1:1.4 (Traveler)','1994','500',NULL,'2021-02-09 15:36:00','2021-02-09 15:36:00');
INSERT INTO "Serial_numbers" VALUES (605,64,'3500000','3500000','Summilux-M f= 5 cm 1:1.4 ','1989','1',NULL,'2021-02-09 15:36:00','2021-02-09 15:36:00');
INSERT INTO "Serial_numbers" VALUES (606,64,'3500150','3500150','Summilux-M f= 5 cm 1:1.4 ','1989','1',NULL,'2021-02-09 15:36:00','2021-02-09 15:36:00');
INSERT INTO "Serial_numbers" VALUES (607,63,'1640601','1642000','Summilux f= 5 cm 1:1.4 (M+S-chrom)','1958','1400',NULL,'2021-02-09 15:36:00','2021-02-09 15:36:00');
INSERT INTO "Serial_numbers" VALUES (608,63,'1644001','1645000','Summilux f= 5 cm 1:1.4 (SKF.M-black+chrom)','1958','1000',NULL,'2021-02-09 15:36:00','2021-02-09 15:36:00');
INSERT INTO "Serial_numbers" VALUES (609,63,'1660001','1662000','*Summilux f= 5 cm 1:1.4 (M-black+SKF-chrom)','1959','2000',NULL,'2021-02-09 15:36:00','2021-02-09 15:36:00');
INSERT INTO "Serial_numbers" VALUES (610,63,'1688001','1689500','Summilux f= 5 cm 1:1.4 (M-black)','1959','1500',NULL,'2021-02-09 15:36:00','2021-02-09 15:36:00');
INSERT INTO "Serial_numbers" VALUES (611,63,'1690801','1691700','Summilux f= 5 cm 1:1.4 (S-chrom)','1959','900',NULL,'2021-02-09 15:36:00','2021-02-09 15:36:00');
INSERT INTO "Serial_numbers" VALUES (612,63,'1701501','1704000','Summilux f= 5 cm 1:1.4 (SKF.M-black+M.S-chrom)','1959','2500',NULL,'2021-02-09 15:36:00','2021-02-09 15:36:00');
INSERT INTO "Serial_numbers" VALUES (613,63,'1730001^^','1731100','Summilux f= 5 cm 1:1.4 ','1960','1100',NULL,'2021-02-09 15:36:00','2021-02-09 15:36:00');
INSERT INTO "Serial_numbers" VALUES (614,63,'1757001','1760000','Summilux f= 5 cm 1:1.4 (SKF.M-chrom.11114+black)','1960','3000',NULL,'2021-02-09 15:36:00','2021-02-09 15:36:00');
INSERT INTO "Serial_numbers" VALUES (615,63,'1765001^','1766200','Summilux f= 5^ cm 1:1.4 ','1960','1200',NULL,'2021-02-09 15:36:00','2021-02-09 15:36:00');
INSERT INTO "Serial_numbers" VALUES (616,63,'1777001^','1780000','Summilux f= 5^ cm 1:1.4 ','1960','3000',NULL,'2021-02-09 15:36:00','2021-02-09 15:36:00');
INSERT INTO "Serial_numbers" VALUES (617,63,'1788001','1790000','Summilux f= 5 cm 1:1.4 (S-chrom)','1960','2000',NULL,'2021-02-09 15:36:00','2021-02-09 15:36:00');
INSERT INTO "Serial_numbers" VALUES (618,62,'491898','492000','Summarit f= 5 cm 1:1.5 ','1939','103',NULL,'2021-02-09 15:36:00','2021-02-09 15:36:00');
INSERT INTO "Serial_numbers" VALUES (619,62,'740001','741000','Summarit f= 5 cm 1:1.5 ','1949','1000',NULL,'2021-02-09 15:36:00','2021-02-09 15:36:00');
INSERT INTO "Serial_numbers" VALUES (620,62,'801001','802000','Summarit f= 5 cm 1:1.5 ','1950','1000',NULL,'2021-02-09 15:36:00','2021-02-09 15:36:00');
INSERT INTO "Serial_numbers" VALUES (621,62,'820001','823000','Summarit f= 5 cm 1:1.5 (ELW.S+TH)','1950','3000',NULL,'2021-02-09 15:36:00','2021-02-09 15:36:00');
INSERT INTO "Serial_numbers" VALUES (622,62,'890001','893000','Summarit f= 5 cm 1:1.5 (ELW.S)','1951','3000',NULL,'2021-02-09 15:36:00','2021-02-09 15:36:00');
INSERT INTO "Serial_numbers" VALUES (623,62,'950001','955000','Summarit f= 5 cm 1:1.5 (ELW.S)','1952','5000',NULL,'2021-02-09 15:36:00','2021-02-09 15:36:00');
INSERT INTO "Serial_numbers" VALUES (624,62,'956001','956500','Summarit f= 5 cm 1:1.5 ','1952','500',NULL,'2021-02-09 15:36:00','2021-02-09 15:36:00');
INSERT INTO "Serial_numbers" VALUES (625,62,'987101','987150','Summarit f= 5 cm 1:1.5 ','1952','50',NULL,'2021-02-09 15:36:00','2021-02-09 15:36:00');
INSERT INTO "Serial_numbers" VALUES (626,62,'999001','1000000','Summarit f= 5 cm 1:1.5 (ELW.S) ','1952','1000',NULL,'2021-02-09 15:36:00','2021-02-09 15:36:00');
INSERT INTO "Serial_numbers" VALUES (627,62,'1025001','1029500','Summarit f= 5 cm 1:1.5 (ELW.S)','1952','4500',NULL,'2021-02-09 15:36:00','2021-02-09 15:36:00');
INSERT INTO "Serial_numbers" VALUES (628,62,'1052001','1054000','Summarit f= 5 cm 1:1.5 (ELW.M)','1953','2000',NULL,'2021-02-09 15:36:00','2021-02-09 15:36:00');
INSERT INTO "Serial_numbers" VALUES (629,62,'1054201','1058000','Summarit f= 5 cm 1:1.5 (ELW.S)','1953','3800',NULL,'2021-02-09 15:36:00','2021-02-09 15:36:00');
INSERT INTO "Serial_numbers" VALUES (630,62,'1078001','1080000','Summarit f= 5 cm 1:1.5 (ELW.S)','1953','2000',NULL,'2021-02-09 15:36:00','2021-02-09 15:36:00');
INSERT INTO "Serial_numbers" VALUES (631,62,'1098001','1100000','Summarit f= 5 cm 1:1.5 (ELW.S+M)','1953','2000',NULL,'2021-02-09 15:36:00','2021-02-09 15:36:00');
INSERT INTO "Serial_numbers" VALUES (632,62,'1119201','1121000','Summarit f= 5 cm 1:1.5 (ELW.M)','1953','1800',NULL,'2021-02-09 15:36:00','2021-02-09 15:36:00');
INSERT INTO "Serial_numbers" VALUES (633,62,'1171501','1172500','Summarit f= 5 cm 1:1.5 ','1954','1000',NULL,'2021-02-09 15:36:00','2021-02-09 15:36:00');
INSERT INTO "Serial_numbers" VALUES (634,62,'1187001','1188000','Summarit f= 5 cm 1:1.5 ','1954','1000',NULL,'2021-02-09 15:36:00','2021-02-09 15:36:00');
INSERT INTO "Serial_numbers" VALUES (635,62,'1209001','1212000','Summarit f= 5 cm 1:1.5 (ELW.M+S)','1954','3000',NULL,'2021-02-09 15:36:00','2021-02-09 15:36:00');
INSERT INTO "Serial_numbers" VALUES (636,62,'1246001','1247000','Summarit f= 5 cm 1:1.5 (ELC.S)','1955','1000',NULL,'2021-02-09 15:36:00','2021-02-09 15:36:00');
INSERT INTO "Serial_numbers" VALUES (637,62,'1275001','1277000','Summarit f= 5 cm 1:1.5 (ELW.M)','1955','2000',NULL,'2021-02-09 15:36:00','2021-02-09 15:36:00');
INSERT INTO "Serial_numbers" VALUES (638,62,'1288001','*1291000','*Summaron f= 3.5 cm 1:3.5 ','1955','[3000] ',NULL,'2021-02-09 15:36:00','2021-02-09 15:36:00');
INSERT INTO "Serial_numbers" VALUES (639,62,'1297001','1300000','Summarit f= 5 cm 1:1.5 (ELW.M)','1955','3000',NULL,'2021-02-09 15:36:00','2021-02-09 15:36:00');
INSERT INTO "Serial_numbers" VALUES (640,62,'1330001','1333000','Summarit f= 5 cm 1:1.5 (ELW.M)','1955','3000',NULL,'2021-02-09 15:36:00','2021-02-09 15:36:00');
INSERT INTO "Serial_numbers" VALUES (641,62,'1357001','1360000','Summarit f= 5 cm 1:1.5 (ELW.S+M)','1956','3000',NULL,'2021-02-09 15:36:00','2021-02-09 15:36:00');
INSERT INTO "Serial_numbers" VALUES (642,62,'1367501','1368500','Summarit f= 5 cm 1:1.5 ','1956','1000',NULL,'2021-02-09 15:36:00','2021-02-09 15:36:00');
INSERT INTO "Serial_numbers" VALUES (643,62,'1389001','1393000','Summarit f= 5 cm 1:1.5 (ELW.M)','1956','4000',NULL,'2021-02-09 15:36:00','2021-02-09 15:36:00');
INSERT INTO "Serial_numbers" VALUES (644,62,'1418001','1421000','Summarit f= 5 cm 1:1.5 (ELW+ELC.M)','1956','3000',NULL,'2021-02-09 15:36:00','2021-02-09 15:36:00');
INSERT INTO "Serial_numbers" VALUES (645,62,'1430001','1435000','Summarit f= 5 cm 1:1.5 (ELW.S+M)','1956','5000',NULL,'2021-02-09 15:36:00','2021-02-09 15:36:00');
INSERT INTO "Serial_numbers" VALUES (646,62,'1470001','1473000','Summarit f= 5 cm 1:1.5 (ELW.S)','1957','3000',NULL,'2021-02-09 15:36:00','2021-02-09 15:36:00');
INSERT INTO "Serial_numbers" VALUES (647,62,'1499001','1501000','Summarit f= 5 cm 1:1.5 (ELW.S+M)','1957','2000',NULL,'2021-02-09 15:36:00','2021-02-09 15:36:00');
INSERT INTO "Serial_numbers" VALUES (648,62,'1515001','1518000','Summarit f= 5 cm 1:1.5 (ELW.S)','1957','3000',NULL,'2021-02-09 15:36:00','2021-02-09 15:36:00');
INSERT INTO "Serial_numbers" VALUES (649,62,'1526001','1526900','Summarit f= 5 cm 1:1.5 ','1957','900',NULL,'2021-02-09 15:36:00','2021-02-09 15:36:00');
INSERT INTO "Serial_numbers" VALUES (650,62,'1527161','1530000','Summarit f= 5 cm 1:1.5 (ELW.M)','1957','2840',NULL,'2021-02-09 15:36:00','2021-02-09 15:36:00');
INSERT INTO "Serial_numbers" VALUES (651,62,'1535001','1537000','Summarit f= 5 cm 1:1.5 ','1957','2000',NULL,'2021-02-09 15:36:00','2021-02-09 15:36:00');
INSERT INTO "Serial_numbers" VALUES (652,62,'1546001','1546150','Summarit f= 5 cm 1:1.5 ','1957','150',NULL,'2021-02-09 15:36:00','2021-02-09 15:36:00');
INSERT INTO "Serial_numbers" VALUES (653,61,'~4138043','4235363-','50mm f/2 APO-Summicron-M ASPH. ','2013','97,321+ ',NULL,'2021-02-09 15:36:00','2021-02-09 15:36:00');
INSERT INTO "Serial_numbers" VALUES (654,61,'-429041X','4290478-','50mm f/2 APO-Summicron-M ASPH. ','2014','unknown ',NULL,'2021-02-09 15:36:00','2021-02-09 15:36:00');
INSERT INTO "Serial_numbers" VALUES (655,60,'2909101','2913100','Summicron-M f= 5 cm 1:2 ','1978','4000',NULL,'2021-02-09 15:36:00','2021-02-09 15:36:00');
INSERT INTO "Serial_numbers" VALUES (656,60,'2915801','2916800','Summicron-M f= 5 cm 1:2 (M-black)','1978','1000',NULL,'2021-02-09 15:36:00','2021-02-09 15:36:00');
INSERT INTO "Serial_numbers" VALUES (657,60,'2922901','2926900','Summicron-M f= 5 cm 1:2 ','1978','4000',NULL,'2021-02-09 15:36:00','2021-02-09 15:36:00');
INSERT INTO "Serial_numbers" VALUES (658,60,'2985101','2987100','Summicron-M f= 5 cm 1:2 (M-black.ELC)','1979','2000',NULL,'2021-02-09 15:36:00','2021-02-09 15:36:00');
INSERT INTO "Serial_numbers" VALUES (659,60,'3019751','3022750','Summicron-M f= 5 cm 1:2 (M-black.ELC)','1980','3000',NULL,'2021-02-09 15:36:00','2021-02-09 15:36:00');
INSERT INTO "Serial_numbers" VALUES (660,60,'3082001','3084000','Summicron-M f= 5 cm 1:2 ','1980','2000',NULL,'2021-02-09 15:36:00','2021-02-09 15:36:00');
INSERT INTO "Serial_numbers" VALUES (661,60,'3098501','3101500','Summicron-M f= 5 cm 1:2 (M-black.13-83+M-black.ELC)','1981','3000',NULL,'2021-02-09 15:36:00','2021-02-09 15:36:00');
INSERT INTO "Serial_numbers" VALUES (662,60,'3166001','3168000','Summicron-M f= 5 cm 1:2 (M-black.13-83)','1982','2000',NULL,'2021-02-09 15:36:00','2021-02-09 15:36:00');
INSERT INTO "Serial_numbers" VALUES (663,60,'3198701','3199700','Summicron-M f= 5 cm 1:2 (M-black.13-83)','1982','1000',NULL,'2021-02-09 15:36:00','2021-02-09 15:36:00');
INSERT INTO "Serial_numbers" VALUES (664,60,'3235301','3236300','Summicron-M f= 5 cm 1:2 (M-black.13-83)','1982','1000',NULL,'2021-02-09 15:36:00','2021-02-09 15:36:00');
INSERT INTO "Serial_numbers" VALUES (665,60,'3261401','3263400','Summicron-M f= 5 cm 1:2 (M-black)','1983','2000',NULL,'2021-02-09 15:36:00','2021-02-09 15:36:00');
INSERT INTO "Serial_numbers" VALUES (666,60,'3302201*','3306200','Summicron-R* f= 5 cm 1:2 ','1983','[4000] ',NULL,'2021-02-09 15:36:00','2021-02-09 15:36:00');
INSERT INTO "Serial_numbers" VALUES (667,60,'3357801','3359800','Summicron-M f= 5 cm 1:2 ','1985','2000',NULL,'2021-02-09 15:36:00','2021-02-09 15:36:00');
INSERT INTO "Serial_numbers" VALUES (668,60,'3359801','3360800','Summicron-M f= 5 cm 1:2 ','1985','1000',NULL,'2021-02-09 15:36:00','2021-02-09 15:36:00');
INSERT INTO "Serial_numbers" VALUES (669,60,'3381701','3383200','Summicron-M f= 5 cm 1:2 (M-black)','1985','1500',NULL,'2021-02-09 15:36:00','2021-02-09 15:36:00');
INSERT INTO "Serial_numbers" VALUES (670,60,'3408891','3409890','Summicron-M f= 5 cm 1:2 (M-black)','1986','1000',NULL,'2021-02-09 15:36:00','2021-02-09 15:36:00');
INSERT INTO "Serial_numbers" VALUES (671,60,'3435501','3436500','Summicron-M f= 5 cm 1:2 ','1987','1000',NULL,'2021-02-09 15:36:00','2021-02-09 15:36:00');
INSERT INTO "Serial_numbers" VALUES (672,60,'3445921','3446920','Summicron-M f= 5 cm 1:2 ','1987','1000',NULL,'2021-02-09 15:36:00','2021-02-09 15:36:00');
INSERT INTO "Serial_numbers" VALUES (673,60,'3447921','3449920','Summicron-M f= 5 cm 1:2 ','1987','2000',NULL,'2021-02-09 15:36:00','2021-02-09 15:36:00');
INSERT INTO "Serial_numbers" VALUES (674,60,'3449921','3451920','Summicron-M f= 5 cm 1:2 ','1987','2000',NULL,'2021-02-09 15:36:00','2021-02-09 15:36:00');
INSERT INTO "Serial_numbers" VALUES (675,60,'3454071','3455070','Summicron-M f= 5 cm 1:2 ','1987','1000',NULL,'2021-02-09 15:36:00','2021-02-09 15:36:00');
INSERT INTO "Serial_numbers" VALUES (676,60,'3470821','3471820','Summicron-M f= 5 cm 1:2 (M-black)','1988','1000',NULL,'2021-02-09 15:36:00','2021-02-09 15:36:00');
INSERT INTO "Serial_numbers" VALUES (677,60,'3480601','3481600','Summicron-M f= 5 cm 1:2 (M-black)','1988','1000',NULL,'2021-02-09 15:36:00','2021-02-09 15:36:00');
INSERT INTO "Serial_numbers" VALUES (678,60,'3488651','3488790','Summicron-M f= 5 cm 1:2 (M-black)','1989','140',NULL,'2021-02-09 15:36:00','2021-02-09 15:36:00');
INSERT INTO "Serial_numbers" VALUES (679,60,'3501701','3502700','Summicron-M f= 5 cm 1:2 (M-black)','1989','1000',NULL,'2021-02-09 15:36:00','2021-02-09 15:36:00');
INSERT INTO "Serial_numbers" VALUES (680,60,'3502701','3503150','Summicron-M f= 5 cm 1:2 ','1989','450',NULL,'2021-02-09 15:36:00','2021-02-09 15:36:00');
INSERT INTO "Serial_numbers" VALUES (681,60,'3506151','3507150','Summicron-M f= 5 cm 1:2 ','1990','1000',NULL,'2021-02-09 15:36:00','2021-02-09 15:36:00');
INSERT INTO "Serial_numbers" VALUES (682,60,'3514796','3516295','Summicron-M f= 5 cm 1:2 (M-black)','1990','1500',NULL,'2021-02-09 15:36:00','2021-02-09 15:36:00');
INSERT INTO "Serial_numbers" VALUES (683,60,'3540468','3542467','Summicron-M f= 5 cm 1:2 (M-black)','1991','2000',NULL,'2021-02-09 15:36:00','2021-02-09 15:36:00');
INSERT INTO "Serial_numbers" VALUES (684,60,'3571133','3573132','Summicron-M f= 5 cm 1:2 ','1991','2000',NULL,'2021-02-09 15:36:00','2021-02-09 15:36:00');
INSERT INTO "Serial_numbers" VALUES (685,60,'3587960','3588959','Summicron-M f= 5 cm 1:2 ','1992','1000',NULL,'2021-02-09 15:36:00','2021-02-09 15:36:00');
INSERT INTO "Serial_numbers" VALUES (686,60,'3592460','3593959','Summicron-M f= 5 cm 1:2 ','1992','1500',NULL,'2021-02-09 15:36:00','2021-02-09 15:36:00');
INSERT INTO "Serial_numbers" VALUES (687,60,'3597020','3598519','Summicron-M f= 5 cm 1:2 ','1992','1500',NULL,'2021-02-09 15:36:00','2021-02-09 15:36:00');
INSERT INTO "Serial_numbers" VALUES (688,60,'3598520','3598819','Summicron-M f= 5 cm 1:2 (M-silver)','1992','300',NULL,'2021-02-09 15:36:00','2021-02-09 15:36:00');
INSERT INTO "Serial_numbers" VALUES (689,60,'3606170','3606719','Summicron-M f= 5 cm 1:2 ','1992','550',NULL,'2021-02-09 15:36:00','2021-02-09 15:36:00');
INSERT INTO "Serial_numbers" VALUES (690,60,'3613480','3614479','Summicron-M f= 5 cm 1:2 ','1993','1000',NULL,'2021-02-09 15:36:00','2021-02-09 15:36:00');
INSERT INTO "Serial_numbers" VALUES (691,60,'3617903','3618902','Summicron-M f= 5 cm 1:2 ','1993','1000',NULL,'2021-02-09 15:36:00','2021-02-09 15:36:00');
INSERT INTO "Serial_numbers" VALUES (692,60,'3620133','3621632','Summicron-M f= 5 cm 1:2 ','1993','1500',NULL,'2021-02-09 15:36:00','2021-02-09 15:36:00');
INSERT INTO "Serial_numbers" VALUES (693,60,'3623601','3623800','Summicron-M f= 5 cm 1:2 (Colombo-chrom)','1993','200',NULL,'2021-02-09 15:36:00','2021-02-09 15:36:00');
INSERT INTO "Serial_numbers" VALUES (694,60,'3630001','3631900','Summicron-M f= 5 cm 1:2 ','1993','1900',NULL,'2021-02-09 15:36:00','2021-02-09 15:36:00');
INSERT INTO "Serial_numbers" VALUES (695,60,'3649976','3651975','Summicron-M f= 5 cm 1:2 (M-silver+black)','1994','2000',NULL,'2021-02-09 15:36:00','2021-02-09 15:36:00');
INSERT INTO "Serial_numbers" VALUES (696,60,'3654716','3655715','Summicron-M f= 5 cm 1:2 (M-silver)','1994','1000',NULL,'2021-02-09 15:36:00','2021-02-09 15:36:00');
INSERT INTO "Serial_numbers" VALUES (697,60,'3663831','3664830','Summicron-M f= 5 cm 1:2 (M-silver)','1994','1000',NULL,'2021-02-09 15:36:00','2021-02-09 15:36:00');
INSERT INTO "Serial_numbers" VALUES (698,60,'3669031','3670030','Summicron-M f= 5 cm 1:2 (M-silver)','1994','1000',NULL,'2021-02-09 15:36:00','2021-02-09 15:36:00');
INSERT INTO "Serial_numbers" VALUES (699,60,'3679031','3680030','Summicron-M f= 5 cm 1:2 (M-black+silver)','1995','1000',NULL,'2021-02-09 15:36:00','2021-02-09 15:36:00');
INSERT INTO "Serial_numbers" VALUES (700,60,'3695000','3695700','Summicron-M f= 5 cm 1:2 ','1995','701',NULL,'2021-02-09 15:36:00','2021-02-09 15:36:00');
INSERT INTO "Serial_numbers" VALUES (701,60,'3700001','3700301','Summicron-M f= 5 cm 1:2 (M-silver)','1995','301',NULL,'2021-02-09 15:36:00','2021-02-09 15:36:00');
INSERT INTO "Serial_numbers" VALUES (702,60,'3705803','3707802','Summicron-M f= 5 cm 1:2 (M-silver)','1995','2000',NULL,'2021-02-09 15:36:00','2021-02-09 15:36:00');
INSERT INTO "Serial_numbers" VALUES (703,60,'3729001','3729150','Summicron-M f= 5 cm 1:2 ','1995','150',NULL,'2021-02-09 15:36:00','2021-02-09 15:36:00');
INSERT INTO "Serial_numbers" VALUES (704,60,'3731301','3732300','Summicron-M f= 5 cm 1:2 (M-black)','1996','1000',NULL,'2021-02-09 15:36:00','2021-02-09 15:36:00');
INSERT INTO "Serial_numbers" VALUES (705,60,'3741212','3741212','Summicron-M f= 5 cm 1:2 ','1996','1',NULL,'2021-02-09 15:36:00','2021-02-09 15:36:00');
INSERT INTO "Serial_numbers" VALUES (706,60,'3746589','3747588','Summicron-M f= 5 cm 1:2 (M-black)','1996','1000',NULL,'2021-02-09 15:36:00','2021-02-09 15:36:00');
INSERT INTO "Serial_numbers" VALUES (707,60,'3756036','3757035','Summicron-M f= 5 cm 1:2 ','1996','1000',NULL,'2021-02-09 15:36:00','2021-02-09 15:36:00');
INSERT INTO "Serial_numbers" VALUES (708,60,'3766100','3767099','Summicron-M f= 5 cm 1:2 (M-black.ELW-11826)','1996','1000',NULL,'2021-02-09 15:36:00','2021-02-09 15:36:00');
INSERT INTO "Serial_numbers" VALUES (709,60,'3791010','3792009','Summicron-M f= 5 cm 1:2 ','1997','1000',NULL,'2021-02-09 15:36:00','2021-02-09 15:36:00');
INSERT INTO "Serial_numbers" VALUES (710,60,'3802410','3803409','Summicron-M f= 5 cm 1:2 ','1997','1000',NULL,'2021-02-09 15:36:00','2021-02-09 15:36:00');
INSERT INTO "Serial_numbers" VALUES (711,60,'3817625','3818624','Summicron-M f= 5 cm 1:2 ','1997','1000',NULL,'2021-02-09 15:36:00','2021-02-09 15:36:00');
INSERT INTO "Serial_numbers" VALUES (712,60,'3828825','3829824','Summicron-M f= 5 cm 1:2 (M-black)','1998','1000',NULL,'2021-02-09 15:36:00','2021-02-09 15:36:00');
INSERT INTO "Serial_numbers" VALUES (713,60,'3842500','3843499','Summicron-M f= 5 cm 1:2 ','1998','1000',NULL,'2021-02-09 15:36:00','2021-02-09 15:36:00');
INSERT INTO "Serial_numbers" VALUES (714,60,'3852100','3853099','Summicron-M f= 5 cm 1:2 ','1998','1000',NULL,'2021-02-09 15:36:00','2021-02-09 15:36:00');
INSERT INTO "Serial_numbers" VALUES (715,60,'3862417','3863416','Summicron-M f= 5 cm 1:2 ','1999','1000',NULL,'2021-02-09 15:36:00','2021-02-09 15:36:00');
INSERT INTO "Serial_numbers" VALUES (716,60,'3867167','3867716','Summicron-M f= 5 cm 1:2 (S-silver)','1999','550',NULL,'2021-02-09 15:36:00','2021-02-09 15:36:00');
INSERT INTO "Serial_numbers" VALUES (717,60,'3877467','3878466','Summicron-M f= 5 cm 1:2 (M-black+silver)','1999','1000',NULL,'2021-02-09 15:36:00','2021-02-09 15:36:00');
INSERT INTO "Serial_numbers" VALUES (718,60,'3880377','3880746','Summicron-M f= 5 cm 1:2 (S-silver) ','1999','370',NULL,'2021-02-09 15:36:00','2021-02-09 15:36:00');
INSERT INTO "Serial_numbers" VALUES (719,60,'3883747','3884746','Summicron-M f= 5 cm 1:2 (M-black)','2000','1000',NULL,'2021-02-09 15:36:00','2021-02-09 15:36:00');
INSERT INTO "Serial_numbers" VALUES (720,60,'3884747','3884906','Summicron-M f= 5 cm 1:2 ','2000','160',NULL,'2021-02-09 15:36:00','2021-02-09 15:36:00');
INSERT INTO "Serial_numbers" VALUES (721,60,'3899076','3900075','Summicron-M f= 5 cm 1:2 (M-black)','2000','1000',NULL,'2021-02-09 15:36:00','2021-02-09 15:36:00');
INSERT INTO "Serial_numbers" VALUES (722,60,'3907626','3909625','Summicron-M f= 5 cm 1:2 (M-black)','2000','2000',NULL,'2021-02-09 15:36:00','2021-02-09 15:36:00');
INSERT INTO "Serial_numbers" VALUES (723,60,'3914423','3915522','Summicron-M f= 5 cm 1:2 (M-titan+black+silver)','2001','1000',NULL,'2021-02-09 15:36:00','2021-02-09 15:36:00');
INSERT INTO "Serial_numbers" VALUES (724,60,'3925821','3926820','Summicron-M f= 5 cm 1:2 ','2001','1000',NULL,'2021-02-09 15:36:00','2021-02-09 15:36:00');
INSERT INTO "Serial_numbers" VALUES (725,60,'3931014','3932013','Summicron-M f= 5 cm 1:2 (M-black)','2001','1000',NULL,'2021-02-09 15:36:00','2021-02-09 15:36:00');
INSERT INTO "Serial_numbers" VALUES (726,60,'3933014','3934013','Summicron-M f= 5 cm 1:2 (M-black)','2002','1000',NULL,'2021-02-09 15:36:00','2021-02-09 15:36:00');
INSERT INTO "Serial_numbers" VALUES (727,60,'3940614','3941613','Summicron-M f= 5 cm 1:2 (DF)','2002','1000',NULL,'2021-02-09 15:36:00','2021-02-09 15:36:00');
INSERT INTO "Serial_numbers" VALUES (728,60,'3952001','3953000','Summicron-M f= 5 cm 1:2 (M-silver-11615)','2002','1000',NULL,'2021-02-09 15:36:00','2021-02-09 15:36:00');
INSERT INTO "Serial_numbers" VALUES (729,60,'3953751','3954750','^ Summilux-M f= 5 cm 1:2 (M-black)','2002','1000',NULL,'2021-02-09 15:36:00','2021-02-09 15:36:00');
INSERT INTO "Serial_numbers" VALUES (730,60,'3958161','3959160','Summicron-M f= 5 cm 1:2 ','2002','1000',NULL,'2021-02-09 15:36:00','2021-02-09 15:36:00');
INSERT INTO "Serial_numbers" VALUES (731,60,'3983234','3983783','Summicron-M f= 5 cm 1:2 Lack.','2004','550',NULL,'2021-02-09 15:36:00','2021-02-09 15:36:00');
INSERT INTO "Serial_numbers" VALUES (732,60,'3983784','3984533','Summicron-M f= 5 cm 1:2 ','2004','750',NULL,'2021-02-09 15:36:00','2021-02-09 15:36:00');
INSERT INTO "Serial_numbers" VALUES (733,60,'3987244','3987743','Summicron-M f= 5 cm 1:2 (M-black-11826)','2005','500',NULL,'2021-02-09 15:36:00','2021-02-09 15:36:00');
INSERT INTO "Serial_numbers" VALUES (734,60,'3991369','3991868','Summicron-M f= 5 cm 1:2 (M-black-11826)','2005','500',NULL,'2021-02-09 15:36:00','2021-02-09 15:36:00');
INSERT INTO "Serial_numbers" VALUES (735,60,'-3997608','3999999-','Summicron-M f= 5 cm 1:2 (M-black-11826)','2006-2007','2392+ ',NULL,'2021-02-09 15:36:00','2021-02-09 15:36:00');
INSERT INTO "Serial_numbers" VALUES (736,60,'-4095257','4095733-','Summicron-M f= 5 cm 1:2 (M-black-11826)','2008-2009','487+ ',NULL,'2021-02-09 15:36:00','2021-02-09 15:36:00');
INSERT INTO "Serial_numbers" VALUES (737,60,'-4126260','4126475-','Summicron-M f= 5 cm 1:2 (M-black-11826)','2010','unknown ',NULL,'2021-02-09 15:36:00','2021-02-09 15:36:00');
INSERT INTO "Serial_numbers" VALUES (738,60,'-4214146','unknown-','Summicron-M f= 5 cm 1:2 (M-black-11826)','2012','unknown ',NULL,'2021-02-09 15:36:00','2021-02-09 15:36:00');
INSERT INTO "Serial_numbers" VALUES (739,59,'2269251','2270250','Summicron f= 5 cm 1:2 (SKF-black)','1968','1000',NULL,'2021-02-09 15:36:00','2021-02-09 15:36:00');
INSERT INTO "Serial_numbers" VALUES (740,59,'2278751','2279750','Summicron f= 5 cm 1:2 (SKF-chrom+DR)','1968','1000',NULL,'2021-02-09 15:36:00','2021-02-09 15:36:00');
INSERT INTO "Serial_numbers" VALUES (741,59,'2294001','2296350','Summicron f= 5 cm 1:2 (black)','1968','2350',NULL,'2021-02-09 15:36:00','2021-02-09 15:36:00');
INSERT INTO "Serial_numbers" VALUES (742,59,'2307151','2307450','Summicron f= 5 cm 1:2 ','1968','300',NULL,'2021-02-09 15:36:00','2021-02-09 15:36:00');
INSERT INTO "Serial_numbers" VALUES (743,59,'2314751','2314800','Summicron f= 5 cm 1:2 ','1969','50',NULL,'2021-02-09 15:36:00','2021-02-09 15:36:00');
INSERT INTO "Serial_numbers" VALUES (744,59,'2330801','2332800','Summicron f= 5 cm 1:2 (black)','1969','2000',NULL,'2021-02-09 15:36:00','2021-02-09 15:36:00');
INSERT INTO "Serial_numbers" VALUES (745,59,'2338801','2340800','Summicron f= 5 cm 1:2 ','1969','2000',NULL,'2021-02-09 15:36:00','2021-02-09 15:36:00');
INSERT INTO "Serial_numbers" VALUES (746,59,'2349301','2351300','Summicron f= 5 cm 1:2 ','1969','2000',NULL,'2021-02-09 15:36:00','2021-02-09 15:36:00');
INSERT INTO "Serial_numbers" VALUES (747,59,'2356301','2358300','Summicron f= 5 cm 1:2 (SFK-DR-chrom)','1969','2000',NULL,'2021-02-09 15:36:00','2021-02-09 15:36:00');
INSERT INTO "Serial_numbers" VALUES (748,59,'2385701','2387700','Summicron f= 5 cm 1:2 (black 11 817+819)','1970','2000',NULL,'2021-02-09 15:36:00','2021-02-09 15:36:00');
INSERT INTO "Serial_numbers" VALUES (749,59,'2407001','2409000','Summicron f= 5 cm 1:2 (black 11 817)','1970','2000',NULL,'2021-02-09 15:36:00','2021-02-09 15:36:00');
INSERT INTO "Serial_numbers" VALUES (750,59,'2432751','2434750','Summicron f= 5 cm 1:2 (black)','1970','2000',NULL,'2021-02-09 15:36:00','2021-02-09 15:36:00');
INSERT INTO "Serial_numbers" VALUES (751,59,'2438001','2440000','Summicron f= 5 cm 1:2 (black)','1970','2000',NULL,'2021-02-09 15:36:00','2021-02-09 15:36:00');
INSERT INTO "Serial_numbers" VALUES (752,59,'2444001','2446000','Summicron f= 5 cm 1:2 ','1970','2000',NULL,'2021-02-09 15:36:00','2021-02-09 15:36:00');
INSERT INTO "Serial_numbers" VALUES (753,59,'2453501','2455500','Summicron f= 5 cm 1:2 (black 11 817)','1970','2000',NULL,'2021-02-09 15:36:00','2021-02-09 15:36:00');
INSERT INTO "Serial_numbers" VALUES (754,59,'2518101','2520100','Summicron f= 5 cm 1:2 (black 11 817)','1972','2000',NULL,'2021-02-09 15:36:00','2021-02-09 15:36:00');
INSERT INTO "Serial_numbers" VALUES (755,59,'2522401','2522500','Summicron f= 5 cm 1:2 ','1972','100',NULL,'2021-02-09 15:36:00','2021-02-09 15:36:00');
INSERT INTO "Serial_numbers" VALUES (756,59,'2533851','2536250','Summicron f= 5 cm 1:2 (black 11 817)','1972','2400',NULL,'2021-02-09 15:36:00','2021-02-09 15:36:00');
INSERT INTO "Serial_numbers" VALUES (757,59,'2583501','2585500','Summicron f= 5 cm 1:2 (black 11 819)','1973','2000',NULL,'2021-02-09 15:36:00','2021-02-09 15:36:00');
INSERT INTO "Serial_numbers" VALUES (758,59,'2608501','2610500','Summicron f= 5 cm 1:2 (black 11 817)','1973','2000',NULL,'2021-02-09 15:36:00','2021-02-09 15:36:00');
INSERT INTO "Serial_numbers" VALUES (759,59,'2656901','2656950','Summicron f= 5 cm 1:2 ','1973','50',NULL,'2021-02-09 15:36:00','2021-02-09 15:36:00');
INSERT INTO "Serial_numbers" VALUES (760,59,'2698501','2698600','Summicron f= 5 cm 1:2 ','1974','100',NULL,'2021-02-09 15:36:00','2021-02-09 15:36:00');
INSERT INTO "Serial_numbers" VALUES (761,59,'2731922','2731950','Summicron f= 5 cm 1:2 ','1975','29',NULL,'2021-02-09 15:36:00','2021-02-09 15:36:00');
INSERT INTO "Serial_numbers" VALUES (762,59,'2756351','2757350','Summicron f= 5 cm 1:2 (black)','1975','1000',NULL,'2021-02-09 15:36:00','2021-02-09 15:36:00');
INSERT INTO "Serial_numbers" VALUES (763,59,'2794651','2796150','Summicron f= 5 cm 1:2 ','1976','1500',NULL,'2021-02-09 15:36:00','2021-02-09 15:36:00');
INSERT INTO "Serial_numbers" VALUES (764,59,'2822351','*2826350','Summicron-M f= 5 cm 1:2 ','1977','4000',NULL,'2021-02-09 15:36:00','2021-02-09 15:36:00');
INSERT INTO "Serial_numbers" VALUES (765,59,'2887001','2887150','Summicron f= 5 cm 1:2 ','1978','150',NULL,'2021-02-09 15:36:00','2021-02-09 15:36:00');
INSERT INTO "Serial_numbers" VALUES (766,58,'276-0001','276-0509-','ELCAN f/2 50mm (276-black)','1972','550',NULL,'2021-02-09 15:36:00','2021-02-09 15:36:00');
INSERT INTO "Serial_numbers" VALUES (767,58,'-1954751','unknown-','ELCAN f/2 50mm (M3-black)','1974','unknown ',NULL,'2021-02-09 15:36:00','2021-02-09 15:36:00');
INSERT INTO "Serial_numbers" VALUES (768,57,'920000','930000','Summicron f= 5 cm 1:2 (S-collapsible)','1951','10001',NULL,'2021-02-09 15:36:00','2021-02-09 15:36:00');
INSERT INTO "Serial_numbers" VALUES (769,57,'959001','960000','Summicron f= 5 cm 1:2 ','1952','1000',NULL,'2021-02-09 15:36:00','2021-02-09 15:36:00');
INSERT INTO "Serial_numbers" VALUES (770,57,'993001','996000','Summicron f= 5 cm 1:2 (S-collapsible)','1952','3000',NULL,'2021-02-09 15:36:00','2021-02-09 15:36:00');
INSERT INTO "Serial_numbers" VALUES (771,57,'1009001','1010000','Summicron f= 5 cm 1:2 (S-collapsible)','1952','1000',NULL,'2021-02-09 15:36:00','2021-02-09 15:36:00');
INSERT INTO "Serial_numbers" VALUES (772,57,'1020001','1025000','Summicron f= 5 cm 1:2 ','1952','5000',NULL,'2021-02-09 15:36:00','2021-02-09 15:36:00');
INSERT INTO "Serial_numbers" VALUES (773,57,'1040001','1045000','Summicron f= 5 cm 1:2 (S-collapsible)','1952','5000',NULL,'2021-02-09 15:36:00','2021-02-09 15:36:00');
INSERT INTO "Serial_numbers" VALUES (774,57,'1091001','1097000','Summicron f= 5 cm 1:2 (S-collapsible)','1953','6000',NULL,'2021-02-09 15:36:00','2021-02-09 15:36:00');
INSERT INTO "Serial_numbers" VALUES (775,57,'1103001','1106000','Summicron f= 5 cm 1:2 (S-collapsible)','1953','3000',NULL,'2021-02-09 15:36:00','2021-02-09 15:36:00');
INSERT INTO "Serial_numbers" VALUES (776,57,'1113438','1114000','Summicron f= 5 cm 1:2 ','1953','563',NULL,'2021-02-09 15:36:00','2021-02-09 15:36:00');
INSERT INTO "Serial_numbers" VALUES (777,57,'1114001','1119000','Summicron f= 5 cm 1:2 (S-collapsible)','1953','5000',NULL,'2021-02-09 15:36:00','2021-02-09 15:36:00');
INSERT INTO "Serial_numbers" VALUES (778,57,'1124701','1127000','Summicron f= 5 cm 1:2 ','1954','2300',NULL,'2021-02-09 15:36:00','2021-02-09 15:36:00');
INSERT INTO "Serial_numbers" VALUES (779,57,'1143001','1145000','Summicron f= 5 cm 1:2 (M-collapsible) ','1954','2000',NULL,'2021-02-09 15:36:00','2021-02-09 15:36:00');
INSERT INTO "Serial_numbers" VALUES (780,57,'1152001','1157000','Summicron f= 5 cm 1:2 (CS+S-collapsible)','1954','5000',NULL,'2021-02-09 15:36:00','2021-02-09 15:36:00');
INSERT INTO "Serial_numbers" VALUES (781,57,'1166001','1170000','Summicron f= 5 cm 1:2 (CS+M-collapsible)','1954','4000',NULL,'2021-02-09 15:36:00','2021-02-09 15:36:00');
INSERT INTO "Serial_numbers" VALUES (782,57,'1172501','1175000','Summicron f= 5 cm 1:2 (M-collapsible)','1954','2500',NULL,'2021-02-09 15:36:00','2021-02-09 15:36:00');
INSERT INTO "Serial_numbers" VALUES (783,57,'1175501','^1178000','Summicron f= 5 cm 1:2 ','1954','2500',NULL,'2021-02-09 15:36:00','2021-02-09 15:36:00');
INSERT INTO "Serial_numbers" VALUES (784,57,'1190001','1195000','Summicron f= 5 cm 1:2 (M-collapsible)','1954','5000',NULL,'2021-02-09 15:36:00','2021-02-09 15:36:00');
INSERT INTO "Serial_numbers" VALUES (785,57,'1195001','1198000','Summicron f= 5 cm 1:2 ','1954','3000',NULL,'2021-02-09 15:36:00','2021-02-09 15:36:00');
INSERT INTO "Serial_numbers" VALUES (786,57,'1203001','1206000','Summicron f= 5 cm 1:2 ','1954','3000',NULL,'2021-02-09 15:36:00','2021-02-09 15:36:00');
INSERT INTO "Serial_numbers" VALUES (787,57,'1215001','1220000','Summicron f= 5 cm 1:2 (S+M-collapsible)','1954','5000',NULL,'2021-02-09 15:36:00','2021-02-09 15:36:00');
INSERT INTO "Serial_numbers" VALUES (788,57,'1231101','1236000','Summicron f= 5 cm 1:2 (S-collapsible)','1954','4900',NULL,'2021-02-09 15:36:00','2021-02-09 15:36:00');
INSERT INTO "Serial_numbers" VALUES (789,57,'1252001','1256000','Summicron f= 5 cm 1:2 ','1955','4000',NULL,'2021-02-09 15:36:00','2021-02-09 15:36:00');
INSERT INTO "Serial_numbers" VALUES (790,57,'1263001','1268000','Summicron f= 5 cm 1:2 (M+S-collapsible)','1955','5000',NULL,'2021-02-09 15:36:00','2021-02-09 15:36:00');
INSERT INTO "Serial_numbers" VALUES (791,57,'1277001','1282000','Summicron f= 5 cm 1:2 (M-collapsible)','1955','5000',NULL,'2021-02-09 15:36:00','2021-02-09 15:36:00');
INSERT INTO "Serial_numbers" VALUES (792,57,'1300701','1305000','Summicron f= 5 cm 1:2 (M-collapsible)','1955','4300',NULL,'2021-02-09 15:36:00','2021-02-09 15:36:00');
INSERT INTO "Serial_numbers" VALUES (793,57,'1315001','1320000','Summicron f= 5 cm 1:2 (M+S-collapsible)','1955','5000',NULL,'2021-02-09 15:36:00','2021-02-09 15:36:00');
INSERT INTO "Serial_numbers" VALUES (794,57,'1325501','1330000','Summicron f= 5 cm 1:2 (S-collapsible)','1955','4500',NULL,'2021-02-09 15:36:00','2021-02-09 15:36:00');
INSERT INTO "Serial_numbers" VALUES (795,57,'1348001','1353000','Summicron f= 5 cm 1:2 (M-collapsible) ','1956','5000',NULL,'2021-02-09 15:36:00','2021-02-09 15:36:00');
INSERT INTO "Serial_numbers" VALUES (796,57,'1363501^^^','1366000','Summicron f= 5 cm 1:2 (M-collapsible)','1956','2500',NULL,'2021-02-09 15:36:00','2021-02-09 15:36:00');
INSERT INTO "Serial_numbers" VALUES (797,57,'1368501','1371000','Summicron f= 5 cm 1:2 (M-collapsible)','1956','2500',NULL,'2021-02-09 15:36:00','2021-02-09 15:36:00');
INSERT INTO "Serial_numbers" VALUES (798,57,'1375001','1380000','Summicron f= 5 cm 1:2 (M-collapsible)','1956','5000',NULL,'2021-02-09 15:36:00','2021-02-09 15:36:00');
INSERT INTO "Serial_numbers" VALUES (799,57,'1393001','1396750','Summicron f= 5 cm 1:2 (M-collapsible)','1956','3750',NULL,'2021-02-09 15:36:00','2021-02-09 15:36:00');
INSERT INTO "Serial_numbers" VALUES (800,57,'1400001','1401000','Summicron f= 5 cm 1:2 (M-DR+M-rigid-chrom)','1956','1000',NULL,'2021-02-09 15:36:00','2021-02-09 15:36:00');
INSERT INTO "Serial_numbers" VALUES (801,57,'1401001','1402000','Summicron f= 5 cm 1:2 ','1956','1000',NULL,'2021-02-09 15:36:00','2021-02-09 15:36:00');
INSERT INTO "Serial_numbers" VALUES (802,57,'1402201','1405000','Summicron f= 5 cm 1:2 (M-DR-chrom)','1956','2800',NULL,'2021-02-09 15:36:00','2021-02-09 15:36:00');
INSERT INTO "Serial_numbers" VALUES (803,57,'1446001','1450000','Summicron f= 5 cm 1:2 (M-DR+M-rigid-chrom)','1956','4000',NULL,'2021-02-09 15:36:00','2021-02-09 15:36:00');
INSERT INTO "Serial_numbers" VALUES (804,57,'1465001','1470000','Summicron f= 5 cm 1:2 (M-DR+M-rigid-chrom+black)','1957','5000',NULL,'2021-02-09 15:36:00','2021-02-09 15:36:00');
INSERT INTO "Serial_numbers" VALUES (805,57,'1473001','1477000','Summicron f= 5 cm 1:2 (M-DR-chrom+black)','1957','4000',NULL,'2021-02-09 15:36:00','2021-02-09 15:36:00');
INSERT INTO "Serial_numbers" VALUES (806,57,'1478501','1481700','Summicron f= 5 cm 1:2 (S-collapsible)','1957','5000',NULL,'2021-02-09 15:36:00','2021-02-09 15:36:00');
INSERT INTO "Serial_numbers" VALUES (807,57,'1510001','1515000','Summicron f= 5 cm 1:2 (M-rigid+DR-chrom)','1957','5000',NULL,'2021-02-09 15:36:00','2021-02-09 15:36:00');
INSERT INTO "Serial_numbers" VALUES (808,57,'1530001','1535000','Summicron f= 5 cm 1:2 (M-DR+M-rigid-chrom)','1957','5000',NULL,'2021-02-09 15:36:00','2021-02-09 15:36:00');
INSERT INTO "Serial_numbers" VALUES (809,57,'1541001','1546000','Summicron f= 5 cm 1:2 (M-DR+M-rigid-chrom)','1957','5000',NULL,'2021-02-09 15:36:00','2021-02-09 15:36:00');
INSERT INTO "Serial_numbers" VALUES (810,57,'1567001^^','1572000','Summicron f= 5 cm 1:2 (M-DR-chrom+M-rigid-black)','1958','5000',NULL,'2021-02-09 15:36:00','2021-02-09 15:36:00');
INSERT INTO "Serial_numbers" VALUES (811,57,'1578501','1580000','Summicron f= 5 cm 1:2 ','1958','1500',NULL,'2021-02-09 15:36:00','2021-02-09 15:36:00');
INSERT INTO "Serial_numbers" VALUES (812,57,'1581001','1583000','Summicron f= 5 cm 1:2 (M+S-rigid-chrom+black)','1958','2000',NULL,'2021-02-09 15:36:00','2021-02-09 15:36:00');
INSERT INTO "Serial_numbers" VALUES (813,57,'1585101','1588000','Summicron f= 5 cm 1:2 (M-DR+M+S-rigid-chrom+M-rigid-black)','1958','2900',NULL,'2021-02-09 15:36:00','2021-02-09 15:36:00');
INSERT INTO "Serial_numbers" VALUES (814,57,'1592001','1594000','Summicron f= 5 cm 1:2 (S-chrom+M-DR-chrom)','1958','2000',NULL,'2021-02-09 15:36:00','2021-02-09 15:36:00');
INSERT INTO "Serial_numbers" VALUES (815,57,'1597001','1600000','Summicron f= 5 cm 1:2 (M+DR+S-rigid-chrom)','1958','3000',NULL,'2021-02-09 15:36:00','2021-02-09 15:36:00');
INSERT INTO "Serial_numbers" VALUES (816,57,'1605501','1608000','Summicron f= 5 cm 1:2 (S-rigid-chrom+M-DR-chrom)','1958','2500',NULL,'2021-02-09 15:36:00','2021-02-09 15:36:00');
INSERT INTO "Serial_numbers" VALUES (817,57,'1623001','1624000','Summicron f= 5 cm 1:2 (M-rigid+DR-chrom-11818)','1958','1000',NULL,'2021-02-09 15:36:00','2021-02-09 15:36:00');
INSERT INTO "Serial_numbers" VALUES (818,57,'1704001','1709000','Summicron f= 5 cm 1:2 (S-rigid+DR-chrom)','1959','5000',NULL,'2021-02-09 15:36:00','2021-02-09 15:36:00');
INSERT INTO "Serial_numbers" VALUES (819,57,'1749501','1752000','Summicron f= 5 cm 1:2 (M-DR-chrom)','1960','2500',NULL,'2021-02-09 15:36:00','2021-02-09 15:36:00');
INSERT INTO "Serial_numbers" VALUES (820,57,'1762001','1765000','Summicron f= 5 cm 1:2 (M-DR+S-chrom)','1960','3000',NULL,'2021-02-09 15:36:00','2021-02-09 15:36:00');
INSERT INTO "Serial_numbers" VALUES (821,57,'1784001','1788000','Summicron f= 5 cm 1:2 (M+DR-rigid-chrom)','1960','4000',NULL,'2021-02-09 15:36:00','2021-02-09 15:36:00');
INSERT INTO "Serial_numbers" VALUES (822,57,'1811001','1814000','Summicron f= 5 cm 1:2 (M+DR-rigid-chrom)','1960','3000',NULL,'2021-02-09 15:36:00','2021-02-09 15:36:00');
INSERT INTO "Serial_numbers" VALUES (823,57,'1831001','1838000','Summicron f= 5 cm 1:2 (S-chrom+M-DR-chrom+black)','1961','7000',NULL,'2021-02-09 15:36:00','2021-02-09 15:36:00');
INSERT INTO "Serial_numbers" VALUES (824,57,'1885001','1888000','Summicron f= 5 cm 1:2 (M+DR-rigid-chrom)','1961','3000',NULL,'2021-02-09 15:36:00','2021-02-09 15:36:00');
INSERT INTO "Serial_numbers" VALUES (825,57,'1894801','1896000','Summicron f= 5 cm 1:2 (M-rigid)','1961','1200',NULL,'2021-02-09 15:36:00','2021-02-09 15:36:00');
INSERT INTO "Serial_numbers" VALUES (826,57,'1924001','1927000','Summicron f= 5 cm 1:2 (S+M-rigid.black+chrom)','1962','3000',NULL,'2021-02-09 15:36:00','2021-02-09 15:36:00');
INSERT INTO "Serial_numbers" VALUES (827,57,'1942001','1945000','Summicron f= 5 cm 1:2 (M-rigid-chrom)','1962','3000',NULL,'2021-02-09 15:36:00','2021-02-09 15:36:00');
INSERT INTO "Serial_numbers" VALUES (828,57,'1950001','**1951000','Freigehalten (M-DR-chrom)','1962','[1000] ',NULL,'2021-02-09 15:36:00','2021-02-09 15:36:00');
INSERT INTO "Serial_numbers" VALUES (829,57,'1951001','1953000','Summicron f= *5 cm 1:2 (M-DR-chrom)','1962','2000',NULL,'2021-02-09 15:36:00','2021-02-09 15:36:00');
INSERT INTO "Serial_numbers" VALUES (830,57,'1954001','1957000','Summicron f= 5 cm 1:2 (M+DR-chrom+M-rigid-black)','1962','3000',NULL,'2021-02-09 15:36:00','2021-02-09 15:36:00');
INSERT INTO "Serial_numbers" VALUES (831,57,'1961001','1964000','Summicron f= 5 cm 1:2 (M-rigid-chrom-11818)','1962','3000',NULL,'2021-02-09 15:36:00','2021-02-09 15:36:00');
INSERT INTO "Serial_numbers" VALUES (832,57,'1984401','1988000','Summicron f= 5 cm 1:2 (DR+M-rigid-chrom+11118)','1963','3600',NULL,'2021-02-09 15:36:00','2021-02-09 15:36:00');
INSERT INTO "Serial_numbers" VALUES (833,57,'2031001','2033000','Summicron f= 5 cm 1:2 (M-rigid-black+M-DR-chrom)','1964','2000',NULL,'2021-02-09 15:36:00','2021-02-09 15:36:00');
INSERT INTO "Serial_numbers" VALUES (834,57,'2036001','2037000','Summicron f= 5 cm 1:2 ','1964','1000',NULL,'2021-02-09 15:36:00','2021-02-09 15:36:00');
INSERT INTO "Serial_numbers" VALUES (835,57,'2052001','2054000','Summicron f= 5 cm 1:2 ','1964','2000',NULL,'2021-02-09 15:36:00','2021-02-09 15:36:00');
INSERT INTO "Serial_numbers" VALUES (836,57,'2091501','2093500','Summicron f= 5 cm 1:2 (M-rigid+DR-chrom+black)','1965','2000',NULL,'2021-02-09 15:36:00','2021-02-09 15:36:00');
INSERT INTO "Serial_numbers" VALUES (837,57,'2095501','2097500','Summicron f= 5 cm 1:2 ','1965','2000',NULL,'2021-02-09 15:36:00','2021-02-09 15:36:00');
INSERT INTO "Serial_numbers" VALUES (838,57,'2106801','2108800','Summicron f= 5 cm 1:2 (M-DR-chrom)','1965','2000',NULL,'2021-02-09 15:36:00','2021-02-09 15:36:00');
INSERT INTO "Serial_numbers" VALUES (839,57,'2114551','2117550','Summicron f= 5 cm 1:2 (M-DR-chrom)','1965','3000',NULL,'2021-02-09 15:36:00','2021-02-09 15:36:00');
INSERT INTO "Serial_numbers" VALUES (840,57,'2139951','2142950','Summicron f= 5 cm 1:2 (M-rigid-chrom)','1965','3000',NULL,'2021-02-09 15:36:00','2021-02-09 15:36:00');
INSERT INTO "Serial_numbers" VALUES (841,57,'2159001','2161000','Summicron f= 5 cm 1:2 (M-DR+M-rigid.chrom)','1966','2000',NULL,'2021-02-09 15:36:00','2021-02-09 15:36:00');
INSERT INTO "Serial_numbers" VALUES (842,57,'2180901','2182900','Summicron f= 5 cm 1:2 (M-rigid-chrom)','1966','2000',NULL,'2021-02-09 15:36:00','2021-02-09 15:36:00');
INSERT INTO "Serial_numbers" VALUES (843,57,'2228301','2229300','Summicron f= 5 cm 1:2 (M-rigid+DR-chrom)','1967','1000',NULL,'2021-02-09 15:36:00','2021-02-09 15:36:00');
INSERT INTO "Serial_numbers" VALUES (844,57,'2233801','2235800','Summicron f= 5 cm 1:2 (M-rigid+DR-chrom)','1967','2000',NULL,'2021-02-09 15:36:00','2021-02-09 15:36:00');
INSERT INTO "Serial_numbers" VALUES (845,56,'-unknown','4302484-','50mm f/2.4 Summarit-M (black)','2014','unknown ',NULL,'2021-02-09 15:36:00','2021-02-09 15:36:00');
INSERT INTO "Serial_numbers" VALUES (846,56,'-4302495','unknown-','50mm f/2.4 Summarit-M (silver)','2014','unknown ',NULL,'2021-02-09 15:36:00','2021-02-09 15:36:00');
INSERT INTO "Serial_numbers" VALUES (847,55,'-4038014','4052371-','50mm f/2.5 Summarit-M ','2007','14,358+ ',NULL,'2021-02-09 15:36:00','2021-02-09 15:36:00');
INSERT INTO "Serial_numbers" VALUES (848,55,'-4052451','4057435-','50mm f/2.5 Summarit-M ','2008','4,985+ ~4057067 ',NULL,'2021-02-09 15:36:00','2021-02-09 15:36:00');
INSERT INTO "Serial_numbers" VALUES (849,55,'-4108725','4113154-','50mm f/2.5 Summarit-M ','2009','4,430+ ',NULL,'2021-02-09 15:36:00','2021-02-09 15:36:00');
INSERT INTO "Serial_numbers" VALUES (850,55,'-4140311','4147516~ ','50mm f/2.5 Summarit-M ','2010-2011','7,206+ ',NULL,'2021-02-09 15:36:00','2021-02-09 15:36:00');
INSERT INTO "Serial_numbers" VALUES (851,55,'~4157707','4157886- ','50mm f/2.5 Summarit-M ','2012','180+ ',NULL,'2021-02-09 15:36:00','2021-02-09 15:36:00');
INSERT INTO "Serial_numbers" VALUES (852,55,'-unknown','4157779~ ','50mm f/2.5 Summarit-M ','2013','unknown ',NULL,'2021-02-09 15:36:00','2021-02-09 15:36:00');
INSERT INTO "Serial_numbers" VALUES (853,55,'-4185735','4186031-','50mm f/2.5 Summarit-M ','2014','297+ ',NULL,'2021-02-09 15:36:00','2021-02-09 15:36:00');
INSERT INTO "Serial_numbers" VALUES (854,54,'1975-0001','1975-1975','50mm f/2.8 Elmar-M (silb)','1994','1975',NULL,'2021-02-09 15:36:00','2021-02-09 15:36:00');
INSERT INTO "Serial_numbers" VALUES (855,54,'3668031','3669030','50mm f/2.8 Elmar-M (silb)','1994','1000',NULL,'2021-02-09 15:36:00','2021-02-09 15:36:00');
INSERT INTO "Serial_numbers" VALUES (856,54,'3691931','3692930','50mm f/2.8 Elmar-M (silb)','1995','1000',NULL,'2021-02-09 15:36:00','2021-02-09 15:36:00');
INSERT INTO "Serial_numbers" VALUES (857,54,'3701552','3702551','50mm f/2.8 Elmar-M (silb+schw)','1995','1000',NULL,'2021-02-09 15:36:00','2021-02-09 15:36:00');
INSERT INTO "Serial_numbers" VALUES (858,54,'3723803','3724802','50mm f/2.8 Elmar-M (silb+schw)','1995','1000',NULL,'2021-02-09 15:36:00','2021-02-09 15:36:00');
INSERT INTO "Serial_numbers" VALUES (859,54,'3726554','3727553','50mm f/2.8 Elmar-M (silb)','1995','1000',NULL,'2021-02-09 15:36:00','2021-02-09 15:36:00');
INSERT INTO "Serial_numbers" VALUES (860,54,'3732301','3733300','50mm f/2.8 Elmar-M (silb)','1996','1000',NULL,'2021-02-09 15:36:00','2021-02-09 15:36:00');
INSERT INTO "Serial_numbers" VALUES (861,54,'3738701','3739700','50mm f/2.8 Elmar-M (silb)','1996','1000',NULL,'2021-02-09 15:36:00','2021-02-09 15:36:00');
INSERT INTO "Serial_numbers" VALUES (862,54,'3741300','3741588','50mm f/2.8 Elmar-M ','1996','289',NULL,'2021-02-09 15:36:00','2021-02-09 15:36:00');
INSERT INTO "Serial_numbers" VALUES (863,54,'3761000','3761999','50mm f/2.8 Elmar-M (schw)','1996','1000',NULL,'2021-02-09 15:36:00','2021-02-09 15:36:00');
INSERT INTO "Serial_numbers" VALUES (864,54,'3781330','3782329','50mm f/2.8 Elmar-M (silb+schw)','1997','1000',NULL,'2021-02-09 15:36:00','2021-02-09 15:36:00');
INSERT INTO "Serial_numbers" VALUES (865,54,'3876167','3877166','50mm f/2.8 Elmar-M (schw)','1999','1000',NULL,'2021-02-09 15:36:00','2021-02-09 15:36:00');
INSERT INTO "Serial_numbers" VALUES (866,54,'3897576','3898575','50mm f/2.8 Elmar schw. ','2000','1000',NULL,'2021-02-09 15:36:00','2021-02-09 15:36:00');
INSERT INTO "Serial_numbers" VALUES (867,54,'3911126','3912125','50mm f/2.8 Elmar schw. ','2000','1000',NULL,'2021-02-09 15:36:00','2021-02-09 15:36:00');
INSERT INTO "Serial_numbers" VALUES (868,54,'3917273','3918270','50mm f/2.8 Elmar schw. (+silb)','2001','998',NULL,'2021-02-09 15:36:00','2021-02-09 15:36:00');
INSERT INTO "Serial_numbers" VALUES (869,54,'3919001','3919100','50mm f/2.8 Elmar silb. ','2001','100',NULL,'2021-02-09 15:36:00','2021-02-09 15:36:00');
INSERT INTO "Serial_numbers" VALUES (870,54,'3935764','3936763','50mm f/2.8 Elmar schw. ','2002','1000',NULL,'2021-02-09 15:36:00','2021-02-09 15:36:00');
INSERT INTO "Serial_numbers" VALUES (871,54,'3963511','3964510','50mm f/2.8 Elmar schw. (+ silb)','2003','100',NULL,'2021-02-09 15:36:00','2021-02-09 15:36:00');
INSERT INTO "Serial_numbers" VALUES (872,54,'3980589','3981088','50mm f/2.8 Elmar schw. (+ silb)','2004','499',NULL,'2021-02-09 15:36:00','2021-02-09 15:36:00');
INSERT INTO "Serial_numbers" VALUES (873,54,'3993121','3993620','50mm f/2.8 Elmar schw.u. Hc. (+ silb)','2005','500',NULL,'2021-02-09 15:36:00','2021-02-09 15:36:00');
INSERT INTO "Serial_numbers" VALUES (874,54,'unknown','unknown','50mm f/2.8 Elmar ','2006-2007','unknown ',NULL,'2021-02-09 15:36:00','2021-02-09 15:36:00');
INSERT INTO "Serial_numbers" VALUES (875,53,'1402001','1402100','Elmar 5 cm 1:28 ','1956','100',NULL,'2021-02-09 15:36:00','2021-02-09 15:36:00');
INSERT INTO "Serial_numbers" VALUES (876,53,'1438001','1440000','Elmar 5 cm 1:28 (S)','1956','2000',NULL,'2021-02-09 15:36:00','2021-02-09 15:36:00');
INSERT INTO "Serial_numbers" VALUES (877,53,'1450001','1455000','Elmar 5 cm 1:28 (S)','1956','5000',NULL,'2021-02-09 15:36:00','2021-02-09 15:36:00');
INSERT INTO "Serial_numbers" VALUES (878,53,'1494001','1497000','Elmar 5 cm 1:28 (S)','1957','3000',NULL,'2021-02-09 15:36:00','2021-02-09 15:36:00');
INSERT INTO "Serial_numbers" VALUES (879,53,'1537501','1541000','Elmar 5 cm 1:28 (S)','1957','3500',NULL,'2021-02-09 15:36:00','2021-02-09 15:36:00');
INSERT INTO "Serial_numbers" VALUES (880,53,'1549001','1552000','Elmar 5 cm 1:28 (M+S)','1958','3000',NULL,'2021-02-09 15:36:00','2021-02-09 15:36:00');
INSERT INTO "Serial_numbers" VALUES (881,53,'1574001','1578000','Elmar 5 cm 1:28 (M+S)','1958','4000',NULL,'2021-02-09 15:36:00','2021-02-09 15:36:00');
INSERT INTO "Serial_numbers" VALUES (882,53,'1589001','1592000','Elmar 5 cm 1:28 (M)','1958','3000',NULL,'2021-02-09 15:36:00','2021-02-09 15:36:00');
INSERT INTO "Serial_numbers" VALUES (883,53,'1600001','1603000','Elmar 5 cm 1:28 (M)','1958','3000',NULL,'2021-02-09 15:36:00','2021-02-09 15:36:00');
INSERT INTO "Serial_numbers" VALUES (884,53,'1617001','1621000','Elmar 5 cm 1:28 (M+S+S3crown)','1958','4000',NULL,'2021-02-09 15:36:00','2021-02-09 15:36:00');
INSERT INTO "Serial_numbers" VALUES (885,53,'1624001','1627000','Elmar 5 cm 1:28 (M)','1958','3000',NULL,'2021-02-09 15:36:00','2021-02-09 15:36:00');
INSERT INTO "Serial_numbers" VALUES (886,53,'1632501','1638500','Elmar 5 cm 1:28 (M+S+S3crown)','1958','6000',NULL,'2021-02-09 15:36:00','2021-02-09 15:36:00');
INSERT INTO "Serial_numbers" VALUES (887,53,'1668001','1671000','Elmar 5 cm 1:28 (M)','1959','3000',NULL,'2021-02-09 15:36:00','2021-02-09 15:36:00');
INSERT INTO "Serial_numbers" VALUES (888,53,'1697751','1700000','Elmar 5 cm 1:28 (M)','1959','2250',NULL,'2021-02-09 15:36:00','2021-02-09 15:36:00');
INSERT INTO "Serial_numbers" VALUES (889,53,'1721501','1725000','Elmar 5 cm 1:28 (M)','1960','3500',NULL,'2021-02-09 15:36:00','2021-02-09 15:36:00');
INSERT INTO "Serial_numbers" VALUES (890,53,'1727001','1730000','Elmar 5 cm 1:28 (M)','1960','3000',NULL,'2021-02-09 15:36:00','2021-02-09 15:36:00');
INSERT INTO "Serial_numbers" VALUES (891,53,'1819001','1822000','Elmar 5 cm 1:28 (M)','1960','3000',NULL,'2021-02-09 15:36:00','2021-02-09 15:36:00');
INSERT INTO "Serial_numbers" VALUES (892,53,'1838001','1840000','Elmar 5 cm 1:28 (M)','1961','2000',NULL,'2021-02-09 15:36:00','2021-02-09 15:36:00');
INSERT INTO "Serial_numbers" VALUES (893,53,'1909001','1912000','Elmar 5 cm 1:28 (M)','1961','3000',NULL,'2021-02-09 15:36:00','2021-02-09 15:36:00');
INSERT INTO "Serial_numbers" VALUES (894,53,'1912000','1936000','Elmar 5 cm 1:28 (M)','1962','3300',NULL,'2021-02-09 15:36:00','2021-02-09 15:36:00');
INSERT INTO "Serial_numbers" VALUES (895,53,'1989001','1991000','Elmar 5 cm 1:28 (M)','1963','2000',NULL,'2021-02-09 15:36:00','2021-02-09 15:36:00');
INSERT INTO "Serial_numbers" VALUES (896,53,'2073501','2074500','Elmar 5 cm 1:28 (M)','1964','1000',NULL,'2021-02-09 15:36:00','2021-02-09 15:36:00');
INSERT INTO "Serial_numbers" VALUES (897,53,'2119151','2121150','Elmar 5 cm 1:28 (M)','1965','2000',NULL,'2021-02-09 15:36:00','2021-02-09 15:36:00');
INSERT INTO "Serial_numbers" VALUES (898,53,'2161501','2162500','Elmar 5 cm 1:28 ','1966','1000',NULL,'2021-02-09 15:36:00','2021-02-09 15:36:00');
INSERT INTO "Serial_numbers" VALUES (899,53,'2186901','2188900','Elmar 5 cm 1:28 (M)','1966','2000',NULL,'2021-02-09 15:36:00','2021-02-09 15:36:00');
INSERT INTO "Serial_numbers" VALUES (900,53,'2237001','2238000','Elmar 5 cm 1:28 (M)','1967','1000',NULL,'2021-02-09 15:36:00','2021-02-09 15:36:00');
INSERT INTO "Serial_numbers" VALUES (901,53,'2326301','2327800','Elmar 5 cm 1:28 ','1969','1500',NULL,'2021-02-09 15:36:00','2021-02-09 15:36:00');
INSERT INTO "Serial_numbers" VALUES (902,53,'2472501','2473250','Elmar 5 cm 1:28 (M)','1971','750',NULL,'2021-02-09 15:36:00','2021-02-09 15:36:00');
INSERT INTO "Serial_numbers" VALUES (903,53,'2503001','2503100','Elmar 5 cm 1:28 ','1971','100',NULL,'2021-02-09 15:36:00','2021-02-09 15:36:00');
INSERT INTO "Serial_numbers" VALUES (904,52,'1140016','1143000','Elmar 5 cm 1:35 (M)','1954','2985',NULL,'2021-02-09 15:36:00','2021-02-09 15:36:00');
INSERT INTO "Serial_numbers" VALUES (905,52,'1145001','1148000','Elmar 5 cm 1:35 (M)','1954','3000',NULL,'2021-02-09 15:36:00','2021-02-09 15:36:00');
INSERT INTO "Serial_numbers" VALUES (906,52,'1148222^','1149100','Elmar 5 cm 1:35 ','1954','879',NULL,'2021-02-09 15:36:00','2021-02-09 15:36:00');
INSERT INTO "Serial_numbers" VALUES (907,52,'1163001','1166000','Elmar 5 cm 1:35 ','1954','3000',NULL,'2021-02-09 15:36:00','2021-02-09 15:36:00');
INSERT INTO "Serial_numbers" VALUES (908,52,'1183501','1187000','Elmar 5 cm 1:35 (M)','1954','3500',NULL,'2021-02-09 15:36:00','2021-02-09 15:36:00');
INSERT INTO "Serial_numbers" VALUES (909,52,'1198001','1203000','Elmar 5 cm 1:35 (S)','1954','5000',NULL,'2021-02-09 15:36:00','2021-02-09 15:36:00');
INSERT INTO "Serial_numbers" VALUES (910,52,'1242001','1245000','Elmar 5 cm 1:35 ','1955','3000',NULL,'2021-02-09 15:36:00','2021-02-09 15:36:00');
INSERT INTO "Serial_numbers" VALUES (911,52,'1294001','1297000','Elmar 5 cm 1:35 ','1955','3000',NULL,'2021-02-09 15:36:00','2021-02-09 15:36:00');
INSERT INTO "Serial_numbers" VALUES (912,52,'1320001','1325000','Elmar 5 cm 1:35 (S)','1955','5000',NULL,'2021-02-09 15:36:00','2021-02-09 15:36:00');
INSERT INTO "Serial_numbers" VALUES (913,52,'1333001','1337000','Elmar 5 cm 1:35 (M)','1956','4000',NULL,'2021-02-09 15:36:00','2021-02-09 15:36:00');
INSERT INTO "Serial_numbers" VALUES (914,52,'1340001','1345000','Elmar 5 cm 1:35 (M)','1956','5000',NULL,'2021-02-09 15:36:00','2021-02-09 15:36:00');
INSERT INTO "Serial_numbers" VALUES (915,52,'1372001','1375000','Elmar 5 cm 1:35 (M+RS-S)','1956','3000',NULL,'2021-02-09 15:36:00','2021-02-09 15:36:00');
INSERT INTO "Serial_numbers" VALUES (916,52,'1396751','1399999','(unlisted, 1 is RS-S)','1956','[3249] ',NULL,'2021-02-09 15:36:00','2021-02-09 15:36:00');
INSERT INTO "Serial_numbers" VALUES (917,52,'1426001','1429000','Elmar 5 cm 1:35 (M)','1956','3000',NULL,'2021-02-09 15:36:00','2021-02-09 15:36:00');
INSERT INTO "Serial_numbers" VALUES (918,52,'1455001','1458000','Elmar 5 cm 1:35 (M)','1956','3000',NULL,'2021-02-09 15:36:00','2021-02-09 15:36:00');
INSERT INTO "Serial_numbers" VALUES (919,75,'3063301','3064300','75mm f/1.4 Summilux-M ','1980','1000',NULL,'2021-02-09 15:36:00','2021-02-09 15:36:00');
INSERT INTO "Serial_numbers" VALUES (920,75,'3150501','3151500','75mm f/1.4 Summilux-M ','1981','1000',NULL,'2021-02-09 15:36:00','2021-02-09 15:36:00');
INSERT INTO "Serial_numbers" VALUES (921,75,'11 814 ','ABOVE','BUILT-IN HOOD BELOW','11815','11810',NULL,'2021-02-09 15:36:00','2021-02-09 15:36:00');
INSERT INTO "Serial_numbers" VALUES (922,75,'3223301','3225300','75mm f/1.4 Summilux-M (13-83)','1982','2000',NULL,'2021-02-09 15:36:00','2021-02-09 15:36:00');
INSERT INTO "Serial_numbers" VALUES (923,75,'3258101','3260100','75mm f/1.4 Summilux-M ','1983','2000',NULL,'2021-02-09 15:36:00','2021-02-09 15:36:00');
INSERT INTO "Serial_numbers" VALUES (924,75,'3439501','3440000','75mm f/1.4 Summilux-M ','1987','500',NULL,'2021-02-09 15:36:00','2021-02-09 15:36:00');
INSERT INTO "Serial_numbers" VALUES (925,75,'3457871','3458370','75mm f/1.4 Summilux-M (11815)','1988','500',NULL,'2021-02-09 15:36:00','2021-02-09 15:36:00');
INSERT INTO "Serial_numbers" VALUES (926,75,'3484901','3485400','75mm f/1.4 Summilux-M ','1989','500',NULL,'2021-02-09 15:36:00','2021-02-09 15:36:00');
INSERT INTO "Serial_numbers" VALUES (927,75,'3508996','3509295','75mm f/1.4 Summilux-M ','1990','300',NULL,'2021-02-09 15:36:00','2021-02-09 15:36:00');
INSERT INTO "Serial_numbers" VALUES (928,75,'3525296','3525795','75mm f/1.4 Summilux-M ','1990','500',NULL,'2021-02-09 15:36:00','2021-02-09 15:36:00');
INSERT INTO "Serial_numbers" VALUES (929,75,'3574134','3574633','75mm f/1.4 Summilux-M ','1991','500',NULL,'2021-02-09 15:36:00','2021-02-09 15:36:00');
INSERT INTO "Serial_numbers" VALUES (930,75,'3607320','3607619','75mm f/1.4 Summilux-M ','1993','300',NULL,'2021-02-09 15:36:00','2021-02-09 15:36:00');
INSERT INTO "Serial_numbers" VALUES (931,75,'3614480','3614979','75mm f/1.4 Summilux-M ','1993','500',NULL,'2021-02-09 15:36:00','2021-02-09 15:36:00');
INSERT INTO "Serial_numbers" VALUES (932,75,'3617900','3617901','75mm f/1.4 Summilux-M ','1993','2',NULL,'2021-02-09 15:36:00','2021-02-09 15:36:00');
INSERT INTO "Serial_numbers" VALUES (933,75,'3641576','3641825','75mm f/1.4 Summilux-M (11815)','1993','250',NULL,'2021-02-09 15:36:00','2021-02-09 15:36:00');
INSERT INTO "Serial_numbers" VALUES (934,75,'3685731','3686230','75mm f/1.4 Summilux-M ','1995','500',NULL,'2021-02-09 15:36:00','2021-02-09 15:36:00');
INSERT INTO "Serial_numbers" VALUES (935,75,'3719103','3719602','75mm f/1.4 Summilux-M (11810)','1995','500',NULL,'2021-02-09 15:36:00','2021-02-09 15:36:00');
INSERT INTO "Serial_numbers" VALUES (936,75,'3797510','3797709','75mm f/1.4 Summilux-M (11810)','1997','200 ~3797842 ',NULL,'2021-02-09 15:36:00','2021-02-09 15:36:00');
INSERT INTO "Serial_numbers" VALUES (937,75,'3820125','3820624','75mm f/1.4 Summilux-M ','1998','500',NULL,'2021-02-09 15:36:00','2021-02-09 15:36:00');
INSERT INTO "Serial_numbers" VALUES (938,75,'3837375','3837974','75mm f/1.4 Summilux-M ','1998','600',NULL,'2021-02-09 15:36:00','2021-02-09 15:36:00');
INSERT INTO "Serial_numbers" VALUES (939,75,'3865967','3866166','75mm f/1.4 Summilux-M ','1999','200',NULL,'2021-02-09 15:36:00','2021-02-09 15:36:00');
INSERT INTO "Serial_numbers" VALUES (940,75,'3869617','3869916','75mm f/1.4 Summilux-M ','1999','300',NULL,'2021-02-09 15:36:00','2021-02-09 15:36:00');
INSERT INTO "Serial_numbers" VALUES (941,75,'3884907','3885206','75mm f/1.4 Summilux-M ','2000','300',NULL,'2021-02-09 15:36:00','2021-02-09 15:36:00');
INSERT INTO "Serial_numbers" VALUES (942,75,'3904826','3905125','75mm f/1.4 Summilux-M ','2000','300',NULL,'2021-02-09 15:36:00','2021-02-09 15:36:00');
INSERT INTO "Serial_numbers" VALUES (943,75,'3915523','3916022','75mm f/1.4 Summilux-M (11810)','2001','500',NULL,'2021-02-09 15:36:00','2021-02-09 15:36:00');
INSERT INTO "Serial_numbers" VALUES (944,75,'3953001','3953500','75mm f/1.4 Summilux-M (ELW)','2002','500',NULL,'2021-02-09 15:36:00','2021-02-09 15:36:00');
INSERT INTO "Serial_numbers" VALUES (945,75,'3977589','3977888','75mm f/1.4 Summilux-M (ELW)','2004','300',NULL,'2021-02-09 15:36:00','2021-02-09 15:36:00');
INSERT INTO "Serial_numbers" VALUES (946,75,'3988519','3988718','75mm f/1.4 Summilux-M ','2005','200',NULL,'2021-02-09 15:36:00','2021-02-09 15:36:00');
INSERT INTO "Serial_numbers" VALUES (947,75,'unknown','unknown','75mm f/1.4 Summilux-M ','2006-2007','unknown ',NULL,'2021-02-09 15:36:00','2021-02-09 15:36:00');
INSERT INTO "Serial_numbers" VALUES (948,74,'3983051','3983073','75mm f/2 ASPH Apo-Summicron-M ','2004','25',NULL,'2021-02-09 15:36:00','2021-02-09 15:36:00');
INSERT INTO "Serial_numbers" VALUES (949,74,'3986034','3986433','75mm f/2 ASPH Apo-Summicron-M ','2004','400',NULL,'2021-02-09 15:36:00','2021-02-09 15:36:00');
INSERT INTO "Serial_numbers" VALUES (950,74,'3986584','3986843','75mm f/2 ASPH Apo-Summicron-M ','2005','260',NULL,'2021-02-09 15:36:00','2021-02-09 15:36:00');
INSERT INTO "Serial_numbers" VALUES (951,74,'3988144','3988493','75mm f/2 ASPH Apo-Summicron-M ','2005','350',NULL,'2021-02-09 15:36:00','2021-02-09 15:36:00');
INSERT INTO "Serial_numbers" VALUES (952,74,'3989219','3989365','75mm f/2 ASPH Apo-Summicron-M ','2005','150',NULL,'2021-02-09 15:36:00','2021-02-09 15:36:00');
INSERT INTO "Serial_numbers" VALUES (953,74,'-3993946','4004757-','75mm f/2 ASPH Apo-Summicron-M ','2006','10,812+ ~3999265 ',NULL,'2021-02-09 15:36:00','2021-02-09 15:36:00');
INSERT INTO "Serial_numbers" VALUES (954,74,'-unknown','4007331-','75mm f/2 ASPH Apo-Summicron-M ','2007','unknown ',NULL,'2021-02-09 15:36:00','2021-02-09 15:36:00');
INSERT INTO "Serial_numbers" VALUES (955,74,'-4044657','4045124-','75mm f/2 ASPH Apo-Summicron-M ','2008','468+ ',NULL,'2021-02-09 15:36:00','2021-02-09 15:36:00');
INSERT INTO "Serial_numbers" VALUES (956,74,'-4071637','unknown-','75mm f/2 ASPH Apo-Summicron-M ','2010','unknown ',NULL,'2021-02-09 15:36:00','2021-02-09 15:36:00');
INSERT INTO "Serial_numbers" VALUES (957,74,'-4122527','4122572-','75mm f/2 ASPH Apo-Summicron-M ','2012','unknown ',NULL,'2021-02-09 15:36:00','2021-02-09 15:36:00');
INSERT INTO "Serial_numbers" VALUES (958,73,'-unknown','4306287-','75mm f/2.4 Summarit-M (black)','2014','unknown ',NULL,'2021-02-09 15:36:00','2021-02-09 15:36:00');
INSERT INTO "Serial_numbers" VALUES (959,73,'-4306308','unknown-','75mm f/2.4 Summarit-M (silver)','2014','unknown ',NULL,'2021-02-09 15:36:00','2021-02-09 15:36:00');
INSERT INTO "Serial_numbers" VALUES (960,72,'-4048649','4064940-','75mm f/2.5 Summarit-M ','2007-2008','16,292+ ~4048960 ',NULL,'2021-02-09 15:36:00','2021-02-09 15:36:00');
INSERT INTO "Serial_numbers" VALUES (961,72,'-4116337','unknown-','75mm f/2.5 Summarit-M ','2009-2010','unknown ',NULL,'2021-02-09 15:36:00','2021-02-09 15:36:00');
INSERT INTO "Serial_numbers" VALUES (962,72,'-unknown','4240378~ ','75mm f/2.5 Summarit-M ','2011-2012','unknown ',NULL,'2021-02-09 15:36:00','2021-02-09 15:36:00');
INSERT INTO "Serial_numbers" VALUES (963,72,'-unknown','unknown-','75mm f/2.5 Summarit-M ','2013-2014','unknown ',NULL,'2021-02-09 15:36:00','2021-02-09 15:36:00');
INSERT INTO "Serial_numbers" VALUES (964,76,'3815625','3817624','90mm f/2 ASPH Apo-Summicron-M ','1997','2000',NULL,'2021-02-09 15:36:00','2021-02-09 15:36:00');
INSERT INTO "Serial_numbers" VALUES (965,76,'3856300','3856799','90mm f/2 ASPH Apo-Summicron-M (ELC)','1998','500',NULL,'2021-02-09 15:36:00','2021-02-09 15:36:00');
INSERT INTO "Serial_numbers" VALUES (966,76,'3866167','3867166','90mm f/2 ASPH Apo-Summicron-M (11884)','1999','1000',NULL,'2021-02-09 15:36:00','2021-02-09 15:36:00');
INSERT INTO "Serial_numbers" VALUES (967,76,'3875167','3876166','90mm f/2 ASPH Apo-Summicron-M (11884)','1999','1000',NULL,'2021-02-09 15:36:00','2021-02-09 15:36:00');
INSERT INTO "Serial_numbers" VALUES (968,76,'3880947','3881946','90mm f/2 ASPH Apo-Summicron-M (11884)','1999','1000',NULL,'2021-02-09 15:36:00','2021-02-09 15:36:00');
INSERT INTO "Serial_numbers" VALUES (969,76,'3890507','3890956','90mm f/2 ASPH Apo-Summicron-M ','2000','450',NULL,'2021-02-09 15:36:00','2021-02-09 15:36:00');
INSERT INTO "Serial_numbers" VALUES (970,76,'3891151','3891700','90mm f/2 ASPH Apo-Summicron-M ','2000','550',NULL,'2021-02-09 15:36:00','2021-02-09 15:36:00');
INSERT INTO "Serial_numbers" VALUES (971,76,'3893351','3894350','90mm f/2 ASPH Apo-Summicron-M ','2000','1000',NULL,'2021-02-09 15:36:00','2021-02-09 15:36:00');
INSERT INTO "Serial_numbers" VALUES (972,76,'3918271','3918770','90mm f/2 ASPH Apo-Summicron-M ','2001','500',NULL,'2021-02-09 15:36:00','2021-02-09 15:36:00');
INSERT INTO "Serial_numbers" VALUES (973,76,'3923121','3923670','90mm f/2 Summicron-M Titan','2001','550',NULL,'2021-02-09 15:36:00','2021-02-09 15:36:00');
INSERT INTO "Serial_numbers" VALUES (974,76,'3923671','3924670','90mm f/2 ASPH Apo-Summicron-M ','2001','1000',NULL,'2021-02-09 15:36:00','2021-02-09 15:36:00');
INSERT INTO "Serial_numbers" VALUES (975,76,'3926821','3926890','90mm f/2 Summicron-M Titan','2001','70',NULL,'2021-02-09 15:36:00','2021-02-09 15:36:00');
INSERT INTO "Serial_numbers" VALUES (976,76,'3932014','3933013','90mm f/2 ASPH Apo-Summicron-M ','2001','1000',NULL,'2021-02-09 15:36:00','2021-02-09 15:36:00');
INSERT INTO "Serial_numbers" VALUES (977,76,'3943114','3944113','90mm f/2 ASPH Apo-Summicron-M ','2002','1000',NULL,'2021-02-09 15:36:00','2021-02-09 15:36:00');
INSERT INTO "Serial_numbers" VALUES (978,76,'3950034','3950633','90mm f/2 ASPH Apo-Summicron-M silb.','2002','600 ~3950223 ',NULL,'2021-02-09 15:36:00','2021-02-09 15:36:00');
INSERT INTO "Serial_numbers" VALUES (979,76,'3954811','3955810','90mm f/2 ASPH Apo-Summicron-M ','2002','1000',NULL,'2021-02-09 15:36:00','2021-02-09 15:36:00');
INSERT INTO "Serial_numbers" VALUES (980,76,'3959911','3960210','90mm f/2 ASPH Apo-Summicron-M ','2002','300',NULL,'2021-02-09 15:36:00','2021-02-09 15:36:00');
INSERT INTO "Serial_numbers" VALUES (981,76,'3961211','3961510','90mm f/2 ASPH Apo-Summicron-M (silb.)','2003','300',NULL,'2021-02-09 15:36:00','2021-02-09 15:36:00');
INSERT INTO "Serial_numbers" VALUES (982,76,'3965511','3966510','90mm f/2 ASPH Apo-Summicron-M ','2003','1000',NULL,'2021-02-09 15:36:00','2021-02-09 15:36:00');
INSERT INTO "Serial_numbers" VALUES (983,76,'-4002095','4076028-','90mm f/2 ASPH Apo-Summicron-M (11636) ','2006-2010','73,934+ ',NULL,'2021-02-09 15:36:00','2021-02-09 15:36:00');
INSERT INTO "Serial_numbers" VALUES (984,76,'-4110110','4110259-','90mm f/2 ASPH Apo-Summicron-M (11884) ','2011-2012','unknown ',NULL,'2021-02-09 15:36:00','2021-02-09 15:36:00');
INSERT INTO "Serial_numbers" VALUES (985,76,'-4208138','4219435-','90mm f/2 ASPH Apo-Summicron-M (11884) ','2013-2014','11,298+ ',NULL,'2021-02-09 15:36:00','2021-02-09 15:36:00');
INSERT INTO "Serial_numbers" VALUES (986,77,'2813801','*2814900','Summicron-M f= *3.5 cm 1:2 (black.1)','1977','[1100] ',NULL,'2021-02-09 15:36:00','2021-02-09 15:36:00');
INSERT INTO "Serial_numbers" VALUES (987,77,'2947201','2950200','Summicron-M f= 9 cm 1:2 ','1978','3000',NULL,'2021-02-09 15:36:00','2021-02-09 15:36:00');
INSERT INTO "Serial_numbers" VALUES (988,77,'3163001','3164000','Summicron-M f= 9 cm 1:2 (black.1)','1982','1000',NULL,'2021-02-09 15:36:00','2021-02-09 15:36:00');
INSERT INTO "Serial_numbers" VALUES (989,77,'3177201','3178200','Summicron-M f= 9 cm 1:2 ','1982','1000',NULL,'2021-02-09 15:36:00','2021-02-09 15:36:00');
INSERT INTO "Serial_numbers" VALUES (990,77,'3209801','3211800','Summicron-M f= 9 cm 1:2 (black.2)','1982','2000',NULL,'2021-02-09 15:36:00','2021-02-09 15:36:00');
INSERT INTO "Serial_numbers" VALUES (991,77,'3222301','3223300','Summicron-M f= 9 cm 1:2 ','1982','1000',NULL,'2021-02-09 15:36:00','2021-02-09 15:36:00');
INSERT INTO "Serial_numbers" VALUES (992,77,'3263401','3265400','Summicron-M f= 9 cm 1:2 (black.2)','1983','2000',NULL,'2021-02-09 15:36:00','2021-02-09 15:36:00');
INSERT INTO "Serial_numbers" VALUES (993,77,'3298201','3299200','Summicron-M f= 9 cm 1:2 (black.2)','1984','1000',NULL,'2021-02-09 15:36:00','2021-02-09 15:36:00');
INSERT INTO "Serial_numbers" VALUES (994,77,'3365801','3366800','Summicron-M f= 9 cm 1:2 (black.2)','1985','1000',NULL,'2021-02-09 15:36:00','2021-02-09 15:36:00');
INSERT INTO "Serial_numbers" VALUES (995,77,'3391001','3391800','Summicron-M f= 9 cm 1:2 ','1986','800',NULL,'2021-02-09 15:36:00','2021-02-09 15:36:00');
INSERT INTO "Serial_numbers" VALUES (996,77,'3436501','3437500','Summicron-M f= 9 cm 1:2 (black.2)','1987','1000',NULL,'2021-02-09 15:36:00','2021-02-09 15:36:00');
INSERT INTO "Serial_numbers" VALUES (997,77,'3455071','3455870','Summicron-M f= 9 cm 1:2 ','1987','800',NULL,'2021-02-09 15:36:00','2021-02-09 15:36:00');
INSERT INTO "Serial_numbers" VALUES (998,77,'3458371','3459070','Summicron-M f= 9 cm 1:2 ','1988','700',NULL,'2021-02-09 15:36:00','2021-02-09 15:36:00');
INSERT INTO "Serial_numbers" VALUES (999,77,'3473901','3474700','Summicron-M f= 9 cm 1:2 (black.2)','1988','800',NULL,'2021-02-09 15:36:00','2021-02-09 15:36:00');
INSERT INTO "Serial_numbers" VALUES (1000,77,'3482901','3483500','Summicron-M f= 9 cm 1:2 ','1989','600',NULL,'2021-02-09 15:36:00','2021-02-09 15:36:00');
INSERT INTO "Serial_numbers" VALUES (1001,77,'3523296','3523795','Summicron-M f= 9 cm 1:2 ','1990','500',NULL,'2021-02-09 15:36:00','2021-02-09 15:36:00');
INSERT INTO "Serial_numbers" VALUES (1002,77,'3532468','3533467','Summicron-M f= 9 cm 1:2 ','1990','1000',NULL,'2021-02-09 15:36:00','2021-02-09 15:36:00');
INSERT INTO "Serial_numbers" VALUES (1003,77,'3574634','3575633','Summicron-M f= 9 cm 1:2 (black.11 136)','1991','1000',NULL,'2021-02-09 15:36:00','2021-02-09 15:36:00');
INSERT INTO "Serial_numbers" VALUES (1004,77,'3594960','3595959','Summicron-M f= 9 cm 1:2 (black.2)','1992','1000',NULL,'2021-02-09 15:36:00','2021-02-09 15:36:00');
INSERT INTO "Serial_numbers" VALUES (1005,77,'3608120','3608369','Summicron-M f= 9 cm 1:2 ','1992','250',NULL,'2021-02-09 15:36:00','2021-02-09 15:36:00');
INSERT INTO "Serial_numbers" VALUES (1006,77,'3615580','3616579','Summicron-M f= 9 cm 1:2 (silver.2)','1993','1000',NULL,'2021-02-09 15:36:00','2021-02-09 15:36:00');
INSERT INTO "Serial_numbers" VALUES (1007,77,'3617902','3617902','Summicron-M f= 9 cm 1:2 ','1993','1',NULL,'2021-02-09 15:36:00','2021-02-09 15:36:00');
INSERT INTO "Serial_numbers" VALUES (1008,77,'3642376','3643275','Summicron-M f= 9 cm 1:2 (black+silver)','1993','900',NULL,'2021-02-09 15:36:00','2021-02-09 15:36:00');
INSERT INTO "Serial_numbers" VALUES (1009,77,'3643276','3644475','Summicron-M f= 9 cm 1:2 (silver.11 137)','1993','1200',NULL,'2021-02-09 15:36:00','2021-02-09 15:36:00');
INSERT INTO "Serial_numbers" VALUES (1010,77,'3665831','3666030','Summicron-M f= 9 cm 1:2 (silver.2)','1994','200',NULL,'2021-02-09 15:36:00','2021-02-09 15:36:00');
INSERT INTO "Serial_numbers" VALUES (1011,77,'3687031','3688230','Summicron-M f= 9 cm 1:2 (silver.2)','1995','1200',NULL,'2021-02-09 15:36:00','2021-02-09 15:36:00');
INSERT INTO "Serial_numbers" VALUES (1012,77,'3688231','3689030','Summicron-M f= 9 cm 1:2 (silver.2)','1995','800',NULL,'2021-02-09 15:36:00','2021-02-09 15:36:00');
INSERT INTO "Serial_numbers" VALUES (1013,77,'3702703','3703802','Summicron-M f= 9 cm 1:2 ','1995','1100',NULL,'2021-02-09 15:36:00','2021-02-09 15:36:00');
INSERT INTO "Serial_numbers" VALUES (1014,77,'3703803','3704802','Summicron-M f= 9 cm 1:2 ','1995','1000',NULL,'2021-02-09 15:36:00','2021-02-09 15:36:00');
INSERT INTO "Serial_numbers" VALUES (1015,77,'3720503','3721802','Summicron-M f= 9 cm 1:2 ','1995','1300',NULL,'2021-02-09 15:36:00','2021-02-09 15:36:00');
INSERT INTO "Serial_numbers" VALUES (1016,77,'3721803','3722802','Summicron-M f= 9 cm 1:2 ','1995','1000',NULL,'2021-02-09 15:36:00','2021-02-09 15:36:00');
INSERT INTO "Serial_numbers" VALUES (1017,95,'1983001','1983900','Summicron f= 9 cm 1:2 (SFK-chrom)','1963','900',NULL,'2021-02-09 15:36:00','2021-02-09 15:36:00');
INSERT INTO "Serial_numbers" VALUES (1018,95,'2025001','2026000','Summicron f= 9 cm 1:2 (SFK-chrom)','1964','1000',NULL,'2021-02-09 15:36:00','2021-02-09 15:36:00');
INSERT INTO "Serial_numbers" VALUES (1019,95,'2068501','2069500','Summicron f= 9 cm 1:2 (SFK-chrom)','1964','1000',NULL,'2021-02-09 15:36:00','2021-02-09 15:36:00');
INSERT INTO "Serial_numbers" VALUES (1020,95,'2150551','2151550','Summicron f= 9 cm 1:2 (SFK-black)','1965','1000',NULL,'2021-02-09 15:36:00','2021-02-09 15:36:00');
INSERT INTO "Serial_numbers" VALUES (1021,95,'2203101','2204100','Summicron f= 9 cm 1:2 (SFK-black)','1966','1000',NULL,'2021-02-09 15:36:00','2021-02-09 15:36:00');
INSERT INTO "Serial_numbers" VALUES (1022,95,'2246051','2247150','Summicron f= 9 cm 1:2 (SFK-black+chrom)','1967','1100',NULL,'2021-02-09 15:36:00','2021-02-09 15:36:00');
INSERT INTO "Serial_numbers" VALUES (1023,95,'2332801','2333800','Summicron f= 9 cm 1:2 ','1969','1000',NULL,'2021-02-09 15:36:00','2021-02-09 15:36:00');
INSERT INTO "Serial_numbers" VALUES (1024,95,'2370801','2371800','Summicron f= 9 cm 1:2 (SFK-black)','1969','1000',NULL,'2021-02-09 15:36:00','2021-02-09 15:36:00');
INSERT INTO "Serial_numbers" VALUES (1025,95,'2413101','2413600','Summicron f= 9 cm 1:2 (SFK-black)','1970','500',NULL,'2021-02-09 15:36:00','2021-02-09 15:36:00');
INSERT INTO "Serial_numbers" VALUES (1026,95,'2499651','2500650','Summicron f= 9 cm 1:2 ','1971','1000',NULL,'2021-02-09 15:36:00','2021-02-09 15:36:00');
INSERT INTO "Serial_numbers" VALUES (1027,95,'2544501"','2545700','Summicron-R" f= 9 cm 1:2 (black)','1972','[1200] ',NULL,'2021-02-09 15:36:00','2021-02-09 15:36:00');
INSERT INTO "Serial_numbers" VALUES (1028,95,'2623601','2624600','Summicron-M f= 9 cm 1:2 (SFK-black)','1973','1000',NULL,'2021-02-09 15:36:00','2021-02-09 15:36:00');
INSERT INTO "Serial_numbers" VALUES (1029,95,'2659451','2660450','Summicron-M f= 9 cm 1:2 (black)','1973','1000',NULL,'2021-02-09 15:36:00','2021-02-09 15:36:00');
INSERT INTO "Serial_numbers" VALUES (1030,95,'2731921','2731921','Summicron f= 9 cm 1:2 ','1974','1',NULL,'2021-02-09 15:36:00','2021-02-09 15:36:00');
INSERT INTO "Serial_numbers" VALUES (1031,95,'2731922','2731950','Summicron f= 9 cm 1:2 ','1975','29',NULL,'2021-02-09 15:36:00','2021-02-09 15:36:00');
INSERT INTO "Serial_numbers" VALUES (1032,95,'2751051','2752050','Summicron f= 9 cm 1:2 (black)','1975','1000',NULL,'2021-02-09 15:36:00','2021-02-09 15:36:00');
INSERT INTO "Serial_numbers" VALUES (1033,95,'2770201','2771200','Summicron-M f= 9 cm 1:2 ','1976','1000',NULL,'2021-02-09 15:36:00','2021-02-09 15:36:00');
INSERT INTO "Serial_numbers" VALUES (1034,95,'2791651','2792650','Summicron-M f= 9 cm 1:2 (black)','1976','1000',NULL,'2021-02-09 15:36:00','2021-02-09 15:36:00');
INSERT INTO "Serial_numbers" VALUES (1035,95,'2813401','281800','Summicron-M f= 9 cm 1:2 ','1976','400',NULL,'2021-02-09 15:36:00','2021-02-09 15:36:00');
INSERT INTO "Serial_numbers" VALUES (1036,94,'1119001','1119200','Summicron f= 9 cm 1:2 (ELW.S-black+M-chrom)','1953**','200',NULL,'2021-02-09 15:36:00','2021-02-09 15:36:00');
INSERT INTO "Serial_numbers" VALUES (1037,94,'1477001','1477100','Summicron f= 9 cm 1:2 (ELC.S-black+chrom)','1957','100',NULL,'2021-02-09 15:36:00','2021-02-09 15:36:00');
INSERT INTO "Serial_numbers" VALUES (1038,94,'1580001','1581000','Summicron f= 9 cm 1:2 (ELC.S-black.chrom+M-chrom.UFK)','1958','1000',NULL,'2021-02-09 15:36:00','2021-02-09 15:36:00');
INSERT INTO "Serial_numbers" VALUES (1039,94,'1615001*','1616000','*Summaron f= 3.5 cm 1:2.8 ','1958','1000',NULL,'2021-02-09 15:36:00','2021-02-09 15:36:00');
INSERT INTO "Serial_numbers" VALUES (1040,94,'1651001','1652000','Summicron f= 9 cm 1:2 (SFK.S-chrom+M-black+chrom)','1959','1000',NULL,'2021-02-09 15:36:00','2021-02-09 15:36:00');
INSERT INTO "Serial_numbers" VALUES (1041,94,'1652451','1653450','Summicron f= 9 cm 1:2 (ELC.SFK.M+S-chrom)','1959','1000',NULL,'2021-02-09 15:36:00','2021-02-09 15:36:00');
INSERT INTO "Serial_numbers" VALUES (1042,94,'1680001','1682000','Summicron f= 9 cm 1:2 (SFK.M+S-chrom+black)','1959','2000',NULL,'2021-02-09 15:36:00','2021-02-09 15:36:00');
INSERT INTO "Serial_numbers" VALUES (1043,94,'1740001','^1743500','Summicron f= 9 cm 1:2 (SFK.S-chrom+M-black+M-chrom)','1960','3500^ ',NULL,'2021-02-09 15:36:00','2021-02-09 15:36:00');
INSERT INTO "Serial_numbers" VALUES (1044,94,'1743501','*1746500','Summicron f= *9 cm 1:2 ','1960','3000* ',NULL,'2021-02-09 15:36:00','2021-02-09 15:36:00');
INSERT INTO "Serial_numbers" VALUES (1045,94,'1817001','1819000','Summicron f= 9 cm 1:2 (SFK.M-chrom)','1960','2000',NULL,'2021-02-09 15:36:00','2021-02-09 15:36:00');
INSERT INTO "Serial_numbers" VALUES (1046,94,'1580001','1581000','Summicron f= 9 cm 1:2 ','1958','1000',NULL,'2021-02-09 15:36:00','2021-02-09 15:36:00');
INSERT INTO "Serial_numbers" VALUES (1047,94,'1651001','1652000','Summicron f= 9 cm 1:2 ','1959','1000',NULL,'2021-02-09 15:36:00','2021-02-09 15:36:00');
INSERT INTO "Serial_numbers" VALUES (1048,94,'1652451','1653450','Summicron f= 9 cm 1:2(S-chrom)','1959','1000',NULL,'2021-02-09 15:36:00','2021-02-09 15:36:00');
INSERT INTO "Serial_numbers" VALUES (1049,94,'1680001','1682000','Summicron f= 9 cm 1:2 ','1959','2000',NULL,'2021-02-09 15:36:00','2021-02-09 15:36:00');
INSERT INTO "Serial_numbers" VALUES (1050,94,'1740001*','1743500','Summicron f= 9 cm 1:2 (SFK.M-chrom+black)','1960','3500',NULL,'2021-02-09 15:36:00','2021-02-09 15:36:00');
INSERT INTO "Serial_numbers" VALUES (1051,94,'1743501*','1746500','Summicron f= 9 cm 1:2 ','1960','3000',NULL,'2021-02-09 15:36:00','2021-02-09 15:36:00');
INSERT INTO "Serial_numbers" VALUES (1052,94,'1817001','1819000','Summicron f= 9 cm 1:2 (SFK.M-chrom)','1960','2000',NULL,'2021-02-09 15:36:00','2021-02-09 15:36:00');
INSERT INTO "Serial_numbers" VALUES (1053,93,'-unknown','4306316-','90mm f/2.4 Summarit-M (black)','2014','unknown ',NULL,'2021-02-09 15:36:00','2021-02-09 15:36:00');
INSERT INTO "Serial_numbers" VALUES (1054,93,'-4306336','unknown-','90mm f/2.4 Summarit-M (silver)','2014','unknown ',NULL,'2021-02-09 15:36:00','2021-02-09 15:36:00');
INSERT INTO "Serial_numbers" VALUES (1055,92,'-4046300','4046501-','90mm f/2.5 Summarit-M ','2007','202+ ',NULL,'2021-02-09 15:36:00','2021-02-09 15:36:00');
INSERT INTO "Serial_numbers" VALUES (1056,92,'-4059505','4059879-','90mm f/2.5 Summarit-M ','2008','375+ ',NULL,'2021-02-09 15:36:00','2021-02-09 15:36:00');
INSERT INTO "Serial_numbers" VALUES (1057,92,'-4125801','4134462-','90mm f/2.5 Summarit-M ','2009','8,662+ ',NULL,'2021-02-09 15:36:00','2021-02-09 15:36:00');
INSERT INTO "Serial_numbers" VALUES (1058,92,'~4195586','4231806-','90mm f/2.5 Summarit-M ','2010-2012','36,221+',NULL,'2021-02-09 15:36:00','2021-02-09 15:36:00');
INSERT INTO "Serial_numbers" VALUES (1059,91,'3462071','3465070','90mm f/2.8 Elmarit-M (black)','1988','3000',NULL,'2021-02-09 15:36:00','2021-02-09 15:36:00');
INSERT INTO "Serial_numbers" VALUES (1060,91,'3520296','3521295','90mm f/2.8 Elmarit-M ','1990','1000',NULL,'2021-02-09 15:36:00','2021-02-09 15:36:00');
INSERT INTO "Serial_numbers" VALUES (1061,91,'3555468','3557467','90mm f/2.8 Elmarit-M ','1991','2000',NULL,'2021-02-09 15:36:00','2021-02-09 15:36:00');
INSERT INTO "Serial_numbers" VALUES (1062,91,'3609680','3610679','90mm f/2.8 Elmarit-M (black)','1992','1000',NULL,'2021-02-09 15:36:00','2021-02-09 15:36:00');
INSERT INTO "Serial_numbers" VALUES (1063,91,'3622533','3623532','90mm f/2.8 Elmarit-M (black)','1993','1000',NULL,'2021-02-09 15:36:00','2021-02-09 15:36:00');
INSERT INTO "Serial_numbers" VALUES (1064,91,'3647976 ^','3648975','90mm f/2.8 Elmarit-M ','1994','1000',NULL,'2021-02-09 15:36:00','2021-02-09 15:36:00');
INSERT INTO "Serial_numbers" VALUES (1065,91,'3656831','3657830','90mm f/2.8 Elmarit-M ','1994','1000',NULL,'2021-02-09 15:36:00','2021-02-09 15:36:00');
INSERT INTO "Serial_numbers" VALUES (1066,91,'3678031','3679030','90mm f/2.8 Elmarit-M ','1995','1000',NULL,'2021-02-09 15:36:00','2021-02-09 15:36:00');
INSERT INTO "Serial_numbers" VALUES (1067,91,'3695701','3696500','90mm f/2.8 Elmarit-M ','1995','800',NULL,'2021-02-09 15:36:00','2021-02-09 15:36:00');
INSERT INTO "Serial_numbers" VALUES (1068,91,'3711003','3712002','90mm f/2.8 Elmarit-M (black)','1995','1000',NULL,'2021-02-09 15:36:00','2021-02-09 15:36:00');
INSERT INTO "Serial_numbers" VALUES (1069,91,'3759500','3759999','90mm f/2.8 Elmarit-M (black)','1996','500',NULL,'2021-02-09 15:36:00','2021-02-09 15:36:00');
INSERT INTO "Serial_numbers" VALUES (1070,91,'3768100','3768219','90mm f/2.8 Elmarit-M (black)','1996','120',NULL,'2021-02-09 15:36:00','2021-02-09 15:36:00');
INSERT INTO "Serial_numbers" VALUES (1071,91,'3769430','3769929','90mm f/2.8 Elmarit-M ','1996','500',NULL,'2021-02-09 15:36:00','2021-02-09 15:36:00');
INSERT INTO "Serial_numbers" VALUES (1072,91,'3776430','3776979','90mm f/2.8 Elmarit-M (chrom)','1997','550',NULL,'2021-02-09 15:36:00','2021-02-09 15:36:00');
INSERT INTO "Serial_numbers" VALUES (1073,91,'3780280','3780529','90mm f/2.8 Elmarit-M ','1997','250',NULL,'2021-02-09 15:36:00','2021-02-09 15:36:00');
INSERT INTO "Serial_numbers" VALUES (1074,91,'3794510','3795009','90mm f/2.8 Elmarit-M ','1997','500',NULL,'2021-02-09 15:36:00','2021-02-09 15:36:00');
INSERT INTO "Serial_numbers" VALUES (1075,91,'3803410','3803659','90mm f/2.8 Elmarit-M ','1997','250',NULL,'2021-02-09 15:36:00','2021-02-09 15:36:00');
INSERT INTO "Serial_numbers" VALUES (1076,91,'3805860','3807859','90mm f/2.8 Elmarit-M (chrom+titan)','1997','2000',NULL,'2021-02-09 15:36:00','2021-02-09 15:36:00');
INSERT INTO "Serial_numbers" VALUES (1077,91,'3811860','3812109','90mm f/2.8 Elmarit-M (black)','1997','250',NULL,'2021-02-09 15:36:00','2021-02-09 15:36:00');
INSERT INTO "Serial_numbers" VALUES (1078,91,'3823625','3825124','90mm f/2.8 Elmarit-M ','1998','1500',NULL,'2021-02-09 15:36:00','2021-02-09 15:36:00');
INSERT INTO "Serial_numbers" VALUES (1079,91,'3855600','3856299','90mm f/2.8 Elmarit-M ','1998','700',NULL,'2021-02-09 15:36:00','2021-02-09 15:36:00');
INSERT INTO "Serial_numbers" VALUES (1080,91,'3856800','3857349','90mm f/2.8 Elmarit-M ','1998','550',NULL,'2021-02-09 15:36:00','2021-02-09 15:36:00');
INSERT INTO "Serial_numbers" VALUES (1081,91,'3860127','3860376','90mm f/2.8 Elmarit-M (black)','1999','250',NULL,'2021-02-09 15:36:00','2021-02-09 15:36:00');
INSERT INTO "Serial_numbers" VALUES (1082,91,'3864667','3864966','90mm f/2.8 Elmarit-M ','1999','300',NULL,'2021-02-09 15:36:00','2021-02-09 15:36:00');
INSERT INTO "Serial_numbers" VALUES (1083,91,'3869917','3870166','90mm f/2.8 Elmarit-M ','1999','250',NULL,'2021-02-09 15:36:00','2021-02-09 15:36:00');
INSERT INTO "Serial_numbers" VALUES (1084,91,'3882997','3883246','90mm f/2.8 Elmarit-M ','2000','250',NULL,'2021-02-09 15:36:00','2021-02-09 15:36:00');
INSERT INTO "Serial_numbers" VALUES (1085,91,'3890257','3890506','90mm f/2.8 Elmarit-M ','2000','250',NULL,'2021-02-09 15:36:00','2021-02-09 15:36:00');
INSERT INTO "Serial_numbers" VALUES (1086,91,'3898576','3899075','90mm f/2.8 Elmarit-M ','2000','500',NULL,'2021-02-09 15:36:00','2021-02-09 15:36:00');
INSERT INTO "Serial_numbers" VALUES (1087,91,'3905126','3905375','90mm f/2.8 Elmarit-M ','2000','250',NULL,'2021-02-09 15:36:00','2021-02-09 15:36:00');
INSERT INTO "Serial_numbers" VALUES (1088,91,'3917023','3917272*','90mm f/2.8 Elmarit-M ','2001','250',NULL,'2021-02-09 15:36:00','2021-02-09 15:36:00');
INSERT INTO "Serial_numbers" VALUES (1089,91,'3924671','3924920','90mm f/2.8 Elmarit-M (black)','2001','250',NULL,'2021-02-09 15:36:00','2021-02-09 15:36:00');
INSERT INTO "Serial_numbers" VALUES (1090,91,'3930514','3931013','90mm f/2.8 Elmarit-M ','2001','500',NULL,'2021-02-09 15:36:00','2021-02-09 15:36:00');
INSERT INTO "Serial_numbers" VALUES (1091,91,'3944314','3944563','90mm f/2.8 Elmarit-M ','2002','250',NULL,'2021-02-09 15:36:00','2021-02-09 15:36:00');
INSERT INTO "Serial_numbers" VALUES (1092,91,'3970421','3970670','90mm f/2.8 Elmarit-M ','2003','250',NULL,'2021-02-09 15:36:00','2021-02-09 15:36:00');
INSERT INTO "Serial_numbers" VALUES (1093,91,'3973739','3973988','90mm f/2.8 Elmarit-M ','2003','250',NULL,'2021-02-09 15:36:00','2021-02-09 15:36:00');
INSERT INTO "Serial_numbers" VALUES (1094,91,'3992871','3993120','90mm f/2.8 Elmarit-M ','2005','250',NULL,'2021-02-09 15:36:00','2021-02-09 15:36:00');
INSERT INTO "Serial_numbers" VALUES (1095,91,'unknown','unknown','90mm f/2.8 Elmarit-M ','2006-2007','unknown ',NULL,'2021-02-09 15:36:00','2021-02-09 15:36:00');
INSERT INTO "Serial_numbers" VALUES (1096,90,'2585501','2588500','90mm f/2.8 Tele-Elmarit (ELC)','1973','3000',NULL,'2021-02-09 15:36:00','2021-02-09 15:36:00');
INSERT INTO "Serial_numbers" VALUES (1097,90,'2656951','2659450','90mm f/2.8 Tele-Elmarit (ELC)','1973','2500',NULL,'2021-02-09 15:36:00','2021-02-09 15:36:00');
INSERT INTO "Serial_numbers" VALUES (1098,90,'2695501','2697500','90mm f/2.8 Tele-Elmarit-M ','1974','2000',NULL,'2021-02-09 15:36:00','2021-02-09 15:36:00');
INSERT INTO "Serial_numbers" VALUES (1099,90,'2726921','**2728920','**135mm f/2.8 Tele-Elmarit (ELC)','1976','[2000] ',NULL,'2021-02-09 15:36:00','2021-02-09 15:36:00');
INSERT INTO "Serial_numbers" VALUES (1100,90,'2792651','2794650','90mm f/2.8 Tele-Elmarit-M (ELC)','1976','2000',NULL,'2021-02-09 15:36:00','2021-02-09 15:36:00');
INSERT INTO "Serial_numbers" VALUES (1101,90,'2831351','2832350','90mm f/2.8 Tele-Elmarit-M ','1977','1000',NULL,'2021-02-09 15:36:00','2021-02-09 15:36:00');
INSERT INTO "Serial_numbers" VALUES (1102,90,'2871601','2872600','90mm f/2.8 Tele-Elmarit-M ','1977','1000',NULL,'2021-02-09 15:36:00','2021-02-09 15:36:00');
INSERT INTO "Serial_numbers" VALUES (1103,90,'2940701','2941700','90mm f/2.8 Tele-Elmarit-M ','1978','1000',NULL,'2021-02-09 15:36:00','2021-02-09 15:36:00');
INSERT INTO "Serial_numbers" VALUES (1104,90,'2967251','2969250','90mm f/2.8 Tele-Elmarit-M (ELC)','1979','2000',NULL,'2021-02-09 15:36:00','2021-02-09 15:36:00');
INSERT INTO "Serial_numbers" VALUES (1105,90,'3003101','3004100','90mm f/2.8 Tele-Elmarit-M (ELC)','1979','1000',NULL,'2021-02-09 15:36:00','2021-02-09 15:36:00');
INSERT INTO "Serial_numbers" VALUES (1106,90,'3065801','3066800','90mm f/2.8 Tele-Elmarit-M (ELC)','1980','1000',NULL,'2021-02-09 15:36:00','2021-02-09 15:36:00');
INSERT INTO "Serial_numbers" VALUES (1107,90,'3068301','3069300','90mm f/2.8 Tele-Elmarit-M ','1980','1000',NULL,'2021-02-09 15:36:00','2021-02-09 15:36:00');
INSERT INTO "Serial_numbers" VALUES (1108,90,'3095501','3096500','90mm f/2.8 Tele-Elmarit-M ','1981','1000',NULL,'2021-02-09 15:36:00','2021-02-09 15:36:00');
INSERT INTO "Serial_numbers" VALUES (1109,90,'3141001','3142000','90mm f/2.8 Tele-Elmarit-M ','1981','1000',NULL,'2021-02-09 15:36:00','2021-02-09 15:36:00');
INSERT INTO "Serial_numbers" VALUES (1110,90,'3200701','3201800','90mm f/2.8 Tele-Elmarit-M (ELC.13-83)','1982','1100',NULL,'2021-02-09 15:36:00','2021-02-09 15:36:00');
INSERT INTO "Serial_numbers" VALUES (1111,90,'3215801','3216800','90mm f/2.8 Tele-Elmarit-M (ELC.13-83)','1982','1000',NULL,'2021-02-09 15:36:00','2021-02-09 15:36:00');
INSERT INTO "Serial_numbers" VALUES (1112,90,'3292401','3293400','90mm f/2.8 **Elmarit-M (ELC.13-83)','1983','1000',NULL,'2021-02-09 15:36:00','2021-02-09 15:36:00');
INSERT INTO "Serial_numbers" VALUES (1113,90,'3309701','3310700','90mm f/2.8 Tele-Elmarit-M ','1984','1000',NULL,'2021-02-09 15:36:00','2021-02-09 15:36:00');
INSERT INTO "Serial_numbers" VALUES (1114,90,'3316701','3317700','90mm f/2.8 Tele-Elmarit-M (ELW)','1984','1000',NULL,'2021-02-09 15:36:00','2021-02-09 15:36:00');
INSERT INTO "Serial_numbers" VALUES (1115,90,'3378001','3379000','90mm f/2.8 Tele-Elmarit-M (ELC+ELW)','1985','1000',NULL,'2021-02-09 15:36:00','2021-02-09 15:36:00');
INSERT INTO "Serial_numbers" VALUES (1116,90,'3383201','3384200','90mm f/2.8 Tele-Elmarit-M (ELW)','1986','1000',NULL,'2021-02-09 15:36:00','2021-02-09 15:36:00');
INSERT INTO "Serial_numbers" VALUES (1117,90,'3429691','3429890','90mm f/2.8 Tele-Elmarit-M ','1987','200',NULL,'2021-02-09 15:36:00','2021-02-09 15:36:00');
INSERT INTO "Serial_numbers" VALUES (1118,90,'3429891*','3433000','*Elmarit-R 28mm f/2.8 ','1987','[3110] ',NULL,'2021-02-09 15:36:00','2021-02-09 15:36:00');
INSERT INTO "Serial_numbers" VALUES (1119,90,'3451921','3453070','90mm f/2.8 Tele-Elmarit-M (ELW+ELC)','1987','1150',NULL,'2021-02-09 15:36:00','2021-02-09 15:36:00');
INSERT INTO "Serial_numbers" VALUES (1120,89,'2001001*','2002000','90mm f/2.8 *Elmarit (ELC.chrom)','1964','[1000] ',NULL,'2021-02-09 15:36:00','2021-02-09 15:36:00');
INSERT INTO "Serial_numbers" VALUES (1121,89,'2069501','2071500','90mm f/2.8 Tele-Elmarit (ELC.chrom-11800)','1964','2000',NULL,'2021-02-09 15:36:00','2021-02-09 15:36:00');
INSERT INTO "Serial_numbers" VALUES (1122,89,'2147451','2148550','90mm f/2.8 Tele-Elmarit (ELC.chrom+black)','1965','1100',NULL,'2021-02-09 15:36:00','2021-02-09 15:36:00');
INSERT INTO "Serial_numbers" VALUES (1123,89,'2215201','2216200','90mm f/2.8 Tele-Elmarit (ELC.black)','1966','1000',NULL,'2021-02-09 15:36:00','2021-02-09 15:36:00');
INSERT INTO "Serial_numbers" VALUES (1124,89,'2257401','2258400','90mm f/2.8 Tele-Elmarit (ELC.black)','1968','1000',NULL,'2021-02-09 15:36:00','2021-02-09 15:36:00');
INSERT INTO "Serial_numbers" VALUES (1125,89,'2286451','2287950','90mm f/2.8 Tele-Elmarit ','1968','1500',NULL,'2021-02-09 15:36:00','2021-02-09 15:36:00');
INSERT INTO "Serial_numbers" VALUES (1126,89,'2342301','2345300','90mm f/2.8 Tele-Elmarit (ELC.black)','1969','3000',NULL,'2021-02-09 15:36:00','2021-02-09 15:36:00');
INSERT INTO "Serial_numbers" VALUES (1127,89,'2489201','2491200','90mm f/2.8 Tele-Elmarit (ELC.black)','1971','2000',NULL,'2021-02-09 15:36:00','2021-02-09 15:36:00');
INSERT INTO "Serial_numbers" VALUES (1128,89,'2520101','2520400','90mm f/2.8 Tele-Elmarit (black)','1972','300',NULL,'2021-02-09 15:36:00','2021-02-09 15:36:00');
INSERT INTO "Serial_numbers" VALUES (1129,88,'1585001','1585070','Elmarit f= 9 cm 1:2.8 ','1958','70',NULL,'2021-02-09 15:36:00','2021-02-09 15:36:00');
INSERT INTO "Serial_numbers" VALUES (1130,88,'1640501','1640600','Elmarit f= 9 cm 1:2.8 (S-chrom) ','1958','100',NULL,'2021-02-09 15:36:00','2021-02-09 15:36:00');
INSERT INTO "Serial_numbers" VALUES (1131,88,'1649001','1650000','Elmarit f= 9 cm 1:2.8 (S-chrom) ','1959','1000',NULL,'2021-02-09 15:36:00','2021-02-09 15:36:00');
INSERT INTO "Serial_numbers" VALUES (1132,88,'1657451','1659000','Elmarit f= 9 cm 1:2.8 (M-chrom)','1959','1550',NULL,'2021-02-09 15:36:00','2021-02-09 15:36:00');
INSERT INTO "Serial_numbers" VALUES (1133,88,'1683001','1686000','Elmarit f= 9 cm 1:2.8 (M+S-chrom)','1959','3000',NULL,'2021-02-09 15:36:00','2021-02-09 15:36:00');
INSERT INTO "Serial_numbers" VALUES (1134,88,'1692001','1694000','Elmarit f= 9 cm 1:2.8 (M+S-chrom) ','1959','2000',NULL,'2021-02-09 15:36:00','2021-02-09 15:36:00');
INSERT INTO "Serial_numbers" VALUES (1135,88,'1709001','1710000','Elmarit f= 9 cm 1:2.8 (M+S-chrom) ','1959','1000',NULL,'2021-02-09 15:36:00','2021-02-09 15:36:00');
INSERT INTO "Serial_numbers" VALUES (1136,88,'1735001','1737000','Elmarit f= 9 cm 1:2.8 (M+S-chrom)','1960','2000',NULL,'2021-02-09 15:36:00','2021-02-09 15:36:00');
INSERT INTO "Serial_numbers" VALUES (1137,88,'1752001','1753000','Elmarit f= 9 cm 1:2.8 ','1960','1000',NULL,'2021-02-09 15:36:00','2021-02-09 15:36:00');
INSERT INTO "Serial_numbers" VALUES (1138,88,'1756001','1757000','Elmarit f= 9 cm 1:2.8 (M-chrom)','1960','1000',NULL,'2021-02-09 15:36:00','2021-02-09 15:36:00');
INSERT INTO "Serial_numbers" VALUES (1139,88,'1760601','1762000','Elmarit f= 9 cm 1:2.8 (M-chrom)','1960','1400',NULL,'2021-02-09 15:36:00','2021-02-09 15:36:00');
INSERT INTO "Serial_numbers" VALUES (1140,88,'1805001','1808000','Elmarit f= 9 cm 1:2.8 (M-chrom)','1960','3000',NULL,'2021-02-09 15:36:00','2021-02-09 15:36:00');
INSERT INTO "Serial_numbers" VALUES (1141,88,'1878001','1880000','Elmarit f= 9 cm 1:2.8 (M-chrom)','1961','2000',NULL,'2021-02-09 15:36:00','2021-02-09 15:36:00');
INSERT INTO "Serial_numbers" VALUES (1142,88,'1917001','1920000','Elmarit f= 9 cm 1:2.8 (M-chrom)','1962','3000',NULL,'2021-02-09 15:36:00','2021-02-09 15:36:00');
INSERT INTO "Serial_numbers" VALUES (1143,88,'1983901','1984400','Elmarit f= 9 cm 1:2.8 (M-chrom)','1963','500',NULL,'2021-02-09 15:36:00','2021-02-09 15:36:00');
INSERT INTO "Serial_numbers" VALUES (1144,88,'2001001*','2002000','*Elmarit f= 9 cm 1:2.8 ','1963','1000',NULL,'2021-02-09 15:36:00','2021-02-09 15:36:00');
INSERT INTO "Serial_numbers" VALUES (1145,88,'2044001','2046000','Elmarit f= 9 cm 1:2.8 (M-chrom)','1964','2000',NULL,'2021-02-09 15:36:00','2021-02-09 15:36:00');
INSERT INTO "Serial_numbers" VALUES (1146,88,'2084801','2088800','Elmarit f= 9 cm 1:2.8 (M-chrom)','1965','4000',NULL,'2021-02-09 15:36:00','2021-02-09 15:36:00');
INSERT INTO "Serial_numbers" VALUES (1147,88,'2125651','2129950','Elmarit f= 9 cm 1:2.8 (M-chrom-11129)','1965','4300',NULL,'2021-02-09 15:36:00','2021-02-09 15:36:00');
INSERT INTO "Serial_numbers" VALUES (1148,88,'2213001','2215000','Elmarit f= 9 cm 1:2.8 (M-black)','1966','2000',NULL,'2021-02-09 15:36:00','2021-02-09 15:36:00');
INSERT INTO "Serial_numbers" VALUES (1149,88,'2215001','2215200','Elmarit f= 9 cm 1:2.8 ','1966','200',NULL,'2021-02-09 15:36:00','2021-02-09 15:36:00');
INSERT INTO "Serial_numbers" VALUES (1150,88,'2291951','2292050','Elmarit f= 9 cm 1:2.8 ','1968','100',NULL,'2021-02-09 15:36:00','2021-02-09 15:36:00');
INSERT INTO "Serial_numbers" VALUES (1151,88,'2303951','2305150','Elmarit f= 9 cm 1:2.8 (M-black)','1968','1200',NULL,'2021-02-09 15:36:00','2021-02-09 15:36:00');
INSERT INTO "Serial_numbers" VALUES (1152,88,'2372801','2374800','Elmarit f= 9 cm 1:2.8 (M-black)','1969','2000',NULL,'2021-02-09 15:36:00','2021-02-09 15:36:00');
INSERT INTO "Serial_numbers" VALUES (1153,88,'2374801','2374900','Elmarit f= 9 cm 1:2.8 ','1969','100',NULL,'2021-02-09 15:36:00','2021-02-09 15:36:00');
INSERT INTO "Serial_numbers" VALUES (1154,88,'2426301','2428300','Elmarit f= 9 cm 1:2.8 (M-black)','1970','2000',NULL,'2021-02-09 15:36:00','2021-02-09 15:36:00');
INSERT INTO "Serial_numbers" VALUES (1155,88,'2428301','2428400','Elmarit f= 9 cm 1:2.8 (M-black)','1970','100',NULL,'2021-02-09 15:36:00','2021-02-09 15:36:00');
INSERT INTO "Serial_numbers" VALUES (1156,88,'2428401','2428750','Elmarit f= 9 cm 1:2.8 (M-black)','1970','350',NULL,'2021-02-09 15:36:00','2021-02-09 15:36:00');
INSERT INTO "Serial_numbers" VALUES (1157,88,'2522801','2523800','Elmarit f= 9 cm 1:2.8 (M-black)','1972','1000',NULL,'2021-02-09 15:36:00','2021-02-09 15:36:00');
INSERT INTO "Serial_numbers" VALUES (1158,88,'2721001','2721320','Elmarit f= 9 cm 1:2.8 (M-black)','1974','320',NULL,'2021-02-09 15:36:00','2021-02-09 15:36:00');
INSERT INTO "Serial_numbers" VALUES (1159,87,'3968791','3969170','90mm f/4 Macro-Elmar-M ','2003','380',NULL,'2021-02-09 15:36:00','2021-02-09 15:36:00');
INSERT INTO "Serial_numbers" VALUES (1160,87,'3969171','3970170','90mm f/4 Macro-Elmar-M (black+silver)','2003','1000',NULL,'2021-02-09 15:36:00','2021-02-09 15:36:00');
INSERT INTO "Serial_numbers" VALUES (1161,87,'3971486','3972485','90mm f/4 Macro-Elmar-M (silver)','2003','1000',NULL,'2021-02-09 15:36:00','2021-02-09 15:36:00');
INSERT INTO "Serial_numbers" VALUES (1162,87,'3975089','3976588','90mm f/4 Macro-Elmar-M (black)','2003','1500',NULL,'2021-02-09 15:36:00','2021-02-09 15:36:00');
INSERT INTO "Serial_numbers" VALUES (1163,87,'-4174726','4195710-','90mm f/4 Macro-Elmar-M (black)','2006-2013','20,958+ ',NULL,'2021-02-09 15:36:00','2021-02-09 15:36:00');
INSERT INTO "Serial_numbers" VALUES (1164,87,'-4195710','unknown-','90mm f/4 Macro-Elmar-M ("big top" version)','2014','unknown ',NULL,'2021-02-09 15:36:00','2021-02-09 15:36:00');
INSERT INTO "Serial_numbers" VALUES (1165,86,'1137001','1140000','Elmar 90 mm 1:40 (M-collapsible)','1954','3000',NULL,'2021-02-09 15:36:00','2021-02-09 15:36:00');
INSERT INTO "Serial_numbers" VALUES (1166,86,'1160501','1163000','Elmar 90 mm 1:40 (S+M-rigid)','1954','2500',NULL,'2021-02-09 15:36:00','2021-02-09 15:36:00');
INSERT INTO "Serial_numbers" VALUES (1167,86,'1171001','1171500','Elmar 90 mm 1:40 ','1954','500',NULL,'2021-02-09 15:36:00','2021-02-09 15:36:00');
INSERT INTO "Serial_numbers" VALUES (1168,86,'1178001','1178500','Elmar 90 mm 1:40 ','1954','500',NULL,'2021-02-09 15:36:00','2021-02-09 15:36:00');
INSERT INTO "Serial_numbers" VALUES (1169,86,'1182001','1183500','Elmar 90 mm 1:40 (S-rigid)','1954','1500',NULL,'2021-02-09 15:36:00','2021-02-09 15:36:00');
INSERT INTO "Serial_numbers" VALUES (1170,86,'1188001','1190000','Elmar 90 mm 1:40 (M+S-collapsible)','1954','2000',NULL,'2021-02-09 15:36:00','2021-02-09 15:36:00');
INSERT INTO "Serial_numbers" VALUES (1171,86,'1212001','1214000','Elmar 90 mm 1:40 ','1954','2000',NULL,'2021-02-09 15:36:00','2021-02-09 15:36:00');
INSERT INTO "Serial_numbers" VALUES (1172,86,'1224001','1224200','Elmar 90 mm 1:40 ','1954','200',NULL,'2021-02-09 15:36:00','2021-02-09 15:36:00');
INSERT INTO "Serial_numbers" VALUES (1173,86,'1236001','1238000','Elmar 90 mm 1:40 (M-collapsible)','1955','2000',NULL,'2021-02-09 15:36:00','2021-02-09 15:36:00');
INSERT INTO "Serial_numbers" VALUES (1174,86,'1241001','1242000','Elmar 90 mm 1:40 ','1955','1000',NULL,'2021-02-09 15:36:00','2021-02-09 15:36:00');
INSERT INTO "Serial_numbers" VALUES (1175,86,'1247001','1250000','Elmar 90 mm 1:40 (S-rigid)','1955','3000',NULL,'2021-02-09 15:36:00','2021-02-09 15:36:00');
INSERT INTO "Serial_numbers" VALUES (1176,86,'1260001','1263000','Elmar 90 mm 1:40 (M-collapsible)','1955','3000',NULL,'2021-02-09 15:36:00','2021-02-09 15:36:00');
INSERT INTO "Serial_numbers" VALUES (1177,86,'1271001','1272000','Elmar 90 mm 1:40 ','1955','1000',NULL,'2021-02-09 15:36:00','2021-02-09 15:36:00');
INSERT INTO "Serial_numbers" VALUES (1178,86,'1291001','1293000','Elmar 90 mm 1:40 (M-rigid)','1955','2000',NULL,'2021-02-09 15:36:00','2021-02-09 15:36:00');
INSERT INTO "Serial_numbers" VALUES (1179,86,'1309001','1311000','Elmar 90 mm 1:40 (M-collapsible)','1955','2000',NULL,'2021-02-09 15:36:00','2021-02-09 15:36:00');
INSERT INTO "Serial_numbers" VALUES (1180,86,'1337001','1340000','Elmar 90 mm 1:40 (S-rigid)','1956','3000',NULL,'2021-02-09 15:36:00','2021-02-09 15:36:00');
INSERT INTO "Serial_numbers" VALUES (1181,86,'1353001','1356000','Elmar 90 mm 1:40 (M-rigid)','1956','3000',NULL,'2021-02-09 15:36:00','2021-02-09 15:36:00');
INSERT INTO "Serial_numbers" VALUES (1182,86,'1380001','1383000','Elmar 90 mm 1:40 (S-rigid)','1956','3000',NULL,'2021-02-09 15:36:00','2021-02-09 15:36:00');
INSERT INTO "Serial_numbers" VALUES (1183,86,'1386001','1389000','Elmar 90 mm 1:40 (M-collapsible)','1956','3000',NULL,'2021-02-09 15:36:00','2021-02-09 15:36:00');
INSERT INTO "Serial_numbers" VALUES (1184,86,'1409001','1412000','Elmar 90 mm 1:40 ','1956','3000',NULL,'2021-02-09 15:36:00','2021-02-09 15:36:00');
INSERT INTO "Serial_numbers" VALUES (1185,86,'1459001','1465000','Elmar 90 mm 1:40 (M-collapsible.M+S-rigid)','1957','6000',NULL,'2021-02-09 15:36:00','2021-02-09 15:36:00');
INSERT INTO "Serial_numbers" VALUES (1186,86,'1481701','1483700','Elmar 90 mm 1:40 ','1957','2000',NULL,'2021-02-09 15:36:00','2021-02-09 15:36:00');
INSERT INTO "Serial_numbers" VALUES (1187,86,'1491001','1494000','Elmar 90 mm 1:40 (M-collapsible)','1957','3000',NULL,'2021-02-09 15:36:00','2021-02-09 15:36:00');
INSERT INTO "Serial_numbers" VALUES (1188,86,'1497001','1499000','Elmar 90 mm 1:40 (S-rigid)','1957','2000',NULL,'2021-02-09 15:36:00','2021-02-09 15:36:00');
INSERT INTO "Serial_numbers" VALUES (1189,86,'1503501','1506000','Elmar 90 mm 1:40 (M-rigid)','1957','2500',NULL,'2021-02-09 15:36:00','2021-02-09 15:36:00');
INSERT INTO "Serial_numbers" VALUES (1190,86,'1521001','1524000','Elmar 90 mm 1:40 (M-collapsible)','1957','3000',NULL,'2021-02-09 15:36:00','2021-02-09 15:36:00');
INSERT INTO "Serial_numbers" VALUES (1191,86,'1547001','1548000','Elmar 90 mm 1:40 (M-rigid)','1957','1000',NULL,'2021-02-09 15:36:00','2021-02-09 15:36:00');
INSERT INTO "Serial_numbers" VALUES (1192,86,'1558001','1559000','Elmar 90 mm 1:40 ','1958','1000',NULL,'2021-02-09 15:36:00','2021-02-09 15:36:00');
INSERT INTO "Serial_numbers" VALUES (1193,86,'1572001','1574000','Elmar 90 mm 1:40 (M-rigid)','1958','2000',NULL,'2021-02-09 15:36:00','2021-02-09 15:36:00');
INSERT INTO "Serial_numbers" VALUES (1194,86,'1585071','1585075','Elmar 90 mm 1:40 ','1958','5',NULL,'2021-02-09 15:36:00','2021-02-09 15:36:00');
INSERT INTO "Serial_numbers" VALUES (1195,86,'1603001','1604000','Elmar 90 mm 1:40 ','1958','1000',NULL,'2021-02-09 15:36:00','2021-02-09 15:36:00');
INSERT INTO "Serial_numbers" VALUES (1196,86,'1630001','1630500','Elmar 90 mm 1:40 ','1958','500',NULL,'2021-02-09 15:36:00','2021-02-09 15:36:00');
INSERT INTO "Serial_numbers" VALUES (1197,86,'1700001','1701000','Elmar 90 mm 1:40 (S-rigid) ','1959','1000',NULL,'2021-02-09 15:36:00','2021-02-09 15:36:00');
INSERT INTO "Serial_numbers" VALUES (1198,86,'1712001','1714000','Elmar 90 mm 1:40 (M-rigid) ','1959','2000',NULL,'2021-02-09 15:36:00','2021-02-09 15:36:00');
INSERT INTO "Serial_numbers" VALUES (1199,86,'1725001','1727000','Elmar 90 mm 1:40 ','1960','2000',NULL,'2021-02-09 15:36:00','2021-02-09 15:36:00');
INSERT INTO "Serial_numbers" VALUES (1200,86,'1766201','1768000','Elmar 90 mm 1:40 (S-rigid)','1960','1800',NULL,'2021-02-09 15:36:00','2021-02-09 15:36:00');
INSERT INTO "Serial_numbers" VALUES (1201,86,'1822001','1823000','Elmar 90 mm 1:40 ','1960','1000',NULL,'2021-02-09 15:36:00','2021-02-09 15:36:00');
INSERT INTO "Serial_numbers" VALUES (1202,86,'1827001','1830000','Elmar 90 mm 1:40 ','1961','3000',NULL,'2021-02-09 15:36:00','2021-02-09 15:36:00');
INSERT INTO "Serial_numbers" VALUES (1203,86,'1920001','1921000','Elmar 90 mm 1:40 (S-rigid.SFK)','1962','1000',NULL,'2021-02-09 15:36:00','2021-02-09 15:36:00');
INSERT INTO "Serial_numbers" VALUES (1204,86,'2088801','2090800','Elmar 90 mm 1:40 (M-rigid-11 830)','1965','2000',NULL,'2021-02-09 15:36:00','2021-02-09 15:36:00');
INSERT INTO "Serial_numbers" VALUES (1205,86,'2097501','2097900','Elmar 90 mm 1:40 (M-collapsible)','1965','400',NULL,'2021-02-09 15:36:00','2021-02-09 15:36:00');
INSERT INTO "Serial_numbers" VALUES (1206,85,'1913001','1914000','Elmar 90 mm 1:40 (S+M)','1962','1000',NULL,'2021-02-09 15:36:00','2021-02-09 15:36:00');
INSERT INTO "Serial_numbers" VALUES (1207,85,'1920001','1921000','Elmar 90 mm 1:40 (S+M)','1962','1000',NULL,'2021-02-09 15:36:00','2021-02-09 15:36:00');
INSERT INTO "Serial_numbers" VALUES (1208,85,'1936001','1937000','Elmar 90 mm 1:40 (S+M)','1962','1000',NULL,'2021-02-09 15:36:00','2021-02-09 15:36:00');
INSERT INTO "Serial_numbers" VALUES (1209,85,'2088801','2090800','Elmar 90 mm 1:40 (M)','1965','2000',NULL,'2021-02-09 15:36:00','2021-02-09 15:36:00');
INSERT INTO "Serial_numbers" VALUES (1210,85,'2097501','2097900','Elmar 90 mm 1:40 (M)','1965','400',NULL,'2021-02-09 15:36:00','2021-02-09 15:36:00');
INSERT INTO "Serial_numbers" VALUES (1211,85,'2123651','2125650','Elmar 90 mm 1:40 (S+M)','1965','2000',NULL,'2021-02-09 15:36:00','2021-02-09 15:36:00');
INSERT INTO "Serial_numbers" VALUES (1212,84,'2726921','*2728920','*135mm f/2.8 Tele-Elmarit ','1974','1000',NULL,'2021-02-09 15:36:00','2021-02-09 15:36:00');
INSERT INTO "Serial_numbers" VALUES (1213,84,'2771201','2773200','135mm f/2.8 Elmarit ','1976','2000',NULL,'2021-02-09 15:36:00','2021-02-09 15:36:00');
INSERT INTO "Serial_numbers" VALUES (1214,84,'2788651','2789650','135mm f/2.8 Elmarit-M ','1976','1000',NULL,'2021-02-09 15:36:00','2021-02-09 15:36:00');
INSERT INTO "Serial_numbers" VALUES (1215,84,'2849551','2850050','135mm f/2.8 Elmarit-M ','1977','500',NULL,'2021-02-09 15:36:00','2021-02-09 15:36:00');
INSERT INTO "Serial_numbers" VALUES (1216,84,'2872601','2873100','135mm f/2.8 Elmarit ','1977','500',NULL,'2021-02-09 15:36:00','2021-02-09 15:36:00');
INSERT INTO "Serial_numbers" VALUES (1217,84,'2849551','2850050','135mm f/2.8 Elmarit-M ','1977','500',NULL,'2021-02-09 15:36:00','2021-02-09 15:36:00');
INSERT INTO "Serial_numbers" VALUES (1218,84,'2872601','2873100','135mm f/2.8 Elmarit ','1977','500',NULL,'2021-02-09 15:36:00','2021-02-09 15:36:00');
INSERT INTO "Serial_numbers" VALUES (1219,84,'2997001','2998000','135mm f/2.8 Elmarit-M ','1979','1000',NULL,'2021-02-09 15:36:00','2021-02-09 15:36:00');
INSERT INTO "Serial_numbers" VALUES (1220,84,'3104001^','3105000','135mm f/2.8^ Elmarit-R ','1981','[1000] ',NULL,'2021-02-09 15:36:00','2021-02-09 15:36:00');
INSERT INTO "Serial_numbers" VALUES (1221,84,'3178201','**3179200','135mm f/2.8 Elmarit-R** ','1982','[1000] ',NULL,'2021-02-09 15:36:00','2021-02-09 15:36:00');
INSERT INTO "Serial_numbers" VALUES (1222,84,'3294401','3294900','135mm f/2.8 Elmarit-M ','1983','500',NULL,'2021-02-09 15:36:00','2021-02-09 15:36:00');
INSERT INTO "Serial_numbers" VALUES (1223,84,'3375501^','3376000','135mm f/2.8^ Elmarit-R ','1985','[500] ',NULL,'2021-02-09 15:36:00','2021-02-09 15:36:00');
INSERT INTO "Serial_numbers" VALUES (1224,84,'3397601^','3398100','135mm f/2.8^ Elmarit-R ','1986','[500] ',NULL,'2021-02-09 15:36:00','2021-02-09 15:36:00');
INSERT INTO "Serial_numbers" VALUES (1225,84,'3486701','3487200','135mm f/2.8 Elmarit-M ','1989','500',NULL,'2021-02-09 15:36:00','2021-02-09 15:36:00');
INSERT INTO "Serial_numbers" VALUES (1226,84,'3536768','3537467','135mm f/2.8 Elmarit-M ','1990','700',NULL,'2021-02-09 15:36:00','2021-02-09 15:36:00');
INSERT INTO "Serial_numbers" VALUES (1227,84,'3608020','3608119','135mm f/2.8 Elmarit-M ','1992','100',NULL,'2021-02-09 15:36:00','2021-02-09 15:36:00');
INSERT INTO "Serial_numbers" VALUES (1228,84,'3615430','3615579','135mm f/2.8 Elmarit-M ','1993','150',NULL,'2021-02-09 15:36:00','2021-02-09 15:36:00');
INSERT INTO "Serial_numbers" VALUES (1229,84,'3641826','3642125','135mm f/2.8 Elmarit-M ','1993','300',NULL,'2021-02-09 15:36:00','2021-02-09 15:36:00');
INSERT INTO "Serial_numbers" VALUES (1230,84,'3686631','3687030','135mm f/2.8 Elmarit-M ','1995','400',NULL,'2021-02-09 15:36:00','2021-02-09 15:36:00');
INSERT INTO "Serial_numbers" VALUES (1231,84,'3720303','3720502','135mm f/2.8 Elmarit-M ','1995','200',NULL,'2021-02-09 15:36:00','2021-02-09 15:36:00');
INSERT INTO "Serial_numbers" VALUES (1232,83,'2063501','*2065500','*35mm f/2.8 Elmarit-R* ','1964','[2000] ',NULL,'2021-02-09 15:36:00','2021-02-09 15:36:00');
INSERT INTO "Serial_numbers" VALUES (1233,83,'2151551','2152550','135mm f/2.8 Elmarit ','1965','1000',NULL,'2021-02-09 15:36:00','2021-02-09 15:36:00');
INSERT INTO "Serial_numbers" VALUES (1234,83,'2223201','2224000','135mm f/2.8 Elmarit ','1967','800',NULL,'2021-02-09 15:36:00','2021-02-09 15:36:00');
INSERT INTO "Serial_numbers" VALUES (1235,83,'2258901','2259900','135mm f/2.8 Elmarit ','1968','1000',NULL,'2021-02-09 15:36:00','2021-02-09 15:36:00');
INSERT INTO "Serial_numbers" VALUES (1236,83,'2288951','2289950','135mm f/2.8 Elmarit ','1968','1000',NULL,'2021-02-09 15:36:00','2021-02-09 15:36:00');
INSERT INTO "Serial_numbers" VALUES (1237,83,'2324301','2326300','135mm f/2.8 Elmarit ','1969','2000',NULL,'2021-02-09 15:36:00','2021-02-09 15:36:00');
INSERT INTO "Serial_numbers" VALUES (1238,83,'2326301*','2327800','50mm f/2.8 Elmar* ','1969','[1500] ',NULL,'2021-02-09 15:36:00','2021-02-09 15:36:00');
INSERT INTO "Serial_numbers" VALUES (1239,83,'2424201','2425700','135mm f/2.8 Elmarit ','1970','1500',NULL,'2021-02-09 15:36:00','2021-02-09 15:36:00');
INSERT INTO "Serial_numbers" VALUES (1240,83,'2466501','2468500','135mm f/2.8 Elmarit ','1970','2000',NULL,'2021-02-09 15:36:00','2021-02-09 15:36:00');
INSERT INTO "Serial_numbers" VALUES (1241,83,'2655901','2656900','135mm f/2.8 Elmarit-M ','1973','1000',NULL,'2021-02-09 15:36:00','2021-02-09 15:36:00');
INSERT INTO "Serial_numbers" VALUES (1242,83,'2681801','2682800','135mm f/2.8 Elmarit-M ','1974','1000',NULL,'2021-02-09 15:36:00','2021-02-09 15:36:00');
INSERT INTO "Serial_numbers" VALUES (1243,82,'1957001','1958000','135mm f/2.8 Elmarit ','1962','1000',NULL,'2021-02-09 15:36:00','2021-02-09 15:36:00');
INSERT INTO "Serial_numbers" VALUES (1244,82,'2011001','2011700','135mm f/2.8 Elmarit ','1963','700',NULL,'2021-02-09 15:36:00','2021-02-09 15:36:00');
INSERT INTO "Serial_numbers" VALUES (1245,82,'2038001','2038700','135mm f/2.8 Elmarit ','1964','700',NULL,'2021-02-09 15:36:00','2021-02-09 15:36:00');
INSERT INTO "Serial_numbers" VALUES (1246,81,'3838125','3838624','135mm f/3.4 ASPH Apo-Telyt-M ','1998','500',NULL,'2021-02-09 15:36:00','2021-02-09 15:36:00');
INSERT INTO "Serial_numbers" VALUES (1247,81,'3842000','3842499','135mm f/3.4 ASPH Apo-Telyt-M ','1998','500',NULL,'2021-02-09 15:36:00','2021-02-09 15:36:00');
INSERT INTO "Serial_numbers" VALUES (1248,81,'3853100','3853599','135mm f/3.4 ASPH Apo-Telyt-M ','1998','500',NULL,'2021-02-09 15:36:00','2021-02-09 15:36:00');
INSERT INTO "Serial_numbers" VALUES (1249,81,'3874167','3875166','135mm f/3.4 ASPH Apo-Telyt-M ','1999','1000',NULL,'2021-02-09 15:36:00','2021-02-09 15:36:00');
INSERT INTO "Serial_numbers" VALUES (1250,81,'3910126','3911125','135mm f/3.4 ASPH Apo-Telyt-M ','2000','1000',NULL,'2021-02-09 15:36:00','2021-02-09 15:36:00');
INSERT INTO "Serial_numbers" VALUES (1251,81,'3956061','3956560','135mm f/3.4 ASPH Apo-Telyt-M ','2002','500',NULL,'2021-02-09 15:36:00','2021-02-09 15:36:00');
INSERT INTO "Serial_numbers" VALUES (1252,81,'3985534','3986033','135mm f/3.4 ASPH Apo-Telyt-M ','2004','500',NULL,'2021-02-09 15:36:00','2021-02-09 15:36:00');
INSERT INTO "Serial_numbers" VALUES (1253,81,'-4060649','4060788-','135mm f/3.4 ASPH Apo-Telyt-M ','2006-2010','140+ ',NULL,'2021-02-09 15:36:00','2021-02-09 15:36:00');
INSERT INTO "Serial_numbers" VALUES (1254,80,'2046001','2047000','135mm f/4 Tele-Elmar (SFK+RS-11851)','1964','1000',NULL,'2021-02-09 15:36:00','2021-02-09 15:36:00');
INSERT INTO "Serial_numbers" VALUES (1255,80,'2082801','2084800','135mm f/4 Tele-Elmar (SFK+RS)','1965','2000',NULL,'2021-02-09 15:36:00','2021-02-09 15:36:00');
INSERT INTO "Serial_numbers" VALUES (1256,80,'2105801','2106800','135mm f/4 Tele-Elmar ','1965','1000',NULL,'2021-02-09 15:36:00','2021-02-09 15:36:00');
INSERT INTO "Serial_numbers" VALUES (1257,80,'2143451','2145450','135mm f/4 Tele-Elmar ','1965','2000',NULL,'2021-02-09 15:36:00','2021-02-09 15:36:00');
INSERT INTO "Serial_numbers" VALUES (1258,80,'2188901','2190900','135mm f/4 Tele-Elmar (SFK)','1966','2000',NULL,'2021-02-09 15:36:00','2021-02-09 15:36:00');
INSERT INTO "Serial_numbers" VALUES (1259,80,'2206101','2208100','135mm f/4 Tele-Elmar (SFK)','1966','2000',NULL,'2021-02-09 15:36:00','2021-02-09 15:36:00');
INSERT INTO "Serial_numbers" VALUES (1260,80,'2212501','2213000','135mm f/4 Tele-Elmar (SFK)','1966','500',NULL,'2021-02-09 15:36:00','2021-02-09 15:36:00');
INSERT INTO "Serial_numbers" VALUES (1261,80,'2231801','2233800','135mm f/4 Tele-Elmar (SFK)','1967','2000',NULL,'2021-02-09 15:36:00','2021-02-09 15:36:00');
INSERT INTO "Serial_numbers" VALUES (1262,80,'2382701','2384700','135mm f/4 Tele-Elmar (SFK)','1969','2000',NULL,'2021-02-09 15:36:00','2021-02-09 15:36:00');
INSERT INTO "Serial_numbers" VALUES (1263,80,'2420201','2422200','135mm f/4 Tele-Elmar (UFK)','1970','2000',NULL,'2021-02-09 15:36:00','2021-02-09 15:36:00');
INSERT INTO "Serial_numbers" VALUES (1264,80,'2458501','2459500','135mm f/4 Tele-Elmar ','1970','1000',NULL,'2021-02-09 15:36:00','2021-02-09 15:36:00');
INSERT INTO "Serial_numbers" VALUES (1265,80,'2481101','2482200','135mm f/4 Tele-Elmar (UFK)','1971','1100',NULL,'2021-02-09 15:36:00','2021-02-09 15:36:00');
INSERT INTO "Serial_numbers" VALUES (1266,80,'2549551','2550550','135mm f/4 Tele-Elmar (UFK)','1972','1000',NULL,'2021-02-09 15:36:00','2021-02-09 15:36:00');
INSERT INTO "Serial_numbers" VALUES (1267,80,'2652601','2654600','135mm f/4 Tele-Elmar (UFK)','1973','2000',NULL,'2021-02-09 15:36:00','2021-02-09 15:36:00');
INSERT INTO "Serial_numbers" VALUES (1268,80,'2755351','2756350','135mm f/4 Tele-Elmar (UFK)','1975','1000',NULL,'2021-02-09 15:36:00','2021-02-09 15:36:00');
INSERT INTO "Serial_numbers" VALUES (1269,80,'2906801','2907800','135mm f/4 Tele-Elmar (UFK)','1978','1000',NULL,'2021-02-09 15:36:00','2021-02-09 15:36:00');
INSERT INTO "Serial_numbers" VALUES (1270,80,'3414891','3415890','135mm f/4 Tele-Elmar ','1986','1000',NULL,'2021-02-09 15:36:00','2021-02-09 15:36:00');
INSERT INTO "Serial_numbers" VALUES (1271,80,'3469571','3470570','135mm f/4 Tele-Elmar ','1988','1000',NULL,'2021-02-09 15:36:00','2021-02-09 15:36:00');
INSERT INTO "Serial_numbers" VALUES (1272,80,'3595960','3596459','135mm f/4 Tele-Elmar-M (UFK)','1992','500',NULL,'2021-02-09 15:36:00','2021-02-09 15:36:00');
INSERT INTO "Serial_numbers" VALUES (1273,80,'3621633','3621832','135mm f/4 Tele-Elmar-M ','1993','200',NULL,'2021-02-09 15:36:00','2021-02-09 15:36:00');
INSERT INTO "Serial_numbers" VALUES (1274,80,'3634901','3635400','135mm f/4 Tele-Elmar-M ','1993','500',NULL,'2021-02-09 15:36:00','2021-02-09 15:36:00');
INSERT INTO "Serial_numbers" VALUES (1275,80,'3658331','3658830','135mm f/4 Tele-Elmar-M (UFK)','1994','500',NULL,'2021-02-09 15:36:00','2021-02-09 15:36:00');
INSERT INTO "Serial_numbers" VALUES (1276,80,'3722803','3723802','135mm f/4 Tele-Elmar-M ','1995','1000',NULL,'2021-02-09 15:36:00','2021-02-09 15:36:00');
INSERT INTO "Serial_numbers" VALUES (1277,79,'1733001','1734000','Elmar 1:4 / 135mm (M+S)','1960','1000',NULL,'2021-02-09 15:36:00','2021-02-09 15:36:00');
INSERT INTO "Serial_numbers" VALUES (1278,79,'1768001','1771000','Elmar 1:4 / 135mm (M)','1960','3000',NULL,'2021-02-09 15:36:00','2021-02-09 15:36:00');
INSERT INTO "Serial_numbers" VALUES (1279,79,'1774001','1777000','Elmar 1:4 / 135mm ','1960','3000',NULL,'2021-02-09 15:36:00','2021-02-09 15:36:00');
INSERT INTO "Serial_numbers" VALUES (1280,79,'1801001','1804000','Elmar 1:4 / 135mm (M)','1960','3000',NULL,'2021-02-09 15:36:00','2021-02-09 15:36:00');
INSERT INTO "Serial_numbers" VALUES (1281,79,'1824001','^ 1827000','Elmar 1:4 / 135mm (M+S)','1960','1000',NULL,'2021-02-09 15:36:00','2021-02-09 15:36:00');
INSERT INTO "Serial_numbers" VALUES (1282,79,'1880001','1883000','Elmar 1:4 / 135mm (M+S) ','1961','3000',NULL,'2021-02-09 15:36:00','2021-02-09 15:36:00');
INSERT INTO "Serial_numbers" VALUES (1283,79,'1884001','1884100','Elmar 1:4 / 135mm ','1961','100',NULL,'2021-02-09 15:36:00','2021-02-09 15:36:00');
INSERT INTO "Serial_numbers" VALUES (1284,79,'1890001','1894800','Elmar 1:4 / 135mm (M+S) ','1961','4800',NULL,'2021-02-09 15:36:00','2021-02-09 15:36:00');
INSERT INTO "Serial_numbers" VALUES (1285,79,'1901001','1903000','Elmar 1:4 / 135mm (M)','1961','2000',NULL,'2021-02-09 15:36:00','2021-02-09 15:36:00');
INSERT INTO "Serial_numbers" VALUES (1286,79,'1906001','1909000','Elmar 1:4 / 135mm (M+S)','1961','3000',NULL,'2021-02-09 15:36:00','2021-02-09 15:36:00');
INSERT INTO "Serial_numbers" VALUES (1287,79,'1964001','1965000','Elmar 1:4 / 135mm (M)','1962','1000',NULL,'2021-02-09 15:36:00','2021-02-09 15:36:00');
INSERT INTO "Serial_numbers" VALUES (1288,79,'2007501','2008500','Elmar 1:4 / 135mm (M)','1963','1000',NULL,'2021-02-09 15:36:00','2021-02-09 15:36:00');
INSERT INTO "Serial_numbers" VALUES (1289,78,'172001','172500','Hektor 13.5 cm 1:4.5 ','1933','500',NULL,'2021-02-09 15:36:00','2021-02-09 15:36:00');
INSERT INTO "Serial_numbers" VALUES (1290,78,'196001','197000','Hektor 13.5 cm 1:45 (S-black)','1934','1000',NULL,'2021-02-09 15:36:00','2021-02-09 15:36:00');
INSERT INTO "Serial_numbers" VALUES (1291,78,'241001','242000','Hektor 13.5 cm 1:45 (S-black) ','1935','1000',NULL,'2021-02-09 15:36:00','2021-02-09 15:36:00');
INSERT INTO "Serial_numbers" VALUES (1292,78,'245001','246000','Hektor 13.5 cm 1:45 ','1935','1000',NULL,'2021-02-09 15:36:00','2021-02-09 15:36:00');
INSERT INTO "Serial_numbers" VALUES (1293,78,'310001','311000','Hektor 13.5 cm 1:45 ','1936','1000',NULL,'2021-02-09 15:36:00','2021-02-09 15:36:00');
INSERT INTO "Serial_numbers" VALUES (1294,78,'370001','372000','Hektor 13.5 cm 1:45 (S-black)','1937','2000',NULL,'2021-02-09 15:36:00','2021-02-09 15:36:00');
INSERT INTO "Serial_numbers" VALUES (1295,78,'415001','416000','Hektor 13.5 cm 1:45 ','1937','1000',NULL,'2021-02-09 15:36:00','2021-02-09 15:36:00');
INSERT INTO "Serial_numbers" VALUES (1296,78,'440001','442000','Hektor 13.5 cm 1:45 (S-black/cb)','1938','2000',NULL,'2021-02-09 15:36:00','2021-02-09 15:36:00');
INSERT INTO "Serial_numbers" VALUES (1297,78,'485001','487000','Hektor 13.5 cm 1:45 (S-black)','1938','2000',NULL,'2021-02-09 15:36:00','2021-02-09 15:36:00');
INSERT INTO "Serial_numbers" VALUES (1298,78,'530501','531000','Hektor 13.5 cm 1:45 ','1939','500',NULL,'2021-02-09 15:36:00','2021-02-09 15:36:00');
INSERT INTO "Serial_numbers" VALUES (1299,78,'538501','540000','Hektor 13.5 cm 1:45 (S-black)','1939','1500',NULL,'2021-02-09 15:36:00','2021-02-09 15:36:00');
INSERT INTO "Serial_numbers" VALUES (1300,78,'558001','559000','Hektor 13.5 cm 1:45 (S-black+Luftwaffen)','1940','1000',NULL,'2021-02-09 15:36:00','2021-02-09 15:36:00');
INSERT INTO "Serial_numbers" VALUES (1301,78,'575201','576200','Hektor 13.5 cm 1:45 (S-black.gray)','1941','1000',NULL,'2021-02-09 15:36:00','2021-02-09 15:36:00');
INSERT INTO "Serial_numbers" VALUES (1302,78,'590201','591000','Hektor 13.5 cm 1:45 (S-black)','1942','800',NULL,'2021-02-09 15:36:00','2021-02-09 15:36:00');
INSERT INTO "Serial_numbers" VALUES (1303,78,'600001','601000','Hektor 13.5 cm 1:45 (S-black) ','1945','1000',NULL,'2021-02-09 15:36:00','2021-02-09 15:36:00');
INSERT INTO "Serial_numbers" VALUES (1304,78,'608001','609000','Hektor 13.5 cm 1:45 (S-black) ','1946','1000',NULL,'2021-02-09 15:36:00','2021-02-09 15:36:00');
INSERT INTO "Serial_numbers" VALUES (1305,78,'617001','618000','Hektor 13.5 cm 1:45 ','1946','1000',NULL,'2021-02-09 15:36:00','2021-02-09 15:36:00');
INSERT INTO "Serial_numbers" VALUES (1306,78,'637001','638000','Hektor 13.5 cm 1:45 ','1947','1000',NULL,'2021-02-09 15:36:00','2021-02-09 15:36:00');
INSERT INTO "Serial_numbers" VALUES (1307,78,'644101','645000','Hektor 13.5 cm 1:45 ','1947','900',NULL,'2021-02-09 15:36:00','2021-02-09 15:36:00');
INSERT INTO "Serial_numbers" VALUES (1308,78,'655001','657000','Hektor 13.5 cm 1:45 (S-chrom+black)','1948','2000',NULL,'2021-02-09 15:36:00','2021-02-09 15:36:00');
INSERT INTO "Serial_numbers" VALUES (1309,78,'699001','701000','Hektor 13.5 cm 1:45 ','1949','2000',NULL,'2021-02-09 15:36:00','2021-02-09 15:36:00');
INSERT INTO "Serial_numbers" VALUES (1310,78,'715001','718000','Hektor 13.5 cm 1:45 (S-chrom+black)','1949','3000',NULL,'2021-02-09 15:36:00','2021-02-09 15:36:00');
INSERT INTO "Serial_numbers" VALUES (1311,78,'824101','826000','Hektor 13.5 cm 1:45 ','1950','1900',NULL,'2021-02-09 15:36:00','2021-02-09 15:36:00');
INSERT INTO "Serial_numbers" VALUES (1312,78,'851001','856000','Hektor 13.5 cm 1:45 ','1951','5000',NULL,'2021-02-09 15:36:00','2021-02-09 15:36:00');
INSERT INTO "Serial_numbers" VALUES (1313,78,'984101','987100','Hektor 13.5 cm 1:45 (S-chrom)','1952','3000',NULL,'2021-02-09 15:36:00','2021-02-09 15:36:00');
INSERT INTO "Serial_numbers" VALUES (1314,78,'1073001','1076000','Hektor 13.5 cm 1:45 (S-chrom)','1953','3000',NULL,'2021-02-09 15:36:00','2021-02-09 15:36:00');
INSERT INTO "Serial_numbers" VALUES (1315,78,'1083001','1086000','Hektor 13.5 cm 1:45 (S-chrom)','1953','3000',NULL,'2021-02-09 15:36:00','2021-02-09 15:36:00');
INSERT INTO "Serial_numbers" VALUES (1316,78,'1113386','1113437','Hektor 13.5 cm 1:45 ','1953','52',NULL,'2021-02-09 15:36:00','2021-02-09 15:36:00');
INSERT INTO "Serial_numbers" VALUES (1317,78,'1127001','1130000','Hektor 13.5 cm 1:45 (S-chrom) ','1954','3000',NULL,'2021-02-09 15:36:00','2021-02-09 15:36:00');
INSERT INTO "Serial_numbers" VALUES (1318,78,'1130001','1132000','Hektor 13.5 cm 1:45 ','1954','2000',NULL,'2021-02-09 15:36:00','2021-02-09 15:36:00');
INSERT INTO "Serial_numbers" VALUES (1319,78,'1134001','1137000','Hektor 13.5 cm 1:45 ','1954','3000',NULL,'2021-02-09 15:36:00','2021-02-09 15:36:00');
INSERT INTO "Serial_numbers" VALUES (1320,78,'1206001','1209000','Hektor 13.5 cm 1:45 (S-chrom) ','1954','3000',NULL,'2021-02-09 15:36:00','2021-02-09 15:36:00');
INSERT INTO "Serial_numbers" VALUES (1321,78,'1238001','1240636','Hektor 13.5 cm 1:45 ','1955','2636',NULL,'2021-02-09 15:36:00','2021-02-09 15:36:00');
INSERT INTO "Serial_numbers" VALUES (1322,78,'1268001','1271000','Hektor 13.5 cm 1:45 (S-chrom)','1955','3000',NULL,'2021-02-09 15:36:00','2021-02-09 15:36:00');
INSERT INTO "Serial_numbers" VALUES (1323,78,'1311001','1315000','Hektor 13.5 cm 1:45 (M-chrom)','1955','4000',NULL,'2021-02-09 15:36:00','2021-02-09 15:36:00');
INSERT INTO "Serial_numbers" VALUES (1324,78,'1345001','1348000','Hektor 13.5 cm 1:45 (S-chrom)','1956','3000',NULL,'2021-02-09 15:36:00','2021-02-09 15:36:00');
INSERT INTO "Serial_numbers" VALUES (1325,78,'1383001','1386000','Hektor 13.5 cm 1:45 (M-chrom)','1956','3000',NULL,'2021-02-09 15:36:00','2021-02-09 15:36:00');
INSERT INTO "Serial_numbers" VALUES (1326,78,'1406001','1409000','Hektor 13.5 cm 1:45 (S-chrom)','1956','3000',NULL,'2021-02-09 15:36:00','2021-02-09 15:36:00');
INSERT INTO "Serial_numbers" VALUES (1327,78,'1413501','1418000','Hektor 13.5 cm 1:45 (M+S-chrom)','1956','4500',NULL,'2021-02-09 15:36:00','2021-02-09 15:36:00');
INSERT INTO "Serial_numbers" VALUES (1328,78,'1440001','1445000','Hektor 13.5 cm 1:45 ','1956','5000',NULL,'2021-02-09 15:36:00','2021-02-09 15:36:00');
INSERT INTO "Serial_numbers" VALUES (1329,78,'1506001','1510000','Hektor 13.5 cm 1:45 (M-chrom+oliv)','1957','4000',NULL,'2021-02-09 15:36:00','2021-02-09 15:36:00');
INSERT INTO "Serial_numbers" VALUES (1330,78,'1559101','1562000','Hektor 13.5 cm 1:45 (M-chrom+oliv)','1958','2900',NULL,'2021-02-09 15:36:00','2021-02-09 15:36:00');
INSERT INTO "Serial_numbers" VALUES (1331,78,'1583101','1585000','Hektor 13.5 cm 1:45 ','1958','1900',NULL,'2021-02-09 15:36:00','2021-02-09 15:36:00');
INSERT INTO "Serial_numbers" VALUES (1332,78,'1608001','1611000','Hektor 13.5 cm 1:45 (M+S-chrom)','1958','3000',NULL,'2021-02-09 15:36:00','2021-02-09 15:36:00');
INSERT INTO "Serial_numbers" VALUES (1333,78,'1621001','1623000','Hektor 13.5 cm 1:45 ','1958','2000',NULL,'2021-02-09 15:36:00','2021-02-09 15:36:00');
INSERT INTO "Serial_numbers" VALUES (1334,78,'1642001','1643000','Hektor 13.5 cm 1:45 (S-chrom)','1958','1000',NULL,'2021-02-09 15:36:00','2021-02-09 15:36:00');
INSERT INTO "Serial_numbers" VALUES (1335,78,'1647001','1649000','Hektor 13.5 cm 1:45 ','1959','2000',NULL,'2021-02-09 15:36:00','2021-02-09 15:36:00');
INSERT INTO "Serial_numbers" VALUES (1336,78,'1659001*','1660000','Hektor 13.5 cm 1:45 (M-chrom) ','1959','1000',NULL,'2021-02-09 15:36:00','2021-02-09 15:36:00');
INSERT INTO "Serial_numbers" VALUES (1337,78,'1689501','1690500','Hektor 13.5 cm 1:45 (M-chrom)','1959','1000',NULL,'2021-02-09 15:36:00','2021-02-09 15:36:00');
INSERT INTO "Serial_numbers" VALUES (1338,78,'1717001','1720000','Hektor 13.5 cm 1:45 (M+S-chrom)','1960','3000',NULL,'2021-02-09 15:36:00','2021-02-09 15:36:00');
INSERT INTO "Serial_numbers" VALUES (1339,78,'1737001','1740000','Hektor 13.5 cm 1:45 (M+S-chrom)','1960','3000',NULL,'2021-02-09 15:36:00','2021-02-09 15:36:00');
INSERT INTO "Serial_numbers" VALUES (1340,142,'1','1001','Vauxhall Bethels','1987 - 1989','522','All information','2025-04-20 22:44:58','2025-04-20 22:46:14');
INSERT INTO "Serial_numbers" VALUES (1341,142,'1699','2423','Pulman Optics','1991 - 1993','642','Hand crafted','2025-04-23 08:40:44','2025-04-23 09:05:45');
INSERT INTO "Serial_numbers" VALUES (1343,142,'2223','2512','Foxhill Goose','2012 - 2013 ','125','No further information','2025-04-23 09:01:56','2025-04-23 09:02:16');
INSERT INTO "Serial_numbers" VALUES (1344,142,'3154','3255','Centham Goldswith','2014 - 2015','254','Information','2025-04-23 09:08:51','2025-04-23 09:09:50');
INSERT INTO "Serial_numbers" VALUES (1346,109,'201','218','dfsasdf','1952','31','2156dfadsf','2025-04-23 09:20:07','2025-04-23 09:20:35');
INSERT INTO "Serial_numbers" VALUES (1347,150,'0001','0099','Test mate','2025','92','First lot out of stock','2025-06-03 14:50:27','2025-06-03 14:55:13');
INSERT INTO "Serial_numbers" VALUES (1348,150,'2001','2099','Second lot','2025','54','Quality issues','2025-06-03 15:00:10','2025-06-03 15:00:14');
INSERT INTO "Serial_numbers" VALUES (1349,150,'00013','00099','Lens prototype','2024','23','All information','2025-06-03 15:01:44','2025-06-03 15:02:07');
INSERT INTO "Serial_numbers" VALUES (1350,149,'00010','00099','First lot of prototype lenses','2021','17','My information','2025-06-03 15:05:26','2025-06-03 19:56:30');
INSERT INTO "Serial_numbers" VALUES (1351,147,'00014','00087','Sonnar formulae','2001','26','All gone for good','2025-06-03 19:59:15','2025-06-03 19:59:31');
CREATE VIEW LensesView AS
SELECT
    Lenses.ID,
    Lenses.LensLabel,
    Lenses.MaxAperture,
    Lenses.MinAperture,
    Lenses.FocalLength,
    Mounts.MountName,
    Lenses.Production_era,
    Lenses.Row_colour,
    Lenses.FocalLength_sort
FROM
    Lenses
INNER JOIN
    Mounts ON Mounts.ID = Lenses.MountId
ORDER BY
    Lenses.FocalLength_sort, Lenses.LensLabel DESC;
CREATE TRIGGER Lens_CLA_DateChanged 
AFTER UPDATE 
ON Lens_CLA
BEGIN
 UPDATE Lens_CLA SET DateChanged = DATETIME(CURRENT_TIMESTAMP, 'LOCALTIME')  where Id = NEW.id ;
END;
CREATE TRIGGER Lens_CLA_DateCreated 
AFTER INSERT 
ON Lens_CLA
BEGIN
 UPDATE Lens_CLA SET DateCreated = DATETIME(CURRENT_TIMESTAMP, 'LOCALTIME')  where Id = NEW.id ;
END;
CREATE TRIGGER Lens_ownership_DateChanged 
AFTER UPDATE 
ON Lens_ownership
BEGIN
 UPDATE Lens_ownership SET DateChanged = DATETIME(CURRENT_TIMESTAMP, 'LOCALTIME') where Id = NEW.id ;
END;
CREATE TRIGGER Lens_ownership_DateCreated 
AFTER INSERT 
ON Lens_ownership
BEGIN
 UPDATE Lens_ownership SET DateCreated = DATETIME(CURRENT_TIMESTAMP, 'LOCALTIME')  where Id = NEW.id ;
END;
CREATE TRIGGER Lens_sale_DateChanged 
AFTER UPDATE 
ON Lens_sale
BEGIN
 UPDATE Lens_sale SET DateChanged = DATETIME(CURRENT_TIMESTAMP, 'LOCALTIME')  where Id = NEW.id ;
END;
CREATE TRIGGER Lens_sale_DateCreated 
AFTER INSERT 
ON Lens_sale
BEGIN
 UPDATE Lens_sale SET DateCreated = DATETIME(CURRENT_TIMESTAMP, 'LOCALTIME')  where Id = NEW.id ;
END;
CREATE TRIGGER Lenses_DateChanged 
AFTER UPDATE 
ON Lenses
BEGIN
 UPDATE Lenses SET DateChanged = DATETIME(CURRENT_TIMESTAMP, 'LOCALTIME')  where Id = NEW.id ;
END;
CREATE TRIGGER Lenses_DateCreated 
AFTER INSERT 
ON Lenses
BEGIN
 UPDATE Lenses SET DateCreated = DATETIME(CURRENT_TIMESTAMP, 'LOCALTIME')  where Id = NEW.id ;
END;
CREATE TRIGGER Makers_DateChanged 
AFTER UPDATE 
ON Makers
BEGIN
 UPDATE Makers SET DateChanged = DATETIME(CURRENT_TIMESTAMP, 'LOCALTIME')  where Id = NEW.id ;
END;
CREATE TRIGGER Mount_types_DateChanged 
AFTER UPDATE 
ON Mount_types
BEGIN
 UPDATE Mount_types SET DateChanged = DATETIME(CURRENT_TIMESTAMP, 'LOCALTIME')  where Id = NEW.id ;
END;
CREATE TRIGGER Mount_types_DateCreated
AFTER INSERT 
ON Mount_types
BEGIN
 UPDATE Mount_types SET DateCreated = DATETIME(CURRENT_TIMESTAMP, 'LOCALTIME')  where Id = NEW.id ;
END;
CREATE TRIGGER Serial_numbers_DateChanged 
AFTER UPDATE 
ON Serial_numbers
BEGIN
 UPDATE Serial_numbers SET DateChanged = DATETIME(CURRENT_TIMESTAMP, 'LOCALTIME')  where Id = NEW.id ;
END;
CREATE TRIGGER Serial_numbers_DateCreated 
AFTER INSERT 
ON Serial_numbers
BEGIN
 UPDATE Serial_numbers SET DateCreated = DATETIME(CURRENT_TIMESTAMP, 'LOCALTIME')  where Id = NEW.id ;
END;
COMMIT;
