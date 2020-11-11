CREATE DATABASE IF NOT EXISTS Insurance_Company;
USE Insurance_Company;

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
INSERT INTO T5_INSURANCE_POLICY_COVERAGE VALUES
	( ,'51001', '50201','51901', ,); 
    ( ,'51002', '50202','51902', ,);
    ( ,'51003', '50203','51903', ,);
    ( ,'51004', '50204','51904', ,);
    ( ,'51005', '50205','51905', ,);
    ( ,'51006', '50206','51906', ,);
    ( ,'51007', '50207','51907', ,);
    ( ,'51008', '50208','51908', ,);
    ( ,'51009', '50209','51909', ,);
    ( ,'51010', '50210','51910', ,);
    ( ,'51011', '50211','51911', ,);
    ( ,'51012', '50212','51912', ,);
    ( ,'51013', '50213','51913', ,);
    ( ,'51014', '50214','51914', ,);
    ( ,'51015', '50215','51915', ,);
    ( ,'51016', '50216','51916', ,);
    ( ,'51017', '50217','51917', ,);
    ( ,'51018', '50218','51918', ,);
    ( ,'51019', '50219','51919', ,);
    ( ,'51020', '50220','51920', ,);
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
INSERT INTO T5_CLAIM VALUES
	('52101', ,'500000', ,'Windshield damage','2021-03-03','Approved','50202');
    ('52102', ,'200000', ,'Animal collisions','2023-02-04','Rejected','50204');
	('52103', ,'150000', ,'Accident','2020-07-29','Approved','50208');
	('52104', ,'180000', ,'Windshield damage','2019-02-23','pending','50212');
	('52105', ,'450000', ,'Vandalism','2019-03-06','Approved','50214');
	('52106', ,'270000', ,'Animal collision','2024-08-23','pending','50216');
	('52107', ,'350000', ,'Accident','2018-12-19','Rejected','50219');
   
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
INSERT INTO T5_CLAIM_SETTLEMENT VALUES
	('52201','50708','2021-03-23','500000', ,'52101','50202');
    ('52202','50705','2023-02-20','200000', ,'52102','50204');
    ('52203','50702','2020-08-20','150000', ,'52103','50208');
	('52204','50714','2019-03-09','180000', ,'52104','50212');
	('52205','50719','2021-03-15','450000', ,'52105','50214');
	('52206','50716','2024-09-07','270000', ,'52106','50216');
	('52207','50713','2018-12-30','350000', ,'52107','50219');