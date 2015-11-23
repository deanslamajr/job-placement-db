DROP TABLE job_application
DROP TABLE works;
DROP TABLE project_job;
DROP TABLE job;
DROP TABLE jp_ks;
DROP TABLE job_profile;
DROP TABLE project;
DROP TABLE person_ks;
DROP TABLE phone_number;
DROP TABLE person;
DROP TABLE company;
DROP TABLE sector;
DROP TABLE section;
DROP TABLE course_ks;
DROP TABLE knowledge_skill;
DROP TABLE course;
DROP TABLE learning_institution;
DROP SEQUENCE seq_application
DROP SEQUENCE seq_person;
DROP SEQUENCE seq_sector;
DROP SEQUENCE seq_company;
DROP SEQUENCE seq_ks;
DROP SEQUENCE seq_jp;
DROP SEQUENCE seq_course;
DROP SEQUENCE seq_li;
DROP SEQUENCE seq_section;
DROP SEQUENCE seq_project;
DROP SEQUENCE seq_job;

CREATE SEQUENCE seq_person
MINVALUE 1
START WITH 1
INCREMENT BY 1
CACHE 10;

CREATE TABLE person (
person_id INT PRIMARY KEY,
first_name VARCHAR(50) NOT NULL,
middle_name VARCHAR(50),
last_name VARCHAR(50) NOT NULL,
email_address VARCHAR(100) NOT NULL,
street_number INT,
street_name VARCHAR(50),
apt_number INT,
city VARCHAR(50),
state VARCHAR(2),
zip_code INT,
gender VARCHAR(1) CHECK(gender IN ('m','f'))
);

INSERT INTO person VALUES (seq_person.nextval, 'Abraham', NULL, 'Rosier', 'arosier@uno.edu', 804, 'Yu  ', NULL, 'New York', 'NY', 3551858113, NULL);
INSERT INTO person VALUES (seq_person.nextval, 'Adrianne', NULL, 'Mirabito', 'amirabito@uno.edu', 977, 'Anh  ', 6, 'Los Angeles', 'CA', 7393679022, 'm');
INSERT INTO person VALUES (seq_person.nextval, 'Alesia', NULL, 'Facey', 'afacey@uno.edu', 867, 'Cierra  ', NULL, 'Chicago', 'IL', 9185976023, 'm');
INSERT INTO person VALUES (seq_person.nextval, 'Antony', NULL, 'Iversen', 'aiversen@uno.edu', 6, 'Shela  ', 9, 'Houston', 'TX', 1263222756, 'f');
INSERT INTO person VALUES (seq_person.nextval, 'Asia', NULL, 'Mcdonough', 'amcdonough@uno.edu', 371, 'Willian  ', NULL, 'Philadelphia', 'PA', 5483956107, NULL);
INSERT INTO person VALUES (seq_person.nextval, 'Athena', NULL, 'Mansell', 'amansell@uno.edu', 119, 'Nova  ', NULL, 'Phoenix', 'AZ', 1747336498, 'f');
INSERT INTO person VALUES (seq_person.nextval, 'Brandie', NULL, 'Verge', 'bverge@uno.edu', 265, 'Tifany  ', 14, 'San Antonio', 'TX', 5988705339, 'm');
INSERT INTO person VALUES (seq_person.nextval, 'Brigida', NULL, 'Swoboda', 'bswoboda@uno.edu', 516, 'Erich  ', 2, 'San Diego', 'CA', 8383210812, NULL);
INSERT INTO person VALUES (seq_person.nextval, 'Carley', NULL, 'Maiorano', 'cmaiorano@uno.edu', 294, 'Reagan  ', NULL, 'Dallas', 'TX', 3492890695, 'm');
INSERT INTO person VALUES (seq_person.nextval, 'Carmel', NULL, 'Rathbone', 'crathbone@uno.edu', 580, 'Jessi  ', NULL, 'San Jose', 'CA', 6227449429, NULL);
INSERT INTO person VALUES (seq_person.nextval, 'Casandra', NULL, 'Bauman', 'cbauman@uno.edu', 99, 'Hsiu  ', 14, 'Austin', 'TX', 399321037, NULL);
INSERT INTO person VALUES (seq_person.nextval, 'Collin', NULL, 'Mcelhannon', 'cmcelhannon@uno.edu', 11, 'Sol  ', 16, 'Jacksonville', 'FL', 2026303876, NULL);
INSERT INTO person VALUES (seq_person.nextval, 'Danial', NULL, 'Battey', 'dbattey@uno.edu', 542, 'Elaine  ', NULL, 'San Francisco', 'CA', 2217794862, 'f');
INSERT INTO person VALUES (seq_person.nextval, 'Darren', NULL, 'Plewa', 'dplewa@uno.edu', 366, 'Pearly  ', 3, 'Indianapolis', 'IN', 9276105961, 'm');
INSERT INTO person VALUES (seq_person.nextval, 'Delicia', NULL, 'Mattison', 'dmattison@uno.edu', 500, 'Reed  ', NULL, 'Columbus', 'OH', 5861830263, 'f');
INSERT INTO person VALUES (seq_person.nextval, 'Detra', NULL, 'Cratty', 'dcratty@uno.edu', 801, 'Roxy  ', 6, 'Fort Worth', 'TX', 5560173502, NULL);
INSERT INTO person VALUES (seq_person.nextval, 'Diego', NULL, 'Salamanca', 'dsalamanca@uno.edu', 92, 'Renna  ', NULL, 'Charlotte', 'NC', 3556661187, 'm');
INSERT INTO person VALUES (seq_person.nextval, 'Earleen', NULL, 'Meints', 'emeints@uno.edu', 455, 'Albert  ', NULL, 'Detroit', 'MI', 5011068425, NULL);
INSERT INTO person VALUES (seq_person.nextval, 'Elsy', NULL, 'Ellefson', 'eellefson@uno.edu', 409, 'Cynthia  ', 7, 'El Paso', 'TX', 474363287, NULL);
INSERT INTO person VALUES (seq_person.nextval, 'Fletcher', NULL, 'Lacroix', 'flacroix@uno.edu', 505, 'Rex  ', 2, 'Seattle', 'WA', 4646949343, 'm');
INSERT INTO person VALUES (seq_person.nextval, 'Gertrud', NULL, 'Westberg', 'gwestberg@uno.edu', 622, 'Stephane  ', NULL, 'Denver', 'CO', 9425476831, 'm');
INSERT INTO person VALUES (seq_person.nextval, 'Gidget', NULL, 'Eagan', 'geagan@uno.edu', 618, 'Eboni  ', NULL, 'Washington', 'DC', 7893458407, 'm');
INSERT INTO person VALUES (seq_person.nextval, 'Halina', NULL, 'Marion', 'hmarion@uno.edu', 659, 'Latia  ', 1, 'Memphis', 'TN', 1401797269, NULL);
INSERT INTO person VALUES (seq_person.nextval, 'Halley', NULL, 'Sturrock', 'hsturrock@uno.edu', 696, 'Criselda  ', 16, 'Boston', 'MA', 9478262704, NULL);
INSERT INTO person VALUES (seq_person.nextval, 'Hong', NULL, 'Masson', 'hmasson@uno.edu', 209, 'Jonah  ', 5, 'Nashville', 'TN', 9511415111, NULL);
INSERT INTO person VALUES (seq_person.nextval, 'Howard', NULL, 'Cistrunk', 'hcistrunk@uno.edu', 268, 'Kiley  ', 20, 'Baltimore', 'MD', 3927207913, 'm');
INSERT INTO person VALUES (seq_person.nextval, 'Idell', NULL, 'Lapham', 'ilapham@uno.edu', 265, 'Kasi  ', 13, 'Oklahoma City', 'OK', 8206485175, 'f');
INSERT INTO person VALUES (seq_person.nextval, 'Jana', NULL, 'Dinkel', 'jdinkel@uno.edu', 108, 'Emmie  ', 15, 'Portland', 'OR', 3275865465, NULL);
INSERT INTO person VALUES (seq_person.nextval, 'Jeanice', NULL, 'Nutt', 'jnutt@uno.edu', 29, 'Shanelle  ', NULL, 'Las Vegas', 'NV', 2330578295, NULL);
INSERT INTO person VALUES (seq_person.nextval, 'Jonathon', NULL, 'Coil', 'jcoil@uno.edu', 170, 'Cheryll  ', NULL, 'Louisville', 'KY', 3618033478, 'm');
INSERT INTO person VALUES (seq_person.nextval, 'Kandice', NULL, 'Santillo', 'ksantillo@uno.edu', 186, 'Augustine  ', NULL, 'Milwaukee', 'WI', 2806108824, NULL);
INSERT INTO person VALUES (seq_person.nextval, 'Kendal', NULL, 'Collum', 'kcollum@uno.edu', 363, 'Pok  ', NULL, 'Albuquerque', 'NM', 7919876040, NULL);
INSERT INTO person VALUES (seq_person.nextval, 'Kristina', NULL, 'Wilhite', 'kwilhite@uno.edu', 70, 'Zelda  ', NULL, 'Tucson', 'AZ', 7343773980, NULL);
INSERT INTO person VALUES (seq_person.nextval, 'Larhonda', NULL, 'Borum', 'lborum@uno.edu', 141, 'Bruno  ', NULL, 'Fresno', 'CA', 2420860482, 'f');
INSERT INTO person VALUES (seq_person.nextval, 'Melba', NULL, 'Winkfield', 'mwinkfield@uno.edu', 411, 'Neely  ', NULL, 'Sacramento', 'CA', 5432934402, NULL);
INSERT INTO person VALUES (seq_person.nextval, 'Melissa', NULL, 'Crosley', 'mcrosley@uno.edu', 250, 'Susann  ', NULL, 'Long Beach', 'CA', 2445606503, NULL);
INSERT INTO person VALUES (seq_person.nextval, 'Parker', NULL, 'Trowell', 'ptrowell@uno.edu', 261, 'Aletha  ', NULL, 'Kansas City', 'MI', 3501061776, 'f');
INSERT INTO person VALUES (seq_person.nextval, 'Quintin', NULL, 'Hawthorn', 'qhawthorn@uno.edu', 970, 'Delia  ', NULL, 'Mesa', 'AZ', 7430397144, 'f');
INSERT INTO person VALUES (seq_person.nextval, 'Rivka', NULL, 'Daulton', 'rdaulton@uno.edu', 676, 'Leon  ', NULL, 'Atlanta', 'GA', 5844550255, 'f');
INSERT INTO person VALUES (seq_person.nextval, 'Ron', NULL, 'Siegal', 'rsiegal@uno.edu', 822, 'Mauro  ', 14, 'Virginia Beach', 'VA', 6021516308, 'f');
INSERT INTO person VALUES (seq_person.nextval, 'Shantell', NULL, 'Hopewell', 'shopewell@uno.edu', 211, 'Torie  ', 6, 'Omaha', 'NE', 1924757557, 'f');
INSERT INTO person VALUES (seq_person.nextval, 'Sima', NULL, 'Hancock', 'shancock@uno.edu', 410, 'Leena  ', 16, 'Colorado Springs', 'CO', 9803610576, NULL);
INSERT INTO person VALUES (seq_person.nextval, 'Tabetha', NULL, 'Masser', 'tmasser@uno.edu', 492, 'Donya  ', NULL, 'Raleigh', 'NC', 873840389, 'm');
INSERT INTO person VALUES (seq_person.nextval, 'Tijuana', NULL, 'Holcomb', 'tholcomb@uno.edu', 975, 'Florrie  ', 11, 'Miami', 'FL', 4975438673, NULL);
INSERT INTO person VALUES (seq_person.nextval, 'Tommy', NULL, 'Rigney', 'trigney@uno.edu', 969, 'Geraldine  ', 15, 'Oakland', 'CA', 9844082475, NULL);
INSERT INTO person VALUES (seq_person.nextval, 'Vannesa', NULL, 'Delany', 'vdelany@uno.edu', 469, 'Stefani  ', NULL, 'Minneapolis', 'MN', 9050046825, 'f');
INSERT INTO person VALUES (seq_person.nextval, 'Vickey', NULL, 'Sayler', 'vsayler@uno.edu', 482, 'Kevin  ', 13, 'Tulsa', 'OK', 2313647200, NULL);
INSERT INTO person VALUES (seq_person.nextval, 'Violeta', NULL, 'Gammill', 'vgammill@uno.edu', 689, 'Keila  ', 3, 'Cleveland', 'OH', 7297342421, NULL);
INSERT INTO person VALUES (seq_person.nextval, 'Wilburn', NULL, 'Remaley', 'wremaley@uno.edu', 837, 'Andria  ', 18, 'Wichita', 'KA', 4583371667, NULL);
INSERT INTO person VALUES (seq_person.nextval, 'Yoko', NULL, 'Tennison', 'ytennison@uno.edu', 232, 'Edmund  ', NULL, 'New Orleans', 'LA', 9108462783, 'm');

CREATE SEQUENCE seq_sector
MINVALUE 1
START WITH 1
INCREMENT BY 1
CACHE 10;

CREATE TABLE sector (
sector_id INT PRIMARY KEY,
name VARCHAR(50) NOT NULL
);

INSERT INTO sector VALUES (seq_sector.nextval, 'Basic Materials');
INSERT INTO sector VALUES (seq_sector.nextval, 'Conglomerates');
INSERT INTO sector VALUES (seq_sector.nextval, 'Consumer Goods');
INSERT INTO sector VALUES (seq_sector.nextval, 'Financial');
INSERT INTO sector VALUES (seq_sector.nextval, 'Healthcare');
INSERT INTO sector VALUES (seq_sector.nextval, 'Industrial Goods');
INSERT INTO sector VALUES (seq_sector.nextval, 'Services');
INSERT INTO sector VALUES (seq_sector.nextval, 'Technology');
INSERT INTO sector VALUES (seq_sector.nextval, 'Utilities');

CREATE SEQUENCE seq_company
MINVALUE 1
START WITH 1
INCREMENT BY 1
CACHE 10;

CREATE TABLE company (
company_id INT PRIMARY KEY,
name VARCHAR(100) NOT NULL,
website VARCHAR(100),
street_number INT,
street_name VARCHAR(50),
apt_number INT,
city VARCHAR(50),
state VARCHAR(2),
zip_code INT,
sector_id INT NOT NULL CONSTRAINT company_sector_fkey REFERENCES sector (sector_id)		
);

