use Insurance_Company;
show tables;

desc T5_RECEIPT;
desc T5_PREMIUM_PAYMENT;
/*
------ T5_PREMIUM_PAYMENT
Premium_Payment_Id
Policy_Number
Premium_Payment_Amount
Premium_Payment_Schedule
Receipt_Id
Cust_Id
*/
/*
insert into T5_PREMIUM_PAYMENT values (50801 , 23235345 , 40000 ,'2018-12-23' , 50901, 50201 );
insert into T5_PREMIUM_PAYMENT values (50802 , 34423423 , 52000 ,'2019-11-20' ,  50902 ,50202);
insert into T5_PREMIUM_PAYMENT values (50803 , 342355325 , 52000 ,'2018-02-25' ,  50903 , 50203 );
insert into T5_PREMIUM_PAYMENT values (50804 , 4542334 , 40000 , '2019-05-15' , 50904 , 50204 );
insert into T5_PREMIUM_PAYMENT values (50805 , 3434235 , 52000 , '2018-04-13' ,  50905 , 50205 );
insert into T5_PREMIUM_PAYMENT values (50806 , 86575745 , 40000 ,'2019-04-21' ,  50906 , 50206 );
insert into T5_PREMIUM_PAYMENT values (50807 , 74576547 , 38000 , '2018-09-11' ,  50907 , 50207 );
insert into T5_PREMIUM_PAYMENT values (50808 , 3432443535 , 40000 ,'2019-09-24' , 50908 , 50208 );
insert into T5_PREMIUM_PAYMENT values (50809 , 34234234434 , 36000 , '2018-08-12'  , 50909 , 50209 );
insert into T5_PREMIUM_PAYMENT values (50810 , 534324 , 28000 , '2019-01-23' , 50910 , 50210 );
insert into T5_PREMIUM_PAYMENT values (50811 , 342343434 , 22000 , '2018-11-17' , 50911 , 50211 );
insert into T5_PREMIUM_PAYMENT values (50812 , 87686867 , 38000 , '2019-12-14' ,  50912 , 50212 );
insert into T5_PREMIUM_PAYMENT values (50813 , 767455436 , 28000 , '2018-10-06' , 50913 , 50213 );
insert into T5_PREMIUM_PAYMENT values (50814 , 6547554 , 40000 ,'2019-10-09' ,  50914 , 50214 );
insert into T5_PREMIUM_PAYMENT values (50815 , 84567546 , 35000 ,'2018-05-02' , 50915 , 50215 );
insert into T5_PREMIUM_PAYMENT values (50816 , 53245345 , 38000 , '2019-05-10' , 50916 , 50216 );
insert into T5_PREMIUM_PAYMENT values (50817 , 9567546 , 40000 ,'2019-06-12' ,  50901 , 50217 );
insert into T5_PREMIUM_PAYMENT values (50818 , 45235235 , 52000 ,'2018-06-29' , 50918 , 50218 );
insert into T5_PREMIUM_PAYMENT values (50819 , 8547546 , 38000 , '2019-02-19' , 50919 , 50219 );
insert into T5_PREMIUM_PAYMENT values (50820 , 34324434 , 40000 ,'2018-11-20' ,50920 , 50220 );


*/

/*
------  T5_RECEIPT
Receipt_Id
Time
Cost
Premium_Payment_Id
Cust_Id

*/

insert into T5_RECEIPT values(50901, '09:23:00' , 342 , 50801 , 50201 );
insert into T5_RECEIPT values(50902, '08:44:80' , 324 , 50802 , 50202 );
insert into T5_RECEIPT values(50903, '10:22:35' , 545, 50803, 50203 );
insert into T5_RECEIPT values(50904, '09:26:44' , 234 , 50804 , 50204 );
insert into T5_RECEIPT values(50905, '09:25:45' , 56 , 50805, 50205 );
insert into T5_RECEIPT values(50906, '09:44:75' , 345 , 50806, 50206 );
insert into T5_RECEIPT values(50907, '08:45:56' , 467 , 50807 , 50207 );
insert into T5_RECEIPT values(50908, '10:23:45' , 678 , 50808 , 50208 );
insert into T5_RECEIPT values(50909, '11:53:00' , 689 , 50809 , 50209 );
insert into T5_RECEIPT values(50910, '09:25:11' , 567 , 50810 , 50210 );
insert into T5_RECEIPT values(50911, '10:26:32' , 789 , 50811 , 50211 );
insert into T5_RECEIPT values(50912, '12:23:13' , 788 , 50812 , 50212 );
insert into T5_RECEIPT values(50913, '15:55:11' , 456, 50813 , 50213 );
insert into T5_RECEIPT values(50914, '16:23:04' , 345 , 50814 , 50214 );
insert into T5_RECEIPT values(50915, '16:55:00' , 345 , 50815 , 50215 );
insert into T5_RECEIPT values(50916, '17:33:00' , 233 , 50816 , 50216 );
insert into T5_RECEIPT values(50917, '13:44:23' , 345 , 50817 , 50217 );
insert into T5_RECEIPT values(50918, '14:34:33' , 444 , 50818 , 50218 );
insert into T5_RECEIPT values(50919, '12:23:40' , 345 , 50819 , 50219 );
insert into T5_RECEIPT values(50920, '10:45:05' , 550 , 50820 , 50220 );






