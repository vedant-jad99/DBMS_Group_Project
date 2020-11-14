CREATE DATABASE IF NOT EXISTS Insurance_Company;
USE Insurance_Company;
-- Table 1
CREATE TABLE IF NOT EXISTS T5_INCIDENT
(
Incident_Id VARCHAR(20) NOT NULL ,
Incident_Type VARCHAR(30) NULL ,
Incident_Date DATE NOT NULL ,
Description VARCHAR(100) NULL ,
CONSTRAINT XPKINCIDENT_17 PRIMARY KEY (Incident_Id)
);
CREATE UNIQUE INDEX XPKINCIDENT_17 ON T5_INCIDENT (Incident_Id ASC);
-- Table 2
-- cust_id = 50201...50220
CREATE TABLE IF NOT EXISTS T5_CUSTOMER
(
CUST_Id VARCHAR(15) NOT NULL ,
CUST_FName VARCHAR(15) NOT NULL ,
CUST_LName VARCHAR(15) NOT NULL ,
CUST_DOB DATE NOT NULL ,
CUST_Gender CHAR(2) NOT NULL ,
CUST_Address VARCHAR(35) NOT NULL ,
CUST_MOB_Number BIGINT NOT NULL ,
CUST_Email VARCHAR(25) NULL ,
CUST_Passport_Number VARCHAR(20) NULL ,
CUST_Marital_Status CHAR(12) NULL ,
CUST_PPS_Number INTEGER NULL ,
CONSTRAINT XPKCUSTOMER PRIMARY KEY (CUST_Id)
);
CREATE UNIQUE INDEX XPKCUSTOMER_1 ON T5_CUSTOMER (Cust_Id ASC);
INSERT INTO T5_CUSTOMER VALUES (50201, 'Aakash', 'Tiwari', 20000906, 'M','Lucknow',6969696969,'18bcs001@iiitdwd.ac.in', 9104658395, 'Single', 100 );
INSERT INTO T5_CUSTOMER VALUES (50202, 'Yashdeep ', ' Shetty ',19991204 , 'F','Mumbai ',9696969696 ,'18bcs092@iiitdwd.ac.in ', 7583947392, 'Married ', 10 );
INSERT INTO T5_CUSTOMER VALUES (50203, 'Rutvik  ', 'Yamkanmaradi  ',19990723 ,'M','Banglore ',8007568394 ,'18bcs082@iitdwd.ac.in ', 7496758364,'Divorced', 32);
INSERT INTO T5_CUSTOMER VALUES (50204, 'Rutvik  ', 'Yamkanmaradi  ',19990723 ,'M','Banglore ',8007568394 ,'18bcs082@iitdwd.ac.in ', 7496758364,'Divorced', 32);
INSERT INTO T5_CUSTOMER VALUES (50205, 'Rutvik  ', 'Yamkanmaradi  ',19990723 ,'M','Banglore ',8007568394 ,'18bcs082@iitdwd.ac.in ', 7496758364,'Divorced', 32);
INSERT INTO T5_CUSTOMER VALUES (50206, 'Rutvik  ', 'Yamkanmaradi  ',19990723 ,'M','Banglore ',8007568394 ,'18bcs082@iitdwd.ac.in ', 7496758364,'Divorced', 32);
INSERT INTO T5_CUSTOMER VALUES (50207, 'Rutvik  ', 'Yamkanmaradi  ',19990723 ,'M','Banglore ',8007568394 ,'18bcs082@iitdwd.ac.in ', 7496758364,'Divorced', 32);
INSERT INTO T5_CUSTOMER VALUES (50208, 'Rutvik  ', 'Yamkanmaradi  ',19990723 ,'M','Banglore ',8007568394 ,'18bcs082@iitdwd.ac.in ', 7496758364,'Divorced', 32);
INSERT INTO T5_CUSTOMER VALUES (50209, 'Rutvik  ', 'Yamkanmaradi  ',19990723 ,'M','Banglore ',8007568394 ,'18bcs082@iitdwd.ac.in ', 7496758364,'Divorced', 32);
INSERT INTO T5_CUSTOMER VALUES (50210, 'Rutvik  ', 'Yamkanmaradi  ',19990723 ,'M','Banglore ',8007568394 ,'18bcs082@iitdwd.ac.in ', 7496758364,'Divorced', 32);
INSERT INTO T5_CUSTOMER VALUES (50211, 'Rutvik  ', 'Yamkanmaradi  ',19990723 ,'M','Banglore ',8007568394 ,'18bcs082@iitdwd.ac.in ', 7496758364,'Divorced', 32);
INSERT INTO T5_CUSTOMER VALUES (50212, 'Rutvik  ', 'Yamkanmaradi  ',19990723 ,'M','Banglore ',8007568394 ,'18bcs082@iitdwd.ac.in ', 7496758364,'Divorced', 32);
INSERT INTO T5_CUSTOMER VALUES (50213, 'Rutvik  ', 'Yamkanmaradi  ',19990723 ,'M','Banglore ',8007568394 ,'18bcs082@iitdwd.ac.in ', 7496758364,'Divorced', 32);
INSERT INTO T5_CUSTOMER VALUES (50214, 'Rutvik  ', 'Yamkanmaradi  ',19990723 ,'M','Banglore ',8007568394 ,'18bcs082@iitdwd.ac.in ', 7496758364,'Divorced', 32);
INSERT INTO T5_CUSTOMER VALUES (50215, 'Rutvik  ', 'Yamkanmaradi  ',19990723 ,'M','Banglore ',8007568394 ,'18bcs082@iitdwd.ac.in ', 7496758364,'Divorced', 32);
INSERT INTO T5_CUSTOMER VALUES (50216, 'Rutvik  ', 'Yamkanmaradi  ',19990723 ,'M','Banglore ',8007568394 ,'18bcs082@iitdwd.ac.in ', 7496758364,'Divorced', 32);
INSERT INTO T5_CUSTOMER VALUES (50217, 'Rutvik  ', 'Yamkanmaradi  ',19990723 ,'M','Banglore ',8007568394 ,'18bcs082@iitdwd.ac.in ', 7496758364,'Divorced', 32);
INSERT INTO T5_CUSTOMER VALUES (50218, 'Rutvik  ', 'Yamkanmaradi  ',19990723 ,'M','Banglore ',8007568394 ,'18bcs082@iitdwd.ac.in ', 7496758364,'Divorced', 32);
INSERT INTO T5_CUSTOMER VALUES (50219, 'Rutvik  ', 'Yamkanmaradi  ',19990723 ,'M','Banglore ',8007568394 ,'18bcs082@iitdwd.ac.in ', 7496758364,'Divorced', 32);
INSERT INTO T5_CUSTOMER VALUES (50220, 'Rutvik  ', 'Yamkanmaradi  ',19990723 ,'M','Banglore ',8007568394 ,'18bcs082@iitdwd.ac.in ', 7496758364,'Divorced', 32);
#insert into T5_CUSTOMER values (, '  ', '  ', , ' ','  ', ,' @gmail.com', , ' ',  ); <- Dont delete this
-- Table 3
CREATE TABLE IF NOT EXISTS T5_INCIDENT_REPORT
(
Incident_Report_Id VARCHAR(20) NOT NULL ,
Incident_Type CHAR(10) NULL , 
Incident_Inspector VARCHAR(20) NULL , 
Incident_Cost INTEGER NULL ,
Incident_Report_Description VARCHAR(100) NULL ,
Incident_Id VARCHAR(20) NOT NULL , 
Cust_Id VARCHAR(20) NOT NULL , 
CONSTRAINT XPKINCIDENT_REPORT_18 PRIMARY KEY
(Incident_Report_Id,Incident_Id,Cust_Id), 
CONSTRAINT R_83 FOREIGN KEY (Incident_Id) REFERENCES T5_INCIDENT (Incident_Id), 
CONSTRAINT R_86 FOREIGN KEY (Cust_Id) REFERENCES T5_CUSTOMER (Cust_Id)
);
CREATE UNIQUE INDEX XPKINCIDENT_REPORT_18 ON T5_INCIDENT_REPORT (Incident_Report_Id ASC,Incident_Id ASC,Cust_Id ASC);