INSERT INTO company VALUES (seq_company.nextval, 'ATandT', 'www.ATandT.com', 595, 'Leilani  ', 19, 'New York', 'NY', 8225843819, 6);
INSERT INTO company VALUES (seq_company.nextval, 'Nike', 'www.Nike.com', 797, 'Robbie  ', NULL, 'Los Angeles', 'CA', 6784615321, 4);
INSERT INTO company VALUES (seq_company.nextval, 'Volkswagen', 'www.Volkswagen.com', 794, 'Eldridge  ', 13, 'Chicago', 'IL', 6815580397, 3);
INSERT INTO company VALUES (seq_company.nextval, 'Ralph Lauren', 'www.RalphLauren.com', 178, 'Delana  ', NULL, 'Houston', 'TX', 5307526132, 6);
INSERT INTO company VALUES (seq_company.nextval, 'Intel', 'www.Intel.com', 346, 'Soo  ', NULL, 'Philadelphia', 'PA', 7203457424, 5);
INSERT INTO company VALUES (seq_company.nextval, 'Target', 'www.Target.com', 655, 'Fidel  ', NULL, 'Phoenix', 'AZ', 9449157275, 7);
INSERT INTO company VALUES (seq_company.nextval, 'Johnson and Johnson', 'www.JohnsonandJohnson.com', 776, 'Lashawnda  ', 16, 'San Antonio', 'TX', 9902302132, 6);
INSERT INTO company VALUES (seq_company.nextval, 'American Express', 'www.AmericanExpress.com', 664, 'Tamara  ', 2, 'San Diego', 'CA', 9137577889, 5);
INSERT INTO company VALUES (seq_company.nextval, '3M', 'www.3M.com', 648, 'Margert  ', NULL, 'Dallas', 'TX', 8094929196, 6);
INSERT INTO company VALUES (seq_company.nextval, 'Starbucks', 'www.Starbucks.com', 846, 'Era  ', NULL, 'San Jose', 'CA', 311719340, 5);
INSERT INTO company VALUES (seq_company.nextval, 'Deere', 'www.Deere.com', 78, 'Renna  ', NULL, 'Austin', 'TX', 7485268386, 9);
INSERT INTO company VALUES (seq_company.nextval, 'General Electric', 'www.GeneralElectric.com', 402, 'Tawanna  ', NULL, 'Jacksonville', 'FL', 5441280380, 3);
INSERT INTO company VALUES (seq_company.nextval, 'Google', 'www.Google.com', 693, 'Crystle  ', 12, 'San Francisco', 'CA', 1628662568, 5);
INSERT INTO company VALUES (seq_company.nextval, 'General Mills', 'www.GeneralMills.com', 944, 'Georgina  ', 9, 'Indianapolis', 'IN', 8196001092, 1);
INSERT INTO company VALUES (seq_company.nextval, 'Marriott International', 'www.MarriottInternational.com', 940, 'Lashaunda  ', 9, 'Columbus', 'OH', 7984566720, 6);
INSERT INTO company VALUES (seq_company.nextval, 'BMW', 'www.BMW.com', 432, 'Chasidy  ', 2, 'Fort Worth', 'TX', 6633509852, 9);
INSERT INTO company VALUES (seq_company.nextval, 'Nordstrom', 'www.Nordstrom.com', 36, 'Jannet  ', NULL, 'Charlotte', 'NC', 7952448080, 8);
INSERT INTO company VALUES (seq_company.nextval, 'Coca-Cola', 'www.Coca-Cola.com', 840, 'Chery  ', NULL, 'Detroit', 'MI', 3073770216, 4);
INSERT INTO company VALUES (seq_company.nextval, 'St. Jude Medical', 'www.St.JudeMedical.com', 265, 'Grayce  ', 1, 'El Paso', 'TX', 6231768943, 3);
INSERT INTO company VALUES (seq_company.nextval, 'Boeing', 'www.Boeing.com', 254, 'Raymonde  ', 11, 'Seattle', 'WA', 1689488738, 1);
INSERT INTO company VALUES (seq_company.nextval, 'Accenture', 'www.Accenture.com', 512, 'Tyra  ', NULL, 'Denver', 'CO', 989513979, 7);
INSERT INTO company VALUES (seq_company.nextval, 'Toyota Motor', 'www.ToyotaMotor.com', 14, 'Shirleen  ', NULL, 'Washington', 'DC', 6765668239, 3);
INSERT INTO company VALUES (seq_company.nextval, 'eBay', 'www.eBay.com', 117, 'Shauna  ', 19, 'Memphis', 'TN', 6523795970, 2);
INSERT INTO company VALUES (seq_company.nextval, 'PepsiCo', 'www.PepsiCo.com', 327, 'Ernesto  ', 10, 'Boston', 'MA', 5567820479, 6);
INSERT INTO company VALUES (seq_company.nextval, 'Samsung Electronics', 'www.SamsungElectronics.com', 638, 'Kellee  ', 17, 'Nashville', 'TN', 4379659393, 5);
INSERT INTO company VALUES (seq_company.nextval, 'Daimler', 'www.Daimler.com', 146, 'Lilian  ', NULL, 'Baltimore', 'MD', 9807180795, 8);
INSERT INTO company VALUES (seq_company.nextval, 'Singapore Airlines', 'www.SingaporeAirlines.com', 34, 'Terina  ', NULL, 'Oklahoma City', 'OK', 7203272937, 7);
INSERT INTO company VALUES (seq_company.nextval, 'Procter and Gamble', 'www.ProcterandGamble.com', 28, 'Arnette  ', 15, 'Portland', 'OR', 8802595524, 5);
INSERT INTO company VALUES (seq_company.nextval, 'Walt Disney', 'www.WaltDisney.com', 623, 'Bobbi  ', 15, 'Las Vegas', 'NV', 2013283935, 2);
INSERT INTO company VALUES (seq_company.nextval, 'Oracle', 'www.Oracle.com', 673, 'Maribel  ', NULL, 'Louisville', 'KY', 5612579871, 8);
INSERT INTO company VALUES (seq_company.nextval, 'McDonalds', 'www.McDonalds.com', 282, 'Kathern  ', 14, 'Milwaukee', 'WI', 6023185844, 3);
INSERT INTO company VALUES (seq_company.nextval, 'Caterpillar', 'www.Caterpillar.com', 912, 'Hertha  ', NULL, 'Albuquerque', 'NM', 4647373728, 3);
INSERT INTO company VALUES (seq_company.nextval, 'Unilever', 'www.Unilever.com', 417, 'Breana  ', 19, 'Tucson', 'AZ', 8666124263, 8);
INSERT INTO company VALUES (seq_company.nextval, 'Wells Fargo', 'www.WellsFargo.com', 219, 'Marjory  ', 8, 'Fresno', 'CA', 5569650793, 2);
INSERT INTO company VALUES (seq_company.nextval, 'Cisco Systems', 'www.CiscoSystems.com', 508, 'Kimberely  ', 14, 'Sacramento', 'CA', 8053651663, 8);
INSERT INTO company VALUES (seq_company.nextval, 'Microsoft', 'www.Microsoft.com', 729, 'Arnetta  ', 9, 'Long Beach', 'CA', 3653860717, 5);
INSERT INTO company VALUES (seq_company.nextval, 'Nestlé', 'www.Nestlé.com', 746, 'Shana  ', NULL, 'Kansas City', 'MI', 8742511363, 6);
INSERT INTO company VALUES (seq_company.nextval, 'Exxon Mobil', 'www.ExxonMobil.com', 834, 'Warner  ', 2, 'Mesa', 'AZ', 1198020752, 7);
INSERT INTO company VALUES (seq_company.nextval, 'Southwest Airlines', 'www.SouthwestAirlines.com', 433, 'Myrl  ', NULL, 'Atlanta', 'GA', 388616417, 2);
INSERT INTO company VALUES (seq_company.nextval, 'Wal-Mart Stores', 'www.Wal-MartStores.com', 273, 'Sheila  ', NULL, 'Virginia Beach', 'VA', 8068089792, 9);
INSERT INTO company VALUES (seq_company.nextval, 'DuPont', 'www.DuPont.com', 180, 'Oda  ', 4, 'Omaha', 'NE', 3634961854, 6);
INSERT INTO company VALUES (seq_company.nextval, 'Costco Wholesale', 'www.CostcoWholesale.com', 659, 'Stella  ', NULL, 'Colorado Springs', 'CO', 2003897189, 8);
INSERT INTO company VALUES (seq_company.nextval, 'Whole Foods Market', 'www.WholeFoodsMarket.com', 327, 'Ayako  ', 13, 'Raleigh', 'NC', 410291571, 5);
INSERT INTO company VALUES (seq_company.nextval, 'Goldman Sachs Group', 'www.GoldmanSachsGroup.com', 74, 'Ross  ', 14, 'Miami', 'FL', 926919396, 7);
INSERT INTO company VALUES (seq_company.nextval, 'UPS', 'www.UPS.com', 648, 'Lincoln  ', 3, 'Oakland', 'CA', 707913570, 9);
INSERT INTO company VALUES (seq_company.nextval, 'Apple', 'www.Apple.com', 864, 'Madalyn  ', NULL, 'Minneapolis', 'MN', 164028175, 4);
INSERT INTO company VALUES (seq_company.nextval, 'FedEx', 'www.FedEx.com', 992, 'Shenita  ', 12, 'Tulsa', 'OK', 6869142591, 8);
INSERT INTO company VALUES (seq_company.nextval, 'J.P. Morgan Chase', 'www.J.P.MorganChase.com', 895, 'Randi  ', NULL, 'Cleveland', 'OH', 7237662256, 3);
INSERT INTO company VALUES (seq_company.nextval, 'Honda Motor', 'www.HondaMotor.com', 690, 'Noemi  ', NULL, 'Wichita', 'KA', 9413419250, 6);
INSERT INTO company VALUES (seq_company.nextval, 'Amazon', 'www.Amazon.com', 474, 'Karly  ', NULL, 'New Orleans', 'LA', 388112611, 2);

CREATE SEQUENCE seq_ks
MINVALUE 1
START WITH 1
INCREMENT BY 1
CACHE 10;

CREATE TABLE knowledge_skill (
ks_code INT PRIMARY KEY,
title VARCHAR(50) NOT NULL,
description VARCHAR(500),
skill_level VARCHAR(12) CHECK(skill_level IN ('beginner','intermediate','advanced'))
);

