/**
Taking house selling data from mortage company in order to better understand business since 2020

The data will move all PII data to the final process
**/

#Getting rid of duplicate enteries from original table

select  distinct *
	from data;
	
 #  Creating table - not filtered 
drop table graph_day;
create table graph_day( 
	select `Relocation System Number` `Key`,
    `Origination State` as `State`,
    `Origination City` as `City`,
    `Originationzipcode` as `Zip_Code`,
    `Contract Status` as `Status`,
    `Actual Close Date` as `Close_date`,
    `Projected Close Date` as `Project_Close_Date`,
    `Initial Date Listed` as `Date_listed`,
    `Funding Date` as `Funding_Date`,
    `Initial List Price` as `List_Amount`,
    `Sale Amount` as `Sale_Amount`,
    `Proceeds Received Amount` as `Referral_Amount`
		from data);
 

select * 
 from graph_day;
 
 
 
 #Formating dates
update graph_day
	set `Close_date` =  str_to_date(`Close_date`,'%m/%d/%Y'),
    `Project_Close_Date`=  str_to_date(`Project_Close_Date`,'%m/%d/%Y'),
    `Date_listed` =  str_to_date(`Date_listed`,'%m/%d/%Y'),
    `Funding_Date`=  str_to_date( `Funding_Date`,'%m/%d/%Y');
    
alter table graph_day
		modify column `Close_date` date ,
		modify column `Project_Close_Date`  date,
		modify column `Date_listed`  date,
		modify column `Funding_Date`  date;

alter table graph_day 
	modify column `Zip_Code` int,
    modify column `Referral_Amount` int;

  select * from graph_day
	order by `Referral_Amount` asc;  
    
 


    

   







