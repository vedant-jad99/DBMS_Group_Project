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
Company_Name VARCHAR(20) NOT NULL , 
CONSTRAINT XPKOFFICE_11 PRIMARY KEY(Office_Name,Department_Name,Company_Name),
CONSTRAINT R_104 FOREIGN KEY (Department_Name) REFERENCES T5_DEPARTMENT (Department_Name),
CONSTRAINT R_1055 FOREIGN KEY (Company_Name) REFERENCES T5_DEPARTMENT (Company_Name)
);
CREATE UNIQUE INDEX XPKOFFICE_11 ON T5_OFFICE (Office_Name ASC,Department_Name ASC,Company_Name ASC);

INSERT INTO T5_OFFICE VALUES ('ABC', 'Aakash', '1212121212', 'Lucknow', '1200000', ' ', ' ', ' '), 
('CDE', 'Rutvik', '2323232323', 'Bangalore', '1300000', ' ', ' ', ' '), 
('EFG', 'Namratha', '5858585858', 'Bangalore', '1400000', ' ', ' ', ' '), 
('GHI', 'Bhavya', '3131311333', 'Jabalpur', '1500000', ' ', ' ', ' '), 
('IJK', 'Yashdeep', '4747474747', 'Mumbai', '1600000', ' ', ' ', ' '), 
('KLM', 'Vedant', '3245678541', 'Mumbai', '1700000', ' ', ' ', ' '), 
('MNO', 'Shubham', '8769543211', 'Pune', '1800000', ' ', ' ', ' '), 
('OPQ', 'Saicharan', '2341675897', 'Hyderbad', '1900000', ' ', ' ', ' '), 
('QRS', 'Vishal', '9876987652', 'Hyderbad', '1100000', ' ', ' ', ' '), 
('STU', 'Teja', '4356273891', 'Delhi', '1000000', ' ', ' ', ' '), 
('UVW', 'Srihari', '678781155', 'Pune', '1250000', ' ', ' ', ' '), 
('WXY', 'Amitabh', '98483356733', 'Lucknow', '1340000', ' ', ' ', ' '), 
('YZA', 'Rakesh', '8900678456', 'Chennai', '1780000', ' ', ' ', ' '), 
('BCD', 'Rohan', '5678904357', 'Bangalore', '1560000', ' ', ' ', ' '), 
('DEF', 'Anjali', '9090887766', 'Bangalore', '1650000', ' ', ' ', ' '), 
('FGH', 'Navya', '142543678', 'Hyderbad', '1870000', ' ', ' ', ' '), 
('HIJ', 'Lohit', '7117171717', 'Channai', '1110000', ' ', ' ', ' '), 
('JKL', 'Ananya', '8484884484', 'Kerala', '1670000', ' ', ' ', ' '), 
('LMN', 'Satyam', '9801111111', 'Delhi', '1930000', ' ', ' ', ' '), 
('NOP', 'Aditya', '6666000222', 'Lucknow', '1850000', ' ', ' ', ' ');


-- TABLE 19 
CREATE TABLE IF NOT EXISTS T5_COVERAGE 
( 
Coverage_Id VARCHAR(20) NOT NULL , 
Coverage_Amount INTEGER NOT NULL , 
Coverage_Type CHAR(20) NOT NULL , 
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

INSERT INTO T5_COVERAGE VALUES ('51901', '110000', 'Liability', ' ', 'TS5001', 'When accident takes place before your fault', '1 Year', ' '),
('51902', '120000', 'Collision', ' ', 'TRS998', 'Bear your car repair expenses after the accident', '8 Months', ' '),
('51903', '130000', 'Personal Injury', ' ', 'TYU887', 'Personal injury protection will cover all the costs associated with the accident', '8 Months', ' '),
('51904', '140000', 'Liability', ' ', 'TS5455', 'When accident takes place before your fault', '2 Years', ' '),
('51905', '150000', 'Comprehensive', ' ', 'TRYU78', 'Include all kinds of risk factors that are associated with your vehicle, driver, passengers, third-party vehicle, third-party driver, third-party vehicle passengers and third-party property', '8 Months', ' '),
('51906', '160000', 'Personal Injury', ' ', 'TVB009', 'Personal injury protection will cover all the costs associated with the accident', '13 Months', ' '),
('51907', '170000', 'Liability', ' ', 'TSC456', 'When accident takes place before your fault', '18 Months', ' '),
('51908', '180000', 'Collision', ' ', 'TRS324', 'Bear your car repair expenses after the accident', '15 Months', ' '),
('51910', '190000', 'Personal Injury', ' ', 'TFGH76', 'Personal injury protection will cover all the costs associated with the accident', '5 Months', ' '),
('51911', '199000', 'Comprehensive', ' ', 'YUHG76', 'Include all kinds of risk factors that are associated with your vehicle, driver, passengers, third-party vehicle, third-party driver, third-party vehicle passengers and third-party property', '8 Months', ' '),
('51912', '123000', 'Liability', ' ', 'FGH876', 'When accident takes place before your fault', '1 Year', ' '),
('51913', '156000', 'Collision', ' ', 'TRE007', 'Bear your car repair expenses after the accident', '1 Months', ' '),
('51914', '143000', 'Liability', ' ', 'RE4562', 'When accident takes place before your fault', '3 Years', ' '),
('51915', '187000', 'Liability', ' ', 'NBH654', 'When accident takes place before your fault', '1 Year', ' '),
('51916', '153000', 'Liability', ' ', 'ASH123', 'When accident takes place before your fault', '18 Months', ' '),
('51917', '166000', 'Comprehensive', ' ', 'OKI987', 'Include all kinds of risk factors that are associated with your vehicle, driver, passengers, third-party vehicle, third-party driver, third-party vehicle passengers and third-party property', '8 Months', ' '),
('51918', '177000', 'Comprehensive', ' ', 'ALO276', 'Include all kinds of risk factors that are associated with your vehicle, driver, passengers, third-party vehicle, third-party driver, third-party vehicle passengers and third-party property', '8 Months', ' '),
('51919', '112000', 'Liability', ' ', 'TSV555', 'When accident takes place before your fault', '15 Months', ' '),
('51920', '197000', 'Collision', ' ', 'TBH777', 'Bear your car repair expenses after the accident', '1 Year', ' ');