INSERT INTO knowledge_skill VALUES (seq_ks.nextval, 'C# Programming', 'Beginner understanding of C# Programming', 'beginner');
INSERT INTO knowledge_skill VALUES (seq_ks.nextval, 'C# Programming', 'Intermediate understanding of C# Programming', 'intermediate');
INSERT INTO knowledge_skill VALUES (seq_ks.nextval, 'C# Programming', 'Advanced understanding of C# Programming', 'advanced');
INSERT INTO knowledge_skill VALUES (seq_ks.nextval, 'Java Programming', 'Beginner understanding of Java Programming', 'beginner');
INSERT INTO knowledge_skill VALUES (seq_ks.nextval, 'Java Programming', 'Intermediate understanding of Java Programming', 'intermediate');
INSERT INTO knowledge_skill VALUES (seq_ks.nextval, 'Java Programming', 'Advanced understanding of Java Programming', 'advanced');
INSERT INTO knowledge_skill VALUES (seq_ks.nextval, 'Databases', 'Beginner understanding of Databases', 'beginner');
INSERT INTO knowledge_skill VALUES (seq_ks.nextval, 'Databases', 'Intermediate understanding of Databases', 'intermediate');
INSERT INTO knowledge_skill VALUES (seq_ks.nextval, 'Databases', 'Advanced understanding of Databases', 'advanced');
INSERT INTO knowledge_skill VALUES (seq_ks.nextval, '.NET Programming', 'Beginner understanding of .NET Programming', 'beginner');
INSERT INTO knowledge_skill VALUES (seq_ks.nextval, '.NET Programming', 'Intermediate understanding of .NET Programming', 'intermediate');
INSERT INTO knowledge_skill VALUES (seq_ks.nextval, '.NET Programming', 'Advanced understanding of .NET Programming', 'advanced');
INSERT INTO knowledge_skill VALUES (seq_ks.nextval, 'Microsoft Office', 'Beginner understanding of Microsoft Office', 'beginner');
INSERT INTO knowledge_skill VALUES (seq_ks.nextval, 'Microsoft Office', 'Intermediate understanding of Microsoft Office', 'intermediate');
INSERT INTO knowledge_skill VALUES (seq_ks.nextval, 'Microsoft Office', 'Advanced understanding of Microsoft Office', 'advanced');
INSERT INTO knowledge_skill VALUES (seq_ks.nextval, 'Teaching', 'Beginner understanding of Teaching', 'beginner');
INSERT INTO knowledge_skill VALUES (seq_ks.nextval, 'Teaching', 'Intermediate understanding of Teaching', 'intermediate');
INSERT INTO knowledge_skill VALUES (seq_ks.nextval, 'Teaching', 'Advanced understanding of Teaching', 'advanced');
INSERT INTO knowledge_skill VALUES (seq_ks.nextval, 'Public Speaking', 'Beginner understanding of Public Speaking', 'beginner');
INSERT INTO knowledge_skill VALUES (seq_ks.nextval, 'Public Speaking', 'Intermediate understanding of Public Speaking', 'intermediate');
INSERT INTO knowledge_skill VALUES (seq_ks.nextval, 'Public Speaking', 'Advanced understanding of Public Speaking', 'advanced');
INSERT INTO knowledge_skill VALUES (seq_ks.nextval, 'Accounting', 'Beginner understanding of Accounting', 'beginner');
INSERT INTO knowledge_skill VALUES (seq_ks.nextval, 'Accounting', 'Intermediate understanding of Accounting', 'intermediate');
INSERT INTO knowledge_skill VALUES (seq_ks.nextval, 'Accounting', 'Advanced understanding of Accounting', 'advanced');
INSERT INTO knowledge_skill VALUES (seq_ks.nextval, 'Troublshooting', 'Beginner understanding of Troublshooting', 'beginner');
INSERT INTO knowledge_skill VALUES (seq_ks.nextval, 'Troublshooting', 'Intermediate understanding of Troublshooting', 'intermediate');
INSERT INTO knowledge_skill VALUES (seq_ks.nextval, 'Troublshooting', 'Advanced understanding of Troublshooting', 'advanced');
INSERT INTO knowledge_skill VALUES (seq_ks.nextval, 'Reverse Engineering', 'Beginner understanding of Reverse Engineering', 'beginner');
INSERT INTO knowledge_skill VALUES (seq_ks.nextval, 'Reverse Engineering', 'Intermediate understanding of Reverse Engineering', 'intermediate');
INSERT INTO knowledge_skill VALUES (seq_ks.nextval, 'Reverse Engineering', 'Advanced understanding of Reverse Engineering', 'advanced');
INSERT INTO knowledge_skill VALUES (seq_ks.nextval, 'Typing', 'Beginner understanding of Typing', 'beginner');
INSERT INTO knowledge_skill VALUES (seq_ks.nextval, 'Typing', 'Intermediate understanding of Typing', 'intermediate');
INSERT INTO knowledge_skill VALUES (seq_ks.nextval, 'Typing', 'Advanced understanding of Typing', 'advanced');
INSERT INTO knowledge_skill VALUES (seq_ks.nextval, 'Graphic Design', 'Beginner understanding of Graphic Design', 'beginner');
INSERT INTO knowledge_skill VALUES (seq_ks.nextval, 'Graphic Design', 'Intermediate understanding of Graphic Design', 'intermediate');
INSERT INTO knowledge_skill VALUES (seq_ks.nextval, 'Graphic Design', 'Advanced understanding of Graphic Design', 'advanced');
INSERT INTO knowledge_skill VALUES (seq_ks.nextval, 'Interface Design', 'Beginner understanding of Interface Design', 'beginner');
INSERT INTO knowledge_skill VALUES (seq_ks.nextval, 'Interface Design', 'Intermediate understanding of Interface Design', 'intermediate');
INSERT INTO knowledge_skill VALUES (seq_ks.nextval, 'Interface Design', 'Advanced understanding of Interface Design', 'advanced');
INSERT INTO knowledge_skill VALUES (seq_ks.nextval, 'Product Marketing', 'Beginner understanding of Product Marketing', 'beginner');
INSERT INTO knowledge_skill VALUES (seq_ks.nextval, 'Product Marketing', 'Intermediate understanding of Product Marketing', 'intermediate');
INSERT INTO knowledge_skill VALUES (seq_ks.nextval, 'Product Marketing', 'Advanced understanding of Product Marketing', 'advanced');
INSERT INTO knowledge_skill VALUES (seq_ks.nextval, 'Professional Writing', 'Beginner understanding of Professional Writing', 'beginner');
INSERT INTO knowledge_skill VALUES (seq_ks.nextval, 'Professional Writing', 'Intermediate understanding of Professional Writing', 'intermediate');
INSERT INTO knowledge_skill VALUES (seq_ks.nextval, 'Professional Writing', 'Advanced understanding of Professional Writing', 'advanced');
INSERT INTO knowledge_skill VALUES (seq_ks.nextval, 'Risk Analysis', 'Beginner understanding of Risk Analysis', 'beginner');
INSERT INTO knowledge_skill VALUES (seq_ks.nextval, 'Risk Analysis', 'Intermediate understanding of Risk Analysis', 'intermediate');
INSERT INTO knowledge_skill VALUES (seq_ks.nextval, 'Risk Analysis', 'Advanced understanding of Risk Analysis', 'advanced');
INSERT INTO knowledge_skill VALUES (seq_ks.nextval, 'Managment', 'Beginner understanding of Managment', 'beginner');
INSERT INTO knowledge_skill VALUES (seq_ks.nextval, 'Managment', 'Intermediate understanding of Managment', 'intermediate');

CREATE SEQUENCE seq_jp
MINVALUE 1
START WITH 1
INCREMENT BY 1
CACHE 10;

CREATE TABLE job_profile (
job_code INT PRIMARY KEY,
title VARCHAR(50) NOT NULL,
description VARCHAR(500)
);

INSERT INTO job_profile VALUES(seq_jp.nextval, 'Retail Salesperson', 'Perform the function of a(n) retail salesperson');
INSERT INTO job_profile VALUES(seq_jp.nextval, 'Cashier', 'Perform the function of a(n) cashier');
INSERT INTO job_profile VALUES(seq_jp.nextval, 'Office Clerk', 'Perform the function of a(n) office clerk');
INSERT INTO job_profile VALUES(seq_jp.nextval, 'Food Preparation Worker', 'Perform the function of a(n) food preparation worker');
INSERT INTO job_profile VALUES(seq_jp.nextval, 'Registered Nurse', 'Perform the function of a(n) registered nurse');
INSERT INTO job_profile VALUES(seq_jp.nextval, 'Waiter/Waitress', 'Perform the function of a(n) waiter/waitress');
INSERT INTO job_profile VALUES(seq_jp.nextval, 'Customer Service Representative', 'Perform the function of a(n) customer service representative');
INSERT INTO job_profile VALUES(seq_jp.nextval, 'Janitor', 'Perform the function of a(n) janitor');
INSERT INTO job_profile VALUES(seq_jp.nextval, 'Stock/Freight Handler', 'Perform the function of a(n) stock/freight handler');
INSERT INTO job_profile VALUES(seq_jp.nextval, 'Secretary', 'Perform the function of a(n) secretary');
INSERT INTO job_profile VALUES(seq_jp.nextval, 'Stock Clerk', 'Perform the function of a(n) stock clerk');
INSERT INTO job_profile VALUES(seq_jp.nextval, 'General Manager', 'Perform the function of a(n) general manager');
INSERT INTO job_profile VALUES(seq_jp.nextval, 'Acountant', 'Perform the function of a(n) acountant');
INSERT INTO job_profile VALUES(seq_jp.nextval, 'Elementary School Teacher', 'Perform the function of a(n) elementary school teacher');
INSERT INTO job_profile VALUES(seq_jp.nextval, 'Truck Driver', 'Perform the function of a(n) truck driver');
INSERT INTO job_profile VALUES(seq_jp.nextval, 'Orderly', 'Perform the function of a(n) orderly');
INSERT INTO job_profile VALUES(seq_jp.nextval, 'Wholesale Salesperson', 'Perform the function of a(n) wholesale salesperson');
INSERT INTO job_profile VALUES(seq_jp.nextval, 'Office Supervisor', 'Perform the function of a(n) office supervisor');
INSERT INTO job_profile VALUES(seq_jp.nextval, 'Teacher Assistant', 'Perform the function of a(n) teacher assistant');
INSERT INTO job_profile VALUES(seq_jp.nextval, 'Maintenance and Repair Worker', 'Perform the function of a(n) maintenance and repair worker');
INSERT INTO job_profile VALUES(seq_jp.nextval, 'Retail Sales Supervisor', 'Perform the function of a(n) retail sales supervisor');
INSERT INTO job_profile VALUES(seq_jp.nextval, 'Diesel Mechanic', 'Perform the function of a(n) diesel mechanic');
INSERT INTO job_profile VALUES(seq_jp.nextval, 'Auditor', 'Perform the function of a(n) auditor');
INSERT INTO job_profile VALUES(seq_jp.nextval, 'Secondary School Teacher', 'Perform the function of a(n) secondary school teacher');
INSERT INTO job_profile VALUES(seq_jp.nextval, 'Security Guard', 'Perform the function of a(n) security guard');
INSERT INTO job_profile VALUES(seq_jp.nextval, 'Receptionist', 'Perform the function of a(n) receptionist');
INSERT INTO job_profile VALUES(seq_jp.nextval, 'Business Operations Specialist', 'Perform the function of a(n) business operations specialist');
INSERT INTO job_profile VALUES(seq_jp.nextval, 'Home Health Aide', 'Perform the function of a(n) home health aide');
INSERT INTO job_profile VALUES(seq_jp.nextval, 'Cook', 'Perform the function of a(n) cook');
INSERT INTO job_profile VALUES(seq_jp.nextval, 'Housekeeper', 'Perform the function of a(n) housekeeper');
INSERT INTO job_profile VALUES(seq_jp.nextval, 'Landscaper', 'Perform the function of a(n) landscaper');
INSERT INTO job_profile VALUES(seq_jp.nextval, 'Delivery Driver', 'Perform the function of a(n) delivery driver');
INSERT INTO job_profile VALUES(seq_jp.nextval, 'Construction Worker', 'Perform the function of a(n) construction worker');
INSERT INTO job_profile VALUES(seq_jp.nextval, 'Food Service Supervisor', 'Perform the function of a(n) food service supervisor');
INSERT INTO job_profile VALUES(seq_jp.nextval, 'Packager', 'Perform the function of a(n) packager');
INSERT INTO job_profile VALUES(seq_jp.nextval, 'Middle School Teacher', 'Perform the function of a(n) middle school teacher');
INSERT INTO job_profile VALUES(seq_jp.nextval, 'Police Officer', 'Perform the function of a(n) police officer');
INSERT INTO job_profile VALUES(seq_jp.nextval, 'Carpenter', 'Perform the function of a(n) carpenter');
INSERT INTO job_profile VALUES(seq_jp.nextval, 'Childcare Worker', 'Perform the function of a(n) childcare worker');
INSERT INTO job_profile VALUES(seq_jp.nextval, 'Automotive Mechanic', 'Perform the function of a(n) automotive mechanic');
INSERT INTO job_profile VALUES(seq_jp.nextval, 'Computer Support Specialist', 'Perform the function of a(n) computer support specialist');
INSERT INTO job_profile VALUES(seq_jp.nextval, 'Lawyer', 'Perform the function of a(n) lawyer');
INSERT INTO job_profile VALUES(seq_jp.nextval, 'Software Developer', 'Perform the function of a(n) software developer');
INSERT INTO job_profile VALUES(seq_jp.nextval, 'Pilot', 'Perform the function of a(n) pilot');
INSERT INTO job_profile VALUES(seq_jp.nextval, 'Plumber', 'Perform the function of a(n) plumber');
INSERT INTO job_profile VALUES(seq_jp.nextval, 'Interior Designer', 'Perform the function of a(n) interior designer');
INSERT INTO job_profile VALUES(seq_jp.nextval, 'Assembly Line Worker', 'Perform the function of a(n) assembly line worker');
INSERT INTO job_profile VALUES(seq_jp.nextval, 'Product Tester', 'Perform the function of a(n) product tester');
INSERT INTO job_profile VALUES(seq_jp.nextval, 'Quality Assurance', 'Perform the function of a(n) quality assurance');
INSERT INTO job_profile VALUES(seq_jp.nextval, 'Veterinarian', 'Perform the function of a(n) veterinarian');

CREATE SEQUENCE seq_course
MINVALUE 1
START WITH 1
INCREMENT BY 1
CACHE 10;

CREATE TABLE course (
course_code INT PRIMARY KEY,
title VARCHAR(50) NOT NULL,
description VARCHAR(500),
course_level VARCHAR(12) CHECK(course_level IN ('beginner','intermediate','advanced')),
status VARCHAR(10) CHECK(status IN ('active','expired')),
retail_price NUMBER(10,4)
);

