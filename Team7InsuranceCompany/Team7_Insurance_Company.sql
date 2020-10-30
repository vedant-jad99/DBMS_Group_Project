CREATE DATABASE IF NOT EXISTS T7_Insurance_Company;
USE T7_Insurance_Company;
-- Table 1
CREATE TABLE IF NOT EXISTS T7_CUSTOMER
(
	T7_CUST_Id VARCHAR(15) NOT NULL ,
	T7_CUST_FName VARCHAR(15) NOT NULL ,
	T7_CUST_LName VARCHAR(15) NOT NULL ,
	T7_CUST_DOB DATE NOT NULL ,
	T7_CUST_Gender CHAR(2) NOT NULL ,
	T7_CUST_Address VARCHAR(30) NOT NULL ,
	T7_CUST_MOB_Number BIGINT NOT NULL ,
	T7_CUST_Email VARCHAR(25) NULL ,
	T7_CUST_Passport_Number VARCHAR(20) NULL ,
	T7_CUST_Marital_Status CHAR(12) NULL ,
	T7_CUST_PPS_Number INTEGER NULL ,
	CONSTRAINT XPKT7_CUSTOMER PRIMARY KEY (T7_CUST_Id)
);

INSERT INTO T7_CUSTOMER VALUES (7001, 'Aakash', 'Tiwari', 20000906, 'M','Lucknow',6969696969,'18bcs001@iiitdwd.ac.in', 9104658395, 'Single', 100 );
INSERT INTO T7_CUSTOMER VALUES (7002, 'Yashdeep ', ' Shetty ',19991204 , 'F','Mumbai ',9696969696 ,'18bcs092@iiitdwd.ac.in ', 7583947392, 'Married ', 10 );
INSERT INTO T7_CUSTOMER VALUES (7003, 'Rutvik  ', 'Yamkanmaradi  ',19990723 ,'M','Banglore ',8007568394 ,'18bcs082@iitdwd.ac.in ', 7496758364,'Divorced', 32);
INSERT INTO T7_CUSTOMER VALUES (7004, 'Rutvik  ', 'Yamkanmaradi  ',19990723 ,'M','Banglore ',8007568394 ,'18bcs082@iitdwd.ac.in ', 7496758364,'Divorced', 32);
INSERT INTO T7_CUSTOMER VALUES (7005, 'Rutvik  ', 'Yamkanmaradi  ',19990723 ,'M','Banglore ',8007568394 ,'18bcs082@iitdwd.ac.in ', 7496758364,'Divorced', 32);
INSERT INTO T7_CUSTOMER VALUES (7006, 'Rutvik  ', 'Yamkanmaradi  ',19990723 ,'M','Banglore ',8007568394 ,'18bcs082@iitdwd.ac.in ', 7496758364,'Divorced', 32);
INSERT INTO T7_CUSTOMER VALUES (7007, 'Rutvik  ', 'Yamkanmaradi  ',19990723 ,'M','Banglore ',8007568394 ,'18bcs082@iitdwd.ac.in ', 7496758364,'Divorced', 32);
INSERT INTO T7_CUSTOMER VALUES (7008, 'Rutvik  ', 'Yamkanmaradi  ',19990723 ,'M','Banglore ',8007568394 ,'18bcs082@iitdwd.ac.in ', 7496758364,'Divorced', 32);
INSERT INTO T7_CUSTOMER VALUES (7009, 'Rutvik  ', 'Yamkanmaradi  ',19990723 ,'M','Banglore ',8007568394 ,'18bcs082@iitdwd.ac.in ', 7496758364,'Divorced', 32);
INSERT INTO T7_CUSTOMER VALUES (7010, 'Rutvik  ', 'Yamkanmaradi  ',19990723 ,'M','Banglore ',8007568394 ,'18bcs082@iitdwd.ac.in ', 7496758364,'Divorced', 32);
INSERT INTO T7_CUSTOMER VALUES (7011, 'Rutvik  ', 'Yamkanmaradi  ',19990723 ,'M','Banglore ',8007568394 ,'18bcs082@iitdwd.ac.in ', 7496758364,'Divorced', 32);
INSERT INTO T7_CUSTOMER VALUES (7012, 'Rutvik  ', 'Yamkanmaradi  ',19990723 ,'M','Banglore ',8007568394 ,'18bcs082@iitdwd.ac.in ', 7496758364,'Divorced', 32);
INSERT INTO T7_CUSTOMER VALUES (7013, 'Rutvik  ', 'Yamkanmaradi  ',19990723 ,'M','Banglore ',8007568394 ,'18bcs082@iitdwd.ac.in ', 7496758364,'Divorced', 32);
INSERT INTO T7_CUSTOMER VALUES (7014, 'Rutvik  ', 'Yamkanmaradi  ',19990723 ,'M','Banglore ',8007568394 ,'18bcs082@iitdwd.ac.in ', 7496758364,'Divorced', 32);
INSERT INTO T7_CUSTOMER VALUES (7015, 'Rutvik  ', 'Yamkanmaradi  ',19990723 ,'M','Banglore ',8007568394 ,'18bcs082@iitdwd.ac.in ', 7496758364,'Divorced', 32);
INSERT INTO T7_CUSTOMER VALUES (7016, 'Rutvik  ', 'Yamkanmaradi  ',19990723 ,'M','Banglore ',8007568394 ,'18bcs082@iitdwd.ac.in ', 7496758364,'Divorced', 32);
INSERT INTO T7_CUSTOMER VALUES (7017, 'Rutvik  ', 'Yamkanmaradi  ',19990723 ,'M','Banglore ',8007568394 ,'18bcs082@iitdwd.ac.in ', 7496758364,'Divorced', 32);
INSERT INTO T7_CUSTOMER VALUES (7018, 'Rutvik  ', 'Yamkanmaradi  ',19990723 ,'M','Banglore ',8007568394 ,'18bcs082@iitdwd.ac.in ', 7496758364,'Divorced', 32);
INSERT INTO T7_CUSTOMER VALUES (7019, 'Rutvik  ', 'Yamkanmaradi  ',19990723 ,'M','Banglore ',8007568394 ,'18bcs082@iitdwd.ac.in ', 7496758364,'Divorced', 32);
INSERT INTO T7_CUSTOMER VALUES (7020, 'Rutvik  ', 'Yamkanmaradi  ',19990723 ,'M','Banglore ',8007568394 ,'18bcs082@iitdwd.ac.in ', 7496758364,'Divorced', 32);
#insert into T7_CUSTOMER values (, '  ', '  ', , ' ','  ', ,' @gmail.com', , ' ',  ); <- Dont delete this

