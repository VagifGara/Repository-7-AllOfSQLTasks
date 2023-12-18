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