INSERT INTO course VALUES (seq_course.nextval, 'ENGL 1157', 'Intermediate English', 'intermediate', 'active', 451.74);
INSERT INTO course VALUES (seq_course.nextval, 'ENGL 1158', 'Beginner English', 'beginner', 'active', 434.8);
INSERT INTO course VALUES (seq_course.nextval, 'MATH 1126', 'Intermediate Mathmatics', 'intermediate', 'active', 1474.55);
INSERT INTO course VALUES (seq_course.nextval, 'MATH 2114', 'Advanced Mathmatics', 'advanced', 'active', 286.9);
INSERT INTO course VALUES (seq_course.nextval, 'CSCI 1583', 'Advanced Computer Science', 'advanced', 'expired', 1741.31);
INSERT INTO course VALUES (seq_course.nextval, 'CSCI 1581', 'Beginner Computer Science', 'beginner', 'active', 716.23);
INSERT INTO course VALUES (seq_course.nextval, 'CSCI 2120', 'Intermediate Computer Science', 'intermediate', 'active', 547.86);
INSERT INTO course VALUES (seq_course.nextval, 'CSCI 2121', 'Beginner Computer Science', 'beginner', 'active', 318.05);
INSERT INTO course VALUES (seq_course.nextval, 'CSCI 2125', 'Intermediate Computer Science', 'intermediate', 'active', 327.5);
INSERT INTO course VALUES (seq_course.nextval, 'CSCI 2450', 'Intermediate Computer Science', 'intermediate', 'active', 1668.8);
INSERT INTO course VALUES (seq_course.nextval, 'ENGL 2152', 'Beginner English', 'beginner', 'expired', 1206);
INSERT INTO course VALUES (seq_course.nextval, 'MATH 1125', 'Beginner Mathmatics', 'beginner', 'active', 1621.57);
INSERT INTO course VALUES (seq_course.nextval, 'MATH 2124', 'Advanced Mathmatics', 'advanced', 'active', 1340.88);
INSERT INTO course VALUES (seq_course.nextval, 'MATH 2314', 'Beginner Mathmatics', 'beginner', 'expired', 938.44);
INSERT INTO course VALUES (seq_course.nextval, 'MATH 3721', 'Advanced Mathmatics', 'advanced', 'expired', 1512.5);
INSERT INTO course VALUES (seq_course.nextval, 'CSCI 2467', 'Intermediate Computer Science', 'intermediate', 'expired', 1771.91);
INSERT INTO course VALUES (seq_course.nextval, 'CSCI 3080', 'Intermediate Computer Science', 'intermediate', 'active', 1194.85);
INSERT INTO course VALUES (seq_course.nextval, 'CSCI 3090', 'Intermediate Computer Science', 'intermediate', 'active', 218.27);
INSERT INTO course VALUES (seq_course.nextval, 'CSCI 3102', 'Intermediate Computer Science', 'intermediate', 'active', 1523.54);
INSERT INTO course VALUES (seq_course.nextval, 'CSCI 3301', 'Advanced Computer Science', 'advanced', 'active', 245.85);
INSERT INTO course VALUES (seq_course.nextval, 'CSCI 4000', 'Beginner Computer Science', 'beginner', 'active', 639.6);
INSERT INTO course VALUES (seq_course.nextval, 'CSCI 4125', 'Advanced Computer Science', 'advanced', 'expired', 673.25);
INSERT INTO course VALUES (seq_course.nextval, 'CSCI 4311', 'Beginner Computer Science', 'beginner', 'active', 752.07);
INSERT INTO course VALUES (seq_course.nextval, 'CSCI 4401', 'Beginner Computer Science', 'beginner', 'expired', 704.26);
INSERT INTO course VALUES (seq_course.nextval, 'CSCI 4501', 'Beginner Computer Science', 'beginner', 'active', 698.61);
INSERT INTO course VALUES (seq_course.nextval, 'CSCI 4631', 'Beginner Computer Science', 'beginner', 'expired', 795.01);
INSERT INTO course VALUES (seq_course.nextval, 'CSCI 4661', 'Beginner Computer Science', 'beginner', 'expired', 366.91);
INSERT INTO course VALUES (seq_course.nextval, 'CSCI 4670', 'Beginner Computer Science', 'beginner', 'active', 812.84);
INSERT INTO course VALUES (seq_course.nextval, 'CSCI 4675', 'Intermediate Computer Science', 'intermediate', 'active', 236.47);
INSERT INTO course VALUES (seq_course.nextval, 'CSCI 4567', 'Beginner Computer Science', 'beginner', 'active', 767.83);
INSERT INTO course VALUES (seq_course.nextval, 'CSCI 4568', 'Advanced Computer Science', 'advanced', 'expired', 1146.98);
INSERT INTO course VALUES (seq_course.nextval, 'CSCI 4595', 'Beginner Computer Science', 'beginner', 'active', 1169.8);
INSERT INTO course VALUES (seq_course.nextval, 'CSCI 4588', 'Beginner Computer Science', 'beginner', 'active', 1771.07);
INSERT INTO course VALUES (seq_course.nextval, 'CSCI 4587', 'Intermediate Computer Science', 'intermediate', 'active', 107.81);
INSERT INTO course VALUES (seq_course.nextval, 'CSCI 4621', 'Beginner Computer Science', 'beginner', 'active', 1168.07);
INSERT INTO course VALUES (seq_course.nextval, 'CSCI 4623', 'Beginner Computer Science', 'beginner', 'expired', 873.41);
INSERT INTO course VALUES (seq_course.nextval, 'BIOS 1071', 'Intermediate Biology', 'intermediate', 'active', 1800.3);
INSERT INTO course VALUES (seq_course.nextval, 'CHEM 1007', 'Advanced Chemistry', 'advanced', 'active', 1814.69);
INSERT INTO course VALUES (seq_course.nextval, 'CHEM 1017', 'Beginner Chemistry', 'beginner', 'active', 663.73);
INSERT INTO course VALUES (seq_course.nextval, 'PHYS 1031', 'Intermediate Physics', 'intermediate', 'expired', 1813.45);
INSERT INTO course VALUES (seq_course.nextval, 'PHYS 1033', 'Intermediate Physics', 'intermediate', 'expired', 1020.97);
INSERT INTO course VALUES (seq_course.nextval, 'EES 1004', 'Beginner Earth and Environmental Science', 'beginner', 'expired', 703.46);
INSERT INTO course VALUES (seq_course.nextval, 'EES 2051', 'Advanced Earth and Environmental Science', 'advanced', 'active', 600.63);
INSERT INTO course VALUES (seq_course.nextval, 'EES 2700', 'Advanced Earth and Environmental Science', 'advanced', 'active', 1610.68);
INSERT INTO course VALUES (seq_course.nextval, 'EES 4560', 'Beginner Earth and Environmental Science', 'beginner', 'expired', 1683.44);
INSERT INTO course VALUES (seq_course.nextval, 'EES 1001', 'Intermediate Earth and Environmental Science', 'intermediate', 'active', 1026.64);
INSERT INTO course VALUES (seq_course.nextval, 'EES 1003', 'Advanced Earth and Environmental Science', 'advanced', 'active', 1510.54);
INSERT INTO course VALUES (seq_course.nextval, 'EES 1005', 'Intermediate Earth and Environmental Science', 'intermediate', 'active', 967.56);
INSERT INTO course VALUES (seq_course.nextval, 'EES 2000', 'Intermediate Earth and Environmental Science', 'intermediate', 'expired', 214.41);
INSERT INTO course VALUES (seq_course.nextval, 'EES 4099', 'Intermediate Earth and Environmental Science', 'intermediate', 'active', 1642.83);

CREATE SEQUENCE seq_li
MINVALUE 1
START WITH 1
INCREMENT BY 1
CACHE 10;

CREATE TABLE learning_institution (
li_id INT PRIMARY KEY,
name VARCHAR(100) NOT NULL,
description VARCHAR(500)
);

INSERT INTO learning_institution VALUES(seq_li.nextval, 'University of Phoenix - Online Campus', 'Located in Arizona, University of Phoenix - Online Campus has a total enrollment of 256402 and is ranked #1 in the nation.');
INSERT INTO learning_institution VALUES(seq_li.nextval, 'Ivy Tech Community College - Central Indiana', 'Located in Indiana, Ivy Tech Community College - Central Indiana has a total enrollment of 100272 and is ranked #2 in the nation.');
INSERT INTO learning_institution VALUES(seq_li.nextval, 'Ashford University', 'Located in California, Ashford University has a total enrollment of 77734 and is ranked #3 in the nation.');
INSERT INTO learning_institution VALUES(seq_li.nextval, 'Liberty University', 'Located in Virginia, Liberty University has a total enrollment of 74372 and is ranked #4 in the nation.');
INSERT INTO learning_institution VALUES(seq_li.nextval, 'Arizona State University (ASU)', 'Located in Arizona, Arizona State University (ASU) has a total enrollment of 73378 and is ranked #5 in the nation.');
INSERT INTO learning_institution VALUES(seq_li.nextval, 'Miami Dade College (MDC)', 'Located in Florida, Miami Dade College (MDC) has a total enrollment of 66701 and is ranked #6 in the nation.');
INSERT INTO learning_institution VALUES(seq_li.nextval, 'Lone Star College - Montgomery (LSC)', 'Located in Texas, Lone Star College - Montgomery (LSC) has a total enrollment of 60428 and is ranked #7 in the nation.');
INSERT INTO learning_institution VALUES(seq_li.nextval, 'University of Central Florida (UCF)', 'Located in Florida, University of Central Florida (UCF) has a total enrollment of 59601 and is ranked #8 in the nation.');
INSERT INTO learning_institution VALUES(seq_li.nextval, 'Houston Community College System', 'Located in Texas, Houston Community College System has a total enrollment of 58476 and is ranked #9 in the nation.');
INSERT INTO learning_institution VALUES(seq_li.nextval, 'American Public University System (American Military University)', 'Located in West Virginia, American Public University System (American Military University) has a total enrollment of 58115 and is ranked #10 in the nation.');
INSERT INTO learning_institution VALUES(seq_li.nextval, 'Ohio State University', 'Located in Ohio, Ohio State University has a total enrollment of 56387 and is ranked #11 in the nation.');
INSERT INTO learning_institution VALUES(seq_li.nextval, 'The University of Texas at Austin (UT Austin)', 'Located in Texas, The University of Texas at Austin (UT Austin) has a total enrollment of 52186 and is ranked #12 in the nation.');
INSERT INTO learning_institution VALUES(seq_li.nextval, 'Northern Virginia Community College (NVCC)', 'Located in Virginia, Northern Virginia Community College (NVCC) has a total enrollment of 51864 and is ranked #13 in the nation.');
INSERT INTO learning_institution VALUES(seq_li.nextval, 'University of Minnesota - Twin Cities', 'Located in Minnesota, University of Minnesota - Twin Cities has a total enrollment of 51853 and is ranked #14 in the nation.');
INSERT INTO learning_institution VALUES(seq_li.nextval, 'Texas AandM University (Texas AandM)', 'Located in Texas, Texas AandM University (Texas AandM) has a total enrollment of 50627 and is ranked #15 in the nation.');
INSERT INTO learning_institution VALUES(seq_li.nextval, 'Tarrant County College', 'Located in Texas, Tarrant County College has a total enrollment of 50439 and is ranked #16 in the nation.');
INSERT INTO learning_institution VALUES(seq_li.nextval, 'Walden University (Walden U)', 'Located in Minnesota, Walden University (Walden U) has a total enrollment of 50209 and is ranked #17 in the nation.');
INSERT INTO learning_institution VALUES(seq_li.nextval, 'University of Florida (UF)', 'Located in Florida, University of Florida (UF) has a total enrollment of 49913 and is ranked #18 in the nation.');
INSERT INTO learning_institution VALUES(seq_li.nextval, 'Kaplan University', 'Located in Iowa, Kaplan University has a total enrollment of 48865 and is ranked #19 in the nation.');
INSERT INTO learning_institution VALUES(seq_li.nextval, 'Michigan State University', 'Located in Michigan, Michigan State University has a total enrollment of 48783 and is ranked #20 in the nation.');
INSERT INTO learning_institution VALUES(seq_li.nextval, 'Grand Canyon University (GCU)', 'Located in Arizona, Grand Canyon University (GCU) has a total enrollment of 48650 and is ranked #21 in the nation.');
INSERT INTO learning_institution VALUES(seq_li.nextval, 'Florida International University (FIU)', 'Located in Florida, Florida International University (FIU) has a total enrollment of 46171 and is ranked #22 in the nation.');
INSERT INTO learning_institution VALUES(seq_li.nextval, 'Pennsylvania State University (Penn State)', 'Located in Pennsylvania, Pennsylvania State University (Penn State) has a total enrollment of 45783 and is ranked #23 in the nation.');
INSERT INTO learning_institution VALUES(seq_li.nextval, 'University of Illinois at Urbana - Champaign (UIUC)', 'Located in Illinois, University of Illinois at Urbana - Champaign (UIUC) has a total enrollment of 44520 and is ranked #24 in the nation.');
INSERT INTO learning_institution VALUES(seq_li.nextval, 'New York University (NYU)', 'Located in New York, New York University (NYU) has a total enrollment of 44516 and is ranked #25 in the nation.');
INSERT INTO learning_institution VALUES(seq_li.nextval, 'University of Washington - Seattle Campus (UW-Seattle)', 'Located in Washington, University of Washington - Seattle Campus (UW-Seattle) has a total enrollment of 43485 and is ranked #26 in the nation.');
INSERT INTO learning_institution VALUES(seq_li.nextval, 'University of Michigan - Ann Arbor (U-M)', 'Located in Michigan, University of Michigan - Ann Arbor (U-M) has a total enrollment of 43426 and is ranked #27 in the nation.');
INSERT INTO learning_institution VALUES(seq_li.nextval, 'Austin Community College District', 'Located in Texas, Austin Community College District has a total enrollment of 43315 and is ranked #28 in the nation.');
INSERT INTO learning_institution VALUES(seq_li.nextval, 'Valencia College (Valencia CC)', 'Located in Florida, Valencia College (Valencia CC) has a total enrollment of 42915 and is ranked #29 in the nation.');
INSERT INTO learning_institution VALUES(seq_li.nextval, 'Broward College', 'Located in Florida, Broward College has a total enrollment of 42309 and is ranked #30 in the nation.');
INSERT INTO learning_institution VALUES(seq_li.nextval, 'University of Wisconsin - Madison', 'Located in Wisconsin, University of Wisconsin - Madison has a total enrollment of 42269 and is ranked #31 in the nation.');
INSERT INTO learning_institution VALUES(seq_li.nextval, 'University of Maryland - University College (UMUC)', 'Located in Maryland, University of Maryland - University College (UMUC) has a total enrollment of 42268 and is ranked #32 in the nation.');
INSERT INTO learning_institution VALUES(seq_li.nextval, 'Indiana University - Bloomington (IU)', 'Located in Indiana, Indiana University - Bloomington (IU) has a total enrollment of 42133 and is ranked #33 in the nation.');
INSERT INTO learning_institution VALUES(seq_li.nextval, 'Western Governors University (WGU)', 'Located in Utah, Western Governors University (WGU) has a total enrollment of 41369 and is ranked #34 in the nation.');
INSERT INTO learning_institution VALUES(seq_li.nextval, 'University of South Florida (USF)', 'Located in Florida, University of South Florida (USF) has a total enrollment of 41116 and is ranked #35 in the nation.');
INSERT INTO learning_institution VALUES(seq_li.nextval, 'University of Houston (UH)', 'Located in Texas, University of Houston (UH) has a total enrollment of 40747 and is ranked #36 in the nation.');
INSERT INTO learning_institution VALUES(seq_li.nextval, 'Florida State University', 'Located in Florida, Florida State University has a total enrollment of 40695 and is ranked #37 in the nation.');
INSERT INTO learning_institution VALUES(seq_li.nextval, 'Rutgers University - New Brunswick', 'Located in New Jersey, Rutgers University - New Brunswick has a total enrollment of 40434 and is ranked #38 in the nation.');
INSERT INTO learning_institution VALUES(seq_li.nextval, 'Purdue University (Purdue-West Lafayette)', 'Located in Indiana, Purdue University (Purdue-West Lafayette) has a total enrollment of 40393 and is ranked #39 in the nation.');
INSERT INTO learning_institution VALUES(seq_li.nextval, 'University of Arizona', 'Located in Arizona, University of Arizona has a total enrollment of 40223 and is ranked #40 in the nation.');
INSERT INTO learning_institution VALUES(seq_li.nextval, 'University of Southern California (USC)', 'Located in California, University of Southern California (USC) has a total enrollment of 39958 and is ranked #41 in the nation.');
INSERT INTO learning_institution VALUES(seq_li.nextval, 'University of California - Los Angeles (UCLA)', 'Located in California, University of California - Los Angeles (UCLA) has a total enrollment of 39945 and is ranked #42 in the nation.');
INSERT INTO learning_institution VALUES(seq_li.nextval, 'Excelsior College (EC)', 'Located in New York, Excelsior College (EC) has a total enrollment of 39728 and is ranked #43 in the nation.');
INSERT INTO learning_institution VALUES(seq_li.nextval, 'University of North Texas (UNT)', 'Located in Texas, University of North Texas (UNT) has a total enrollment of 37950 and is ranked #44 in the nation.');
INSERT INTO learning_institution VALUES(seq_li.nextval, 'California State University - Fullerton (CSUF)', 'Located in California, California State University - Fullerton (CSUF) has a total enrollment of 37677 and is ranked #45 in the nation.');
INSERT INTO learning_institution VALUES(seq_li.nextval, 'University of Maryland - College Park', 'Located in Maryland, University of Maryland - College Park has a total enrollment of 37248 and is ranked #46 in the nation.');
INSERT INTO learning_institution VALUES(seq_li.nextval, 'East Los Angeles College (ELAC)', 'Located in California, East Los Angeles College (ELAC) has a total enrollment of 37055 and is ranked #47 in the nation.');
INSERT INTO learning_institution VALUES(seq_li.nextval, 'Temple University', 'Located in Pennsylvania, Temple University has a total enrollment of 36744 and is ranked #48 in the nation.');
INSERT INTO learning_institution VALUES(seq_li.nextval, 'California State University - Long Beach (CSULB)', 'Located in California, California State University - Long Beach (CSULB) has a total enrollment of 36279 and is ranked #49 in the nation.');
INSERT INTO learning_institution VALUES(seq_li.nextval, 'California State University - Northridge (CSUN)', 'Located in California, California State University - Northridge (CSUN) has a total enrollment of 36164 and is ranked #50 in the nation.');