-- Table 2
CREATE TABLE IF NOT EXISTS T7_APPLICATION
(
	T7_Application_Id VARCHAR(20) NOT NULL ,
	T7_Vehicle_Id VARCHAR(20) NOT NULL ,
	T7_Application_Status CHAR(8) NOT NULL ,
	T7_Coverage VARCHAR(50) NOT NULL ,
	T7_Cust_Id VARCHAR(20) NOT NULL ,
	CONSTRAINT XPKAPPLICATION_2 PRIMARY KEY (T7_Application_Id, T7_Cust_Id),
	CONSTRAINT R_93 FOREIGN KEY (T7_Cust_Id) REFERENCES T7_CUSTOMER
	(T7_Cust_Id)
);
CREATE UNIQUE INDEX XPKAPPLICATION_2 ON T7_APPLICATION
(T7_Application_Id ASC, T7_Cust_Id ASC);

-- INSERT VALUES FORMAT
-- ('70001.....70020', '71001....71020', 'ACCEPTED|PENDING|REJECTED', 'Liability Coverage|Uninsured And Underinsured Motorist Coverage|Comprehensive Coverage|Collision Coverage|Medical Payments Coverage|Personal Injury Protection', '7001..7020')
INSERT INTO T7_APPLICATION VALUES
	('70001', '71001', 'PENDING', 'Liability Coverage', '7005'),
    ('70002', '71002', 'ACCEPTED', 'Uninsured And Underinsured Motorist Coverage', '7008'),
    ('70003', '71003', 'PENDING', 'Comprehensive Coverage', '7003'),
    ('70004', '71004', 'REJECTED', 'Collision Coverage', '7001'),
    ('70005', '71005', 'ACCEPTED', 'Medical Payments Coverage', '7004'),
    ('70006', '71006', 'PENDING', 'Personal Injury Protection', '7006'),
    ('70007', '71007', 'PENDING', 'Uninsured And Underinsured Motorist Coverage', '7007'),
    ('70008', '71008', 'ACCEPTED', 'Liability Coverage', '7002'),
    ('70009', '71009', 'REJECTED', 'Medical Payments Coverage', '7009'),
    ('70010', '71010', 'PENDING', 'Medical Payments Coverage', '7020'),
    ('70011', '71011', 'PENDING', 'Liability Coverage', '7010'),
    ('70012', '71012', 'REJECTED', 'Comprehensive Coverage', '7018'),
    ('70013', '71013', 'ACCEPTED', 'Uninsured And Underinsured Motorist Coverage', '7019'),
    ('70014', '71014', 'ACCEPTED', 'Medical Payments Coverage', '7012'),
    ('70015', '71015', 'REJECTED', 'Collision Coverage', '7011'),
    ('70016', '71016', 'ACCEPTED', 'Liability Coverage', '7016'),
    ('70017', '71017', 'REJECTED', 'Personal Injury Protection', '7013'),
    ('70018', '71018', 'PENDING', 'Personal Injury Protection', '7015'),
    ('70019', '71019', 'ACCEPTED', 'Comprehensive Coverage', '7014'),
    ('70020', '71020', 'REJECTED', 'Collision Coverage', '7017');
