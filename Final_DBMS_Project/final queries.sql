
-- explanatory queries for phase 2 ( regarding updation and deletion)
 
	delete from T5_INCIDENT WHERE Incident_Id = '50102';
    SELECT * FROM T5_INCIDENT;
    SELECT * FROM T5_INCIDENT_REPORT;
    
    UPDATE T5_INCIDENT
    SET Incident_Id = '50121' WHERE Incident_Id = '50120';
 
 
 
 
 
 
 -- practise queries
	
    -- 1
    select * from T5_CUSTOMER;
	-- 2
    select * from T5_INSURANCE_COMPANY AS T1 inner join T5_DEPARTMENT AS T2
    on T1.Company_Name = T2.Company_Name 
    where  T2.Department_Name like 'Legal%' or T2.Department_Name like 'Audit%' ;
    -- 3
    select * from T5_INSURANCE_COMPANY as T1 inner join T5_DEPARTMENT as T2
    on T1.Company_Name = T2.Company_Name group by T2.Department_Name;
    -- 4
    select * from T5_VEHICLE where Vehicle_Registration_Number like 'MH%';
    
    
    
    

-- Project Queries 

-- query 1
	-- method1
	select * from T5_Customer,T5_Vehicle where T5_Customer.cust_id=T5_Vehicle.cust_id and T5_Customer.cust_id in ( select distinct(cust_id) from T5_Claim where claim_status='pending' and cust_id in (select distinct(cust_id) from T5_Incident_Report));
	-- method2
	select * from T5_Customer,T5_Vehicle where T5_Customer.cust_id=T5_Vehicle.cust_id and T5_Customer.cust_id in ( SELECT DISTiNCT C.Cust_Id FROM T5_CLAIM C, T5_INCIDENT_REPORT IR WHERE C.Claim_Status = 'pending' AND C.Cust_Id = IR.Cust_Id);

-- query 2
	-- method 1
    select * from T5_CUSTOMER where Cust_id in(select Cust_id from T5_PREMIUM_PAYMENT where Premium_Payment_Amount > (select sum(Cust_id) from T5_CUSTOMER));
 -- query 3
	-- method 1 (going by office tabel locations)
			-- select Count(distinct(Product_Type)),Company_Name from T5_Product group by Company_Name;
			-- select Count(distinct(Department_Name)),Company_Name from T5_Department group by Company_Name;
			select * from T5_Insurance_Company where Company_Name in 
            (select T5_Office.Company_Name from T5_Office group by Company_Name having count(distinct(address))>1
            and 
            Company_Name=any(select T5_Department.Company_Name from T5_Product inner join T5_Department on T5_Department.Company_Name=T5_Product.Company_Name
            group by T5_Department.Company_Name having Count(distinct(Product_Type))>Count(distinct(Department_Name)))) ;
   
   -- method 2 (assuming all departments are in same location)
		-- select Count(distinct(Product_Type)),Company_Name from T5_Product group by Company_Name;
		-- select Count(distinct(Department_Name)),Company_Name from T5_Department group by Company_Name;
		select * from T5_Insurance_Company where Company_Name in (select T5_Office.Company_Name from T5_Office group by Company_Name having count(distinct(address))>1 and  Company_Name in (select T5_Department.Company_Name from T5_Product inner join T5_Department on T5_Department.Company_Name=T5_Product.Company_Name group by T5_Department.Company_Name having Count(distinct(Product_Type))>Count(distinct(Department_Name)))) ;
            
 -- query 4   
		-- method 1
        select * from T5_Customer where cust_id in (select cust_id from T5_incident_report where cust_id in(select cust_id from T5_Vehicle group by cust_id having count(*)>1));
        -- method 2 (if assumed that the cust_id is there in premium payment table then he/she has paid it)
        SELECT DISTINCT * FROM t5_customer
         WHERE Cust_id IN (SELECT t1.Cust_Id FROM
            t5_vehicle AS t1
                INNER JOIN
            t5_incident_report AS t2 ON t1.Cust_Id = t2.Cust_Id
                LEFT JOIN
            t5_premium_payment AS t3 ON t2.Cust_Id = t3.Cust_Id WHERE t3.Cust_Id IS NULL
        GROUP BY t1.Cust_Id
        HAVING COUNT(t1.Vehicle_Id) > 1);
        -- method 3 (if assumed that the cust_id is there in premium payment table then he/she has paid it)
        select * from T5_Customer  where cust_id not in (select cust_id from T5_Premium_Payment) and  cust_id in ( select cust_id from T5_incident_report where cust_id in (select cust_id from T5_Vehicle group by cust_id having count(*)>1));
		-- delete from T5_Premium_Payment where cust_id=50208;
 -- query 5
	-- method 1
	(select * from T5_Vehicle,T5_Premium_Payment where T5_Vehicle.cust_id=T5_Premium_Payment.cust_id and  T5_Premium_Payment.Premium_Payment_Amount>T5_Vehicle.Vehicle_Number);
    
    
 -- query 6
	-- method 1
    select * from T5_Customer where cust_id in (select distinct(T5_Claim.cust_id) from T5_Claim,T5_Claim_Settlement,T5_Coverage where claim_amount>claim_settlement_id+vehicle_id+T5_Claim.claim_id+T5_Claim.cust_id and claim_amount<coverage_amount); 
 