CREATE SEQUENCE seq_section
MINVALUE 1
START WITH 1
INCREMENT BY 1
CACHE 10;

CREATE TABLE section (
section_number INT NOT NULL,
course_code INT NOT NULL CONSTRAINT section_course_fkey REFERENCES course (course_code),
start_date DATE NOT NULL,
end_date DATE NOT NULL,
format VARCHAR(50) CHECK(format IN ('classroom','online-sync','online-selfpaced','correspondence')),
li_id INT NOT NULL CONSTRAINT section_li_fkey REFERENCES learning_institution (li_id),
price NUMBER(10,4),
PRIMARY KEY (section_number, course_code, li_id, start_date)
);

INSERT INTO section VALUES(seq_section.nextval, 4, TO_DATE('12301899','MMDDYYYY') + 41913, TO_DATE('12301899','MMDDYYYY') + 12301968, 'online-sync', 37, 1051.29);
INSERT INTO section VALUES(seq_section.nextval, 48, TO_DATE('12301899','MMDDYYYY') + 41520, TO_DATE('12301899','MMDDYYYY') + 12301966, 'online-sync', 14, 0);
INSERT INTO section VALUES(seq_section.nextval, 44, TO_DATE('12301899','MMDDYYYY') + 41272, TO_DATE('12301899','MMDDYYYY') + 12301958, 'online-sync', 34, 1173.86);
INSERT INTO section VALUES(seq_section.nextval, 8, TO_DATE('12301899','MMDDYYYY') + 40392, TO_DATE('12301899','MMDDYYYY') + 12301967, 'correspondence', 26, 861.64);
INSERT INTO section VALUES(seq_section.nextval, 48, TO_DATE('12301899','MMDDYYYY') + 40177, TO_DATE('12301899','MMDDYYYY') + 12302036, 'classroom', 7, 836.59);
INSERT INTO section VALUES(seq_section.nextval, 18, TO_DATE('12301899','MMDDYYYY') + 41995, TO_DATE('12301899','MMDDYYYY') + 12302007, 'classroom', 48, 1756.95);
INSERT INTO section VALUES(seq_section.nextval, 6, TO_DATE('12301899','MMDDYYYY') + 41795, TO_DATE('12301899','MMDDYYYY') + 12302027, 'online-selfpaced', 15, 918.73);
INSERT INTO section VALUES(seq_section.nextval, 22, TO_DATE('12301899','MMDDYYYY') + 40965, TO_DATE('12301899','MMDDYYYY') + 12301992, 'classroom', 1, 646.72);
INSERT INTO section VALUES(seq_section.nextval, 33, TO_DATE('12301899','MMDDYYYY') + 41436, TO_DATE('12301899','MMDDYYYY') + 12302025, 'correspondence', 11, 1543.94);
INSERT INTO section VALUES(seq_section.nextval, 42, TO_DATE('12301899','MMDDYYYY') + 41643, TO_DATE('12301899','MMDDYYYY') + 12301966, 'classroom', 5, 353.91);
INSERT INTO section VALUES(seq_section.nextval, 50, TO_DATE('12301899','MMDDYYYY') + 40271, TO_DATE('12301899','MMDDYYYY') + 12301979, 'online-sync', 38, 167.74);
INSERT INTO section VALUES(seq_section.nextval, 30, TO_DATE('12301899','MMDDYYYY') + 40704, TO_DATE('12301899','MMDDYYYY') + 12301986, 'online-sync', 29, 1797.9);
INSERT INTO section VALUES(seq_section.nextval, 36, TO_DATE('12301899','MMDDYYYY') + 42224, TO_DATE('12301899','MMDDYYYY') + 12301941, 'classroom', 12, 351.65);
INSERT INTO section VALUES(seq_section.nextval, 3, TO_DATE('12301899','MMDDYYYY') + 41617, TO_DATE('12301899','MMDDYYYY') + 12302029, 'classroom', 39, 1782.48);
INSERT INTO section VALUES(seq_section.nextval, 1, TO_DATE('12301899','MMDDYYYY') + 40280, TO_DATE('12301899','MMDDYYYY') + 12301983, 'classroom', 37, 1513.6);
INSERT INTO section VALUES(seq_section.nextval, 6, TO_DATE('12301899','MMDDYYYY') + 41340, TO_DATE('12301899','MMDDYYYY') + 12301944, 'correspondence', 38, 144.39);
INSERT INTO section VALUES(seq_section.nextval, 32, TO_DATE('12301899','MMDDYYYY') + 40598, TO_DATE('12301899','MMDDYYYY') + 12302024, 'online-sync', 18, 1031.63);
INSERT INTO section VALUES(seq_section.nextval, 9, TO_DATE('12301899','MMDDYYYY') + 42084, TO_DATE('12301899','MMDDYYYY') + 12302002, 'online-selfpaced', 5, 1680.03);
INSERT INTO section VALUES(seq_section.nextval, 41, TO_DATE('12301899','MMDDYYYY') + 40529, TO_DATE('12301899','MMDDYYYY') + 12302033, 'online-sync', 8, 1067.48);
INSERT INTO section VALUES(seq_section.nextval, 49, TO_DATE('12301899','MMDDYYYY') + 41748, TO_DATE('12301899','MMDDYYYY') + 12301944, 'classroom', 23, 567.42);
INSERT INTO section VALUES(seq_section.nextval, 41, TO_DATE('12301899','MMDDYYYY') + 40720, TO_DATE('12301899','MMDDYYYY') + 12301993, 'online-selfpaced', 45, 1722.43);
INSERT INTO section VALUES(seq_section.nextval, 45, TO_DATE('12301899','MMDDYYYY') + 40794, TO_DATE('12301899','MMDDYYYY') + 12301990, 'online-sync', 19, 0);
INSERT INTO section VALUES(seq_section.nextval, 42, TO_DATE('12301899','MMDDYYYY') + 41797, TO_DATE('12301899','MMDDYYYY') + 12301989, 'online-sync', 36, 1225.01);
INSERT INTO section VALUES(seq_section.nextval, 47, TO_DATE('12301899','MMDDYYYY') + 40357, TO_DATE('12301899','MMDDYYYY') + 12301999, 'classroom', 13, 1642.2);
INSERT INTO section VALUES(seq_section.nextval, 37, TO_DATE('12301899','MMDDYYYY') + 41553, TO_DATE('12301899','MMDDYYYY') + 12302028, 'online-sync', 14, 232.85);
INSERT INTO section VALUES(seq_section.nextval, 2, TO_DATE('12301899','MMDDYYYY') + 40035, TO_DATE('12301899','MMDDYYYY') + 12302004, 'online-selfpaced', 29, 739.68);
INSERT INTO section VALUES(seq_section.nextval, 20, TO_DATE('12301899','MMDDYYYY') + 40642, TO_DATE('12301899','MMDDYYYY') + 12301944, 'online-sync', 15, 1293.8);
INSERT INTO section VALUES(seq_section.nextval, 37, TO_DATE('12301899','MMDDYYYY') + 41060, TO_DATE('12301899','MMDDYYYY') + 12301953, 'online-sync', 50, 1024.26);
INSERT INTO section VALUES(seq_section.nextval, 11, TO_DATE('12301899','MMDDYYYY') + 41252, TO_DATE('12301899','MMDDYYYY') + 12302016, 'online-selfpaced', 12, 1984.92);
INSERT INTO section VALUES(seq_section.nextval, 1, TO_DATE('12301899','MMDDYYYY') + 40058, TO_DATE('12301899','MMDDYYYY') + 12302017, 'online-selfpaced', 46, 829.18);
INSERT INTO section VALUES(seq_section.nextval, 38, TO_DATE('12301899','MMDDYYYY') + 40219, TO_DATE('12301899','MMDDYYYY') + 12301932, 'classroom', 23, 1247.81);
INSERT INTO section VALUES(seq_section.nextval, 28, TO_DATE('12301899','MMDDYYYY') + 42141, TO_DATE('12301899','MMDDYYYY') + 12301931, 'classroom', 2, 271.16);
INSERT INTO section VALUES(seq_section.nextval, 43, TO_DATE('12301899','MMDDYYYY') + 41173, TO_DATE('12301899','MMDDYYYY') + 12301951, 'correspondence', 15, 0);
INSERT INTO section VALUES(seq_section.nextval, 9, TO_DATE('12301899','MMDDYYYY') + 42245, TO_DATE('12301899','MMDDYYYY') + 12302041, 'correspondence', 14, 247.92);
INSERT INTO section VALUES(seq_section.nextval, 27, TO_DATE('12301899','MMDDYYYY') + 40195, TO_DATE('12301899','MMDDYYYY') + 12302029, 'online-selfpaced', 45, 175.68);
INSERT INTO section VALUES(seq_section.nextval, 31, TO_DATE('12301899','MMDDYYYY') + 42045, TO_DATE('12301899','MMDDYYYY') + 12301999, 'online-selfpaced', 16, 792.74);
INSERT INTO section VALUES(seq_section.nextval, 9, TO_DATE('12301899','MMDDYYYY') + 41690, TO_DATE('12301899','MMDDYYYY') + 12301931, 'classroom', 32, 1687.29);
INSERT INTO section VALUES(seq_section.nextval, 29, TO_DATE('12301899','MMDDYYYY') + 40068, TO_DATE('12301899','MMDDYYYY') + 12301950, 'online-sync', 16, 470.12);
INSERT INTO section VALUES(seq_section.nextval, 48, TO_DATE('12301899','MMDDYYYY') + 40943, TO_DATE('12301899','MMDDYYYY') + 12301943, 'online-sync', 50, 1538.67);
INSERT INTO section VALUES(seq_section.nextval, 32, TO_DATE('12301899','MMDDYYYY') + 40758, TO_DATE('12301899','MMDDYYYY') + 12301937, 'classroom', 48, 873.82);
INSERT INTO section VALUES(seq_section.nextval, 46, TO_DATE('12301899','MMDDYYYY') + 40876, TO_DATE('12301899','MMDDYYYY') + 12301931, 'online-sync', 49, 1313.27);
INSERT INTO section VALUES(seq_section.nextval, 31, TO_DATE('12301899','MMDDYYYY') + 40525, TO_DATE('12301899','MMDDYYYY') + 12301990, 'classroom', 17, 0);
INSERT INTO section VALUES(seq_section.nextval, 22, TO_DATE('12301899','MMDDYYYY') + 40305, TO_DATE('12301899','MMDDYYYY') + 12302046, 'classroom', 33, 1450.89);
INSERT INTO section VALUES(seq_section.nextval, 30, TO_DATE('12301899','MMDDYYYY') + 41640, TO_DATE('12301899','MMDDYYYY') + 12301983, 'online-selfpaced', 42, 1760.47);
INSERT INTO section VALUES(seq_section.nextval, 37, TO_DATE('12301899','MMDDYYYY') + 40741, TO_DATE('12301899','MMDDYYYY') + 12302025, 'online-sync', 39, 1866.71);
INSERT INTO section VALUES(seq_section.nextval, 46, TO_DATE('12301899','MMDDYYYY') + 42242, TO_DATE('12301899','MMDDYYYY') + 12302017, 'online-sync', 1, 1105.19);
INSERT INTO section VALUES(seq_section.nextval, 8, TO_DATE('12301899','MMDDYYYY') + 42290, TO_DATE('12301899','MMDDYYYY') + 12302015, 'classroom', 37, 1521.63);
INSERT INTO section VALUES(seq_section.nextval, 36, TO_DATE('12301899','MMDDYYYY') + 41782, TO_DATE('12301899','MMDDYYYY') + 12302004, 'online-selfpaced', 25, 328.42);
INSERT INTO section VALUES(seq_section.nextval, 37, TO_DATE('12301899','MMDDYYYY') + 40092, TO_DATE('12301899','MMDDYYYY') + 12301963, 'classroom', 49, 810.8);
INSERT INTO section VALUES(seq_section.nextval, 50, TO_DATE('12301899','MMDDYYYY') + 41659, TO_DATE('12301899','MMDDYYYY') + 12301967, 'online-selfpaced', 43, 912.83);

CREATE SEQUENCE seq_project
MINVALUE 1
START WITH 1
INCREMENT BY 1
CACHE 10;

CREATE TABLE project (
project_id INT PRIMARY KEY,
title VARCHAR(50) NOT NULL,
description VARCHAR(500),
start_date DATE,
end_date DATE,
director INT NOT NULL CONSTRAINT project_person_fkey REFERENCES person (person_id),
budget_code INT
);