-- Table 4
CREATE TABLE IF NOT EXISTS T5_INSURANCE_COMPANY
(
Company_Name VARCHAR(20) NOT NULL ,
Company_Address VARCHAR(20) NULL ,
Company_Contact_Number INTEGER NULL ,
Company_Fax INTEGER NULL ,
Company_Email VARCHAR(20) NULL ,
Company_Website VARCHAR(20) NULL ,
Company_Location VARCHAR(20) NULL,
Company_Department_Name VARCHAR(20) NULL ,
Company_Office_Name VARCHAR(20) NULL ,
CONSTRAINT XPKINSURANCE_COMPANY_15 PRIMARY KEY
(Company_Name)
);
CREATE UNIQUE INDEX XPKINSURANCE_COMPANY_15 ON T5_INSURANCE_COMPANY
(Company_Name ASC);
-- Table 5
CREATE TABLE IF NOT EXISTS T5_DEPARTMENT
(
Department_Name VARCHAR(10) NOT NULL ,
Department_ID VARCHAR(18) NOT NULL ,
Department_Staff VARCHAR(18) NULL ,
Department_Offices VARCHAR(18) NULL ,
Company_Name VARCHAR(10) NOT NULL ,
CONSTRAINT XPKDEPARTMENT PRIMARY KEY (Department_Name,Department_ID,Company_Name),
CONSTRAINT R_56 FOREIGN KEY (Company_Name)
REFERENCES T5_INSURANCE_COMPANY (Company_Name)
);
CREATE UNIQUE INDEX XPKDEPARTMENT ON T5_DEPARTMENT
(Department_Name ASC,Department_ID ASC,Company_Name ASC);
INSERT INTO T5_DEPARTMENT VALUES 	
     ('Underwriting Department', '50501', 'vishal kotwal', ' Bajaj Allianz Vehicle Insurance Company Limited'),
     ('Claims Department', '50502', 'ruthvik', 'Birla Sun Vehicle Insurance Company Limited'),
     ('Legal Department', '50503', 'jay bhanushali', 'HDFC Vehicle Insurance Company Limited'),
     ('Legal Department', '50504', 'jay ', 'ICICI Prudential Vehicle Insurance Company Limited'),
     ('Legal Department', '50505', 'bhanushali', 'Exide Vehicle Insurance Company Limited'),
     ('Legal Department', '50506', 'sahedev', 'Vehicle Insurance Corporation of India'),
     ('Audit Department', '50507', 'namratha','Tata AIA Vehicle Insurance Company Limited'),
     ('Agency Department', '50508', 'raghav', ' Future Generali India Vehicle Insurance Company Limited'),
     ('Marketing Department', '50509', 'kotwal rama', 'IDBI Federal Vehicle Insurance Company Limited'),
     ('Reinsurance Department', '50510', 'jay bheem',' Canara HSBC Oriental Bank of Commerce LIC Limited'),
     ('Audit Department', '50511', 'ramakrishana', 'Aegon Vehicle Insurance Company Limited'),
     ('Legal Department', '50512', 'bhargav', 'IDBI Federal Vehicle Insurance Company Limited'),
     ('Investment Department', '50513', 'goldi jaydev', 'IDBI Federal Vehicle Insurance Company Limited'),
     ('Accounting Department', '50514', 'yamkam', 'Shriram Vehicle Insurance Company Limited'),
     ('Actuarial and Statistical Department', '50515', 'varsha', 'Shriram Vehicle Insurance Company Limited'),
     ('Underwriting Department', '50516', 'rama prekaash', 'Shriram Vehicle Insurance Company Limited'),
     ('Claims Department', '50517', 'kanchan', 'IDBI Federal Vehicle Insurance Company Limited'),
     ('Underwriting Department', '50518', 'bheemma', ' Canara HSBC Oriental Bank of Commerce LIC Limited');
   


