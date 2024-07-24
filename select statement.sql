/*Download the dataset which I have used from this link and I used Adventureworks2022 https://learn.microsoft.com/en-us/sql/samples/adventureworks-install-configure?view=sql-server-ver16&tabs=ssms    */
--product id=322
select * from Production.Product
where ProductID=322

   --I need records of productid>900
   
select * from Production.Product
where ProductID>=900


--all  the products <=320

select * from Production.Product
where ProductID<=320

--something between 350 and 900
select * from Production.Product
where ProductID>=350 and ProductID<=900


--using between 

select * from Production.Product
where ProductID between 350 and 900

-- color=silver
select * from Production.Product
where Color='Silver' 

--missing values in color
select * from Production.Product
where Color is null

--color not silver
select * from Production.Product
where not Color='Silver' 

select * from Production.Product
where Color<>'Silver' 


--color black,red,white
select * from Production.Product
where Color in ('Black','Red','white') 

-- color is red and product no HL-U509-R
select * from Production.Product
where Color = 'Red' and ProductNumber = 'HL-U509-R' 

--color is red or product no HL-U509-R
select * from Production.Product
where Color = 'Red' or ProductNumber = 'HL-U509-R' 

--using like 
select * from Production.Product
where Color = 'Red' and ProductNumber like 'BK-R%' 

--null
select *
from Production.Product
where size is null

--not null
select *
from Production.Product
where size is not null

--date
select *
from Production.Product
where SellStartDate = '2008-04-30'


--Questions for Practice
/* color is black or yellow ,size is s ,sellstartdate is null*/

select *
from Production.Product
where color = 'Black' or color = 'yellow'
and SellStartDate is null 
and size = 's'


/*product range=800 to 900,color silver or listprice>100 */
select *
from Production.Product
where (color = 'silver' or ListPrice > 100)  /*condition has to be within the brackets because we need only products from 800 to 900. if we dont group them then condition willbe changed */
and ProductID >=800 and ProductID<=900      