INSERT INTO project VALUES(seq_project.nextval, 'Project 1', 'Project 1 is central to the mission of this company.', TO_DATE('12301899','MMDDYYYY') + 41350, TO_DATE('12301899','MMDDYYYY') + 12302037, 37, NULL);
INSERT INTO project VALUES(seq_project.nextval, 'Project 2', 'Project 2 is central to the mission of this company.', TO_DATE('12301899','MMDDYYYY') + 40839, TO_DATE('12301899','MMDDYYYY') + 12301938, 45, NULL);
INSERT INTO project VALUES(seq_project.nextval, 'Project 3', 'Project 3 is central to the mission of this company.', TO_DATE('12301899','MMDDYYYY') + 41451, NULL, 38, NULL);
INSERT INTO project VALUES(seq_project.nextval, 'Project 4', 'Project 4 is central to the mission of this company.', TO_DATE('12301899','MMDDYYYY') + 41014, TO_DATE('12301899','MMDDYYYY') + 12301997, 18, NULL);
INSERT INTO project VALUES(seq_project.nextval, 'Project 5', 'Project 5 is central to the mission of this company.', TO_DATE('12301899','MMDDYYYY') + 41836, NULL, 25, NULL);
INSERT INTO project VALUES(seq_project.nextval, 'Project 6', 'Project 6 is central to the mission of this company.', TO_DATE('12301899','MMDDYYYY') + 41205, NULL, 41, NULL);
INSERT INTO project VALUES(seq_project.nextval, 'Project 7', 'Project 7 is central to the mission of this company.', TO_DATE('12301899','MMDDYYYY') + 41050, TO_DATE('12301899','MMDDYYYY') + 12302043, 30, NULL);
INSERT INTO project VALUES(seq_project.nextval, 'Project 8', 'Project 8 is central to the mission of this company.', TO_DATE('12301899','MMDDYYYY') + 40292, TO_DATE('12301899','MMDDYYYY') + 12301975, 32, NULL);
INSERT INTO project VALUES(seq_project.nextval, 'Project 9', 'Project 9 is central to the mission of this company.', TO_DATE('12301899','MMDDYYYY') + 40780, TO_DATE('12301899','MMDDYYYY') + 12301956, 43, NULL);
INSERT INTO project VALUES(seq_project.nextval, 'Project 10', 'Project 10 is central to the mission of this company.', TO_DATE('12301899','MMDDYYYY') + 41254, TO_DATE('12301899','MMDDYYYY') + 12302034, 46, NULL);
INSERT INTO project VALUES(seq_project.nextval, 'Project 11', 'Project 11 is central to the mission of this company.', TO_DATE('12301899','MMDDYYYY') + 42025, TO_DATE('12301899','MMDDYYYY') + 12301944, 36, NULL);
INSERT INTO project VALUES(seq_project.nextval, 'Project 12', 'Project 12 is central to the mission of this company.', TO_DATE('12301899','MMDDYYYY') + 42232, TO_DATE('12301899','MMDDYYYY') + 12301986, 1, NULL);
INSERT INTO project VALUES(seq_project.nextval, 'Project 13', 'Project 13 is central to the mission of this company.', TO_DATE('12301899','MMDDYYYY') + 41178, TO_DATE('12301899','MMDDYYYY') + 12302035, 29, NULL);
INSERT INTO project VALUES(seq_project.nextval, 'Project 14', 'Project 14 is central to the mission of this company.', TO_DATE('12301899','MMDDYYYY') + 40862, TO_DATE('12301899','MMDDYYYY') + 12302012, 39, NULL);
INSERT INTO project VALUES(seq_project.nextval, 'Project 15', 'Project 15 is central to the mission of this company.', TO_DATE('12301899','MMDDYYYY') + 40256, TO_DATE('12301899','MMDDYYYY') + 12302044, 2, NULL);
INSERT INTO project VALUES(seq_project.nextval, 'Project 16', 'Project 16 is central to the mission of this company.', TO_DATE('12301899','MMDDYYYY') + 42252, TO_DATE('12301899','MMDDYYYY') + 12302031, 50, NULL);
INSERT INTO project VALUES(seq_project.nextval, 'Project 17', 'Project 17 is central to the mission of this company.', TO_DATE('12301899','MMDDYYYY') + 40764, NULL, 43, NULL);
INSERT INTO project VALUES(seq_project.nextval, 'Project 18', 'Project 18 is central to the mission of this company.', TO_DATE('12301899','MMDDYYYY') + 40837, TO_DATE('12301899','MMDDYYYY') + 12302049, 16, NULL);
INSERT INTO project VALUES(seq_project.nextval, 'Project 19', 'Project 19 is central to the mission of this company.', TO_DATE('12301899','MMDDYYYY') + 42140, NULL, 34, NULL);
INSERT INTO project VALUES(seq_project.nextval, 'Project 20', 'Project 20 is central to the mission of this company.', TO_DATE('12301899','MMDDYYYY') + 40334, TO_DATE('12301899','MMDDYYYY') + 12301964, 39, NULL);
INSERT INTO project VALUES(seq_project.nextval, 'Project 21', 'Project 21 is central to the mission of this company.', TO_DATE('12301899','MMDDYYYY') + 41209, TO_DATE('12301899','MMDDYYYY') + 12301953, 13, NULL);
INSERT INTO project VALUES(seq_project.nextval, 'Project 22', 'Project 22 is central to the mission of this company.', TO_DATE('12301899','MMDDYYYY') + 41053, TO_DATE('12301899','MMDDYYYY') + 12302014, 18, NULL);
INSERT INTO project VALUES(seq_project.nextval, 'Project 23', 'Project 23 is central to the mission of this company.', TO_DATE('12301899','MMDDYYYY') + 41328, TO_DATE('12301899','MMDDYYYY') + 12301926, 47, NULL);
INSERT INTO project VALUES(seq_project.nextval, 'Project 24', 'Project 24 is central to the mission of this company.', TO_DATE('12301899','MMDDYYYY') + 42137, TO_DATE('12301899','MMDDYYYY') + 12301982, 20, NULL);
INSERT INTO project VALUES(seq_project.nextval, 'Project 25', 'Project 25 is central to the mission of this company.', TO_DATE('12301899','MMDDYYYY') + 41970, NULL, 42, NULL);
INSERT INTO project VALUES(seq_project.nextval, 'Project 26', 'Project 26 is central to the mission of this company.', TO_DATE('12301899','MMDDYYYY') + 41655, TO_DATE('12301899','MMDDYYYY') + 12302012, 37, NULL);
INSERT INTO project VALUES(seq_project.nextval, 'Project 27', 'Project 27 is central to the mission of this company.', TO_DATE('12301899','MMDDYYYY') + 41200, NULL, 40, NULL);
INSERT INTO project VALUES(seq_project.nextval, 'Project 28', 'Project 28 is central to the mission of this company.', TO_DATE('12301899','MMDDYYYY') + 41818, TO_DATE('12301899','MMDDYYYY') + 12301955, 28, NULL);
INSERT INTO project VALUES(seq_project.nextval, 'Project 29', 'Project 29 is central to the mission of this company.', TO_DATE('12301899','MMDDYYYY') + 41173, TO_DATE('12301899','MMDDYYYY') + 12302002, 31, NULL);
INSERT INTO project VALUES(seq_project.nextval, 'Project 30', 'Project 30 is central to the mission of this company.', TO_DATE('12301899','MMDDYYYY') + 41916, TO_DATE('12301899','MMDDYYYY') + 12302019, 40, NULL);
INSERT INTO project VALUES(seq_project.nextval, 'Project 31', 'Project 31 is central to the mission of this company.', TO_DATE('12301899','MMDDYYYY') + 41024, NULL, 6, NULL);
INSERT INTO project VALUES(seq_project.nextval, 'Project 32', 'Project 32 is central to the mission of this company.', TO_DATE('12301899','MMDDYYYY') + 40561, TO_DATE('12301899','MMDDYYYY') + 12302006, 13, NULL);
INSERT INTO project VALUES(seq_project.nextval, 'Project 33', 'Project 33 is central to the mission of this company.', TO_DATE('12301899','MMDDYYYY') + 41915, TO_DATE('12301899','MMDDYYYY') + 12301995, 12, NULL);
INSERT INTO project VALUES(seq_project.nextval, 'Project 34', 'Project 34 is central to the mission of this company.', TO_DATE('12301899','MMDDYYYY') + 40994, TO_DATE('12301899','MMDDYYYY') + 12301962, 45, NULL);
INSERT INTO project VALUES(seq_project.nextval, 'Project 35', 'Project 35 is central to the mission of this company.', TO_DATE('12301899','MMDDYYYY') + 41401, TO_DATE('12301899','MMDDYYYY') + 12301943, 38, NULL);
INSERT INTO project VALUES(seq_project.nextval, 'Project 36', 'Project 36 is central to the mission of this company.', TO_DATE('12301899','MMDDYYYY') + 41957, TO_DATE('12301899','MMDDYYYY') + 12302019, 42, NULL);
INSERT INTO project VALUES(seq_project.nextval, 'Project 37', 'Project 37 is central to the mission of this company.', TO_DATE('12301899','MMDDYYYY') + 41588, TO_DATE('12301899','MMDDYYYY') + 12302025, 36, NULL);
INSERT INTO project VALUES(seq_project.nextval, 'Project 38', 'Project 38 is central to the mission of this company.', TO_DATE('12301899','MMDDYYYY') + 41110, NULL, 14, NULL);
INSERT INTO project VALUES(seq_project.nextval, 'Project 39', 'Project 39 is central to the mission of this company.', TO_DATE('12301899','MMDDYYYY') + 42250, NULL, 1, NULL);
INSERT INTO project VALUES(seq_project.nextval, 'Project 40', 'Project 40 is central to the mission of this company.', TO_DATE('12301899','MMDDYYYY') + 42042, TO_DATE('12301899','MMDDYYYY') + 12301976, 38, NULL);
INSERT INTO project VALUES(seq_project.nextval, 'Project 41', 'Project 41 is central to the mission of this company.', TO_DATE('12301899','MMDDYYYY') + 40333, NULL, 46, NULL);
INSERT INTO project VALUES(seq_project.nextval, 'Project 42', 'Project 42 is central to the mission of this company.', TO_DATE('12301899','MMDDYYYY') + 40695, TO_DATE('12301899','MMDDYYYY') + 12301980, 43, NULL);
INSERT INTO project VALUES(seq_project.nextval, 'Project 43', 'Project 43 is central to the mission of this company.', TO_DATE('12301899','MMDDYYYY') + 41369, TO_DATE('12301899','MMDDYYYY') + 12301989, 21, NULL);
INSERT INTO project VALUES(seq_project.nextval, 'Project 44', 'Project 44 is central to the mission of this company.', TO_DATE('12301899','MMDDYYYY') + 40811, TO_DATE('12301899','MMDDYYYY') + 12302014, 33, NULL);
INSERT INTO project VALUES(seq_project.nextval, 'Project 45', 'Project 45 is central to the mission of this company.', TO_DATE('12301899','MMDDYYYY') + 42236, NULL, 2, NULL);
INSERT INTO project VALUES(seq_project.nextval, 'Project 46', 'Project 46 is central to the mission of this company.', TO_DATE('12301899','MMDDYYYY') + 40458, NULL, 30, NULL);
INSERT INTO project VALUES(seq_project.nextval, 'Project 47', 'Project 47 is central to the mission of this company.', TO_DATE('12301899','MMDDYYYY') + 40121, NULL, 37, NULL);
INSERT INTO project VALUES(seq_project.nextval, 'Project 48', 'Project 48 is central to the mission of this company.', TO_DATE('12301899','MMDDYYYY') + 41201, TO_DATE('12301899','MMDDYYYY') + 12302042, 23, NULL);
INSERT INTO project VALUES(seq_project.nextval, 'Project 49', 'Project 49 is central to the mission of this company.', TO_DATE('12301899','MMDDYYYY') + 41497, TO_DATE('12301899','MMDDYYYY') + 12301955, 34, NULL);
INSERT INTO project VALUES(seq_project.nextval, 'Project 50', 'Project 50 is central to the mission of this company.', TO_DATE('12301899','MMDDYYYY') + 40688, NULL, 37, NULL);

CREATE SEQUENCE seq_job
MINVALUE 1
START WITH 1
INCREMENT BY 1
CACHE 10;

CREATE TABLE job (
job_id INT PRIMARY KEY,
job_code INT NOT NULL CONSTRAINT job_jobprofile_fkey REFERENCES job_profile (job_code),
company_id INT NOT NULL CONSTRAINT job_company_fkey REFERENCES company (company_id),
job_type VARCHAR(10) CHECK(job_type IN ('full-time','part-time')),
pay_type VARCHAR(10) CHECK(pay_type IN ('wage','salary')),
pay_rate NUMBER(10,2)
);