-- Table 6

CREATE TABLE T5_VEHICLE_SERVICE
(
Department_Name VARCHAR(20) NOT NULL ,
Vehicle_Service_Company_Name VARCHAR(20) NOT NULL ,
Vehicle_Service_Address VARCHAR(20) NULL ,
Vehicle_Service_Contact VARCHAR(20) NULL ,
Vehicle_Service_Incharge VARCHAR(20) NULL ,
Vehicle_Service_Type VARCHAR(20) NULL ,
Department_Id VARCHAR(20) NOT NULL ,
Company_Name VARCHAR(20) NOT NULL ,
CONSTRAINT XPKVEHICLE_SERVICE PRIMARY KEY
(Vehicle_Service_Company_Name,Department_Name),
CONSTRAINT R_50 FOREIGN KEY (Department_Name, Department_Id,
Company_Name) REFERENCES T5_DEPARTMENT (Department_Name,
Department_ID, Company_Name)
);
CREATE UNIQUE INDEX XPKVEHICLE_SERVICE ON T5_VEHICLE_SERVICE
(Vehicle_Service_Company_Name ASC,Department_Name ASC);
INSERT INTO T5_VEHICLE_SERVICE VALUES 	
     ('Underwriting Department','','pune','9945610045','vishal kotwal','full-service','50501', ' Bajaj Allianz Vehicle Insurance Company Limited'),
     ('Claims Department','','pune','9945610345', 'ruthvik','half-service','50502','Birla Surance Company Limited'),
     ('Legal Department', '','bangalore','9945610545','jay bhanushali','full-service','50503',  'HDFsurance Company Limited'),
     ('Legal Department', '','kolkata','9945610745','jay ','half-service','50504', rudential Vehic 'ICICI Ple Insurance Company Limited'),
     ('Legal Department','','delhi','9945610085', 'bhanushali','half-service','50505',  'Ele Insurance Company Limited'),
     ('Legal Department', '','nagpur','9945630045','sahedev','full-service','50506',  'Vehicle Insurance Corporation of India'),
     ('Audit Department','','oty','9945615045', 'namratha','half-service','50507', 'Tata AIA Vehicle Insurance Company Limited'),
     ('Agency Department','','jaipur','9945110045', 'raghav','full-service','50508',' Future Generali India Vehicle Insurance Company Limited'),
     ('Marketing Department', '','raipur','8945610045','kotwal rama','half-service','50509',  'IDBI Federal Vehicle Insurance Company Limited'),
     ('Reinsurance Department', '','solapur','9946610045','jay bheem','half-service','50510', ' Canara HSBC Oriental Bank of Commerce LIC Limited'),
     ('Audit Department', '','kolapur','9945610040','ramakrishana','full-service','50511','Aegon Vehicle Insurance Company Limited'),
     ('Legal Department', '','thane','9945610041','bhargav','half-service','50512',  'IDBI Federal Vehicle Insurance Company Limited'),
     ('Investment Department', '','udpi','9945610043','goldi jaydev','full-service','50513', 'IDBI Federal Vehicle Insurance Company Limited'),
     ('Accounting Department','','yeswanthpur', '9945610044','yamkam','half-service','50514',  'Shriram Vehicle Insurance Company Limited'),
     ('Actuarial and Statistical Department','','hubli','9945610075', 'varsha','full-service','50515', 'Shriram Vehicle Insurance Company Limited'),
     ('Underwriting Department','','dharwad','9945610048', 'rama prekaash', 'half-service','50516', 'Shriram Vehicle Insurance Company Limited'),
     ('Claims Department', '','chennai','9945610049','kanchan', 'half-service','50517', 'IDBI Federal Vehicle Insurance Company Limited'),
     ('Underwriting Department', '','lucknow','9945699045', 'bheemma','full-service','50518', ' Canara HSBC Oriental Bank of Commerce LIC L

-- Table 7
--imited'); vehicle id = 50720
CREAT701....50E TABLE T5_VEHICLE
(
Vehicle_Id VARCHAR(20) NOT NULL ,
Policy_Id VARCHAR(20) NULL ,
Dependent_NOK_Id VARCHAR(20) NULL ,
Vehicle_Registration_Number VARCHAR(20) NOT NULL ,
Vehicle_Value INTEGER NULL ,
Vehicle_Type VARCHAR(20) NOT NULL ,
Vehicle_Size INTEGER NULL ,
Vehicle_Number_Of_Seat INTEGER NULL ,
Vehicle_Manufacturer VARCHAR(20) NULL ,
Vehicle_Engine_Number INTEGER NULL ,
Vehicle_Chasis_Number INTEGER NULL ,
Vehicle_Number VARCHAR(20) NULL ,
Vehicle_Model_Number VARCHAR(20) NULL ,
Cust_Id VARCHAR(20) NOT NULL ,
CONSTRAINT XPKVEHICLE_6 PRIMARY KEY (Vehicle_Id,Cust_Id),
CONSTRAINT R_92 FOREIGN KEY (Cust_Id) REFERENCES T5_CUSTOMER
(Cust_Id)
);
CREATE UNIQUE INDEX XPKVEHICLE_6 ON T5_VEHICLE (Vehicle_Id ASC,Cust_Id ASC);
INSERT INTO T5_APPLICATION VALUES
    ('51001', '50701', 'PENDING', 'Liability Coverage', '50205'),
    ('51002', '50702', 'ACCEPTED', 'Uninsured And Underinsured Motorist Coverage', '50208'),
    ('51003', '50703', 'PENDING', 'Comprehensive Coverage', '50203'),
    ('51004', '50704', 'REJECTED', 'Collision Coverage', '50201'),
    ('51005', '50705', 'ACCEPTED', 'Medical Payments Coverage', '50204'),
    ('51006', '50706', 'PENDING', 'Personal Injury Protection', '50206'),
    ('51007', '50707', 'PENDING', 'Uninsured And Underinsured Motorist Coverage', '50207'),
    ('51008', '50708', 'ACCEPTED', 'Liability Coverage', '50202'),
    ('51009', '50709', 'REJECTED', 'Medical Payments Coverage', '50209'),
    ('51010', '50710', 'PENDING', 'Medical Payments Coverage', '50220'),
    ('51011', '50711', 'PENDING', 'Liability Coverage', '50210'),
    ('51012', '50712', 'REJECTED', 'Comprehensive Coverage', '50218'),
    ('51013', '50713', 'ACCEPTED', 'Uninsured And Underinsured Motorist Coverage', '50219'),
    ('51014', '50714', 'ACCEPTED', 'Medical Payments Coverage', '50212'),
    ('51015', '50715', 'REJECTED', 'Collision Coverage', '50211'),
    ('51016', '50716', 'ACCEPTED', 'Liability Coverage', '50216'),
    ('51017', '50717', 'REJECTED', 'Personal Injury Protection', '50213'),
    ('51018', '50718', 'PENDING', 'Personal Injury Protection', '50215'),
    ('51019', '50719', 'ACCEPTED', 'Comprehensive Coverage', '50214'),
    ('51020', '50720', 'REJECTED', 'Collision Coverage', '50217');

-- TABLE 8
CREATE TABLE T5_PREMIUM_PAYMENT
(
Premium_Payment_Id VARCHAR(20) NOT NULL ,
Policy_Number VARCHAR(20) NOT NULL ,
Premium_Payment_Amount INTEGER NOT NULL ,
Premium_Payment_Schedule DATE NOT NULL ,
Receipt_Id VARCHAR(20) NOT NULL ,
Cust_Id VARCHAR(20) NOT NULL ,
CONSTRAINT XPKPREMIUM_PAYMENT_5 PRIMARY KEY
(Premium_Payment_Id,Cust_Id),
CONSTRAINT R_85 FOREIGN KEY (Cust_Id) REFERENCES T5_CUSTOMER
(Cust_Id)
);
CREATE UNIQUE INDEX XPKPREMIUM_PAYMENT_5 ON
T5_PREMIUM_PAYMENT
(Premium_Payment_Id ASC,Cust_Id ASC);

-- TABLE 9
CREATE TABLE IF NOT EXISTS T5_RECEIPT
(
Receipt_Id VARCHAR(20) NOT NULL ,
Time DATE NOT NULL ,
Cost INTEGER NOT NULL ,
Premium_Payment_Id VARCHAR(20) NOT NULL ,
Cust_Id VARCHAR(20) NOT NULL ,
CONSTRAINT XPKRECEIPT_21 PRIMARY KEY (Receipt_Id,Premium_Payment_Id,Cust_Id),
CONSTRAINT R_84 FOREIGN KEY (Premium_Payment_Id, Cust_Id)
REFERENCES T5_PREMIUM_PAYMENT (Premium_Payment_Id, Cust_Id)
);
CREATE UNIQUE INDEX XPKRECEIPT_21 ON T5_RECEIPT (Receipt_Id ASC,Premium_Payment_Id ASC,Cust_Id ASC);

-- TABLE 10 
CREATE TABLE IF NOT EXISTS T5_APPLICATION
(
Application_Id VARCHAR(20) NOT NULL ,
Vehicle_Id VARCHAR(20) NOT NULL ,
Application_Status CHAR(8) NOT NULL ,
Coverage VARCHAR(50) NOT NULL ,
Cust_Id VARCHAR(20) NOT NULL ,
CONSTRAINT XPKAPPLICATION_2 PRIMARY KEY (Application_Id,Cust_Id),
CONSTRAINT R_93 FOREIGN KEY (Cust_Id) REFERENCES T5_CUSTOMER
(Cust_Id)
);
CREATE UNIQUE INDEX XPKAPPLICATION_2 ON T5_APPLICATION
(Application_Id ASC,Cust_Id ASC);
-- INSERT VALUES FORMAT
-- ('51001.....51020', '50701....50720', 'ACCEPTED|PENDING|REJECTED', 'Liability Coverage|Uninsured And Underinsured Motorist Coverage|Comprehensive Coverage|Collision Coverage|Medical Payments Coverage|Personal Injury Protection', '50201..50220')
INSERT INTO T5_APPLICATION VALUES
    ('51001', '50701', 'PENDING', 'Liability Coverage', '50205'),
    ('51002', '50702', 'ACCEPTED', 'Uninsured And Underinsured Motorist Coverage', '50208'),
    ('51003', '50703', 'PENDING', 'Comprehensive Coverage', '50203'),
    ('51004', '50704', 'REJECTED', 'Collision Coverage', '50201'),
    ('51005', '50705', 'ACCEPTED', 'Medical Payments Coverage', '50204'),
    ('51006', '50706', 'PENDING', 'Personal Injury Protection', '50206'),
    ('51007', '50707', 'PENDING', 'Uninsured And Underinsured Motorist Coverage', '50207'),
    ('51008', '50708', 'ACCEPTED', 'Liability Coverage', '50202'),
    ('51009', '50709', 'REJECTED', 'Medical Payments Coverage', '50209'),
    ('51010', '50710', 'PENDING', 'Medical Payments Coverage', '50220'),
    ('51011', '50711', 'PENDING', 'Liability Coverage', '50210'),
    ('51012', '50712', 'REJECTED', 'Comprehensive Coverage', '50218'),
    ('51013', '50713', 'ACCEPTED', 'Uninsured And Underinsured Motorist Coverage', '50219'),
    ('51014', '50714', 'ACCEPTED', 'Medical Payments Coverage', '50212'),
    ('51015', '50715', 'REJECTED', 'Collision Coverage', '50211'),
    ('51016', '50716', 'ACCEPTED', 'Liability Coverage', '50216'),
    ('51017', '50717', 'REJECTED', 'Personal Injury Protection', '50213'),
    ('51018', '50718', 'PENDING', 'Personal Injury Protection', '50215'),
    ('51019', '50719', 'ACCEPTED', 'Comprehensive Coverage', '50214'),
    ('51020', '50720', 'REJECTED', 'Collision Coverage', '50217');
-- TABLE 11

CREATE TABLE IF NOT EXISTS T5_INSURANCE_POLICY
(
Agreement_id VARCHAR(20) NOT NULL ,
Department_Name VARCHAR(20) NULL ,
Policy_Number VARCHAR(20) NULL ,
Start_Date DATE NULL ,
Expiry_Date DATE NULL ,
Term_Condition_Description VARCHAR(100) NULL ,
Application_Id VARCHAR(20) NOT NULL ,
Cust_Id VARCHAR(20) NOT NULL ,
CONSTRAINT XPKINSURANCE_POLICY_4 PRIMARY KEY (Agreement_id,Application_Id,Cust_Id),
CONSTRAINT R_95 FOREIGN KEY (Application_Id, Cust_Id) REFERENCES T5_APPLICATION (Application_Id, Cust_Id)
);
CREATE UNIQUE INDEX XPKINSURANCE_POLICY_4 ON T5_INSURANCE_POLICY
(Agreement_id ASC,Application_Id ASC,Cust_Id ASC);

-- TABLE 12
CREATE TABLE T5_POLICY_RENEWABLE
(
Policy_Renewable_Id VARCHAR(20) NOT NULL ,
Date_Of_Renewal DATE NOT NULL ,
Type_Of_Renewal CHAR(15) NOT NULL ,
Agreement_id VARCHAR(20) NOT NULL ,
Application_Id VARCHAR(20) NOT NULL ,
Cust_Id VARCHAR(20) NOT NULL ,
CONSTRAINT XPKPOLICY_RENEWABLE_16 PRIMARY KEY
(Policy_Renewable_Id,Agreement_id,Application_Id,Cust_Id),
CONSTRAINT R_101 FOREIGN KEY (Agreement_id, Application_Id, Cust_Id)
REFERENCES T5_INSURANCE_POLICY (Agreement_id, Application_Id, Cust_Id)
);
CREATE UNIQUE INDEX XPKPOLICY_RENEWABLE_16 ON
T5_POLICY_RENEWABLE
(Policy_Renewable_Id ASC,Agreement_id ASC,Application_Id
ASC,Cust_Id ASC);

-- TABLE 13
CREATE TABLE IF NOT EXISTS T5_MEMBERSHIP
(
Membership_Id VARCHAR(20) NOT NULL ,
Membership_Type CHAR(15) NOT NULL ,
Organisation_Contact VARCHAR(20) NULL ,
Cust_Id VARCHAR(20) NOT NULL ,
CONSTRAINT XPKMEMBERSHIP_12 PRIMARY KEY
(Membership_Id,Cust_Id),
CONSTRAINT R_91 FOREIGN KEY (Cust_Id) REFERENCES T5_CUSTOMER
(Cust_Id)
);
CREATE UNIQUE INDEX XPKMEMBERSHIP_12 ON T5_MEMBERSHIP
(Membership_Id ASC,Cust_Id ASC);

-- TABLE 14
CREATE TABLE IF NOT EXISTS T5_QUOTE
(
Quote_Id VARCHAR(20) NOT NULL ,
Issue_Date DATE NOT NULL ,
Valid_From_Date DATE NOT NULL ,
Valid_Till_Date DATE NOT NULL ,
Description VARCHAR(100) NULL ,
Product_Id VARCHAR(20) NOT NULL ,
Coverage_Level VARCHAR(20) NOT NULL ,
Application_Id VARCHAR(20) NOT NULL ,
Cust_Id VARCHAR(20) NOT NULL ,
CONSTRAINT XPKQUOTE_3 PRIMARY KEY
(Quote_Id,Application_Id,Cust_Id),
CONSTRAINT R_94 FOREIGN KEY (Application_Id, Cust_Id) REFERENCES
T5_APPLICATION (Application_Id, Cust_Id)
);
CREATE UNIQUE INDEX XPKQUOTE_3 ON T5_QUOTE
(Quote_Id ASC,Application_Id ASC,Cust_Id ASC);
-- INSERT INTO FORMAT
-- ('51401....51420', 'yyyy-mm-dd', 'yyyy-mm-dd', 'yyyy-mm-dd', 'Product description', 'T5(four letters)(three digits)', 'total premium in rupees', '71001...71020', '5001...50020')
INSERT INTO T5_QUOTE VALUES
    ('51401', '2020-02-08', '2020-02-08', '2025-02-08',  'Honda Activa 6G standard', 'T5KSHD345', '5000', '51001', '50205'),
    ('51402', '2017-04-01', '2017-04-01', '2023-04-01',  'Honda Activa 125', 'T5EION8500', '3000', '51002', '50208'),
    ('51403', '2020-06-08', '2020-06-08', '2026-06-08',  'Maruti Suzuki S-Presso LXI', 'T5BRUH420', '9000', '51003', '50203'),
    ('51404', '2014-09-29', '2014-09-29', '2021-09-29',  'Honda Activa 6G standard', 'T5LISR699', '3000', '51004', '50201'),
    ('51405', '2019-07-04', '2019-07-04', '2024-07-04',  'Volkswagen T-Roc', 'T5LSHI374', '9000', '51005', '50204'),
    ('51406', '2020-12-09', '2020-12-09', '2025-12-09',  'Mahindra XUV500 W5', 'T5LSEI236', '5000', '51006', '50206'),
    ('51407', '2020-10-23', '2020-10-23', '2025-10-23',  'Skoda Rapid', 'T5KENS902', '9000', '51007', '50207'),
    ('51408', '2019-05-29', '2019-05-29', '2024-05-29',  'Volvo XC90 2.0 D5 Momentum AT 4WD', 'T5EHIV234', '5000', '51008', '50202'),
    ('51409', '2016-11-06', '2016-11-06', '2021-11-06',  'Toyota Urban Cruiser', 'T5QEID230', '9000', '51009', '50209'),
    ('51410', '2020-09-08', '2020-09-08', '2026-09-08',  'Honda Activa 6G standard', 'T5QEWN382', '6000', '51010', '50220'),
    ('51411', '2020-07-10', '2020-07-10', '2025-07-10',  'Elife Air 20 T Folding Bikes/Folding Cycle', 'T5TYST969', '4000', '51011', '50210'),
    ('51412', '2018-12-10', '2018-12-10', '2023-12-10',  'Husqvarna Svartpilen 250', 'T5BSDK133', '9000', '51012', '50218'),
    ('51413', '2017-01-02', '2017-01-02', '2022-01-02',  'TVS XL100', 'T5SALE387', '2000', '51013', '50219'),
    ('51414', '2018-11-10', '2018-11-10', '2023-11-10',  'Bianchi C-sport Cross 29 T Hybrid Cycle', 'T5CHOU392', '6000', '51014', '50212'),
    ('51415', '2019-02-09', '2019-02-09', '2025-02-09', 'Royal Enfield Classic 350', 'T5LEOW783', '9000', '51015', '50211'),
    ('51416', '2018-10-06', '2018-10-06', '2024-10-06', 'Honda Activa 125', 'T5KJEI280', '3000', '51016', '50216'),
    ('51417', '2018-04-28', '2018-04-28', '2023-04-28',  'Bajaj Pulsar 150', 'T5FCUK038', '5000', '51017', '50213'),
    ('51418', '2020-06-11', '2020-06-11', '2025-06-11',  'Suzuki Access 125', 'T5JAIM021', '5000', '51018', '50215'),
    ('51419', '2017-03-03', '2017-03-03', '2022-03-03',  'TVS NTORQ', 'T5BOLW938', '5000', '51019', '50214'),
    ('51420', '2016-05-04', '2016-05-04', '2021-05-04',  'TVS Jupiter', 'T5DUMA327', '5000', '51020', '50217');
-- TABLE 15
CREATE TABLE IF NOT EXISTS T5_STAFF
(
Staff_Id VARCHAR(20) NOT NULL ,
Staff_Fname VARCHAR(10) NULL , 
Staff_LName VARCHAR(10) NULL , 
Staff_Adress VARCHAR(20) NULL , 
Staff_Contact INTEGER NULL , 
Staff_Gender CHAR(2) NULL , 
Staff_Marital_Status CHAR(8) NULL , 
Staff_Nationality CHAR(15) NULL , 
Staff_Qualification VARCHAR(20) NULL , 
Staff_Allowance INTEGER NULL , 
Staff_PPS_Number INTEGER NULL , 
Company_Name VARCHAR(20) NOT NULL , 
CONSTRAINT XPKSTAFF_9 PRIMARY KEY (Staff_Id,Company_Name), 
CONSTRAINT R_105 FOREIGN KEY (Company_Name) REFERENCES
T5_INSURANCE_COMPANY (Company_Name)
);
CREATE UNIQUE INDEX XPKSTAFF_9 ON T5_STAFF (Staff_Id ASC,Company_Name ASC);
insert into T5_STAFF values ('51501','vishal','kotwal','hyderabad',7995980389,'M','Married','indian','btech',100000, 55013451, );
insert into T5_STAFF values ('51502','uresh','reddy','hyderabad',9700052431,'M','Divorced','indian','btech',70000, 55013452, );
insert into T5_STAFF values ('51503','siva','reddy','karimnagar',9705789530,'M','Unmarr','indian','bsc',20000, 55013453, );
insert into T5_STAFF values ('51504','shubham','kota','Nalagonda',9963699981,'M','Married','indian','bcom',10000, 55013454, );
insert into T5_STAFF values ('51505','deepika','geedi','hyderabad',9052442045,'F','Married','indian','btech',50000, 55013455, );
insert into T5_STAFF values ('51506','umar','nallamothu','hyderabad',9885240946,'M','Married','indian','MBA',37000, 55013456, );
insert into T5_STAFF values ('51507','balu','raju','hyderabad',9948721479,'M','Married','indian','btech',18000, 55013457, );
insert into T5_STAFF values ('51508','urao','bandikolu','hyderabad',9573797603,'M','Married','indian','btech',11000, 55013458, );
insert into T5_STAFF values ('51509','uday','sri','hyderabad',9833892847,'F','Married','indian','btech',12500, 55013459, );
insert into T5_STAFF values ('51510','venkateshwara','roa','hyderabad',9440990901,'M','Married','indian','btech',7000, 55013460, );
insert into T5_STAFF values ('51511','babu','repaka','hyderabad',9553363049,'M','Married','indian','MBA',86000, 55013461, );
insert into T5_STAFF values ('51512','dhani','krishna','hyderabad',9246191987,'F','Married','indian','Finance',76000, 55013462, );
insert into T5_STAFF values ('51513','raju','verma','hyderabad',9885971114,'M','Married','indian','Btech',80000, 55013463, );
insert into T5_STAFF values ('51514','shaik','norri','hyderabad',8885066096,'M','Married','indian','MBA',56000, 55013464, );
insert into T5_STAFF values ('51515','nikitha','reddy','hyderabad',9985050666,'F','Married','indian','BCOM',37000, 55013465, );
insert into T5_STAFF values ('51516','soujanya','watla','hyderabad',9490215699,'F','Married','indian','btech',62000, 55013466, );
insert into T5_STAFF values ('51517','vijay','chandu','hyderabad',9963293026,'M','Married','indian','BCOM',14000, 55013467, );
insert into T5_STAFF values ('51518','vekhar','pakanati','hyderabad',9032953400,'M','Married','indian','btech',19000, 55013468, );
insert into T5_STAFF values ('51519','murty','roa','hyderabad',9494548845,'M','Married','indian','btech',45000, 55013469, );
insert into T5_STAFF values ('51520','Naresh','matey','hyderabad',9963416329,'M','Married','indian','btech',34000, 55013470, );

-- TABLE 16
CREATE TABLE T5_NOK
(
Nok_Id VARCHAR(20) NOT NULL ,
Nok_Name VARCHAR(20) NULL ,
Nok_Address VARCHAR(200) NULL ,
Nok_Phone_Number BIGINT NULL ,
Nok_Gender CHAR(2) NULL ,
Nok_Marital_Status CHAR(8) NULL ,
Agreement_id VARCHAR(20) NOT NULL ,
Application_Id VARCHAR(20) NOT NULL ,
Cust_Id VARCHAR(20) NOT NULL ,
CONSTRAINT XPKNOK_14 PRIMARY KEY
(Nok_Id,Agreement_id,Application_Id,Cust_Id),
CONSTRAINT R_99 FOREIGN KEY (Agreement_id, Application_Id, Cust_Id)
REFERENCES T5_INSURANCE_POLICY (Agreement_id, Application_Id, Cust_Id)
);
CREATE UNIQUE INDEX XPKNOK_14 ON T5_NOK (Nok_Id ASC,Agreement_id ASC,Application_Id ASC);
-- INSERT INTO format T5_NOK values ('516001 ... 516020','Name','Address','Phone','Gender',Marital Status','Agreement_ID', Application_ID', 'Cust_ID')
INSERT INTO T5_NOK values
('51601','Aarav M','Hyderabad','9541284125','Male', 'Single', , ,),
('51602','Aarohi B','Bangalore','9871284354','Female', 'Married', , ,),
('51603','Srinidhi Palsekar','Pune','8274141254','Female', 'Married', , ,),
('51604','Ganesh Kulkarni','Mumbai','8423652322','Male', 'Single', , ,),
('51605','Aakash Chatterjee','Kolkatta','7541265455','Male', 'Divorced', , ,),
('51606','Manas Pimpalkhare','Pune','8741236525','Male', 'Divorced', , ,),
('51607','Eesha Gadhia','Vadodara','8296321466','Female', 'Single', , ,),
('51608','Dhatri M','Bangalore','9563214552','Female', 'Married', , ,),
('51609','Krutika Singh','New Delhi','7851254125','Female', 'Single', , ,),
('51610','Sigiri Saicharan','Hyderabad','7963214502','Male', 'Single', , ,),
('51611','Yashdeep Jadhav','Mumbai','8604154632','Male', 'Married', , ,),
('51612','Jagruth P','Bangalore','6387908561','Male', 'Single', , ,),
('51613','Shaantanu Shende','Pune','7507081126','Male', 'Divorced', , ,),
('51614','Jayalalitha S','Chennai','8007796961','Female', 'Single', , ,),
('51615','Sandhya J','Chennai','9845106575','Female', 'Single', , ,),
('51616','Vedant Shetty','Mumbai','7321463262','Male', 'Married', , ,),
('51617','Vishalini Kotwal','Hyderabad','8952036512','Female', 'Single', , ,),
('51618','Rehan Shaikh','Bangalore','9267412365','Male', 'Married', , ,),
('51619','Bhavya Trivedi','Jabalpur','7845201569','Female', 'Single', , ,),
('51620','Lucky Singh','Amritsar','6985411452','Female', 'Divorced', , ,),


-- TABLE 17
CREATE TABLE IF NOT EXISTS T5_PRODUCT 
( 
Product_Number VARCHAR(20) NOT NULL ,
Product_Price INTEGER NULL ,
Product_Type CHAR(15) NULL , 
Company_Name VARCHAR(20) NOT NULL , 
CONSTRAINT XPKPRODUCT_20 PRIMARY KEY (Product_Number,Company_Name), 
CONSTRAINT R_107 FOREIGN KEY (Company_Name) REFERENCES T5_INSURANCE_COMPANY (Company_Name)
);
CREATE UNIQUE INDEX XPKPRODUCT_20 ON T5_PRODUCT (Product_Number ASC,Company_Name ASC);
-- Insert into format ('51701 ... 51720','Price', 'Type', 'Company Name')
INSERT INTO T5_PRODUCT values
('51701', '40000','Bike Insurance/Two Wheeler', ,),
('51702', '120000','Car Insurance', ,),
('51703', '20000','Two Wheeler-Economy', ,),
('51704', '80000','Car Insurance-Economy', ,),
('51705', '90000','Two Wheeler-Luxury', ,),
('51706', '200000','Car Insurance-Luxury', ,),
('51707', '4000','Two Wheeler- Topup', ,),
('51708', '1000','Two Wheeler- Topup Economy', ,),
('51709', '10000','Car Insurance-Topup', ,),
('51710', '40000','Bike Insurance/Two Wheeler', ,),
('51711', '40000','Bike Insurance/Two Wheeler', ,),
('51712', '40000','Bike Insurance/Two Wheeler', ,),
('51713', '40000','Bike Insurance/Two Wheeler', ,),
('51714', '40000','Bike Insurance/Two Wheeler', ,),
('51715', '40000','Bike Insurance/Two Wheeler', ,),
('51716', '40000','Bike Insurance/Two Wheeler', ,),
('51717', '40000','Bike Insurance/Two Wheeler', ,),
('51718', '40000','Bike Insurance/Two Wheeler', ,),
('51719', '40000','Bike Insurance/Two Wheeler', ,),
('51720', '40000','Bike Insurance/Two Wheeler', ,),


-- TABLE 18
CREATE TABLE IF NOT EXISTS T5_OFFICE
(
Office_Name VARCHAR(20) NOT NULL ,
Office_Leader VARCHAR(20) NOT NULL , 
Contact_Information VARCHAR(20) NOT NULL , 
Address VARCHAR(20) NOT NULL ,
Admin_Cost INTEGER NULL , 
Staff VARCHAR(50) NULL ,
Department_Name VARCHAR(20) NOT NULL , 
Department_Id VARCHAR(20) NOT NULL ,
Company_Name VARCHAR(20) NOT NULL , 
CONSTRAINT XPKOFFICE_11 PRIMARY KEY(Office_Name,Department_Name,Company_Name),
CONSTRAINT R_104 FOREIGN KEY (Department_Name, Department_Id, Company_Name) REFERENCES T5_DEPARTMENT (Department_Name, Department_Id, Company_Name)
);
CREATE UNIQUE INDEX XPKOFFICE_11 ON T5_OFFICE (Office_Name ASC,Department_Name ASC,Company_Name ASC);

-- TABLE 19 
CREATE TABLE IF NOT EXISTS T5_COVERAGE 
( 
Coverage_Id VARCHAR(20) NOT NULL , 
Coverage_Amount INTEGER NOT NULL , 
Coverage_Type CHAR(10) NOT NULL , 
Coverage_Level CHAR(15) NOT NULL , 
Product_Id VARCHAR(20) NOT NULL , 
Coverage_Description VARCHAR(100) NULL , 
Covearge_Terms VARCHAR(50) NULL , 
Company_Name VARCHAR(20) NOT NULL , 
CONSTRAINT XPKCOVERAGE_19  PRIMARY KEY
(Coverage_Id,Company_Name),
CONSTRAINT R_102 FOREIGN KEY (Company_Name) REFERENCES
T5_INSURANCE_COMPANY (Company_Name)
);
CREATE UNIQUE INDEX XPKCOVERAGE_19 ON T5_COVERAGE
(Coverage_Id ASC,Company_Name ASC);

-- TABLE 20

CREATE TABLE IF NOT EXISTS T5_INSURANCE_POLICY_COVERAGE 
( 
Agreement_id VARCHAR(20) NOT NULL , 
Application_Id VARCHAR(20) NOT NULL ,
Cust_Id VARCHAR(20) NOT NULL , 
Coverage_Id VARCHAR(20) NOT NULL , 
Company_Name VARCHAR(20) NOT NULL , 
CONSTRAINT XPKINSURANCE_POLICY_4_COVERAGE PRIMARY KEY 
(Agreement_id,Application_Id,Cust_Id,Coverage_Id,Company_Name), 
CONSTRAINT R_97 FOREIGN KEY (Agreement_id, Application_Id, Cust_Id) 
REFERENCES T5_INSURANCE_POLICY (Agreement_id, Application_Id, Cust_Id),
CONSTRAINT R_98 FOREIGN KEY (Coverage_Id, Company_Name) 
REFERENCES T5_COVERAGE (Coverage_Id, Company_Name) 
); 
CREATE UNIQUE INDEX XPKINSURANCE_POLICY_4_COVERAGE ON 
T5_INSURANCE_POLICY_COVERAGE 
(Agreement_id ASC,Application_Id ASC,Cust_Id ASC,Coverage_Id 
ASC,Company_Name ASC);

-- TABLE 21
CREATE TABLE IF NOT EXISTS T5_CLAIM 
(
Claim_Id VARCHAR(20) NOT NULL , 
Agreement_Id VARCHAR(20) NOT NULL , 
Claim_Amount INTEGER NOT NULL , 
Incident_Id VARCHAR(20) NOT NULL , 
Damage_Type VARCHAR(20) NOT NULL , 

Date_Of_Claim DATE NOT NULL ,
Claim_Status CHAR(10) NOT NULL ,
Cust_Id VARCHAR(20) NOT NULL ,
CONSTRAINT XPKCLAIM_7 PRIMARY KEY (Claim_Id,Cust_Id),
CONSTRAINT R_88 FOREIGN KEY (Cust_Id) REFERENCES T5_CUSTOMER
(Cust_Id)
);
CREATE UNIQUE INDEX XPKCLAIM_7 ON T5_CLAIM
(Claim_Id ASC,Cust_Id ASC);

-- TABLE 22
CREATE TABLE IF NOT EXISTS T5_CLAIM_SETTLEMENT
(
Claim_Settlement_Id VARCHAR(20) NOT NULL ,
Vehicle_Id VARCHAR(20) NOT NULL ,
Date_Settled DATE NOT NULL ,
Amount_Paid INTEGER NOT NULL ,
Coverage_Id VARCHAR(20) NOT NULL ,
Claim_Id VARCHAR(20) NOT NULL ,
Cust_Id VARCHAR(20) NOT NULL ,
CONSTRAINT XPKCLAIM_SETTLEMENT_8 PRIMARY KEY
(Claim_Settlement_Id,Claim_Id,Cust_Id),
CONSTRAINT R_90 FOREIGN KEY (Claim_Id, Cust_Id) REFERENCES T5_CLAIM
(Claim_Id, Cust_Id)
);
CREATE UNIQUE INDEX XPKCLAIM_SETTLEMENT_8 ON
T5_CLAIM_SETTLEMENT
(Claim_Settlement_Id ASC,Claim_Id ASC,Cust_Id ASC);
  
