create schema cars;
use cars ;
-- read data--
select * from car_dekho;

-- total cars to get total count of total records --
select count(*) from car_dekho;

-- the manager asked the employee that how many cars are availiable in 2023--
select count(*) from car_dekho where year = 2023;
  
-- the manager asked the employee that how many cars are availiable in 2020 2021 2022 (we will use group by)--
select count(*) from car_dekho where year in ( 2020 , 2021 ,2022) group by year;

-- client asked me to print the total of all cars by year , i dont want to see all the details --
select year, count(*) from car_dekho group by year;

-- how many diesel cars was availiable in  2020 ?? --
select count(*) from car_dekho where year = 2020 and fuel = "Diesel" ;

-- how many diesel cars was availiable in  2020 ?? --
select count(*) from car_dekho where year = 2020 and fuel = "Petrol" ;


-- print all the fuels of the cars come by all year --
select year , count(*) from car_dekho where fuel = "petrol" group by year ;
select year , count(*) from car_dekho where fuel = "diesel" group by year ;
select year , count(*) from car_dekho where fuel = "cng" group by year ;

-- print all the cars in year having more than 100 --
select year , count(*) from car_dekho group by year having count(*)>100;


-- all cars count between 2015 to 2023 --
select count(*) from car_dekho where year between 2015 and 2023;


select * from car_dekho where year between 2015 and 2023;

drop database xyz;