INSERT INTO job VALUES(seq_job.nextval, 8, 50, 'full-time', 'salary', 121440);
INSERT INTO job VALUES(seq_job.nextval, 22, 1, 'part-time', 'wage', 25.33);
INSERT INTO job VALUES(seq_job.nextval, 35, 31, 'full-time', 'wage', 36.19);
INSERT INTO job VALUES(seq_job.nextval, 1, 5, 'full-time', 'salary', 110659);
INSERT INTO job VALUES(seq_job.nextval, 40, 20, 'full-time', 'salary', 135480);
INSERT INTO job VALUES(seq_job.nextval, 12, 36, 'part-time', 'salary', 28816);
INSERT INTO job VALUES(seq_job.nextval, 10, 8, 'part-time', 'salary', 124334);
INSERT INTO job VALUES(seq_job.nextval, 35, 44, 'part-time', 'salary', 119518);
INSERT INTO job VALUES(seq_job.nextval, 40, 2, 'full-time', 'wage', 19.97);
INSERT INTO job VALUES(seq_job.nextval, 8, 11, 'full-time', 'salary', 126417);
INSERT INTO job VALUES(seq_job.nextval, 41, 1, 'full-time', 'salary', 39945);
INSERT INTO job VALUES(seq_job.nextval, 42, 8, 'part-time', 'wage', 20.2);
INSERT INTO job VALUES(seq_job.nextval, 22, 7, 'part-time', 'wage', 38.9);
INSERT INTO job VALUES(seq_job.nextval, 11, 44, 'full-time', 'salary', 125883);
INSERT INTO job VALUES(seq_job.nextval, 7, 33, 'full-time', 'wage', 11.31);
INSERT INTO job VALUES(seq_job.nextval, 43, 1, 'full-time', 'wage', 13.23);
INSERT INTO job VALUES(seq_job.nextval, 8, 26, 'full-time', 'salary', 186575);
INSERT INTO job VALUES(seq_job.nextval, 1, 39, 'full-time', 'wage', 25.56);
INSERT INTO job VALUES(seq_job.nextval, 10, 42, 'full-time', 'salary', 135112);
INSERT INTO job VALUES(seq_job.nextval, 26, 9, 'full-time', 'wage', 9.33);
INSERT INTO job VALUES(seq_job.nextval, 37, 15, 'full-time', 'salary', 159243);
INSERT INTO job VALUES(seq_job.nextval, 43, 36, 'full-time', 'salary', 100174);
INSERT INTO job VALUES(seq_job.nextval, 6, 20, 'part-time', 'wage', 27.46);
INSERT INTO job VALUES(seq_job.nextval, 15, 16, 'part-time', 'wage', 19.12);
INSERT INTO job VALUES(seq_job.nextval, 13, 14, 'part-time', 'wage', 11.12);
INSERT INTO job VALUES(seq_job.nextval, 30, 50, 'part-time', 'salary', 96711);
INSERT INTO job VALUES(seq_job.nextval, 21, 35, 'full-time', 'salary', 175941);
INSERT INTO job VALUES(seq_job.nextval, 23, 14, 'full-time', 'wage', 22.57);
INSERT INTO job VALUES(seq_job.nextval, 12, 43, 'part-time', 'salary', 119739);
INSERT INTO job VALUES(seq_job.nextval, 30, 15, 'part-time', 'wage', 24.38);
INSERT INTO job VALUES(seq_job.nextval, 19, 42, 'part-time', 'salary', 169285);
INSERT INTO job VALUES(seq_job.nextval, 46, 18, 'part-time', 'salary', 39823);
INSERT INTO job VALUES(seq_job.nextval, 5, 32, 'full-time', 'wage', 24.43);
INSERT INTO job VALUES(seq_job.nextval, 9, 4, 'part-time', 'salary', 32330);
INSERT INTO job VALUES(seq_job.nextval, 13, 29, 'full-time', 'salary', 123498);
INSERT INTO job VALUES(seq_job.nextval, 26, 18, 'full-time', 'wage', 30.78);
INSERT INTO job VALUES(seq_job.nextval, 7, 45, 'part-time', 'wage', 19.86);
INSERT INTO job VALUES(seq_job.nextval, 8, 9, 'full-time', 'salary', 43276);
INSERT INTO job VALUES(seq_job.nextval, 13, 5, 'part-time', 'salary', 55871);
INSERT INTO job VALUES(seq_job.nextval, 18, 5, 'part-time', 'salary', 87748);
INSERT INTO job VALUES(seq_job.nextval, 3, 3, 'full-time', 'wage', 23.84);
INSERT INTO job VALUES(seq_job.nextval, 15, 22, 'part-time', 'salary', 47165);
INSERT INTO job VALUES(seq_job.nextval, 25, 17, 'full-time', 'salary', 135268);
INSERT INTO job VALUES(seq_job.nextval, 23, 16, 'part-time', 'wage', 25.12);
INSERT INTO job VALUES(seq_job.nextval, 1, 3, 'full-time', 'wage', 26.66);
INSERT INTO job VALUES(seq_job.nextval, 5, 35, 'full-time', 'wage', 39.32);
INSERT INTO job VALUES(seq_job.nextval, 19, 6, 'full-time', 'salary', 109129);
INSERT INTO job VALUES(seq_job.nextval, 32, 34, 'full-time', 'wage', 32.82);
INSERT INTO job VALUES(seq_job.nextval, 20, 49, 'part-time', 'salary', 138271);
INSERT INTO job VALUES(seq_job.nextval, 42, 19, 'part-time', 'wage', 33);

CREATE SEQUENCE seq_application 
MINVALUE 1 
START WITH 1 
INCREMENT BY 1 
CACHE 10;

CREATE TABLE job_application (
application_id INT PRIMARY KEY,
person_id INT NOT NULL CONSTRAINT person_id_fkey REFERENCES person (person_id),
job_id INT NOT NULL CONSTRAINT job_id_fkey REFERENCES job (job_id),
status VARCHAR(10) CHECK(status IN ('applied','offered','accepted','rejected'))
);

CREATE TABLE course_ks (
course_code INT NOT NULL CONSTRAINT cks_course_fkey REFERENCES course (course_code),
ks_code INT NOT NULL CONSTRAINT cks_ks_fkey REFERENCES knowledge_skill (ks_code),
PRIMARY KEY (course_code, ks_code)
);

INSERT INTO course_ks VALUES(26, 50);
INSERT INTO course_ks VALUES(6, 14);
INSERT INTO course_ks VALUES(1, 32);
INSERT INTO course_ks VALUES(46, 3);
INSERT INTO course_ks VALUES(25, 12);
INSERT INTO course_ks VALUES(47, 46);
INSERT INTO course_ks VALUES(39, 6);
INSERT INTO course_ks VALUES(25, 37);
INSERT INTO course_ks VALUES(5, 27);
INSERT INTO course_ks VALUES(24, 20);
INSERT INTO course_ks VALUES(48, 33);
INSERT INTO course_ks VALUES(37, 17);
INSERT INTO course_ks VALUES(15, 34);
INSERT INTO course_ks VALUES(14, 34);
INSERT INTO course_ks VALUES(39, 40);
INSERT INTO course_ks VALUES(31, 38);
INSERT INTO course_ks VALUES(49, 44);
INSERT INTO course_ks VALUES(5, 26);
INSERT INTO course_ks VALUES(22, 46);
INSERT INTO course_ks VALUES(3, 34);
INSERT INTO course_ks VALUES(10, 39);
INSERT INTO course_ks VALUES(44, 34);
INSERT INTO course_ks VALUES(5, 23);
INSERT INTO course_ks VALUES(14, 6);
INSERT INTO course_ks VALUES(6, 7);
INSERT INTO course_ks VALUES(4, 48);
INSERT INTO course_ks VALUES(28, 17);
INSERT INTO course_ks VALUES(5, 40);
INSERT INTO course_ks VALUES(34, 36);
INSERT INTO course_ks VALUES(48, 42);
INSERT INTO course_ks VALUES(26, 49);
INSERT INTO course_ks VALUES(46, 1);
INSERT INTO course_ks VALUES(50, 21);
INSERT INTO course_ks VALUES(9, 34);
INSERT INTO course_ks VALUES(48, 3);
INSERT INTO course_ks VALUES(4, 46);
INSERT INTO course_ks VALUES(41, 19);
INSERT INTO course_ks VALUES(43, 19);
INSERT INTO course_ks VALUES(40, 43);
INSERT INTO course_ks VALUES(29, 23);
INSERT INTO course_ks VALUES(43, 37);
INSERT INTO course_ks VALUES(7, 30);
INSERT INTO course_ks VALUES(31, 46);
INSERT INTO course_ks VALUES(30, 11);
INSERT INTO course_ks VALUES(27, 2);
INSERT INTO course_ks VALUES(39, 43);
INSERT INTO course_ks VALUES(30, 13);
INSERT INTO course_ks VALUES(13, 18);
INSERT INTO course_ks VALUES(30, 22);
INSERT INTO course_ks VALUES(8, 14);

CREATE TABLE person_ks (
person_id INT NOT NULL CONSTRAINT pks_person_fkey REFERENCES person (person_id),
ks_code INT NOT NULL CONSTRAINT pks_ks_fkey REFERENCES knowledge_skill (ks_code),
PRIMARY KEY (person_id, ks_code)
);

INSERT INTO person_ks VALUES(31, 43);
INSERT INTO person_ks VALUES(23, 43);
INSERT INTO person_ks VALUES(25, 49);
INSERT INTO person_ks VALUES(38, 27);
INSERT INTO person_ks VALUES(36, 9);
INSERT INTO person_ks VALUES(7, 18);
INSERT INTO person_ks VALUES(25, 37);
INSERT INTO person_ks VALUES(2, 49);
INSERT INTO person_ks VALUES(50, 13);
INSERT INTO person_ks VALUES(18, 50);
INSERT INTO person_ks VALUES(32, 10);
INSERT INTO person_ks VALUES(2, 24);
INSERT INTO person_ks VALUES(11, 49);
INSERT INTO person_ks VALUES(48, 5);
INSERT INTO person_ks VALUES(4, 41);
INSERT INTO person_ks VALUES(35, 10);
INSERT INTO person_ks VALUES(23, 50);
INSERT INTO person_ks VALUES(9, 27);
INSERT INTO person_ks VALUES(30, 42);
INSERT INTO person_ks VALUES(5, 15);
INSERT INTO person_ks VALUES(18, 6);
INSERT INTO person_ks VALUES(12, 2);
INSERT INTO person_ks VALUES(40, 46);
INSERT INTO person_ks VALUES(5, 32);
INSERT INTO person_ks VALUES(35, 48);
INSERT INTO person_ks VALUES(47, 29);
INSERT INTO person_ks VALUES(5, 20);
INSERT INTO person_ks VALUES(8, 14);
INSERT INTO person_ks VALUES(41, 50);
INSERT INTO person_ks VALUES(5, 6);
INSERT INTO person_ks VALUES(8, 28);
INSERT INTO person_ks VALUES(26, 32);
INSERT INTO person_ks VALUES(47, 41);
INSERT INTO person_ks VALUES(35, 2);
INSERT INTO person_ks VALUES(27, 14);
INSERT INTO person_ks VALUES(14, 41);
INSERT INTO person_ks VALUES(38, 50);
INSERT INTO person_ks VALUES(4, 20);
INSERT INTO person_ks VALUES(33, 7);
INSERT INTO person_ks VALUES(21, 37);
INSERT INTO person_ks VALUES(3, 43);
INSERT INTO person_ks VALUES(30, 14);
INSERT INTO person_ks VALUES(5, 46);
INSERT INTO person_ks VALUES(36, 1);
INSERT INTO person_ks VALUES(17, 1);
INSERT INTO person_ks VALUES(26, 43);
INSERT INTO person_ks VALUES(16, 37);
INSERT INTO person_ks VALUES(45, 32);
INSERT INTO person_ks VALUES(17, 23);
INSERT INTO person_ks VALUES(7, 31);

CREATE TABLE jp_ks (
job_code INT NOT NULL CONSTRAINT jpks_jp_fkey REFERENCES job_profile (job_code),
ks_code INT NOT NULL CONSTRAINT jpks_ks_fkey REFERENCES knowledge_skill (ks_code),
PRIMARY KEY (job_code, ks_code)
);

INSERT INTO jp_ks VALUES(39, 4);
INSERT INTO jp_ks VALUES(47, 32);
INSERT INTO jp_ks VALUES(34, 24);
INSERT INTO jp_ks VALUES(10, 43);
INSERT INTO jp_ks VALUES(10, 23);
INSERT INTO jp_ks VALUES(8, 42);
INSERT INTO jp_ks VALUES(12, 16);
INSERT INTO jp_ks VALUES(45, 23);
INSERT INTO jp_ks VALUES(30, 46);
INSERT INTO jp_ks VALUES(16, 18);
INSERT INTO jp_ks VALUES(29, 24);
INSERT INTO jp_ks VALUES(12, 18);
INSERT INTO jp_ks VALUES(28, 24);
INSERT INTO jp_ks VALUES(31, 14);
INSERT INTO jp_ks VALUES(6, 45);
INSERT INTO jp_ks VALUES(40, 1);
INSERT INTO jp_ks VALUES(5, 30);
INSERT INTO jp_ks VALUES(13, 4);
INSERT INTO jp_ks VALUES(49, 19);
INSERT INTO jp_ks VALUES(26, 7);
INSERT INTO jp_ks VALUES(12, 32);
INSERT INTO jp_ks VALUES(33, 41);
INSERT INTO jp_ks VALUES(19, 11);
INSERT INTO jp_ks VALUES(41, 1);
INSERT INTO jp_ks VALUES(46, 9);
INSERT INTO jp_ks VALUES(38, 29);
INSERT INTO jp_ks VALUES(20, 22);
INSERT INTO jp_ks VALUES(41, 21);
INSERT INTO jp_ks VALUES(43, 30);
INSERT INTO jp_ks VALUES(32, 47);
INSERT INTO jp_ks VALUES(36, 11);
INSERT INTO jp_ks VALUES(21, 6);
INSERT INTO jp_ks VALUES(10, 24);
INSERT INTO jp_ks VALUES(38, 48);
INSERT INTO jp_ks VALUES(1, 43);
INSERT INTO jp_ks VALUES(20, 23);
INSERT INTO jp_ks VALUES(31, 3);
INSERT INTO jp_ks VALUES(48, 9);
INSERT INTO jp_ks VALUES(9, 15);
INSERT INTO jp_ks VALUES(41, 29);
INSERT INTO jp_ks VALUES(15, 30);
INSERT INTO jp_ks VALUES(40, 14);
INSERT INTO jp_ks VALUES(30, 12);
INSERT INTO jp_ks VALUES(22, 19);
INSERT INTO jp_ks VALUES(1, 38);
INSERT INTO jp_ks VALUES(35, 26);
INSERT INTO jp_ks VALUES(3, 45);
INSERT INTO jp_ks VALUES(48, 4);
INSERT INTO jp_ks VALUES(10, 25);
INSERT INTO jp_ks VALUES(14, 10);

CREATE TABLE project_job (
project_id INT NOT NULL CONSTRAINT pj_project_fkey REFERENCES project (project_id),
job_id INT NOT NULL CONSTRAINT pj_job_fkey REFERENCES job (job_id),
PRIMARY KEY (project_id, job_id)
);

