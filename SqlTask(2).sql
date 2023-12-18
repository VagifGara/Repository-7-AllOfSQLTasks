use Work

CREATE TABLE STUDENT (
    Name nvarchar(50) NOT NULL,
    Surname nvarchar(50) DEFAULt 'XXXXXX',
    Age int CHECK (Age>=16),
	AvgPoint decimal 
	CHECK (AvgPoint >= 0 AND AvgPoint <= 100)
   
);

 select * from STUDENT

INSERT INTO STUDENT(Name, Surname, Age,AvgPoint)
VALUES ('Vagif', 'Garayev', 19,90.5);

INSERT INTO STUDENT(Name, Surname, Age,AvgPoint)
VALUES ('Metanet', 'Adigozelova', 19,99.5);

INSERT INTO STUDENT(Name, Surname, Age,AvgPoint)
VALUES ('Arif', 'Garayev', 17,80);

INSERT INTO STUDENT(Name, Surname, Age,AvgPoint)
VALUES ('Natiq', 'Garayev', 24,70.5);

INSERT INTO STUDENT(Name, Surname, Age,AvgPoint)
VALUES ('Elvin', 'Garayev', 19,40.5);

INSERT INTO STUDENT(Name, Surname, Age,AvgPoint)
VALUES ('Elxan', 'Garayev', 22,75.5);

INSERT INTO STUDENT(Name, Surname, Age,AvgPoint)
VALUES ('Sahib', 'Garayev', 22,45.5);

select * from STUDENT 

select * from STUDENT where AvgPoint > 51;

select * from STUDENT where AvgPoint > 51 and AvgPoint < 90;

select * from STUDENT where AvgPoint < 51 and Age > 20;

select * from STUDENT where Name like 'E%' and Name like '%n';


select CONCAT(Name,'  ',Surname) as Fulname from  STUDENT


Update STUDENT set STUDENT.Name='Mehemmed' where STUDENT.Name='Vagif'and STUDENT.Surname='Garayev'and STUDENT.Age=19;

Delete STUDENT where STUDENT.Name='Elxan' and STUDENT.Surname='Garayev'

select *from STUDENT

create table StudentInfo(
Id int identity Primary KEy,
Name nvarchar(25) Not NUll,
Surname nvarchar(25) not null,
Age int NOt Null,
Birthday date Not null
);


 



create table StudentGrade(
Student_ID int references StudentInfo(Id),
Grade int Not null,
GradeABC nvarchar(1) not null
);




insert into StudentInfo (Name,Surname,Age,Birthday)
values
('Vagif','Garayev',19,'2004/10/12'),
('Arif','Garayev',10,'2013/10/12'),
('Murad','Garayev',20,'2003/10/12'),
('Nizami','Garayev',25,'1998/10/12')

select * from StudentInfo

insert into StudentGrade (Student_ID,Grade,GradeABC)
values 
(2,80,'B'),
(4,90,'A'),
(1,70,'C'),
(3,75,'C');


select *from StudentGrade


select si.*,sg.Grade,sg.GradeABC from StudentInfo si inner join StudentGrade sg on si.Id=sg.Student_ID


select *from STUDENT Order by Age DESC;
select *from STUDENT Order by Age ASC;

select Min(Age) from STUDENT;

select Name,Surname, Min(Age) from STUDENT group by Name,Surname

select * from STUDENT where Age =(Select Min(Age) from STUDENT)

select Count(Name) from STUDENT

select *from StudentInfo where Name in ('Vagif','Arif') 


select Age from StudentInfo
union All
select Grade from StudentGrade

select all Name from STUDENT where Name='Arif'

select Age,
CASE 
     when Age<10 then 'He is Child'
	 when Age>10 then 'He is big boy'

  else 'He is man'
END as Situation
from StudentInfo
