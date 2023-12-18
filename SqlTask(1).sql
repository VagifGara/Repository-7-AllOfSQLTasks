create database Work
use Work

create table Customer(
Id int  identity primary key,
Customer_Name nvarchar(25) not null,
Company_Name nvarchar(50)
)



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


select *from OrderDetails
select Customer_Name from Customer


select order_d.*,cst.Company_Name from OrderDetails order_d inner join  Orders ord on order_d.Id=ord.Id
inner join Customer cst on ord.Customer_ID=cst.Id


---Bütün customerləri və onların sifarişlərini(orderlərini və məlumatlarını) əgər customerin heç bir sifarişi yoxdursa onlarıda gətir

select cs.Customer_Name,ord.* from Customer cs left join Orders ord on cs.Id=ord.Customer_ID











CREATE TABLE Employees (
    EmployeeID INT PRIMARY KEY,
    FirstName VARCHAR(50),
    LastName VARCHAR(50),
    DepartmentID INT,
    Title VARCHAR(50)
);

CREATE TABLE Departments (
    DepartmentID INT PRIMARY KEY,
    DepartmentName VARCHAR(50)
);

CREATE TABLE Projects (
    ProjectID INT PRIMARY KEY,
    ProjectName VARCHAR(50),
    EmployeeID INT
);


INSERT INTO Employees (EmployeeID, FirstName, LastName, DepartmentID, Title) VALUES
    (1, 'Aydın', 'Məmmədov', 1, 'Software Developer'),
    (2, 'Əbdül', 'Kərimov', 2, 'HR Specialist'),
    (3, 'Kamil', 'Qarayev', 1, 'Database Administrator'),
    (4, 'Səbuhi', 'Culfayev', 2, 'HR Manager'),
    (5, 'Vəli', 'Hacıyev', 3, 'IT Specialist');

INSERT INTO Departments (DepartmentID, DepartmentName) VALUES
    (1, 'IT'),
    (2, 'HR'),
    (3, 'Finance');

INSERT INTO Projects (ProjectID, ProjectName, EmployeeID) VALUES
    (1, 'ProjectA', 1),
    (2, 'ProjectB', 2),
    (3, 'ProjectC', 4);



---İşçilər və şöbələr arasında əlaqəni tapın və  işçi adlarını tərs sıralayın.
---Ayrıca, "Developer" adlı vəzifəyə sahib olan işçiləri seçin və "Projects" cədvəli ilə əlaqələndirin.


select emp.FirstName,emp.LastName,emp.Title,dpr.DepartmentName from Employees emp inner join Departments dpr on emp.DepartmentID=dpr.DepartmentID order by emp.FirstName DESC

select emp.FirstName,emp.LastName,emp.Title,prj.ProjectName from Employees emp inner join Projects prj  on emp.EmployeeID=prj.EmployeeID  where emp.Title like '%Developer%';