INSERT INTO project_job VALUES(20, 4);
INSERT INTO project_job VALUES(35, 22);
INSERT INTO project_job VALUES(14, 28);
INSERT INTO project_job VALUES(8, 31);
INSERT INTO project_job VALUES(38, 14);
INSERT INTO project_job VALUES(41, 36);
INSERT INTO project_job VALUES(14, 47);
INSERT INTO project_job VALUES(36, 6);
INSERT INTO project_job VALUES(21, 23);
INSERT INTO project_job VALUES(49, 16);
INSERT INTO project_job VALUES(26, 9);
INSERT INTO project_job VALUES(37, 11);
INSERT INTO project_job VALUES(1, 30);
INSERT INTO project_job VALUES(19, 8);
INSERT INTO project_job VALUES(9, 12);
INSERT INTO project_job VALUES(9, 32);
INSERT INTO project_job VALUES(7, 37);
INSERT INTO project_job VALUES(50, 32);
INSERT INTO project_job VALUES(40, 3);
INSERT INTO project_job VALUES(15, 16);
INSERT INTO project_job VALUES(6, 6);
INSERT INTO project_job VALUES(21, 5);
INSERT INTO project_job VALUES(34, 31);
INSERT INTO project_job VALUES(14, 1);
INSERT INTO project_job VALUES(40, 31);
INSERT INTO project_job VALUES(30, 39);
INSERT INTO project_job VALUES(26, 46);
INSERT INTO project_job VALUES(17, 5);
INSERT INTO project_job VALUES(43, 47);
INSERT INTO project_job VALUES(28, 34);
INSERT INTO project_job VALUES(40, 29);
INSERT INTO project_job VALUES(29, 27);
INSERT INTO project_job VALUES(43, 14);
INSERT INTO project_job VALUES(31, 18);
INSERT INTO project_job VALUES(6, 45);
INSERT INTO project_job VALUES(1, 8);
INSERT INTO project_job VALUES(50, 33);
INSERT INTO project_job VALUES(28, 37);
INSERT INTO project_job VALUES(46, 36);
INSERT INTO project_job VALUES(45, 19);
INSERT INTO project_job VALUES(14, 7);
INSERT INTO project_job VALUES(25, 23);
INSERT INTO project_job VALUES(46, 28);
INSERT INTO project_job VALUES(17, 39);
INSERT INTO project_job VALUES(28, 41);
INSERT INTO project_job VALUES(43, 15);
INSERT INTO project_job VALUES(11, 29);
INSERT INTO project_job VALUES(33, 44);
INSERT INTO project_job VALUES(26, 44);
INSERT INTO project_job VALUES(26, 37);

CREATE TABLE works (
person_id INT NOT NULL CONSTRAINT works_person_fkey REFERENCES person (person_id),
job_id INT NOT NULL CONSTRAINT works_job_fkey REFERENCES job (job_id),
start_date DATE NOT NULL,
end_date DATE,
PRIMARY KEY (person_id, job_id, start_date)
);

INSERT INTO works VALUES(49, 17, TO_DATE('12301899','MMDDYYYY') + 40619, NULL);
INSERT INTO works VALUES(4, 14, TO_DATE('12301899','MMDDYYYY') + 40668, TO_DATE('12301899','MMDDYYYY') + 12301930);
INSERT INTO works VALUES(27, 7, TO_DATE('12301899','MMDDYYYY') + 40412, NULL);
INSERT INTO works VALUES(2, 42, TO_DATE('12301899','MMDDYYYY') + 42255, TO_DATE('12301899','MMDDYYYY') + 12302034);
INSERT INTO works VALUES(15, 14, TO_DATE('12301899','MMDDYYYY') + 40628, NULL);
INSERT INTO works VALUES(18, 6, TO_DATE('12301899','MMDDYYYY') + 41668, NULL);
INSERT INTO works VALUES(33, 26, TO_DATE('12301899','MMDDYYYY') + 40782, TO_DATE('12301899','MMDDYYYY') + 12301924);
INSERT INTO works VALUES(38, 5, TO_DATE('12301899','MMDDYYYY') + 40459, TO_DATE('12301899','MMDDYYYY') + 12301937);
INSERT INTO works VALUES(44, 13, TO_DATE('12301899','MMDDYYYY') + 42094, TO_DATE('12301899','MMDDYYYY') + 12302013);
INSERT INTO works VALUES(17, 9, TO_DATE('12301899','MMDDYYYY') + 40882, TO_DATE('12301899','MMDDYYYY') + 12301988);
INSERT INTO works VALUES(44, 45, TO_DATE('12301899','MMDDYYYY') + 42058, NULL);
INSERT INTO works VALUES(27, 33, TO_DATE('12301899','MMDDYYYY') + 41431, TO_DATE('12301899','MMDDYYYY') + 12302033);
INSERT INTO works VALUES(22, 17, TO_DATE('12301899','MMDDYYYY') + 40994, TO_DATE('12301899','MMDDYYYY') + 12302000);
INSERT INTO works VALUES(8, 4, TO_DATE('12301899','MMDDYYYY') + 40213, TO_DATE('12301899','MMDDYYYY') + 12301941);
INSERT INTO works VALUES(1, 32, TO_DATE('12301899','MMDDYYYY') + 41355, TO_DATE('12301899','MMDDYYYY') + 12301977);
INSERT INTO works VALUES(1, 36, TO_DATE('12301899','MMDDYYYY') + 41942, TO_DATE('12301899','MMDDYYYY') + 12302000);
INSERT INTO works VALUES(13, 42, TO_DATE('12301899','MMDDYYYY') + 40512, NULL);
INSERT INTO works VALUES(19, 34, TO_DATE('12301899','MMDDYYYY') + 40250, NULL);
INSERT INTO works VALUES(15, 1, TO_DATE('12301899','MMDDYYYY') + 40808, NULL);
INSERT INTO works VALUES(35, 13, TO_DATE('12301899','MMDDYYYY') + 41054, TO_DATE('12301899','MMDDYYYY') + 12302008);
INSERT INTO works VALUES(2, 37, TO_DATE('12301899','MMDDYYYY') + 40187, TO_DATE('12301899','MMDDYYYY') + 12301997);
INSERT INTO works VALUES(39, 26, TO_DATE('12301899','MMDDYYYY') + 40599, TO_DATE('12301899','MMDDYYYY') + 12301973);
INSERT INTO works VALUES(44, 15, TO_DATE('12301899','MMDDYYYY') + 41904, TO_DATE('12301899','MMDDYYYY') + 12301952);
INSERT INTO works VALUES(9, 47, TO_DATE('12301899','MMDDYYYY') + 40112, NULL);
INSERT INTO works VALUES(12, 20, TO_DATE('12301899','MMDDYYYY') + 40606, TO_DATE('12301899','MMDDYYYY') + 12301950);
INSERT INTO works VALUES(35, 24, TO_DATE('12301899','MMDDYYYY') + 42208, NULL);
INSERT INTO works VALUES(5, 1, TO_DATE('12301899','MMDDYYYY') + 41352, TO_DATE('12301899','MMDDYYYY') + 12301938);
INSERT INTO works VALUES(1, 10, TO_DATE('12301899','MMDDYYYY') + 41656, TO_DATE('12301899','MMDDYYYY') + 12301963);
INSERT INTO works VALUES(9, 49, TO_DATE('12301899','MMDDYYYY') + 40285, NULL);
INSERT INTO works VALUES(6, 9, TO_DATE('12301899','MMDDYYYY') + 41247, TO_DATE('12301899','MMDDYYYY') + 12302011);
INSERT INTO works VALUES(3, 45, TO_DATE('12301899','MMDDYYYY') + 41342, TO_DATE('12301899','MMDDYYYY') + 12302040);
INSERT INTO works VALUES(33, 42, TO_DATE('12301899','MMDDYYYY') + 40367, TO_DATE('12301899','MMDDYYYY') + 12302025);
INSERT INTO works VALUES(46, 36, TO_DATE('12301899','MMDDYYYY') + 41336, TO_DATE('12301899','MMDDYYYY') + 12301944);
INSERT INTO works VALUES(30, 49, TO_DATE('12301899','MMDDYYYY') + 41882, TO_DATE('12301899','MMDDYYYY') + 12301957);
INSERT INTO works VALUES(46, 46, TO_DATE('12301899','MMDDYYYY') + 41526, TO_DATE('12301899','MMDDYYYY') + 12301998);
INSERT INTO works VALUES(27, 32, TO_DATE('12301899','MMDDYYYY') + 40643, TO_DATE('12301899','MMDDYYYY') + 12302021);
INSERT INTO works VALUES(14, 50, TO_DATE('12301899','MMDDYYYY') + 40393, TO_DATE('12301899','MMDDYYYY') + 12301938);
INSERT INTO works VALUES(40, 22, TO_DATE('12301899','MMDDYYYY') + 41201, NULL);
INSERT INTO works VALUES(36, 18, TO_DATE('12301899','MMDDYYYY') + 41730, TO_DATE('12301899','MMDDYYYY') + 12302020);
INSERT INTO works VALUES(12, 23, TO_DATE('12301899','MMDDYYYY') + 40927, NULL);
INSERT INTO works VALUES(21, 2, TO_DATE('12301899','MMDDYYYY') + 41247, TO_DATE('12301899','MMDDYYYY') + 12301951);
INSERT INTO works VALUES(12, 42, TO_DATE('12301899','MMDDYYYY') + 41551, TO_DATE('12301899','MMDDYYYY') + 12301926);
INSERT INTO works VALUES(7, 11, TO_DATE('12301899','MMDDYYYY') + 40439, TO_DATE('12301899','MMDDYYYY') + 12301937);
INSERT INTO works VALUES(21, 41, TO_DATE('12301899','MMDDYYYY') + 40929, NULL);
INSERT INTO works VALUES(16, 32, TO_DATE('12301899','MMDDYYYY') + 41430, TO_DATE('12301899','MMDDYYYY') + 12302039);
INSERT INTO works VALUES(11, 2, TO_DATE('12301899','MMDDYYYY') + 40858, NULL);
INSERT INTO works VALUES(49, 47, TO_DATE('12301899','MMDDYYYY') + 41758, TO_DATE('12301899','MMDDYYYY') + 12301993);
INSERT INTO works VALUES(42, 19, TO_DATE('12301899','MMDDYYYY') + 40713, TO_DATE('12301899','MMDDYYYY') + 12301999);
INSERT INTO works VALUES(44, 12, TO_DATE('12301899','MMDDYYYY') + 41427, NULL);
INSERT INTO works VALUES(20, 31, TO_DATE('12301899','MMDDYYYY') + 40721, TO_DATE('12301899','MMDDYYYY') + 12301981);

CREATE TABLE phone_number (
person_id INT NOT NULL CONSTRAINT pn_person_fkey REFERENCES person (person_id),
phone_number NUMBER(10,0) NOT NULL,
type VARCHAR(50) CHECK(type IN ('mobile','home','work','other')),
PRIMARY KEY (person_id, phone_number)
);

INSERT INTO phone_number VALUES (36, 8597442240, 'home');
INSERT INTO phone_number VALUES (29, 7015877559, 'mobile');
INSERT INTO phone_number VALUES (49, 6788542724, 'other');
INSERT INTO phone_number VALUES (41, 2473809178, 'other');
INSERT INTO phone_number VALUES (27, 3314331906, 'other');
INSERT INTO phone_number VALUES (24, 7734220447, 'work');
INSERT INTO phone_number VALUES (45, 8775603474, 'mobile');
INSERT INTO phone_number VALUES (37, 5542734658, 'other');
INSERT INTO phone_number VALUES (33, 3409182326, 'other');
INSERT INTO phone_number VALUES (29, 4454615927, 'work');
INSERT INTO phone_number VALUES (37, 8207881288, 'mobile');
INSERT INTO phone_number VALUES (44, 2068451958, 'work');
INSERT INTO phone_number VALUES (36, 7629338328, 'work');
INSERT INTO phone_number VALUES (33, 5419887592, 'work');
INSERT INTO phone_number VALUES (31, 2569748678, 'mobile');
INSERT INTO phone_number VALUES (31, 6393114961, 'other');
INSERT INTO phone_number VALUES (12, 6725076576, 'other');
INSERT INTO phone_number VALUES (21, 7759771359, 'work');
INSERT INTO phone_number VALUES (35, 2093651661, 'mobile');
INSERT INTO phone_number VALUES (40, 5885591276, 'other');
INSERT INTO phone_number VALUES (40, 4486125363, 'mobile');
INSERT INTO phone_number VALUES (23, 2164604333, 'other');
INSERT INTO phone_number VALUES (39, 7549582933, 'other');
INSERT INTO phone_number VALUES (25, 7712866192, 'mobile');
INSERT INTO phone_number VALUES (37, 3508177094, 'other');
INSERT INTO phone_number VALUES (33, 3112654791, 'other');
INSERT INTO phone_number VALUES (4, 2046969582, 'home');
INSERT INTO phone_number VALUES (47, 3515759622, 'mobile');
INSERT INTO phone_number VALUES (33, 6246737176, 'mobile');
INSERT INTO phone_number VALUES (29, 2568937018, 'work');
INSERT INTO phone_number VALUES (29, 8883319110, 'other');
INSERT INTO phone_number VALUES (8, 5487799781, 'home');
INSERT INTO phone_number VALUES (49, 8713653100, 'work');
INSERT INTO phone_number VALUES (9, 4649354766, 'mobile');
INSERT INTO phone_number VALUES (35, 5133967500, 'work');
INSERT INTO phone_number VALUES (5, 3814097355, 'work');
INSERT INTO phone_number VALUES (5, 2433667440, 'work');
INSERT INTO phone_number VALUES (35, 3254017073, 'home');
INSERT INTO phone_number VALUES (2, 8129273092, 'work');
INSERT INTO phone_number VALUES (42, 2115063907, 'home');
INSERT INTO phone_number VALUES (33, 7678338533, 'mobile');
INSERT INTO phone_number VALUES (32, 2019570194, 'mobile');
INSERT INTO phone_number VALUES (4, 2417599996, 'work');
INSERT INTO phone_number VALUES (14, 8505818274, 'home');
INSERT INTO phone_number VALUES (19, 5228672576, 'home');
INSERT INTO phone_number VALUES (18, 2058389397, 'work');
INSERT INTO phone_number VALUES (25, 2246434822, 'other');
INSERT INTO phone_number VALUES (19, 5402124699, 'home');
INSERT INTO phone_number VALUES (48, 7803810911, 'mobile');
