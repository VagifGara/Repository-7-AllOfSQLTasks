create database Work
use Work

create table Customer(
Id int  identity primary key,
Customer_Name nvarchar(25) not null,
Company_Name nvarchar(50)
)

select *from Customer

create table Orders (
Id int identity primary key,
Customer_ID int references Customer(Id),
Order_date date
)

select *from Orders



create table OrderDetails(
Id int identity primary key,
Order_Id int references Orders(Id),
Product_Name nvarchar(50) not null,
Quantity int 
)

select *from OrderDetails

insert into Customer(Customer_Name, Company_Name)
values ('Vagif', 'SINAM');

insert into Customer(Customer_Name, Company_Name)
values ('Arif', 'SOCAR');

insert into Customer(Customer_Name, Company_Name)
values 
('Murad', 'Apple'),
('Elvin','ASCO'),
('Natiq','PASHA'),
('Revan','Google');


insert into Orders(Customer_ID, Order_date)
values 
(2, '2022/06/07'),
(3,'2022/05/08'),
(5,'2023/05/06'),
(4,'2020/10/03'),
(1,'2022/07/28');


insert into OrderDetails(Order_Id,Product_Name,Quantity)
values
(3, 'Phone',100),
(2, 'Computer',50),
(4, 'TV',20),
(1, 'AirPods',200);


