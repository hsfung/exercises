-- create database customer;

use customer;

create database customers;

drop database customers;

select * from customerinfo;

select count(distinct company)as 'Distinct Companies' from Customer;

alter table Customer add CustomerId int not null primary key auto_increment;

alter table Customer add CompanyID int;

select companyID, company from Customer;

create table Company (
companyID int NOT NULL AUTO_INCREMENT,
Company varchar(255),
primary key (companyID)
);

select * from Company;

select distinct (company)customer from Customer where length(company)>0 and company is not null order by company;

insert into Company (company) select distinct company from Customer where length(company)>0 and company is not null  order by company;

select * from Company;

select c.companyID,c.company,t.companyID,t.Company from
Customer c inner join Company t on c.CompanyID=tcompany.CompanyID;

alter table Customer drop column company;

alter table Customer drop column fullname;

select CONCAT(`FirstName`,' ',`LastName`) as `Full Name` from Customer;

create table Cities (
companyID int NOT NULL AUTO_INCREMENT,
Company varchar(255),
primary key (companyID)
);

select distinct City from Customer where length(City)>0 and City is not null order by City;

insert into Company (City) select distinct City from Customer where length(City)>0 and City is not null  order by City;

create table States (
companyID int NOT NULL AUTO_INCREMENT,
Company varchar(255),
primary key (companyID)
);

select distinct State from Customer where length(State)>0 and State is not null order by State;

icitiesnsert into Company (State) select distinct State from Customer where length(State)>0 and State is not null  order by State;