CREATE DATABASE Gandu_Vishal;
use Gandu_Vishal;
DROP TABLE T7_CUSTOMER;
CREATE TABLE T7_CUSTOMER
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

insert into T7_CUSTOMER values (001, 'Aakash', 'Tiwari', 20000906, 'M','Lucknow',6969696969,'18bcs001@iiitdwd.ac.in', 9104658395, 'Single', 100 );
insert into T7_CUSTOMER values (002, 'Yashdeep ', ' Shetty ',19991204 , 'F','Mumbai ',9696969696 ,'18bcs092@iiitdwd.ac.in ', 7583947392, 'Married ', 10 );
insert into T7_CUSTOMER values (003, 'Rutvik  ', 'Yamkanmaradi  ',19990723 ,'M','Banglore ',8007568394 ,'18bcs082@iitdwd.ac.in ', 7496758364,'Divorced', 32);
insert into T7_CUSTOMER values (004, 'Rutvik  ', 'Yamkanmaradi  ',19990723 ,'M','Banglore ',8007568394 ,'18bcs082@iitdwd.ac.in ', 7496758364,'Divorced', 32);
insert into T7_CUSTOMER values (005, 'Rutvik  ', 'Yamkanmaradi  ',19990723 ,'M','Banglore ',8007568394 ,'18bcs082@iitdwd.ac.in ', 7496758364,'Divorced', 32);
insert into T7_CUSTOMER values (006, 'Rutvik  ', 'Yamkanmaradi  ',19990723 ,'M','Banglore ',8007568394 ,'18bcs082@iitdwd.ac.in ', 7496758364,'Divorced', 32);
insert into T7_CUSTOMER values (007, 'Rutvik  ', 'Yamkanmaradi  ',19990723 ,'M','Banglore ',8007568394 ,'18bcs082@iitdwd.ac.in ', 7496758364,'Divorced', 32);
insert into T7_CUSTOMER values (008, 'Rutvik  ', 'Yamkanmaradi  ',19990723 ,'M','Banglore ',8007568394 ,'18bcs082@iitdwd.ac.in ', 7496758364,'Divorced', 32);
insert into T7_CUSTOMER values (009, 'Rutvik  ', 'Yamkanmaradi  ',19990723 ,'M','Banglore ',8007568394 ,'18bcs082@iitdwd.ac.in ', 7496758364,'Divorced', 32);
insert into T7_CUSTOMER values (010, 'Rutvik  ', 'Yamkanmaradi  ',19990723 ,'M','Banglore ',8007568394 ,'18bcs082@iitdwd.ac.in ', 7496758364,'Divorced', 32);
insert into T7_CUSTOMER values (011, 'Rutvik  ', 'Yamkanmaradi  ',19990723 ,'M','Banglore ',8007568394 ,'18bcs082@iitdwd.ac.in ', 7496758364,'Divorced', 32);
insert into T7_CUSTOMER values (012, 'Rutvik  ', 'Yamkanmaradi  ',19990723 ,'M','Banglore ',8007568394 ,'18bcs082@iitdwd.ac.in ', 7496758364,'Divorced', 32);
insert into T7_CUSTOMER values (013, 'Rutvik  ', 'Yamkanmaradi  ',19990723 ,'M','Banglore ',8007568394 ,'18bcs082@iitdwd.ac.in ', 7496758364,'Divorced', 32);
insert into T7_CUSTOMER values (014, 'Rutvik  ', 'Yamkanmaradi  ',19990723 ,'M','Banglore ',8007568394 ,'18bcs082@iitdwd.ac.in ', 7496758364,'Divorced', 32);
insert into T7_CUSTOMER values (015, 'Rutvik  ', 'Yamkanmaradi  ',19990723 ,'M','Banglore ',8007568394 ,'18bcs082@iitdwd.ac.in ', 7496758364,'Divorced', 32);
insert into T7_CUSTOMER values (016, 'Rutvik  ', 'Yamkanmaradi  ',19990723 ,'M','Banglore ',8007568394 ,'18bcs082@iitdwd.ac.in ', 7496758364,'Divorced', 32);
insert into T7_CUSTOMER values (017, 'Rutvik  ', 'Yamkanmaradi  ',19990723 ,'M','Banglore ',8007568394 ,'18bcs082@iitdwd.ac.in ', 7496758364,'Divorced', 32);
insert into T7_CUSTOMER values (018, 'Rutvik  ', 'Yamkanmaradi  ',19990723 ,'M','Banglore ',8007568394 ,'18bcs082@iitdwd.ac.in ', 7496758364,'Divorced', 32);
insert into T7_CUSTOMER values (019, 'Rutvik  ', 'Yamkanmaradi  ',19990723 ,'M','Banglore ',8007568394 ,'18bcs082@iitdwd.ac.in ', 7496758364,'Divorced', 32);
insert into T7_CUSTOMER values (020, 'Rutvik  ', 'Yamkanmaradi  ',19990723 ,'M','Banglore ',8007568394 ,'18bcs082@iitdwd.ac.in ', 7496758364,'Divorced', 32);
#insert into T7_CUSTOMER values (, '  ', '  ', , ' ','  ', ,' @gmail.com', , ' ',  ); <- Dont delete this
