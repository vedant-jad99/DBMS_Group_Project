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

-- INSERT INTO T5_INSURANCE_POLICY VALUES
-- 	('51101','Tyre Protect' ,'55001','2020-02-08', '2022-02-08',  'Coverage against loss of or damage to your vehicle caused by accident,theft,fire,explosion,self-ignition,lightning,riots,strikes or acts of terrorism,natural calamities','51001' ,'50005'),
--     ('51102','Tyre Protect' ,'55002','2020-03-08', '2022-03-08',  'Coverage against loss of or damage to your vehicle caused by accident,theft,fire,natural calamities','51004' ,'50008'),
--     ('51103','Engine Cover' ,'55003','2020-04-08', '2022-04-08',  'Coverage against loss of or damage to your vehicle caused by fire,explosion,self-ignition,lightning,riots,strikes or acts of terrorism,natural calamities','51003' ,'50003'),
--     ('51104','Engine Cover' ,'55004','2020-05-01', '2022-05-03',  'Coverage against loss of or damage to your vehicle caused by accident,theft,fire,explosion,self-ignition,lightning,natural calamities','51006', '50001'),
--     ('51105','Engine Cover' ,'55005','2020-05-08', '2022-05-08',  'Coverage against loss of or damage to your vehicle caused by accident,fire,explosion,self-ignition,lightning,riots,strikes or acts of terrorism,natural calamities', '51005','50004'),
--     ('51106', 'Engine Cover' ,'55006','2020-01-08', '2022-01-08',  'Coverage against loss of or damage to your vehicle caused by accident,theft,fire,explosion,self-ignition,lightning,riots,strikes or acts of terrorism','51002' ,'50006'),
--     ('51107', 'Tyre Protect','55007','2020-02-08', '2022-02-08',  'Coverage against loss of or damage to your vehicle caused by accident,theft,fire,explosion,self-ignition,riots,strikes or acts of terrorism,natural calamities','51007' ,'50007'),
--     ('51108','Tyre Protect' ,'55008','2020-02-08', '2022-02-08',  'Coverage against loss of or damage to your vehicle caused by accident','51010' ,'50002'),
--     ('51109','Tyre Protect','55009','2020-04-08', '2022-03-08',  'Coverage against loss of or damage to your vehicle caused by theft','51009' ,'50009'),
--     ('51110', 'Engine Cover','55010','2020-07-08', '2021-01-08',  'Coverage against loss of or damage to your vehicle caused by riots,strikes','51008' ,'50020'),
--     ('51111','Tyre Protect','55011','2020-02-08', '2021-02-08',  'Coverage against loss of or damage to your vehicle caused by natural calamities','51011' ,'50010'),
--     ('51112','Engine Cover' ,'55012','2020-12-08', '2022-12-08',  'Coverage against loss of or damage to your vehicle caused by accident also for the legal liability for the damage you may cause to a third party property - while using your vehicle ','51014' ,'50018'),
--     ('51113','Engine Cover' ,'55013','2020-07-08', '2022-07-08',  'Coverage against loss of or damage to your vehicle caused by natural calamities','51012' ,'50019'),
--     ('51114', 'Engine Cover','55014','2020-05-08', '2022-08-20',  'Coverage against loss of or damage to your vehicle caused by natural calamities','51013' ,'50012'),
--     ('51115', 'Engine Cover','55015','2020-09-08', '2022-01-08',  'Coverage against loss of or damage to your vehicle caused by accident also for the legal liability for the damage you may cause to a third party property - while using your vehicle','51010' ,'50011'),
--     ('51116', 'Engine Cover','55016','2020-11-08', '2022-11-08',  'Liability Coverage','51016' ,'50016'),
--     ('51117','Engine Cover', '55017','2020-10-08', '2022-12-08',  'Coverage against loss of or damage to your vehicle caused by accident,theft,fire,natural calamities','51017' ,'50013'),
--     ('51118', 'Engine Cover','55018','2020-02-08', '2022-01-08',  'Coverage against loss of or damage to your vehicle caused by accident also for the legal liability for the damage you may cause to a third party property - while using your vehicle','51018' ,'50015'),
--     ('51119','Engine Cover' ,'55019','2020-02-08', '2021-02-08',  'Coverage against loss of or damage to your vehicle caused by accidente','51020' ,'50014'),
--     ('51120','Engine Cover', '55020','2020-05-08', '2021-02-08',  'Coverage against loss of or damage to your vehicle caused by natural calamities','51019' ,'50017');


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

-- INSERT INTO T5_POLICY_RENEWABLE VALUES
-- 	('51201','2022-10-08', 'Online',  '51103','51001' ,'50205'),
--     ('51202','2024-02-08', 'Online',  '51104','51002' ,'50204'),
--     ('51203','2024-11-08', 'Offline',  '51102','51003' ,'50203'),
--     ('51204','2024-06-08', 'Offline',  '51101','51004' ,'50201'),
--     ('51205','2024-02-08', 'Online',  '51105','51005' ,'50202'),
--     ('51206','2023-04-08', 'Online',  '51107','51008' ,'50206'),
--     ('51207','2023-02-08', 'Online',  '51108','51006' ,'50207'),
--     ('51208','2022-02-08', 'Online',  '51106','51007' ,'50208'),
--     ('51209','2025-02-08', 'Offline',  '51109','51009' ,'50209'),
--     ('51210','2025-07-08', 'Offline',  '51113','51011' ,'50212'),
--     ('51211','2025-02-08', 'Online',  '51111','51012' ,'50213'),
--     ('51212','2025-08-08', 'Online',  '51110','51013' ,'50211'),
--     ('51213','2025-02-08', 'Online',  '51112','51010' ,'50210'),
--     ('51214','2025-02-08', 'Online',  '51114','51015' ,'50216'),
--     ('51215','2025-09-08', 'Online',  '51116','51015' ,'50214'),
--     ('51216','2023-02-08', 'Online',  '51115','51014' ,'50215'),
--     ('51217','2022-10-08', 'Online',  '51120','51020' ,'50220'),
--     ('51215','2021-02-08', 'Offline',  '51119','51019' ,'50219'),
--     ('51216','2021-11-08', 'Offline',  '51119','51020' ,'50205'),
--     ('51217','2021-02-08', 'Offline',  '51112','51018' ,'50205'),
--     ('51218','2021-13-08', 'Offline',  '51114','51017' ,'50203'),
--     ('51219','2025-05-08', 'Offline',  '51115','51016' ,'50203'),
--     ('51220','2022-07-08', 'Offline',  '51116','51015' ,'50205');