-- Table 3
CREATE TABLE IF NOT EXISTS T7_QUOTE
(
	T7_Quote_Id VARCHAR(20) NOT NULL ,
	T7_Issue_Date DATE NOT NULL ,
	T7_Valid_From_Date DATE NOT NULL ,
	T7_Valid_Till_Date DATE NOT NULL ,
	T7_Description VARCHAR(100) NULL ,
	T7_Product_Id VARCHAR(20) NOT NULL ,
	T7_Coverage_Level VARCHAR(20) NOT NULL ,
	T7_Application_Id VARCHAR(20) NOT NULL ,
	T7_Cust_Id VARCHAR(20) NOT NULL ,
	CONSTRAINT XPKQUOTE_3 PRIMARY KEY
	(T7_Quote_Id, T7_Application_Id, T7_Cust_Id),
	CONSTRAINT R_94 FOREIGN KEY (T7_Application_Id, T7_Cust_Id) REFERENCES
	T7_APPLICATION (T7_Application_Id, T7_Cust_Id)
);
CREATE UNIQUE INDEX XPKQUOTE_3 ON T7_QUOTE
(T7_Quote_Id ASC, T7_Application_Id ASC, T7_Cust_Id ASC);

-- INSERT INTO FORMAT
-- ('72001....72020', 'yyyy-mm-dd', 'yyyy-mm-dd', 'yyyy-mm-dd', 'Product description', 'T7(four letters)(three digits)', 'total premium in rupees', '71001...71020', '7001...7020')
INSERT INTO T7_QUOTE VALUES
	('72001', '2020-02-08', '2020-02-08', '2025-02-08',  'Honda Activa 6G standard', 'T7KSHD345', '5000', '70001', '7005'),
    ('72002', '2017-04-01', '2017-04-01', '2013-04-01',  'Honda Activa 125', 'T7EION870', '3000', '70002', '7008'),
    ('72003', '2020-06-08', '2020-06-08', '2026-06-08',  'Maruti Suzuki S-Presso LXI', 'T7BRUH420', '9000', '70003', '7003'),
    ('72004', '2014-09-29', '2014-09-29', '2021-09-29',  'Honda Activa 6G standard', 'T7LISR699', '3000', '70004', '7001'),
    ('72005', '2019-07-04', '2019-07-04', '2024-07-04',  'Volkswagen T-Roc', 'T7LSHI374', '9000', '70005', '7004'),
    ('72006', '2020-12-09', '2020-12-09', '2025-12-09',  'Mahindra XUV500 W5', 'T7LSEI236', '7000', '70006', '7006'),
    ('72007', '2020-10-23', '2020-10-23', '2025-10-23',  'Skoda Rapid', 'T7KENS902', '9000', '70007', '7007'),
    ('72008', '2019-05-29', '2019-05-29', '2024-05-29',  'Volvo XC90 2.0 D5 Momentum AT 4WD', 'T7EHIV234', '5000', '70008', '7002'),
    ('72009', '2016-11-06', '2016-11-06', '2021-11-06',  'Toyota Urban Cruiser', 'T7QEID230', '9000', '70009', '7009'),
    ('72010', '2020-09-08', '2020-09-08', '2026-09-08',  'Honda Activa 6G standard', 'T7QEWN382', '6000', '70010', '7020'),
    ('72011', '2020-07-10', '2020-07-10', '2025-07-10',  'Elife Air 20 T Folding Bikes/Folding Cycle', 'T7TYST969', '4000', '70011', '7010'),
    ('72012', '2018-12-10', '2018-12-10', '2023-12-10',  'Husqvarna Svartpilen 250', 'T7BSDK133', '9000', '70012', '7018'),
    ('72013', '2017-01-02', '2017-01-02', '2022-01-02',  'TVS XL100', 'T7SALE387', '2000', '70013', '7019'),
    ('72014', '2018-11-10', '2018-11-10', '2023-11-10',  'Bianchi C-sport Cross 29 T Hybrid Cycle', 'T7CHOU392', '6000', '70014', '7012'),
    ('72015', '2019-02-09', '2019-02-09', '2025-02-09', 'Royal Enfield Classic 350', 'T7LEOW783', '9000', '70015', '7011'),
    ('72016', '2018-10-06', '2018-10-06', '2024-10-06', 'Honda Activa 125', 'T7KJEI280', '3000', '70016', '7016'),
    ('72017', '2018-04-28', '2018-04-28', '2023-04-28',  'Bajaj Pulsar 150', 'T7FCUK038', '7000', '70017', '7013'),
    ('72018', '2020-06-11', '2020-06-11', '2025-06-11',  'Suzuki Access 125', 'T7JAIM021', '5000', '70018', '7015'),
    ('72019', '2017-03-03', '2017-03-03', '2022-03-03',  'TVS NTORQ', 'T7BOLW938', '5000', '70019', '7014'),
    ('72020', '2016-05-04', '2016-05-04', '2021-05-04',  'TVS Jupiter', 'T7DUMA327', '5000', '70020', '7017');
